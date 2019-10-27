`timescale 1ns / 1ps

module eightbit_counter_t_flipflop(CLK, Reset, T, Q);

// Define external wires
input CLK;
input Reset;
input T;
output [7:0] Q;

d_flipflop T0(.CLK(CLK), .Reset(Reset), .T(T), .Q(Q[0]));
d_flipflop T1(.CLK(CLK), .Reset(Reset), .T(T && Q[0]), .Q(Q[1]));     
d_flipflop T2(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1]), .Q(Q[2]));     
d_flipflop T3(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1] && Q[2]), .Q(Q[3]));     
d_flipflop T4(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1] && Q[2] && Q[3]), .Q(Q[4]));     
d_flipflop T5(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1] && Q[2] && Q[3] && Q[4]), .Q(Q[5]));     
d_flipflop T6(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5]), .Q(Q[6]));     
d_flipflop T7(.CLK(CLK), .Reset(Reset), .T(T && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6]), .Q(Q[7]));

endmodule