`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:14 05/11/2022 
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
    input [1:0] a,
    input [1:0] b,
	 input clk,
	 input  rst_n,
    output [3:0] p
    );
	
	reg [3:0] p;
	reg [3:0] store0;
	reg [3:0] store1;
	reg [3:0] mul_out01;
	reg [3:0] add01;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
			p <= 0;
        store0 <= 0;
        store1 <= 0;
			add01 <= 0;
    end
else begin
store0 <= b[0]? {2'b0, a} : 4'b0;
store1 <= b[1]? {1'b0, a, 1'b0} : 4'b0;

add01 <= store1 + store0;

mul_out01 <= add01;

p <= mul_out01;

    end
end
endmodule
