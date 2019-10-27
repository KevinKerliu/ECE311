`timescale 1ns / 1ps

module decoder_sim;

reg [2:0]SW;
wire [7:0]LED;
integer k;

decoder ttul(.Enable(1), .SW(SW), .LED(LED));

initial
begin
    SW = 0;
    
    for (k = 0; k < 8; k = k+1)
        #5 SW = k;
        
    #10;
end

endmodule