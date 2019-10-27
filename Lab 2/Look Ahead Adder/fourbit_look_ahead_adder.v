`timescale 1ns / 1ps

module fourbit_look_ahead_adder(A, B, Cout, S);


// Define external wires
input wire [3:0] A;
input wire [3:0] B;
output wire [0:0] Cout;
output wire [3:0] S;

// Define internal wires
wire [2:0] C;
wire [3:0] P;
wire [3:0] G;

// Predetermine Cin (cannot change this on the FPGA, not enough switches)
integer Cin = 0;
// Cin = 0;
// Cin = 1;

look_ahead_adder FA1 (.A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .P(P[0]), .G(G[0]), .S(S[0]));
look_ahead_adder FA2 (.A(A[1]), .B(B[1]), .Cin(C[0]), .C(C[1]), .P(P[1]), .G(G[1]), .S(S[1]));
look_ahead_adder FA3 (.A(A[2]), .B(B[2]), .Cin(C[1]), .C(C[2]), .P(P[2]), .G(G[2]), .S(S[2]));
look_ahead_adder FA4 (.A(A[3]), .B(B[3]), .Cin(C[2]), .C(Cout), .P(P[3]), .G(G[3]), .S(S[3]));

endmodule
