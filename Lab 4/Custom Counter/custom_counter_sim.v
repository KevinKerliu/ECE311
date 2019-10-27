`timescale 1ns / 1ps

module custom_counter_sim;

reg CLK;
reg Reset;
reg Enable;
wire [2:0] Q;
integer k;

custom_counter ttul(.CLK(CLK), .Reset(Reset), .Enable(Enable), .Q(Q));

always #1 CLK = !CLK;

initial
    begin
        // Reset high, enable low
        CLK = 0; Reset = 1; Enable = 0;
        for(k = 0; k < 8; k = k + 1)
            #2;
            
        // Reset low, enable high
        CLK = 0; Reset = 0; Enable = 1;
        for(k = 0; k < 16; k = k + 1)
            #2;
            
        // Reset high, enable high
        CLK = 0; Reset = 1; Enable = 1;
        for(k = 0; k < 8; k = k + 1)
            #2;
        
        // Reset low, enable low
        CLK = 0; Reset = 1; Enable = 1;
        for(k = 0; k < 8; k = k + 1)
            #2;
             
    end 

endmodule
