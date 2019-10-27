`timescale 1ns / 1ps

module fourbit_left_shift_register(CLK, ParallelIn, Load, ShiftEn, ShiftIn, RegContent, ShiftOut);

// Define external wires
input CLK;
input wire [3:0] ParallelIn;
input wire [0:0] Load;
input wire [0:0] ShiftEn;
input wire [0:0] ShiftIn;
output wire [3:0] RegContent;
output wire [0:0] ShiftOut;

reg [3:0] temp;

// Logic
always @(posedge CLK)
    if(Load)
        begin
            temp <= ParallelIn;
        end
    else if (ShiftEn)
        begin
            temp <= {RegContent[2:0], ShiftIn};
        end   
    assign ShiftOut = temp[3];
    assign RegContent = temp;

endmodule
