`timescale 1ns / 1ps

module ripple_adder_sim;

reg A, B, Cin;
wire Cout, S;

ripple_adder ttul(.A(A), .B(B), .Cin(Cin), .Cout(Cout), .S(S));

initial
begin
    A = 0; B = 0; Cin = 0;
    #10 A = 1;
    #10 B = 1; A = 0;
    #10 A = 1;
    #10 Cin = 1; A = 0; B = 0;
    #10 A = 1;
    #10 B = 1; A = 0;
    #10 A = 1;
    #10;
end

endmodule