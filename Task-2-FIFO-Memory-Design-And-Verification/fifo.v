`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 18:04:25
// Design Name: 
// Module Name: fifo
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


module fifo (
    input clk,
    input reset,
    input wr_en,
    input rd_en,
    input [7:0] data_in,

    output reg [7:0] data_out,
    output full,
    output empty
);

    // FIFO Memory (8 locations, 8-bit each)
    reg [7:0] mem [0:7];

    // Read and Write Pointers
    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;

    // Counter
    reg [3:0] count;

    // Full and Empty Flags
    assign full  = (count == 8);
    assign empty = (count == 0);

    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            count <= 0;
            data_out <= 0;
        end
        else
        begin

            // Write Operation
            if(wr_en && !full)
            begin
                mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 1;
                count <= count + 1;
            end

            // Read Operation
            if(rd_en && !empty)
            begin
                data_out <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1;
                count <= count - 1;
            end

        end
    end

endmodule
