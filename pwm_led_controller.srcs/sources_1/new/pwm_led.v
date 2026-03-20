`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 22:59:41
// Design Name: 
// Module Name: pwm_led
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


module pwm_led(
input clk,
input rst,
output reg led
);

reg [7:0] counter;
reg [7:0] duty;

always @(posedge clk)
begin
    if(rst)
    begin
        counter <= 0;
        duty <= 8'd128;
        led <= 0;
    end
    else
    begin
        counter <= counter + 1;

        if(counter < duty)
            led <= 1;
        else
            led <= 0;
    end
end

endmodule
