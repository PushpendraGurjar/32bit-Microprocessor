`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 10:19:48 PM
// Design Name: 
// Module Name: Processor_32bit
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


module Processor_32bit(
                  input clk,
                  input [31:0]inst,
                  output [31:0] out  );
wire [4:0] rs1_select,rs2_select,rd_select;
wire [3:0] cntrl;
wire[31:0] rs1,rs2;
wire [31:0] inst_r,outp;
 reg [4:0] rd_select_buf1, rd_select_buf2;
                   
     Decoder decode(clk,inst,rs1_select,rs2_select,rd_select ,inst_r); 
      always@(posedge clk)
      begin
       rd_select_buf1<=  rd_select; 
       rd_select_buf2 <=rd_select_buf1;     
       end
     Control control_signals (clk,inst_r,cntrl);  
     
            
     ALU Alu( clk, rs1,rs2 ,  cntrl, outp );
     
     
     Reg_bank  RB( clk , rs1_select,rs2_select,rd_select_buf2,outp, rs1,rs2);
     
    assign out =outp;
endmodule
