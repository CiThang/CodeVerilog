`timescale 1ns/1ns

module logic_module_tb;
    reg a, b;
    wire x, y, z, w, v;

    // Khai báo module logic_module
    logic_module lm (
        .a(a),
        .b(b),
        .x(x),
        .y(y),
        .z(z),
        .w(w),
        .v(v)
    );

    initial begin
        $dumpfile("logic_module_tb.vcd");
        $dumpvars(0, logic_module_tb);
        
        // Test các trường hợp đầu vào
        a = 0; b = 0; #5;
        $display("Input a=%b, b=%b => Output x=%b, y=%b, z=%b, w=%b, v=%b", a, b, x, y, z, w, v);
        
        a = 0; b = 1; #5;
        $display("Input a=%b, b=%b => Output x=%b, y=%b, z=%b, w=%b, v=%b", a, b, x, y, z, w, v);
        
        a = 1; b = 0; #5;
        $display("Input a=%b, b=%b => Output x=%b, y=%b, z=%b, w=%b, v=%b", a, b, x, y, z, w, v);
        
        a = 1; b = 1; #5;
        $display("Input a=%b, b=%b => Output x=%b, y=%b, z=%b, w=%b, v=%b", a, b, x, y, z, w, v);

        $finish;
    end
endmodule