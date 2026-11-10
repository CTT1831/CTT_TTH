# Bản cập nhật — Nhập JSON theo hạng mục, hóa đơn gộp theo tên

- Giữ nguyên Supabase, các dữ liệu đang lưu và cơ chế nhắc quá hạn.
- Hóa đơn: bỏ nút **Tất cả** ở thanh chuyển tháng. Dùng hai nút mũi tên để đổi tháng; mặc định là tháng hiện tại.
- Các hóa đơn cùng tên được gom trong một nhóm, không phân biệt in hoa/in thường, dấu tiếng Việt hoặc khoảng trắng thừa. Hóa đơn điện/nước vẫn riêng biệt, có nút Sửa / Xóa riêng.
- Khi tạo hoặc sửa hóa đơn có thể chọn loại **Tiền điện**, **Tiền nước** hoặc **Khác**.
- Nhập JSON theo từng mục: Thu chi, Sổ nợ, Công việc/To-do, Hóa đơn. Lịch công việc dùng chung danh sách Công việc/To-do.
- Mỗi mục đọc mảng tương ứng (`transactions`, `debts`, `tasks`, `bills`) từ file sao lưu toàn bộ, hoặc đọc một mảng JSON độc lập.
- Nhập chỉ thêm mục có ID chưa tồn tại. Không sửa, xóa, hay ghi đè các mục có sẵn; không tác động mục khác.
- Có xác nhận trước khi thêm. Các mục dữ liệu sai định dạng sẽ bị từ chối toàn bộ trước khi lưu.
- Nút sao lưu JSON toàn bộ vẫn nằm trong phần cài đặt (⚙️). Đã bỏ nút khôi phục toàn bộ để tránh ghi đè liên hạng mục.

**Lưu ý:** Sao lưu JSON trước khi cập nhật và trước khi nhập. Sau khi nhập, kiểm tra trạng thái đồng bộ Supabase. Nếu đang sử dụng Service Worker, có thể phải tải lại trang mạnh (Ctrl+F5) để nhận file HTML mới.
