`timescale 1ns / 1ps

module dataflow_mux_sim;

reg [1:0] X;
reg [1:0] Y;
reg [0:0] S;
wire [1:0] Z;

dataflow_mux ttul(.X(X),.Y(Y),.S(S),.Z(Z));

initial
    begin
    X = 0;
    Y = 0;
    S = 0;
    #10 X = 1;
    #10 Y = 1;
    #10 X = 3; Y = 0;
    #10 X = 2; Y = 3;
    #10 S = 1;
    #10 X = 1;
    #10 Y = 1;
    #10 X = 3; Y = 0;
    #10 X = 2; Y = 3;
    #20;
    end

endmodule
