`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:31 05/18/2022 
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
module convolution(
    output [8:0]out0,
    output [8:0]out1,
    output [8:0]out2,
    output [8:0]out3,
    output ans,
	 input [1:0]m,
	 input rst
    );
	integer i,j,k,c,b,a,z;
	integer sum0 = 0;
	integer sum1 = 0;
	integer sum2= 0;
	integer sum3 = 0;
	integer sum4 = 0;
	integer sum5 = 0;
	integer sum6= 0;
	integer sum7 = 0;
	integer sum8 = 0;
	integer sum9 = 0;
	integer sum10= 0;
	integer sum11= 0;
	integer sum12 = 0;
	integer sum13 = 0;
	integer sum14= 0;
	integer sum15 = 0;
	integer sum_all = 0;
	reg [1:9]k0 = 9'b100110000;
	reg [1:9]k1 = 9'b000010111;
	reg [1:9]k2 = 9'b111000111;
	reg [1:9]k3 = 9'b111111111;
	reg [4:0]in_arr[15:0];
	reg [8:0]out0 = 9'd0;
	reg [8:0]out1 = 9'd0;
	reg [8:0]out2 = 9'd0;
	reg [8:0]out3 = 9'd0;
	reg ans;
	always@(posedge rst)begin
		for(i=0;i<16;i=i+1)begin
			in_arr[i] <= i+1;
		end
	end
	
	always@(*)begin
		case(m)
			2'b0:begin
				c=0;
				b=0;
				a=0;
				z=0;
				for(j=0;j<9;j=j+4)begin
					for(k=0;k<3;k=k+1)begin
						c = c+1;
						sum0 = sum0 +(in_arr[k+j]*k0[c]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=1;k<4;k=k+1)begin
						b = b+1;
						sum1 = sum1 +(in_arr[k+j]*k0[b]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=4;k<7;k=k+1)begin
						a = a+1;
						sum2 = sum2 +(in_arr[k+j]*k0[a]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=5;k<8;k=k+1)begin
						z = z+1;
						sum3 = sum3 +(in_arr[k+j]*k0[z]);
					end
				end
				out0 = sum0;
				out1 = sum1;
				out2 = sum2;
				out3 = sum3;
			end
			
			2'b01:begin
				c=0;
				b=0;
				a=0;
				z=0;
				for(j=0;j<9;j=j+4)begin
					for(k=0;k<3;k=k+1)begin
						c = c+1;
						sum4 = sum4 +(in_arr[k+j]*k1[c]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=1;k<4;k=k+1)begin
						b = b+1;
						sum5 = sum5 +(in_arr[k+j]*k1[b]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=4;k<7;k=k+1)begin
						a = a+1;
						sum6 = sum6 +(in_arr[k+j]*k1[a]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=5;k<8;k=k+1)begin
						z = z+1;
						sum7 = sum7 +(in_arr[k+j]*k1[z]);
					end
				end
				out0 = sum4;
				out1 = sum5;
				out2 = sum6;
				out3 = sum7;
			end
			
			2'b10:begin
				c=0;
				b=0;
				a=0;
				z=0;
				for(j=0;j<9;j=j+4)begin
					for(k=0;k<3;k=k+1)begin
						c = c+1;
						sum8 = sum8 +(in_arr[k+j]*k2[c]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=1;k<4;k=k+1)begin
						b = b+1;
						sum9 = sum9 +(in_arr[k+j]*k2[b]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=4;k<7;k=k+1)begin
						a = a+1;
						sum10 = sum10 +(in_arr[k+j]*k2[a]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=5;k<8;k=k+1)begin
						z = z+1;
						sum11 = sum11 +(in_arr[k+j]*k2[z]);
					end
				end
				out0 = sum8;
				out1 = sum9;
				out2 = sum10;
				out3 = sum11;
			end
			
			2'b11:begin
				c=0;
				b=0;
				a=0;
				z=0;
				for(j=0;j<9;j=j+4)begin
					for(k=0;k<3;k=k+1)begin
						c = c+1;
						sum12 = sum12 +(in_arr[k+j]*k3[c]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=1;k<4;k=k+1)begin
						b = b+1;
						sum13 = sum13 +(in_arr[k+j]*k3[b]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=4;k<7;k=k+1)begin
						a = a+1;
						sum14 = sum14 +(in_arr[k+j]*k3[a]);
					end
				end
				for(j=0;j<9;j=j+4)begin
					for(k=5;k<8;k=k+1)begin
						z = z+1;
						sum15 = sum15 +(in_arr[k+j]*k3[z]);
					end
				end
				out0 = sum12;
				out1 = sum13;
				out2 = sum14;
				out3 = sum15;
			end
		endcase
		sum_all = out0+out1+out2+out3;
		if(sum_all>40)
			ans = 1;
		else
			ans = 0;
	end
	
					










endmodule
