`timescale 1ns / 1ps

module d_flipflop(CLK, D, Clear, Q);

input CLK;
input D;
input Clear;
output reg Q;

always @(posedge CLK or posedge Clear)
    if(Clear)
        Q <= 1'b0;
    else
        Q <= D;

endmodule
