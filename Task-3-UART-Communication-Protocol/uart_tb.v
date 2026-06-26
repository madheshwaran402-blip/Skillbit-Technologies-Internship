`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 19:50:56
// Design Name: 
// Module Name: uart_tb
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

module uart_tb;

    reg clk;
    reg reset;
    reg tx_start;
    reg [7:0] tx_data;

    wire tx;
    wire busy;
    wire [7:0] rx_data;
    wire rx_done;

    // Instantiate Top Module
    uart_top uut (

        .clk(clk),
        .reset(reset),

        .tx_start(tx_start),
        .tx_data(tx_data),

        .tx(tx),
        .busy(busy),

        .rx_data(rx_data),
        .rx_done(rx_done)

    );

    // Clock Generation (50 MHz)
    initial
    begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    // Test Sequence
    initial
    begin

        reset = 1;
        tx_start = 0;
        tx_data = 8'h00;

        #100;
        reset = 0;

        // Transmit First Byte
        #100;
        tx_data = 8'hA5;
        tx_start = 1;

        #20;
        tx_start = 0;

        // Wait for Transmission
        #120000;

        // Transmit Second Byte
        tx_data = 8'h3C;
        tx_start = 1;

        #20;
        tx_start = 0;

        #120000;

        $finish;

    end

endmodule
