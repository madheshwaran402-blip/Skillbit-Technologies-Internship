`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 19:48:24
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
    input clk,
    input reset,
    input baud_tick,
    input rx,

    output reg [7:0] data_out,
    output reg rx_done
);

reg [3:0] bit_count;
reg [7:0] shift_reg;
reg receiving;

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        bit_count <= 0;
        shift_reg <= 0;
        data_out <= 0;
        rx_done <= 0;
        receiving <= 0;
    end

    else
    begin

        rx_done <= 0;

        // Detect Start Bit
        if(!receiving && rx == 0)
        begin
            receiving <= 1;
            bit_count <= 0;
        end

        else if(receiving && baud_tick)
        begin

            if(bit_count < 8)
            begin
                shift_reg[bit_count] <= rx;
                bit_count <= bit_count + 1;
            end

            else
            begin
                data_out <= shift_reg;
                rx_done <= 1;
                receiving <= 0;
            end

        end

    end

end

endmodule
