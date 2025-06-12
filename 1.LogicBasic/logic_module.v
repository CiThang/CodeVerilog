module logic_module (
    input wire a,
    input wire b,
    output wire x,// AND
    output wire y,// OR
    output wire z,// XOR
    output wire w,// NOT
    output wire v // NAND
);
    // Cổng AND
    assign x = a & b; 

    // Cổng OR
    assign y = a | b;

    // Cổng XOR
    assign z = a ^ b;

    // Cổng NOT
    assign w = ~a;

    // Cổng NAND
    assign v = ~(a & b);

endmodule