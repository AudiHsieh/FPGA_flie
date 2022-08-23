`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:07 05/04/2022 
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
    input [3:0]button,
    output [3:0]floor,
    input clk,
	 input rst
    );
	 reg [23:0] div=6'h000000;
	 reg ledtime=0;
	 reg [1:0]state;
	 reg [1:0]next_state;
	 reg [3:0]floor=4'b0001;

		
		always@(posedge clk or negedge rst)begin
			if(~rst)begin
				state<=2'b0;
				next_state<=2'b0;
			end
			else
				state<=next_state;
			end
			
		always@(*)begin
			case(state)
				2'b0:begin
					if(button==4'b0001)
						next_state=next_state;
					else
						next_state=next_state+1'b1;
					end
				2'b01:begin
					if(button==4'b0001)
						next_state=next_state-1'b1;
					else if(button==4'b0010)
						next_state=next_state;
					else
						next_state=next_state+1'b1;
					end
				2'b10:begin
					if(button==4'b0100)
						next_state=next_state;
					else if(button==4'b1000)
						next_state=next_state+1'b1;
					else
						next_state=next_state-1'b1;
					end
				2'b11:begin
					if(button==4'b1000)
						next_state=next_state;
					else
						next_state=next_state-1'b1;
					end
				endcase
			end

			
			always@(*)begin
				case(state)
					2'b0:floor=4'b0001;
					2'b01:floor=4'b0010;
					2'b10:floor=4'b0100;
					2'b11:floor=4'b1000;
				endcase
			end

endmodule
