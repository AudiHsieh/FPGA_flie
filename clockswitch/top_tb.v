`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:48 08/23/2022
// Design Name:   top
// Module Name:   C:/Users/Audi/Desktop/FPGA/clockswitch/top_tb.v
// Project Name:  clockswitch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
reg          clk_100mhz, clk_200mhz ;
   reg          rstn ;
   reg          sel ;
   wire         clk_out ;
 
   always #(2.5)    clk_200mhz  = ~clk_200mhz ;
   always @(posedge clk_200mhz)
                    clk_100mhz  = #1 ~clk_100mhz ;
 
   initial begin
      clk_100mhz  = 0 ;
      clk_200mhz  = 0 ;
      rstn        = 0 ;
      sel         = 1 ;
      #11 rstn    = 1 ;
      #36.2 sel   = ~sel ;
      #119.7 sel   = ~sel ;
   end
 
   top u_clk_switch(
     .rstn      (rstn),
     .clk1      (clk_100mhz),
     .clk2      (clk_200mhz),
     .sel_clk1  (sel),
     .clk_out   (clk_out));
 
   initial begin
      forever begin
         #100;
         if ($time >= 10000)  $finish ;
      end
   end
 
endmodule

