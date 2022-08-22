`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:47 05/11/2022
// Design Name:   top
// Module Name:   C:/Users/AudiHsieh/Desktop/FPGA/multipliter/multiplier/top_tb.v
// Project Name:  multiplier
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
	reg [1:0] a;
	reg [1:0] b;
	reg clk;
	reg rst_n;

	// Outputs
	wire [3:0] p;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.a(a), 
		.b(b), 
		.clk(clk),
		.rst_n(rst_n),
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		clk = 0;
		rst_n=1;
		// Wait 100 ns for global reset to finish
		#10;
		rst_n=0;
		#10;
		rst_n=1;
		#100;
		a=2'b10;
		b=2'b01;	
		#100;		
		a=2'b01;
		b=2'b01;	
		#100;
		a=2'b11;
		b=2'b01;
		#100;
		a=2'b11;
		b=2'b11;
		#100;
        
		// Add stimulus here

	end
	always #20 clk=~clk;
      
endmodule

