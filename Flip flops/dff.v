module dff(clk,d,rst,q,qb);
input clk,d,rst;
output q,qb;
reg q,qb;
always@(posedge clk)
begin
if(rst)
begin
q=1'b0;qb=1'b1;
end
else 
if(d==1)
q=1'b1;
else 
q=1'b0;
qb=~q;
end 
endmodule