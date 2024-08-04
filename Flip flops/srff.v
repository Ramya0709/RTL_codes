`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2024 18:19:01
// Design Name: SR flip flop
// Module Name: srff
// 
//////////////////////////////////////////////////////////////////////////////////


module srff(clk,s,r,rst,q,qb);
input clk,s,r,rst;
output q,qb;
reg [1:0]sr;
reg q,qb;
always@(posedge clk)
begin
sr={s,r};
if(rst)
begin
q=1'b0;qb=1'b1;
end
else
case(sr)
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=1'bz;
endcase
qb=~q;
end
endmodule
