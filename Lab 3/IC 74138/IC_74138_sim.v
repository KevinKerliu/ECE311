`timescale 1ns / 1ps

module IC_74138_sim;

reg [2:0]X;
reg [2:0]G;
wire [7:0]Y;
integer k;

IC_74138 ttul(.G(G), .X(X), .Y(Y));

initial
begin 
    X = 0; G[0] = 0; G[1] = 1; G[2] = 1;
    for (k = 0; k < 8; k = k+1)
        #5 X = k;
        
    #10;
    
    X = 0; G[0] = 1; G[1] = 0; G[2] = 1;
    for (k = 0; k < 8; k = k+1)
        #5 X = k;
        
    #10;

    X = 0; G[0] = 0; G[1] = 1; G[2] = 0;
    for (k = 0; k < 8; k = k+1)
        #5 X = k;
        
    #10;
    
    X = 0; G[0] = 1; G[1] = 0; G[2] = 0;
    for (k = 0; k < 8; k = k+1)
        #5 X = k;
        
    #10;     
end

endmodule
