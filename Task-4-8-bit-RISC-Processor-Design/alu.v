`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:11:17
// Design Name: 
// Module Name: alu
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


module alu(

    input [7:0] A,
    input [7:0] B,
    input [3:0] opcode,

    output reg [7:0] result,
    output reg zero

);

always @(*)
begin

    case(opcode)

        4'b0000: result = A + B;   // ADD

        4'b0001: result = A - B;   // SUB

        4'b0010: result = A & B;   // AND

        4'b0011: result = A | B;   // OR

        4'b0100: result = A ^ B;   // XOR

        4'b0101: result = ~A;      // NOT

        default: result = 8'b00000000;

    endcase

    // Zero Flag
    if(result == 8'b00000000)
        zero = 1'b1;
    else
        zero = 1'b0;

end

endmodule
