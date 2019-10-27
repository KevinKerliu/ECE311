`timescale 1ns / 1ps

module t_flipflop(CLK, Reset, T, Q);

// Define external wires
input CLK;
input Reset;
input T;
output reg[0:0] Q;

always @(negedge CLK)
    if(!Reset)
        Q <= 1'b0;
    else if (T)
        Q <= ~Q;

endmodule
