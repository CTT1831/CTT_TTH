# Hướng dẫn nâng cấp V7.1 – Tài khoản & Bảo mật

## 1. Sao lưu trước khi cập nhật
Mở V7, xuất bản sao lưu JSON nếu có dữ liệu. Không xóa cơ sở dữ liệu Supabase hoặc chạy lại schema.sql.

## 2. Cập nhật GitHub
Trong repository `CTT1831/CTT_TTH`, tải lên các tệp cập nhật **index.html, login.html, reset.html, cloud.js, sw.js** cùng các file khác nếu cần; giữ nguyên `config.js` đã điền URL và publishable key. File `config.js` của gói này là mẫu, tuyệt đối không ghi đè file đang chạy bằng mẫu. Cập nhật file ở thư mục gốc. Sau commit, tải lại web; bản cập nhật service worker có thể cần reload.

## 3. Cấu hình Email khôi phục
Supabase → Authentication → URL Configuration:
- Site URL: `https://ctt1831.github.io/CTT_TTH/`
- Additional Redirect URLs: thêm `https://ctt1831.github.io/CTT_TTH/reset.html`
Trong Authentication → Providers → Email, bật Email provider. Tùy cấu hình có thể phải xác nhận email khi đăng ký.

## 4. Triển khai chức năng xóa tài khoản (BẮT BUỘC)
Chức năng này không thể chỉ tải file HTML lên GitHub. Bạn cần deploy Supabase Edge Function từ mã nguồn `supabase/functions/delete-account/index.ts`.
Dùng Supabase Dashboard → Edge Functions → Deploy a new function → Via Editor (nếu giao diện có tùy chọn). Đặt tên chính xác `delete-account`, dán nội dung index.ts và deploy. Bật **Verify JWT** nếu có (mã cũng tự kiểm tra token người dùng). Supabase thường cung cấp sẵn SUPABASE_URL và SUPABASE_SERVICE_ROLE_KEY ở môi trường Edge Functions. Không sao chép service role key ra GitHub, HTML, config.js hoặc chat.
Nếu dashboard không hỗ trợ editor, deploy qua Supabase CLI bằng lệnh: `supabase functions deploy delete-account --project-ref <YOUR_PROJECT_REF>` sau khi đăng nhập CLI và liên kết dự án.

Quan trọng: Supabase có thể áp dụng chế độ xác minh JWT không tương thích với publishable key mới; nếu deployment trả lỗi 401 trước khi đến mã function, có thể cần triển khai `--no-verify-jwt`. Hàm vẫn luôn xác minh access token bằng `admin.auth.getUser(token)` trước khi xóa. Chỉ dùng cách này với mã hàm đã cung cấp, không bỏ kiểm tra token trong hàm.

## 5. Kiểm tra
- Tại login.html, bấm Quên mật khẩu, nhập email, mở thư và đặt mật khẩu mới.
- Đăng nhập, mở ☰ → Tài khoản để đổi mật khẩu.
- Xóa tài khoản chỉ sau khi sao lưu: nhập mật khẩu cũ, xác nhận và gõ `XOA TAI KHOAN`.
- `public.personal_data` có khóa ngoại `on delete cascade`, nên các hàng thuộc user bị xóa theo.

## Hạn chế
- Xóa tài khoản không thể hoàn tác; có thể có dữ liệu sao lưu ngoài Supabase không bị xóa.
- Reset password cần email thật và cấu hình mail provider gửi được thư; Supabase Free có thể giới hạn tốc độ gửi.
- Chưa kiểm thử trên chính dự án Supabase của bạn; nên tạo tài khoản thử để test trước.
