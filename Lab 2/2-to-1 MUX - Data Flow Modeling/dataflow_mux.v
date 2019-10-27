`timescale 1ns / 1ps

module dataflow_mux(X, Y, S, Z);

// Define external wires
input wire [1:0] X;
input wire [1:0] Y;
input wire [0:0] S;
output wire [1:0] Z;

// Logic
assign #3 Z[0] = (X[0] & ~S) | (Y[0] & S);
assign #3 Z[1] = (X[1] & ~S) | (Y[1] & S);

endmodule