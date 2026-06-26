`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 20:24:58
// Design Name: 
// Module Name: risc_tb
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

module risc_tb;

reg clk;
reg reset;

// Instantiate Processor
risc_top uut(
    .clk(clk),
    .reset(reset)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test Sequence
initial begin

    reset = 1;

    #20;

    reset = 0;

    // Run processor
    #300;

    $finish;

end

endmodule
