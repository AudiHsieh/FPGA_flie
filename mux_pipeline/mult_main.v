`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:26 08/15/2022 
// Design Name: 
// Module Name:    mult_main 
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
module    mult_main
    #(parameter N=4,
      parameter M=4)
    (
      input                     clk,
      input                     rstn,
      input                     data_rdy ,
      input [N-1:0]             mult1,
      input [M-1:0]             mult2,

      output                    res_rdy ,
      output [N+M-1:0]          res );

    wire [N+M-1:0]       mult1_t [M-1:0] ;
    wire [M-1:0]         mult2_t [M-1:0] ;
    wire [N+M-1:0]       mult1_acc_t [M-1:0] ;
    wire [M-1:0]         rdy_t ;

    //第一次例化相?于初始化，不能用 generate ?句
    mult_cell      #(.N(N), .M(M))
    u_mult_step0
    (
      .clk              (clk),
      .rstn             (rstn),
      .en               (data_rdy),
      .mult1            ({{(M){1'b0}}, mult1}),
      .mult2            (mult2),
      .mult1_acci       ({(N+M){1'b0}}),
      //output
      .mult1_acco       (mult1_acc_t[0]),
      .mult2_shift      (mult2_t[0]),
      .mult1_o          (mult1_t[0]),
      .rdy              (rdy_t[0]) );

    //多次模?例化，用 generate ?句
    genvar               i ;
    generate
        for(i=1; i<=M-1; i=i+1) begin: mult_stepx
            mult_cell      #(.N(N), .M(M))
            u_mult_step
            (
              .clk              (clk),
              .rstn             (rstn),
              .en               (rdy_t[i-1]),
              .mult1            (mult1_t[i-1]),
              .mult2            (mult2_t[i-1]),
              //上一次累加?果作?下一次累加?入
              .mult1_acci       (mult1_acc_t[i-1]),
              //output
              .mult1_acco       (mult1_acc_t[i]),                                      
              .mult1_o          (mult1_t[i]),  //被乘?移位????
              .mult2_shift      (mult2_t[i]),  //乘?移位????
              .rdy              (rdy_t[i]) );
        end
    endgenerate

    assign res_rdy       = rdy_t[M-1];
    assign res           = mult1_acc_t[M-1];

endmodule
