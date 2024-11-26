`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:14:31 PM
// Design Name: 
// Module Name: counter_overflow
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


module counter_overflow (
    input logic [7:0]d,
    input logic clk,en,
    output overflow,qbar
    );
    logic q,r;
    assign r=0;
    
    flipflop(.d(d),.clk(clk),.r(r),.e(en),.q(q),.qbar(qbar));
    assign overflow = ~ d[7] & q;
    
endmodule
