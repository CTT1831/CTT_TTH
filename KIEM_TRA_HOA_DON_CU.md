# Kiểm tra và khôi phục hóa đơn cũ

1. Mở web bằng **đúng trình duyệt và địa chỉ website** từng dùng để ghi các tên hóa đơn như "Nhà", "Bác".
2. Vào Hóa đơn > Tất cả > **Tìm hóa đơn cũ**. Nếu tìm thấy vùng dữ liệu cũ, chọn Khôi phục và xác nhận. Thao tác chỉ sao chép mục còn thiếu, không xóa dữ liệu gốc.
3. Nếu không thấy, mở thiết bị/trình duyệt gốc hoặc lấy bản sao lưu JSON; các tên không thể được tự tạo lại nếu dữ liệu không còn ở máy/Supabase.
4. Kiểm tra dòng trạng thái Đồng bộ phía trên. Nếu hiện cảnh báo HTTP 400 hay `personal_data_section_check`, chạy nội dung `CAP_NHAT_SQL_V8.sql` ở Supabase SQL Editor trước rồi nhấn Đồng bộ ngay. Lưu ý chỉ chạy SQL trên đúng dự án Supabase.
5. Chạy câu lệnh SQL đọc dữ liệu trong `KIEM_TRA_SUPABASE_HOA_DON.sql` bằng tài khoản quản trị trong SQL Editor để xác nhận số lượng hóa đơn đang có trên cloud. Không cần gửi dữ liệu cá nhân hoặc mật khẩu cho người khác.

**Lưu ý:** Mã nguồn không thể tự truy cập dữ liệu của điện thoại/máy tính khác, tên miền cũ, hay các bản sao lưu không được cung cấp. Chức năng tìm chỉ tìm các khóa dữ liệu hóa đơn trong localStorage ở địa chỉ web hiện tại.
