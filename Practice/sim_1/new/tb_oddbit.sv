`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:18:41 PM
// Design Name: 
// Module Name: tb_oddbit
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


module tb_oddbit;
    logic [7:0]regisret;
    logic R;
    
 oddbit oo(.regisret(regisret),.R(R));
 
 initial begin 
 regisret =0000010; #8
 regisret =0000011; #8
 $finish;
 
 end
endmodule
