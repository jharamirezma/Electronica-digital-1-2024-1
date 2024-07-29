module cf_divider(clk, rst, fdiv);

input clk;
input rst;
output reg fdiv;

parameter cont = 800000;
parameter tam = $clog2(cont);
reg [$clog2(800000)-1:0] counter;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        counter <= 'd0;
        fdiv <= 1'b0;
    end
    else if (counter == cont) begin 
        counter <= 'd0;
        fdiv <= ~fdiv;
    end else begin
    counter <= counter+1;
    end
end

endmodule