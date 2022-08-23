`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:28 05/04/2022
// Design Name:   top
// Module Name:   C:/Users/AudiHsieh/Desktop/FPGA/CH10/top_tb.v
// Project Name:  CH10
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
	reg [3:0] button;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] floor;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.button(button), 
		.floor(floor),
		.rst(rst),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		button = 4'b0001;
		clk = 0;
		rst = 1;
		#10;
		rst = 0;
		#10;
		rst = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
      button=4'b0100;
		#100;
		button=4'b0001;
		#100;
		button=4'b1000;
		#100;
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

