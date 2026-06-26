`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:09:31
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(

    input [7:0] address,
    output reg [15:0] instruction

);

reg [15:0] memory [0:255];

initial
begin
    // Sample Program
    memory[0] = 16'b0000_0001_0010_0011; // ADD
    memory[1] = 16'b0001_0001_0010_0011; // SUB
    memory[2] = 16'b0010_0001_0010_0011; // AND
    memory[3] = 16'b0011_0001_0010_0011; // OR
    memory[4] = 16'b0100_0001_0010_0011; // XOR
    memory[5] = 16'b0101_0001_0000_0000; // NOT
    memory[6] = 16'b0110_0001_0000_1010; // LOAD
    memory[7] = 16'b0111_0001_0000_1010; // STORE
end

always @(*)
begin
    instruction = memory[address];
end

endmodule
