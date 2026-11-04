-- Chạy 1 lần trong Supabase SQL Editor để cho phép đồng bộ hóa đơn điện nước.
ALTER TABLE public.personal_data DROP CONSTRAINT IF EXISTS personal_data_section_check;
ALTER TABLE public.personal_data ADD CONSTRAINT personal_data_section_check CHECK (section IN ('transactions','debts','tasks','logs','bills'));
