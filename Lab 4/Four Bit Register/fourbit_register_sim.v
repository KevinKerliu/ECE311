`timescale 1ns / 1ps

module fourbit_register_sim;

reg CLK; 
reg [3:0] D;  
reg Reset;
reg Load;
wire [3:0] Q;
integer k;

   
fourbit_register ttul(.CLK(CLK), .D(D), .Reset(Reset), .Load(Load), .Q(Q));

// Digital clock 
always #5 CLK = !CLK;
    
initial
    begin
        CLK = 0; D = 0; Reset = 1; Load = 0; 
        for(k = 0; k < 16; k = k + 1)
            #5 D = k;
        #10;
        
        CLK = 0; D = 0; Reset = 0; Load = 1;
        for(k = 0; k < 16; k = k + 1)
            #10 D = k;
        #10;
    end

endmodule
