# Thu Chi V7.3 — Đồng bộ không tự tải lại trang

Đã bỏ việc tự gọi `location.reload()` mỗi khi nhận cập nhật từ Supabase. Web phát sự kiện `tc-cloud-updated` để các mục thu chi, sổ nợ, To-do và lịch tự cập nhật giao diện. Nút đồng bộ vẫn hoạt động.

## Cập nhật GitHub
1. Sao lưu JSON trước khi nâng cấp.
2. Upload file V7.3 lên repository GitHub cũ, ghi đè file trùng tên.
3. **Không ghi đè `config.js`** đã điền URL/key của bạn.
4. Commit và tải lại website một lần để nhận bản mới.

Chỉ có các thao tác chuyển trang đăng nhập/đăng xuất và nhập dữ liệu cũ/khôi phục từ file mới dùng chuyển trang như thiết kế. Bản sửa này chưa kiểm thử trên tài khoản Supabase của bạn.
