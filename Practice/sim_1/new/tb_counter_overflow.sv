`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 09:17:41 PM
// Design Name: 
// Module Name: tb_counter_overflow
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


module tb_counter_overflow;
     logic [7:0]d;
     logic clk=0,en;
     logic overflow,qbar;
    
    counter_overflow DUT (.*);
    always #5 clk=~clk;
    
    initial begin 
    d=8'b00000000; en=0;
    #10
    d=8'b00000001; en=1;
    #10
    $finish;
    end
endmodule
