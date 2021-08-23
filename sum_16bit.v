`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:27:37 PM
// Design Name: 
// Module Name: sum_16bit
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


module sum_16bit(nr1, nr2, carry_in, sum, carry_out);

input [15:0] nr1;
input [15:0] nr2;
input carry_in;
output carry_out;
output [15:0] sum;

wire [3:0] g_in, p_in;
wire [3:0] carry_UAT;

uat utt(carry_in,g_in,p_in,carry_UAT);
sum_4bit sum1(nr1[3:0],nr2[3:0],carry_in,g_in[0],p_in[0],sum[3:0]);
sum_4bit sum2(nr1[7:4],nr2[7:4],carry_UAT[0],g_in[1],p_in[1],sum[7:4]);
sum_4bit sum3(nr1[11:8],nr2[11:8],carry_UAT[1],g_in[2],p_in[2],sum[11:8]);
sum_4bit sum4(nr1[15:12],nr2[15:12],carry_UAT[2],g_in[3],p_in[3],sum[15:12]);
    assign carry_out = carry_UAT[3];
endmodule
