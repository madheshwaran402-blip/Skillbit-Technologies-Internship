`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 19:44:13
// Design Name: 
// Module Name: baud_generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module baud_generator(
    input clk,
    input reset,
    output reg baud_tick
);

parameter BAUD_DIV = 5208; // 50MHz / 9600

reg [12:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        count <= 0;
        baud_tick <= 0;
    end
    else
    begin
        if(count == BAUD_DIV-1)
        begin
            count <= 0;
            baud_tick <= 1;
        end
        else
        begin
            count <= count + 1;
            baud_tick <= 0;
        end
    end
end

endmodule