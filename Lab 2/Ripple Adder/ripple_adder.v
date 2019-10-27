`timescale 1ns / 1ps

module ripple_adder

// Input and output ports
(A,
B,
Cin,
S,
Cout);

// Define external wires
input wire [0:0]A;
input wire [0:0]B;
input wire [0:0]Cin;
output wire [0:0]S;
output wire [0:0]Cout;

// Define internal wires 
wire [0:0]AxorB;
wire [0:0]AxorBandCin;
wire [0:0]AandB;

// Logic gates
assign AxorB = A ^ B;
assign AandB = A & B;

assign AxorBandCin = Cin & AxorB;
assign Cout = AxorBandCin | AandB;

assign S = AxorB ^ Cin;

endmodule
