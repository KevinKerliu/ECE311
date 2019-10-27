`timescale 1ns / 1ps

module IC_74138(X, Y, G);

// Define external wires
input wire [2:0] X;
input wire [2:0] G;
output wire [7:0] Y;

// Define internal wires 
wire [0:0] Enable;
wire [7:0] LED;

// Logic
assign Enable = G[0] & (~G[1]) & (~G[2]);
assign Y = ~LED;
decoder demux(.Enable(Enable), .SW(X), .LED(LED));

endmodule
