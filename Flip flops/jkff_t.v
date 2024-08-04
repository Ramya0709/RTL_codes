module jkff_t;
reg clk,j,k,rst;
wire q,qb;
jkff j1(clk,j,k,rst,q,qb);
initial
begin
clk=1'b0;rst=1'b0;
end
always #5 clk=~clk;
initial
begin
j=1'b0;k=1'b0;rst=1'b1;
#10 rst=1'b0;
#10 j=1'b0;k=1'b1;
#10 j=1'b1;k=1'b0;
#10 j=1'b1;k=1'b1;
#20 $finish;
end
endmodule