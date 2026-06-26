`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 19:49:18
// Design Name: 
// Module Name: uart_top
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


module uart_top(

    input clk,
    input reset,

    input tx_start,
    input [7:0] tx_data,

    output tx,
    output busy,

    output [7:0] rx_data,
    output rx_done

);

wire baud_tick;
wire tx_line;

// Baud Generator
baud_generator baud_gen(
    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick)
);

// UART Transmitter
uart_tx transmitter(

    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick),

    .tx_start(tx_start),
    .data_in(tx_data),

    .tx(tx_line),
    .busy(busy)

);

// UART Receiver
uart_rx receiver(

    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick),

    .rx(tx_line),

    .data_out(rx_data),
    .rx_done(rx_done)

);

assign tx = tx_line;

endmodule
