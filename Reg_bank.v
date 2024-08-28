`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 10:19:48 PM
// Design Name: 
// Module Name: Reg_bank
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


module Reg_bank( 
 input clk ,
 input [4:0]rs1_select,rs2_select,dataW_select,
 input [31:0] dataW,
 output reg [31:0] rs1,rs2);
 reg[31:0]regBank[31:0];
 always@(posedge clk)
 begin
 regBank[0]<=32'h0;
 regBank[1]<=32'h0000000f;
 regBank[2]<=32'h0000000c;
 regBank[3]<=32'hff0000ff;
 regBank[4]<=32'h00000004;
 regBank[5]<=32'h70000000;
 regBank[6]<=32'hf0000000;
 
 rs1<=regBank[rs1_select];
 rs2<=regBank[rs2_select];
 regBank[dataW_select]<=dataW;
 end
endmodule
