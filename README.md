# inverted_pendulum_simulation
Mô phỏng điều khiển xe con lắc ngược với bộ điều khiển LQR, sử dụng MATLAB Simulink 2020B.

Bước 1: Tải về project.
![image](https://github.com/user-attachments/assets/7afdeafe-cfc4-4047-8d1c-df2e39fdcc1a)

Bước 2: Mở project bằng MATLAB.

Bước 3: Khởi chạy mô phỏng simulink bằng file inv_pen_simulink > Run (tại mục SIMULATE).

Bước 4: Để xem các đáp ứng, bấm vào scope với tên tương ứng.

Lưu ý: 
1. Lỗi có thể xảy ra ở bước 3 khi bấm "Run" đó là không nhận diện được thông số k trong hàm Gain, lỗi này là do simulink chưa đồng bộ với workspace chung cảu project.
Để sửa lỗi, tại cửa sổ thông báo lỗi, bấm [Fix] ở lựa chọn "Load a file into base workspace."
![image](https://github.com/user-attachments/assets/e4c50231-cac3-4fe4-862e-ef12f53ae8e2)
Lúc này, 1 cửa sổ sẽ hiện lên > ta chọn file params.m > Bấm lại nút "Run"
(Làm tưởng tự nếu có tham số nào khác bị lỗi)

2. Có thể sửa các tham số của bộ điều khiển LQR, cũng như tham số của robot tại file params.m.
