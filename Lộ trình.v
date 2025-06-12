🌟 Giai đoạn 1: Làm quen với Verilog
🔹 Mục tiêu:
•	Hiểu cú pháp cơ bản
•	Viết mô-đun đơn giản
•	Làm quen với mô phỏng
📘 Nội dung:
1.	Giới thiệu Verilog
o	HDL là gì? (Hardware Description Language)
o	So sánh Verilog vs VHDL
o	Dùng Verilog để mô tả mạch số như thế nào?
2.	Cài đặt môi trường
o	Phần mềm mô phỏng: ModelSim / Vivado / Icarus Verilog
o	Dùng Quartus (Intel FPGA) hoặc Vivado (Xilinx FPGA)
3.	Cấu trúc cơ bản của Verilog
o	module, endmodule
o	input, output, wire, reg
o	assign, always, initial
o	Cách viết testbench
4.	Viết các mô-đun đơn giản
o	Cổng logic (AND, OR, XOR…)
o	Mạch cộng 1 bit (half-adder, full-adder)
o	Mạch giải mã, encoder, multiplexer
🧠 Giai đoạn 2: Kỹ thuật mô tả mạch số
🔹 Mục tiêu:
•	Mô tả được mạch tổ hợp và tuần tự
•	Biết phân biệt blocking vs non-blocking (= vs <=)
•	Viết các mô hình FSM
📘 Nội dung:
1.	Mạch tổ hợp (combinational)
o	Cách viết assign
o	Sử dụng always @(*)
o	Các mạch: MUX, demux, comparator, ALU
2.	Mạch tuần tự (sequential)
o	Cách viết always @(posedge clk)
o	Định nghĩa reg và wire
o	Flip-Flop, thanh ghi, bộ đếm (counter)
3.	Finite State Machine (FSM)
o	Mô hình Moore và Mealy
o	Thiết kế máy bán hàng (vending machine), traffic light…
⚙️ Giai đoạn 3: Mô phỏng và kiểm thử
🔹 Mục tiêu:
•	Viết testbench để kiểm thử
•	Sử dụng waveform
•	Debug lỗi logic
📘 Nội dung:
1.	Viết Testbench đơn giản
2.	Hiểu initial, #delay, $display, $monitor
3.	Dùng waveform để kiểm tra tín hiệu
4.	Tạo file .vcd để xem sóng (với Icarus Verilog)
🛠️ Giai đoạn 4: Dự án trên FPGA
🔹 Mục tiêu:
•	Viết và chạy code thực tế trên FPGA
•	Sử dụng LED, switch, màn hình 7 đoạn
•	Hiểu cách tổng hợp (synthesis) và triển khai (implementation)
📘 Nội dung:
1.	Làm quen phần cứng FPGA (DE2-115, DE10-Lite, PYNQ-Z2…)
2.	Thiết kế:
o	Mạch nhấn nút – bật LED
o	Counter hiển thị trên LED 7 đoạn
o	MUX chọn đầu vào
o	FSM điều khiển
3.	Ánh xạ chân (pin assignment)
4.	Tạo sơ đồ thời gian (timing diagram)
🚀 Giai đoạn 5: Nâng cao & Tối ưu
🔹 Mục tiêu:
•	Viết code hiệu quả
•	Tối ưu logic
•	Biết tạo IP Core
📘 Nội dung:
1.	Tối ưu về timing, logic
2.	Viết Verilog sinh tham số (parameter, generate)
3.	Thiết kế RAM, ROM
4.	Giao tiếp:
o	UART, SPI, I2C
o	Giao tiếp cảm biến, LCD, servo
5.	Tạo IP Core dùng trong hệ thống lớn
🔁 Tài nguyên học tập
•	Sách:
o	Verilog HDL – Samir Palnitkar (Rất phổ biến, dễ hiểu)
o	FPGA Prototyping by Verilog Examples – Pong P. Chu
•	Video: FPGA4Student, HDLBits, YouTube: EEVblog
•	Website thực hành:
o	HDLBits – Luyện tập trực tuyến
o	EDA Playground – Mô phỏng Verilog online
✅ Gợi ý lộ trình theo tuần (có thể điều chỉnh)
Tuần	Mục tiêu chính
1-2	Cú pháp cơ bản, mạch tổ hợp
3-4	Mạch tuần tự, FSM, testbench
5-6	Làm quen FPGA, chạy LED, Counter
7-8	Dự án nhỏ: Traffic Light, Vending Machine
9+	Giao tiếp ngoại vi, tối ưu hóa, dự án nâng cao
