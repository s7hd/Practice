`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:47:18 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
input logic [11:0]x, [11:0]y,
input logic [3:0]A,[3:0]B,
input logic cin=0,
output logic [7:0]p , [11:0]s,
output logic [2:0]cout
    );
    
logic a0[3:0],a1[3:0],a2[3:0],b[3:0],S[3:0],c;  


//adder4bit ( x3, x2, x1, x0, y3, y2, y1, y0, carryin,  s3, s2, s1, s0, carryout); 
assign p[0]=A[0]&B[0];
assign b[1]=A[1]&B[0];
assign b[2]=A[2]&B[0];
assign b[3]=A[3]&B[0];

assign a0[0]=A[0]&B[1];
assign a0[1]=A[1]&B[1];
assign a0[2]=A[2]&B[1];
assign a0[3]=A[3]&B[1];
       
assign a1[0]=A[0]&B[2];
assign a1[1]=A[1]&B[2];
assign a1[2]=A[2]&B[2];
assign a1[3]=A[3]&B[2];   
    
assign a2[0]=A[0]&B[3];
assign a2[1]=A[1]&B[3];
assign a2[2]=A[2]&B[3];
assign a2[3]=A[3]&B[3]; 

adder4bit a1(
 x3,
 x2,
 x1,
 x0,
 y3,
 y2,
 y1,
 y0, carryin,  s3, s2, s1, s0, carryout); 
   
endmodule
