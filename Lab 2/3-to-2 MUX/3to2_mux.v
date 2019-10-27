`timescale 1ns / 1ps

module three_to_two_mux(W, X, Y, Z, S);

// Define internal registers
reg [1:0] Z1;

// Define external wires
input wire [1:0] W;
input wire [1:0] X;
input wire [1:0] Y;
output reg [1:0] Z;
input wire [1:0] S;

always @(W or X or S[1])
begin
    if(S[1] == 0)
        Z1 = W;
    else
        Z1 = X; 
end

always @(Z1 or Y or S[0])
begin
    if(S[0] == 0)
        Z = Z1;
    else
        Z = Y; 
end

endmodule