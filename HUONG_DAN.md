# Thu Chi V7 – GitHub Pages + Supabase

## 1. Supabase
1. Tạo project tại https://supabase.com/dashboard.
2. Vào **SQL Editor**, dán toàn bộ `schema.sql`, chạy một lần. Kiểm tra bảng `personal_data` đã bật **RLS**.
3. Vào **Project Settings → API / API Keys**: copy **Project URL** và **publishable key** (hoặc anon key) vào `config.js`. KHÔNG dùng `service_role`/secret.
4. Trong **Authentication → Providers → Email**, bật email/password. Nếu bật xác thực email, cần xác nhận email trước khi đăng nhập.

## 2. GitHub Pages
1. Tạo repo mới, đưa **tất cả file** trong thư mục này lên thư mục gốc (không tải file ZIP nguyên khối). Dùng repo Public nếu GitHub Free.
2. Settings → Pages → Deploy from a branch → main → /(root) → Save.
3. Vào `https://TEN-USER.github.io/TEN-REPO/login.html`. Tạo tài khoản bằng EMAIL + mật khẩu, đăng nhập.
4. Mở đường dẫn trên điện thoại và máy tính, cùng đăng nhập một email.

## 3. Chuyển dữ liệu V6
- Trước khi cập nhật V6, dùng nút Sao lưu JSON trong V6.
- Nếu V6 từng chạy trên **cùng tên miền GitHub Pages**, tạo tài khoản V7 rồi mở menu ☰ → Tài khoản → Chọn tài khoản V6 → Nhập dữ liệu.
- Nếu chuyển sang tên miền mới, dùng bản sao lưu JSON V6 để khôi phục (bản hiện tại yêu cầu có `transactions`; tùy giao diện có thể cần thao tác sao lưu).
- Khi nhập, bản V7 sẽ **ghi đè toàn bộ từng danh sách tương ứng trên cloud**; chỉ thao tác một lần.

## 4. Giới hạn quan trọng
- Web có thể lưu giao dịch offline rồi đồng bộ khi mạng trở lại, nhưng **không có cơ chế giải quyết xung đột chi tiết**. Khi chỉnh sửa đồng thời cùng một nhóm dữ liệu trên hai máy, lần gửi sau có thể ghi đè nhóm dữ liệu của lần trước. Tránh nhập đồng thời trên nhiều máy.
- Thông báo nhắc việc khi trang không hoạt động/đóng hoàn toàn không được đảm bảo.
- Bộ nhớ cục bộ và token phiên trong sessionStorage chưa được mã hóa; chỉ dùng trên thiết bị tin cậy.
- Nếu bị lỗi mạng, nhấn 'Đồng bộ ngay'. Chỉ xem dữ liệu đồng bộ thành công khi thanh trạng thái báo ✅.
- GitHub Pages chứa mã nguồn **công khai** nếu dùng repository Public: không đặt mật khẩu/khóa bí mật vào repo.
- Nên sao lưu JSON định kỳ; dịch vụ miễn phí có hạn mức và có thể tạm dừng dự án khi lâu không dùng.
- Chưa kiểm thử end-to-end với một Supabase project thực tế (cần thông tin cấu hình của bạn).
