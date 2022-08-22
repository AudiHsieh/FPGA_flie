`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:09:58 05/19/2022
// Design Name:   top
// Module Name:   C:/Users/AudiHsieh/Desktop/FPGA/convolution/convolution/top_tb.v
// Project Name:  convolution
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

module convolution_tb;

	// Inputs
	reg [1:0] m;
	reg rst;

	// Outputs
	wire [8:0] out0;
	wire [8:0] out1;
	wire [8:0] out2;
	wire [8:0] out3;
	wire ans;

	// Instantiate the Unit Under Test (UUT)
	convolution uut (
		.out0(out0), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.ans(ans), 
		.m(m),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		#50;
		rst = 1;
		#50;
		rst = 0;
		m = 2'b00;
		#100;
		m = 2'b01;
		#100;
		m = 2'b10;
		#100;
		m = 2'b11;
	#1000 $finish;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end   
endmodule

