`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 16:33:04
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input clk,
    input reset,

    output reg NS_R,
    output reg NS_Y,
    output reg NS_G,

    output reg EW_R,
    output reg EW_Y,
    output reg EW_G
);

    // State Encoding
    parameter S0 = 2'b00; // NS Green
    parameter S1 = 2'b01; // NS Yellow
    parameter S2 = 2'b10; // EW Green
    parameter S3 = 2'b11; // EW Yellow

    reg [1:0] state;
    reg [3:0] count;

    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            state <= S0;
            count <= 0;
        end
        else
        begin
            case(state)

                S0:
                begin
                    if(count == 9)
                    begin
                        state <= S1;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                S1:
                begin
                    if(count == 1)
                    begin
                        state <= S2;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                S2:
                begin
                    if(count == 9)
                    begin
                        state <= S3;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                S3:
                begin
                    if(count == 1)
                    begin
                        state <= S0;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

            endcase
        end
    end

    always @(*)
    begin

        // Default OFF
        NS_R = 0;
        NS_Y = 0;
        NS_G = 0;

        EW_R = 0;
        EW_Y = 0;
        EW_G = 0;

        case(state)

            S0:
            begin
                NS_G = 1;
                EW_R = 1;
            end

            S1:
            begin
                NS_Y = 1;
                EW_R = 1;
            end

            S2:
            begin
                NS_R = 1;
                EW_G = 1;
            end

            S3:
            begin
                NS_R = 1;
                EW_Y = 1;
            end

        endcase

    end

endmodule
