`include "sum_1_bit.v"

module sum2b(A, B, Ci, S, Co);


input [1:0] A;
input [1:0] B;
input Ci;
output [1:0] S;   
output Co;

wire C1;


sum1b sum0(.a(A[0]), .b(B[0]), .ci(1'b0), .s(S[0]), .co(C1));
sum1b sum1(.a(A[1]), .b(B[1]), .ci(C1), .s(S[1]), .co(Co));


endmodule