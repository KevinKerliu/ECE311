`timescale 1ns / 1ps

module look_ahead_adder

// Input and output ports
(A,
B,
Cin,
C,
S,
P,
G);


// Define external wires
input wire [0:0]A;
input wire [0:0]B;
input wire [0:0]Cin;
output wire [0:0]C;
output wire [0:0]S;
output wire [0:0]P;
output wire [0:0]G;

// Define internal wires 
wire [0:0]AxorB;
wire [0:0]AxorBandCin;
wire [0:0]AandB;

// Logic gates
assign AxorB = A ^ B;
assign AandB = A & B;

assign AxorBandCin = Cin & AxorB;
assign C = G | (P & Cin);

assign P = A | B;
assign G = A & B;
assign S = AxorB ^ Cin;

endmodule
