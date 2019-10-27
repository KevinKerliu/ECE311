`timescale 1ns / 1ps

module fourbit_left_shift_register_sim;

reg CLK;
reg [3:0] ParallelIn;
reg Load;
reg ShiftEn;
reg ShiftIn;
wire [3:0] RegContent;
wire ShiftOut;
integer k;
    
fourbit_left_shift_register ttul(.CLK(CLK), .ParallelIn(ParallelIn), .Load(Load), .ShiftEn(ShiftEn), .ShiftIn(ShiftIn), .RegContent(RegContent), .ShiftOut(ShiftOut));
    
always #1 CLK = !CLK;
    
initial
    begin
    CLK = 0; Load = 0; ShiftEn = 0; ShiftIn = 0;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4
    
    CLK = 0; Load = 0; ShiftEn = 0; ShiftIn = 1;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
            
    CLK = 0; Load = 0; ShiftEn = 1; ShiftIn = 0;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
            
    CLK = 0; Load = 0; ShiftEn = 1; ShiftIn = 1;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
            
    CLK = 0; Load = 1; ShiftEn = 0; ShiftIn = 0;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
    
    CLK = 0; Load = 1; ShiftEn = 0; ShiftIn = 1;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
    
    CLK = 0; Load = 1; ShiftEn = 1; ShiftIn = 0;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
    
    CLK = 0; Load = 1; ShiftEn = 1; ShiftIn = 1;
    for(k = 0; k < 16; k = k+1)
            #2 ParallelIn = k;
    #4;
    end

endmodule
