# Hiển thị 6 hóa đơn cũ

Bản này hỗ trợ cả `house`/`period`/`type`/`paid` (dữ liệu cũ) và `provider`/`date` (dữ liệu mới).

1. Sao lưu dữ liệu trên website trước khi cập nhật.
2. Cập nhật `index.html` từ ZIP và tải lại trang (nếu cần, làm mới mạnh Ctrl+F5).
3. Vào **Hóa đơn → Tất cả**. Nếu 6 hóa đơn đã đồng bộ trong tài khoản, chúng tự hiển thị.
4. Nếu vẫn không thấy, chọn **Nhập hóa đơn từ JSON**, chọn file `6_HOA_DON_THANG_11_2026.json` có sẵn trong ZIP.
5. Chức năng nhập chỉ thêm hóa đơn chưa có, nhận diện theo ID và dữ liệu hóa đơn để tránh trùng, không xóa hóa đơn cũ.

Không dùng công cụ nhập JSON toàn bộ ở Cài đặt cho file này: công cụ đó yêu cầu `transactions`.
