`timescale 1ns / 1ps

module threebit_multiplier(data,addr);
    
output [5:0] data;
input [5:0] addr;

// Defining 64x6 ROM
reg [5:0] ROM [64:0];

// Reading contents
assign data = ROM[addr];

// Loading contents
initial $readmemb("ROM_data.txt", ROM, 0, 63);

endmodule