`timescale 1ns / 1ps

module fourbit_ripple_adder(A, B, S, Cout);

// Define external wires
input wire [3:0] A;
input wire [3:0] B;
output wire [3:0] S;
output wire [0:0] Cout;

// Predetermine Cin (cannot change this on the FPGA, not enough switches)
integer Cin = 0;
// Cin = 0;
// Cin = 1;

// Define internal wires 
wire [0:0] CoutFA1;
wire [0:0] CoutFA2;
wire [0:0] CoutFA3;

ripple_adder FA1 (.A(A[0]), .B(B[0]), .Cin(Cin), .Cout(CoutFA1), .S(S[0]));
ripple_adder FA2 (.A(A[1]), .B(B[1]), .Cin(CoutFA1), .Cout(CoutFA2), .S(S[1]));
ripple_adder FA3 (.A(A[2]), .B(B[2]), .Cin(CoutFA2), .Cout(CoutFA3), .S(S[2]));
ripple_adder FA4 (.A(A[3]), .B(B[3]), .Cin(CoutFA3), .Cout(Cout), .S(S[3]));

endmodule
