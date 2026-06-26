`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 19:47:40
// Design Name: 
// Module Name: uart_tx
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


module uart_tx(
    input clk,
    input reset,
    input baud_tick,
    input tx_start,
    input [7:0] data_in,

    output reg tx,
    output reg busy
);

reg [3:0] bit_count;
reg [7:0] shift_reg;

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        tx <= 1'b1;
        busy <= 0;
        bit_count <= 0;
        shift_reg <= 0;
    end

    else if(tx_start && !busy)
    begin
        busy <= 1;
        shift_reg <= data_in;
        bit_count <= 0;
    end

    else if(busy && baud_tick)
    begin

        case(bit_count)

            0:
            begin
                tx <= 0;         // Start Bit
                bit_count <= 1;
            end

            1,2,3,4,5,6,7,8:
            begin
                tx <= shift_reg[0];
                shift_reg <= shift_reg >> 1;
                bit_count <= bit_count + 1;
            end

            9:
            begin
                tx <= 1;         // Stop Bit
                bit_count <= 10;
            end

            10:
            begin
                busy <= 0;
                tx <= 1;
                bit_count <= 0;
            end

        endcase

    end

end

endmodule
