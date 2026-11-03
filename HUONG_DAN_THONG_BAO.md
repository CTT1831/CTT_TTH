# Web Thu Chi V7.2 – Sửa nhắc việc và tài khoản

- Bao gồm toàn bộ tính năng V7.1 (Quên mật khẩu, Đổi mật khẩu, Xóa tài khoản khi đã triển khai Edge Function), thêm sửa thông báo.
- Khi có quyền và web còn đang chạy: gửi thông báo hệ thống cả khi chuyển tab; không chờ Service Worker vô thời hạn; có nút **Thử thông báo**, trạng thái quyền và lịch sử nhắc việc cục bộ.
- Nếu không có quyền, khi tab hiển thị sẽ xuất hiện banner nhắc. Việc quá hạn sẽ kiểm tra lại khi quay về tab.
- **Không thể đảm bảo thông báo đúng giờ khi đã đóng toàn bộ web/Chrome, máy ngủ, hoặc Chrome đình chỉ tab.** Muốn vậy cần dịch vụ Web Push server-side có lập lịch (chưa có trong bản này). Không có mã HTML thuần nào giải quyết triệt để trường hợp đóng trình duyệt.

## Cách cập nhật GitHub
1. Sao lưu JSON dữ liệu đang có.
2. Mở repository `CTT1831/CTT_TTH` → Add file → Upload files; tải nội dung gói ZIP đã giải nén lên thư mục gốc; chọn ghi đè file trùng tên. **KHÔNG ghi đè config.js đã cấu hình**, hãy giữ nguyên config.js đang chạy.
3. Commit changes; sau khi Pages xuất bản, vào web và tải lại. Nếu chưa đổi, Chrome DevTools → Application → Service Workers → Update/Unregister, sau đó tải lại (đừng chọn Clear site data nếu chưa sao lưu).
4. Trong To-do List nhấn **Bật thông báo** → **Thử thông báo**, kiểm tra Windows/Chrome đã cho thông báo. Tạo việc 1 phút sau với nhắc đúng giờ; thử chuyển sang tab khác (giữ web mở).
5. Nếu không có thông báo, vào Chrome Site settings → Notifications → Allow; bật thông báo Chrome trong Windows Settings → System → Notifications; tắt Do Not Disturb nếu có.

## Lưu ý
- Đưa lên GitHub Pages giúp HTTPS; GitHub Pages không tự gửi thông báo đẩy theo lịch khi web đóng.
- Dữ liệu nhắc đã gửi được lưu dưới khóa riêng theo tài khoản trong LocalStorage, không thay cấu trúc dữ liệu thu chi/sổ nợ/công việc.
- Quên mật khẩu cần xác nhận email Supabase. Xóa tài khoản yêu cầu triển khai Edge Function `delete-account` theo hướng dẫn V7.1.
