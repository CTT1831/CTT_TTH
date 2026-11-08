THU CHI V8 - HƯỚNG DẪN NÂNG CẤP
1. Sao lưu JSON từ web cũ trước.
2. Trong Supabase > SQL Editor chạy CAP_NHAT_SQL_V8.sql (một lần).
3. Giữ file config.js ĐÃ CÓ THÔNG TIN CỦA BẠN từ repository GitHub cũ (ZIP này để mặc định chưa cấu hình).
4. Tải lên GitHub toàn bộ file của V8, ghi đè file cũ, giữ nguyên địa chỉ Pages.
5. Mở web, tải lại (có thể cần xóa cache service worker), kiểm tra dữ liệu và đồng bộ giữa 2 thiết bị.
CÓ GÌ MỚI:
- Thêm danh mục thu/chi và thống kê theo danh mục cho tháng đang xem.
- Sổ nợ gom theo tên (không phân biệt hoa thường/khoảng trắng), tổng nợ từng người, gợi ý tên đã nhập.
- To-do cho phép nhắc lại sau khi quá hạn cho đến khi đánh dấu hoàn thành.
HẠN CHẾ: nhắc lại chỉ đáng tin khi trang còn chạy; web đóng hẳn không có bộ lập lịch từ server.

- Bản hoàn chỉnh bổ sung mục Hóa đơn (bills): lưu thông tin, ảnh hóa đơn, sửa/xóa, sao lưu/khôi phục và đồng bộ Supabase.
