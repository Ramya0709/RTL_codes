module dff_t;
reg clk,d,rst;
wire q,qb;
dff d1(clk,d,rst,q,qb);
initial
begin
clk=1'b0;rst=1'b0;
end
always #5 clk=~clk;
initial
begin
d=1'b0;rst=1'b1;
#10 rst=1'b0;
#10 d=1'b1;
#10 d=1'b0;
#20 $finish;
end
endmodule