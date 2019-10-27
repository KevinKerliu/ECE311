`timescale 1ns / 1ps

module behavioral_mux(X, Y, S, Z);

// Define external wires
input wire [1:0] X;
input wire [1:0] Y;
input wire [0:0] S;
output reg [1:0] Z;

// Logic
always @(X or Y or S)
begin
    if(S == 0)
        Z = X;
    else
        Z = Y; 
end

endmodule