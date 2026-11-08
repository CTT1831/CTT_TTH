-- V8 FIX: dùng khi Supabase báo lỗi
-- ERROR 23514: check constraint "personal_data_section_check" ... violated by some row
-- Không xóa dữ liệu cũ. Chỉ bỏ CHECK cũ để giữ nguyên các section legacy của V7
-- và cho phép V8 thêm section 'categories'. RLS vẫn giữ nguyên.

BEGIN;

ALTER TABLE public.personal_data
  DROP CONSTRAINT IF EXISTS personal_data_section_check;

-- Không tạo lại CHECK theo danh sách section cố định.
-- App chỉ ghi các section hợp lệ: transactions, debts, tasks, logs, categories, bills.
-- Bỏ CHECK giúp không làm hỏng các dữ liệu legacy đã có trong V7.

COMMIT;

-- Kiểm tra dữ liệu hiện có:
-- SELECT section, count(*) FROM public.personal_data GROUP BY section ORDER BY section;
