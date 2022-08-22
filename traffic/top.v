`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:25 05/25/2022 
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
module traffic(
    input s,
    input clk,
    output reg green = 0,
    output reg yellow = 0,
    output reg red = 0,
    output reg camera = 0
    );
     reg [7:0] cnt = 0;
always @(posedge clk)begin

    if(cnt<8'b00001001)begin
        green<=1;
        yellow<=0;
        red<=0;
        cnt<=cnt+1;
    end
    else if((cnt>8'b00001000)&&(cnt<8'b00001100))begin
        green<=0;
        yellow<=1;
        red<=0;
        cnt<=cnt+1;
    end
    else if((cnt>8'b00001011)&&(cnt<8'b00011011))begin
        green<=0;
        yellow<=0;
        red<=1;
        cnt<=cnt+1;
    end
    else if(cnt>8'b00011010)begin
        green<=1;
        yellow<=0;
        red<=0;
        cnt<=0;
    end
end

always @(*)begin

    if(s==1 && red==1)begin
        camera<=1;
    end

    else begin
        camera<=0;
    end
end
endmodule
