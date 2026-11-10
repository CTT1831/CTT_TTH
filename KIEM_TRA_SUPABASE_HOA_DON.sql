-- Dùng trong Supabase SQL Editor của đúng dự án, chỉ đọc, không sửa/xóa dữ liệu.
SELECT section, count(*) AS so_ban_ghi,
       sum(CASE WHEN jsonb_typeof(content)='array' THEN jsonb_array_length(content) ELSE 0 END) AS so_muc
FROM public.personal_data
WHERE section='bills'
GROUP BY section;

-- Kiểm tra bảng hiện tại có còn CHECK chặn section bills không:
SELECT conname, pg_get_constraintdef(oid) AS dieu_kien
FROM pg_constraint
WHERE conrelid='public.personal_data'::regclass AND contype='c';
