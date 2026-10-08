`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 18:32:36
// Design Name: 
// Module Name: temperature_mointor
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



module temperature_monitor(
    input  [7:0] temperature,
    output reg fan,
    output reg warning,
    output reg alarm
);

always @(*) begin

    if (temperature < 40) begin
        fan = 0;
        warning = 0;
        alarm = 0;
    end

    else if (temperature < 50) begin
        fan = 1;
        warning = 1;
        alarm = 0;
    end

    else begin
        fan = 1;
        warning = 1;
        alarm = 1;
    end

end

endmodule
