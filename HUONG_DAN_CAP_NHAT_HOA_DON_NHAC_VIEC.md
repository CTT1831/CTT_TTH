# Cập nhật Hóa đơn và Nhắc việc (10/11/2026)

## Đã sửa
- Hóa đơn mở mặc định **Tất cả hóa đơn** (không lọc theo tháng hiện tại), giúp nhìn thấy hóa đơn cũ. Nút « / » để chọn tháng; nút **Tất cả** để quay lại toàn bộ danh sách.
- Số lượng và tổng tiền phản ánh phạm vi đang xem; số hóa đơn cạnh tiêu đề thể hiện tổng hóa đơn được lưu trên thiết bị.
- Khi mở trang, những việc đã đến hạn/quá hạn chỉ tạo **một thông báo gộp**, kể cả có nhiều việc. Không dồn số lần lặp đã trôi qua khi web đóng.
- Khi vẫn giữ trang mở, mỗi việc chưa hoàn thành được nhắc lại theo đúng số phút đã cấu hình. Việc không đặt lặp sẽ không nhắc thêm trong phiên mở trang đó.
- Đánh dấu hoàn thành thì dừng nhắc. Sửa công việc sẽ tính lại lịch nhắc trong phiên.

## Cập nhật
1. Xuất sao lưu JSON trước khi cập nhật.
2. Giải nén và tải các tệp lên GitHub Pages (giữ nguyên config.js thực tế của bạn nếu đã cấu hình khác).
3. Tải lại trang sau khi triển khai. Không xóa dữ liệu trang/browser để cố làm mới vì có thể làm mất dữ liệu lưu cục bộ.

## Nếu trước đó ghi 6 hóa đơn mà vẫn thấy 0
- Nếu tiêu đề có **6 hóa đơn** nhưng trước đây danh sách trống: nguyên nhân thường do đang chọn tháng khác. Bản này hiển thị cả 6 trong **Tất cả**.
- Nếu tiêu đề vẫn là **0 hóa đơn**: trình duyệt hiện tại chưa có 6 bản ghi; cần kiểm tra tài khoản đăng nhập, thanh trạng thái đồng bộ và bản sao lưu JSON. Không thể khôi phục nội dung hóa đơn chỉ từ số lượng người dùng ghi nhớ.
- Nếu Supabase báo lỗi `personal_data_section_check` hoặc `23514`, chạy `CAP_NHAT_SQL_V8.sql` trong Supabase SQL Editor, sau đó nhấn **Đồng bộ ngay**. Câu SQL không xóa dữ liệu.

Lưu ý: Thông báo khi đóng hẳn web/trình duyệt cần máy chủ push riêng; bản này chỉ đảm bảo kiểm tra khi trang vẫn đang chạy.
