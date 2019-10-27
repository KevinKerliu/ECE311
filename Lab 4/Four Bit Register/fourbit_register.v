`timescale 1ns / 1ps

module fourbit_register(CLK, D, Reset, Load, Q);

// Define external wires
input CLK;
input wire [3:0] D;
input wire [0:0] Reset;
input wire [0:0] Load;
output reg [3:0] Q;

// Logic
always @(posedge CLK)
    if(Reset)
        begin
            Q <= 0;
        end
    else if (Load)
        begin
            Q <= D;
        end   

endmodule
