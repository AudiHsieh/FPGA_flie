`timescale 1ms / 1us

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:08 05/25/2022
// Design Name:   top
// Module Name:   C:/Users/AudiHsieh/Desktop/FPGA/traffic/traffic/top_tb.v
// Project Name:  traffic
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
	reg s;
	reg clk;

	// Outputs
	wire green;
	wire yellow;
	wire red;
	wire camera;

	// Instantiate the Unit Under Test (UUT)
	traffic uut (
		.green(green), 
		.yellow(yellow), 
		.red(red), 
		.s(s), 
		.camera(camera),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		clk = 1;
		#1000;
		s = 1;
		#25000;
		s = 0;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
     always #500 clk=~clk; 
endmodule

