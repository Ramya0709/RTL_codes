module srff_t;
reg clk,s,r,rst;
wire q,qb;
srff s1(clk,s,r,rst,q,qb);
initial
begin
clk=1'b0;rst=1'b0;
end
always #5 clk=~clk;
initial
begin
s=1'b0;r=1'b0;rst=1'b1;
#10 rst=1'b0;
#10 s=1'b0;r=1'b1;
#10 s=1'b1;r=1'b0;
#10 s=1'b1;r=1'b1;
#20 $finish;
end
endmodule