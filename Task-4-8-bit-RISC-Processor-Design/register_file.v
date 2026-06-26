`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:10:14
// Design Name: 
// Module Name: register_file
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


module register_file(

    input clk,
    input reset,

    input we,

    input [2:0] read_addr1,
    input [2:0] read_addr2,
    input [2:0] write_addr,

    input [7:0] write_data,

    output [7:0] read_data1,
    output [7:0] read_data2

);

reg [7:0] registers [0:7];

integer i;

// Reset and Write Logic
always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        for(i=0;i<8;i=i+1)
            registers[i] <= 8'd0;
    end

    else if(we)
    begin
        registers[write_addr] <= write_data;
    end

end

// Read Logic
assign read_data1 = registers[read_addr1];
assign read_data2 = registers[read_addr2];

endmodule
