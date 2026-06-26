`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:23:48
// Design Name: 
// Module Name: risc_top
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


module risc_top(

    input clk,
    input reset

);

//====================
// Program Counter
//====================

wire [7:0] pc;

program_counter PC(

    .clk(clk),
    .reset(reset),
    .pc(pc)

);

//====================
// Instruction Memory
//====================

wire [15:0] instruction;

instruction_memory IM(

    .address(pc),
    .instruction(instruction)

);

//====================
// Decode Instruction
//====================

wire [3:0] opcode;

assign opcode = instruction[15:12];

wire [2:0] rd;
wire [2:0] rs1;
wire [2:0] rs2;

assign rd  = instruction[11:9];
assign rs1 = instruction[8:6];
assign rs2 = instruction[5:3];

//====================
// Control Unit
//====================

wire reg_write;
wire mem_read;
wire mem_write;
wire [3:0] alu_op;

control_unit CU(

    .opcode(opcode),

    .reg_write(reg_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .alu_op(alu_op)

);

//====================
// Register File
//====================

wire [7:0] read_data1;
wire [7:0] read_data2;
wire [7:0] alu_result;

register_file RF(

    .clk(clk),
    .reset(reset),

    .we(reg_write),

    .read_addr1(rs1),
    .read_addr2(rs2),

    .write_addr(rd),

    .write_data(alu_result),

    .read_data1(read_data1),
    .read_data2(read_data2)

);

//====================
// ALU
//====================

wire zero;

alu ALU(

    .A(read_data1),
    .B(read_data2),

    .opcode(alu_op),

    .result(alu_result),

    .zero(zero)

);

endmodule
