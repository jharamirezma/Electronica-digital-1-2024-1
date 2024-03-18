`include "compuertas.v"
`timescale 1ps/1ps


module compuertas_tb();

reg A_tb;
reg B_tb;
reg C_tb;

wire S1_tb;
wire S2_tb;

compuertas uut(
    .A(A_tb),
    .B(B_tb),
    .C(C_tb),
    .S1(S1_tb),
    .S2(S2_tb)
);

initial begin 
    A_tb = 0;
    B_tb = 0;
    C_tb = 0;
    #100;
    A_tb = 1;
    B_tb = 0;
    C_tb = 1;
    #100;
end 

initial begin: TEST_CASE
    $dumpfile("compuertas.vcd");
    $dumpvars(-1, uut);
    #400 $finish;
end 

endmodule

