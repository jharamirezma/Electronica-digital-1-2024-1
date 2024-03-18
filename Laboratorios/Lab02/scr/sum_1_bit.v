module sum1b (
    input  a,
    input  b,
    input  ci,
    output  s,
    output co
);

wire xor1;
wire and1;
wire and2;

assign xor1 = a ^ b;
assign and1 = xor1 & ci;
assign and2 = a & b;
assign s = xor1 ^ ci;
assign co = and1 | and2;


endmodule
