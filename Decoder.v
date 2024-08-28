`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 10:19:48 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder( 
input clk,
input [31:0] inst, 
output [4:0]rs1_select,rs2_select,rd_select,
output reg [31:0]inst_r);
  
 
always@(posedge clk) 
inst_r<=inst;

assign rs1_select = inst_r[19:15]; 
assign rs2_select = inst_r[24:20];
assign rd_select  = inst_r[11:7];

endmodule
