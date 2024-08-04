module jkff(clk,j,k,rst,q,qb);
input clk,j,k,rst;
output q,qb;
reg [1:0]jk;
reg q,qb;
always@(posedge clk)
begin
jk={j,k};
if(rst)
begin
q=1'b0;qb=1'b1;
end
else
case(jk)
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=~q;
endcase
qb=~q;
end
endmodule
