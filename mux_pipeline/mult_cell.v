`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:36 08/15/2022 
// Design Name: 
// Module Name:    mult_cell 
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
module    mult_cell
    #(parameter N=4,
      parameter M=4)
    (
      input                     clk,
      input                     rstn,
      input                     en,
      input [M+N-1:0]           mult1,      //被乘?
      input [M-1:0]             mult2,      //乘?
      input [M+N-1:0]           mult1_acci, //上次累加?果

      output reg [M+N-1:0]      mult1_o,     //被乘?移位后保存值
      output reg [M-1:0]        mult2_shift, //乘?移位后保存值
      output reg [N+M-1:0]      mult1_acco,  //?前累加?果
      output reg                rdy );

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            rdy            <= 'b0 ;
            mult1_o        <= 'b0 ;
            mult1_acco     <= 'b0 ;
            mult2_shift    <= 'b0 ;
        end
        else if (en) begin
            rdy            <= 1'b1 ;
            mult2_shift    <= mult2 >> 1 ;
            mult1_o        <= mult1 << 1 ;
            if (mult2[0]) begin
                //乘???位?1?累加
                mult1_acco  <= mult1_acci + mult1 ;  
            end
            else begin
                mult1_acco  <= mult1_acci ; //乘???位?1?保持
            end
        end
        else begin
            rdy            <= 'b0 ;
            mult1_o        <= 'b0 ;
            mult1_acco     <= 'b0 ;
            mult2_shift    <= 'b0 ;
        end
    end

endmodule