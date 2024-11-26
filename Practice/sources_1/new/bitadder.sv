`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:37:38 PM
// Design Name: 
// Module Name: bitadder
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


module bitadder(
input logic [7:0] x, [7:0] y,
output logic s[7:0],cout , cin
    );
    
    logic temp;

 adder4bit b1(.x3(x[0]), .x2(x[1]), .x1(x[2]), .x0(x[3]),
            .y3(y[0]), .y2(y[1]), .y1(y[2]), .y0(y[3]),
            .carryin(cin), .s3(s[7]), .s2(s[6]), .s1(s[5]), .s0(s[4]), .carryout(temp));    

 adder4bit b2(.x3(x[4]), .x2(x[5]), .x1(x[6]), .x0(x[7]),
            .y3(y[4]), .y2(y[5]), .y1(y[6]), .y0(y[7]),
            .carryin(temp), .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0]), .carryout(tcout)); 
             
endmodule
