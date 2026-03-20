`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 23:00:26
// Design Name: 
// Module Name: top_pwm
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


module top_pwm(
input clk,
input rst,
output led
);

pwm_led pwm1(
.clk(clk),
.rst(rst),
.led(led)
);

endmodule
