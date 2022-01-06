Mỗi khi viewmodel được nhận diện bị thay đổi dữ liệu, mặc định những widget được bao hàm trong StoreConnector cùng class Widget sẽ được render lại.

Giải pháp: 
- Tách biệt các widget thành phần thành các StateLessWidget.
- Các widget thành phần cần StoreConnector riêng và viewmodel riêng.
- Các widget bất biến theo thời gian cần được set false cho rebuildOnChange.
- Tuyệt đối không sử dụng Widget dạng function vì sẽ kém performance.
- Các viewmodel nên immutable và khả năng so sánh tốt. Sử dụng built value là một cách hiệu quả.
- Các action event nên được immutable.
