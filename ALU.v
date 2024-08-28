`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 10:19:48 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
           input clk,
           input[31:0]rs1,rs2 ,
           input [3:0]cntrl,
           output reg [31:0] out
           );
always@(posedge clk)
begin

case(cntrl)
4'h1:  out= rs1+rs2;
4'h2:  out= rs1-rs2;
4'h3:  out= rs1<<rs2[4:0];
4'h4:  out= rs1>>rs2[4:0];
4'h5:  out=$signed(rs1)>>>rs2[4:0];
4'h6:  out= ($signed(rs1)<($signed(rs2)))?32'h1:32'h0;
4'h7:  out= (rs1<rs2) ?32'h1:32'h0;
4'h8:  out= rs1 ^ rs2[4:0];
4'h9:  out= rs1 | rs2[4:0];
4'ha:  out= rs1 & rs2[4:0];
default:  out=32'hffff ;
endcase
end
endmodule
