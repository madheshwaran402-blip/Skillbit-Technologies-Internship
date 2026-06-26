`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:08:02
// Design Name: 
// Module Name: program_counter
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


module program_counter(

    input clk,
    input reset,

    output reg [7:0] pc

);

always @(posedge clk or posedge reset)
begin

    if(reset)
        pc <= 8'd0;

    else
        pc <= pc + 1;

end

endmodule
