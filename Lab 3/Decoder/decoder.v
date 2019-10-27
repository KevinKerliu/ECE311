`timescale 1ns / 1ps

module decoder(Enable, SW, LED);


// Define external wires
input wire [0:0] Enable;
input wire [2:0] SW;
output wire [7:0] LED;

// Define internal wires 
wire [2:0] notSW;

// Logic
assign notSW = ~SW;
assign LED[0] = (notSW[0] & notSW[1] & notSW[2]) & Enable;
assign LED[1] = (SW[0] & notSW[1] & notSW[2]) & Enable;
assign LED[2] = (notSW[0] & SW[1] & notSW[2]) & Enable;
assign LED[3] = (SW[0] & SW[1] & notSW[2]) & Enable;
assign LED[4] = (notSW[0] & notSW[1] & SW[2]) & Enable;
assign LED[5] = (SW[0] & notSW[1] & SW[2]) & Enable;
assign LED[6] = (notSW[0] & SW[1] & SW[2]) & Enable;
assign LED[7] = (SW[0] & SW[1] & SW[2]) & Enable;

endmodule
