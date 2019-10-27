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
integer random;
    
fourbit_left_shift_register ttul(.CLK(CLK), .ParallelIn(ParallelIn), .Load(Load), .ShiftEn(ShiftEn), .ShiftIn(ShiftIn), .RegContent(RegContent), .ShiftOut(ShiftOut));
    
always #1 CLK = !CLK;
    
initial
    begin
    
    //Load
    CLK = 0; Load = 1; ShiftEn = 0; random = 0;
    for(k = 0; k < 16; k = k+1)
        begin
            #2 ParallelIn = k;
            random = $random;
            ShiftIn = random[0];
        end
    #4;
            
    // Shifting
    CLK = 0; Load = 0; ShiftEn = 1; random = 0;
    for(k = 0; k < 16; k = k+1)
        begin
            #2 ParallelIn = k;
            random = $random;
            ShiftIn = random[0];
        end
    #4;
            
     // Multiple States
    CLK = 0; Load = 0; ShiftEn = 0; random = 0;
    for(k = 0; k < 16; k = k+1)
        begin
            #2 ParallelIn = k;
            random = $random;
            ShiftIn = random[0];
         end
     #4;
            
      CLK = 0; Load = 1; ShiftEn = 1; random = 0;
      for(k = 0; k < 16; k = k+1)
        begin
            #2 ParallelIn = k;
            random = $random;
            ShiftIn = random[0];
        end
      #4;            
        
      end

endmodule
