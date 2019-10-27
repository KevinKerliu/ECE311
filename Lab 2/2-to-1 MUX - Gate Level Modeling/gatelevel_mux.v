`timescale 1ns / 1ps

module gatelevel_mux(X, Y, S, Z);

// Define external wires
input wire [1:0] X;
input wire [1:0] Y;
input wire [0:0] S;
output wire [1:0] Z;

// Define internal wires   
wire [0:0] notS;
wire [1:0] X_and_notS;
wire [1:0] Y_and_S;

//Logic
not(notS, S);
and(X_and_notS[0],X[0],notS);
and(X_and_notS[1],X[1],notS);
and(Y_and_S[0],Y[0],S); 
and(Y_and_S[1],Y[1],S);
or(Z[0],X_and_notS[0],Y_and_S[0]);
or(Z[1],X_and_notS[1],Y_and_S[1]);

endmodule