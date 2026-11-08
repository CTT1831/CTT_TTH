-- V8: chạy 1 lần trong Supabase SQL Editor. Không xóa dữ liệu cũ.
ALTER TABLE public.personal_data DROP CONSTRAINT IF EXISTS personal_data_section_check;
ALTER TABLE public.personal_data ADD CONSTRAINT personal_data_section_check CHECK (section IN ('transactions','debts','tasks','logs','categories'));
-- Giữ nguyên các chính sách RLS hiện có; kiểm tra RLS vẫn bật.
