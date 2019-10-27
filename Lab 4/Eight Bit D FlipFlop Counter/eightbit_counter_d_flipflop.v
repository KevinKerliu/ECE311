`timescale 1ns / 1ps

module eightbit_counter_d_flipflop(CLK, D, Clear, Q);

// Note: Because we are implementing a counter we do not need an initial input for D

// Define external wires
input CLK;
input D;
input Clear;
output [7:0] Q;

d_flipflop D0(.CLK(CLK), .D(~Q[0]), .Clear(Clear), .Q(Q[0]));
d_flipflop D1(.CLK(~Q[0]), .D(~Q[1]), .Clear(Clear), .Q(Q[1]));     
d_flipflop D2(.CLK(~Q[1]), .D(~Q[2]), .Clear(Clear), .Q(Q[2]));     
d_flipflop D3(.CLK(~Q[2]), .D(~Q[3]), .Clear(Clear), .Q(Q[3]));     
d_flipflop D4(.CLK(~Q[3]), .D(~Q[4]), .Clear(Clear), .Q(Q[4]));     
d_flipflop D5(.CLK(~Q[4]), .D(~Q[5]), .Clear(Clear), .Q(Q[5]));     
d_flipflop D6(.CLK(~Q[5]), .D(~Q[6]), .Clear(Clear), .Q(Q[6]));     
d_flipflop D7(.CLK(~Q[6]), .D(~Q[7]), .Clear(Clear), .Q(Q[7]));

endmodule