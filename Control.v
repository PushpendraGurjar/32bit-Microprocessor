`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 10:19:48 PM
// Design Name: 
// Module Name: Control
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


module Control(input clk, input [31:0] inst, output reg [3:0]cntrl);
parameter ADD =7'b000_0001,
          SUB =7'b001_0001,
          SLL =7'bb000_0011,
          SRL =7'b001_0011,
          SRA =7'b010_0011,
          SLT =7'b000_0111,
          SLTU=7'b001_0111,
          XOR =7'b000_1111,
          OR  =7'b001_1111,
          AND =7'b010_1111;
          
 always@(posedge clk)
begin
  case({inst[14:12],inst[3:0]})
 
          ADD: cntrl <= 4'h1;
          SUB: cntrl = 4'h2;
          SLL: cntrl <= 4'h3;
          SRL: cntrl <= 4'h4;
          SRA: cntrl <= 4'h5;
          SLT: cntrl <= 4'h6;
          SLTU: cntrl <= 4'h7;
          XOR: cntrl <= 4'h8;
          OR : cntrl <= 4'h9;
          AND: cntrl <= 4'ha;
          default :cntrl <= 4'h1;
          
endcase  
 end
endmodule
