`timescale 1ns / 1ps

module eightbit_counter_t_flipflop_sim;

reg CLK;
reg Reset;
reg T;
wire [7:0] Q;
integer k;

eightbit_counter_t_flipflop ttul(.CLK(CLK), .Reset(Reset), .T(T), .Q(Q));

always #1 CLK = !CLK;

initial
    begin
        // Reset low (reset), toggle low
        CLK = 0; Reset = 0; T = 0;
        for(k = 0; k < 8; k = k + 1)
            #2;
        
        // Reset low (reset), toggle high 
        CLK = 0; Reset = 0; T = 1;
        for(k = 0; k < 8; k = k + 1)
            #2;
        
        // Reset high (no reset), toggle low
        CLK = 0; Reset = 1; T = 0;
        for(k = 0; k < 8; k = k + 1)
            #2;
        
        // Reset high (no reset), toggle high
        CLK = 0; Reset = 1; T = 1;
        for(k = 0; k < 256; k = k + 1)
            #2;
    end 

endmodule
