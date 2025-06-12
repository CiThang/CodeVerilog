`timescale 1ns/1ps

module halfAdder_tb;
    reg a, b;
    wire sum, carry;

    // Kết nối với module halfAdder
    halfAdder ha (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("halfAdder_tb.vcd");
        $dumpvars(0, halfAdder_tb);
        
        // Test các giá trị đầu vào
        a = 0; b = 0; #10;
        $display("a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);

        $finish;
    end
endmodule
