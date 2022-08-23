`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:11 08/23/2022 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
	 input               rstn ,
    input               clk1,
    input               clk2,
    input               sel_clk1 , // 1 clk1, 0 clk2
    output              clk_out
    );
	reg [2:0]            sel_clk1_r ;
   reg [1:0]            sel_clk1_neg_r ;
   reg [2:0]            sel_clk2_r ;
   reg [1:0]            sel_clk2_neg_r ;
	always@(posedge clk1 or negedge rstn)begin
		if (!rstn) begin
         sel_clk1_r     <= 3'b111 ; //�`�N�q�{��
      end
      else begin
         //sel clk1, and not sel clk2
         sel_clk1_r     <= {sel_clk1_r[1:0], sel_clk1 & (!sel_clk2_neg_r[1])} ;
      end
   end
 
   //�b�U���u�A�ϥ�2�Žw�s������ܫH��
   always @(negedge clk1 or negedge rstn) begin
      if (!rstn) begin
         sel_clk1_neg_r <= 2'b11 ; //�`�N�q�{��
      end
      else begin
         sel_clk1_neg_r <= {sel_clk1_neg_r[0], sel_clk1_r[2]} ;
      end
   end
 
   //�ϥ�3�Žw�s�A�P�B�t�@�Ӯ�������H���P�쥻��������H����"and"�޿�ާ@
   always @(posedge clk2 or negedge rstn) begin
      if (!rstn) begin
         sel_clk2_r     <= 3'b0 ; //�`�N�q?��
      end
      else begin
         //sel clk2, and not sel clk1
         sel_clk2_r     <= {sel_clk2_r[1:0], !sel_clk1 & (!sel_clk1_neg_r[1])} ;
      end
   end
 
   //�b�U���u�A�ϥ�2�Žw�s������ܫH��
   always @(negedge clk2 or negedge rstn) begin
      if (!rstn) begin
         sel_clk2_neg_r <= 2'b0 ; //�`�N�q�{��
      end
      else begin
         sel_clk2_neg_r <= {sel_clk2_neg_r[0], sel_clk2_r[2]} ;
      end
   end
	
	
   wire clk1_gate, clk2_gate ;
   and (clk1_gate, clk1, sel_clk1_neg_r[1]) ;
   and (clk2_gate, clk2, sel_clk2_neg_r[1]) ;
   or  (clk_out, clk1_gate, clk2_gate) ;
 
endmodule
