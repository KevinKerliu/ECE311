`timescale 1ns / 1ps

module eightbit_counter_d_flipflop_sim;

reg CLK;
reg D;
reg Clear;
wire [7:0] Q;
integer k;

eightbit_counter_d_flipflop ttul(.CLK(CLK), .D(D), .Clear(Clear), .Q(Q));

always #0.5 CLK = !CLK;

initial
    begin
        // Clear high, input low
        CLK = 0; Clear = 1; D = 0;
        for(k = 0; k < 8; k = k + 1)
            #1;
            
        // Clear low, input low
        CLK = 0; Clear = 0; D = 0;
        for(k = 0; k < 256; k = k + 1)
            #1;
            
        // Clear high, input high
        CLK = 0; Clear = 1; D = 1;
        for(k = 0; k < 8; k = k + 1)
            #1;
        
        // Clear low, input high
        CLK = 0; Clear = 0; D = 1;
        for(k = 0; k < 256; k = k + 1)
            #1;        
    end 

endmodule
