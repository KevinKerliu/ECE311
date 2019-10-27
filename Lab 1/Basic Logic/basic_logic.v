`timescale 1ns / 1ps

module basic_logic(A, B, C, D);

//Define inputs and outputs
input wire [0:0] A;
input wire [0:0] B;
input wire [0:0] C;
output wire [0:0] D;

// Define internal wires
wire wire1;

// Logic gates
or(wire1, A, B);
and(D, C, wire1);

endmodule
