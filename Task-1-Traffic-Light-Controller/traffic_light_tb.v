`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 16:34:13
// Design Name: 
// Module Name: traffic_light_tb
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

module traffic_light_tb;

    reg clk;
    reg reset;

    wire NS_R;
    wire NS_Y;
    wire NS_G;

    wire EW_R;
    wire EW_Y;
    wire EW_G;

    // Instantiate DUT (Device Under Test)
    traffic_light uut (
        .clk(clk),
        .reset(reset),

        .NS_R(NS_R),
        .NS_Y(NS_Y),
        .NS_G(NS_G),

        .EW_R(EW_R),
        .EW_Y(EW_Y),
        .EW_G(EW_G)
    );

    // Clock Generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset and Simulation
    initial begin

        reset = 1;
        #20;

        reset = 0;

        // Run simulation
        #300;

        $finish;
    end

endmodule
