`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 18:05:40
// Design Name: 
// Module Name: fifo_tb
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


`timescale 1ns/1ps

module fifo_tb;

    reg clk;
    reg reset;
    reg wr_en;
    reg rd_en;
    reg [7:0] data_in;

    wire [7:0] data_out;
    wire full;
    wire empty;

    // Instantiate FIFO
    fifo uut (
        .clk(clk),
        .reset(reset),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Clock Generation (10 ns Period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Sequence
    initial begin

        reset = 1;
        wr_en = 0;
        rd_en = 0;
        data_in = 0;

        #20;
        reset = 0;

        // Write 10
        #10;
        wr_en = 1;
        data_in = 8'd10;

        // Write 20
        #10;
        data_in = 8'd20;

        // Write 30
        #10;
        data_in = 8'd30;

        // Stop Writing
        #10;
        wr_en = 0;

        // Read Data
        #10;
        rd_en = 1;

        #30;
        rd_en = 0;

        #20;
        $finish;

    end

endmodule
