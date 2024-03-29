`timescale 1ns / 1ps

module ROM_multiplier(data,addr);
    
output [3:0] data;
input [3:0] addr;

// Defining 16x4 ROM
reg [3:0] ROM [15:0];

// Reading contents
assign data = ROM[addr];

// Loading contents
initial $readmemb("ROM_data.txt", ROM, 0, 15);

endmodule