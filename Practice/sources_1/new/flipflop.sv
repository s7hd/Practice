`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:46:14 PM
// Design Name: 
// Module Name: flipflop
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

module flipflop(
input logic d,
input logic clk,
input logic r,
input logic e,
output logic q,
output logic qbar
);
logic q_master , q_slave ,qbar_master;

Dlatch master (.d(d),.clk(~clk),.r(r),.e(e),.q(q_master),.qbar(qbar_master));
Dlatch slave (.d(q_master),.clk(clk),.r(r),.e(e),.q(q),.qbar(qbar));

endmodule