`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 12:53:12 PM
// Design Name: 
// Module Name: uat
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


module uat(carry_in, g_in, p_in, carry_UAT);

input carry_in;
input [3:0] g_in;
input [3:0] p_in;
output reg [3:0] carry_UAT;

always @ (carry_in, g_in, p_in)
    begin 
        carry_UAT[0]=g_in[0] | (p_in[0] & carry_in);
        carry_UAT[1]=g_in[1] | (p_in[1] & g_in[0]) | (p_in[1] & p_in[0] & carry_in);
        carry_UAT[2]=g_in[2] | (p_in[2] & g_in[1]) | (p_in[2] & p_in[1] & g_in[0]) | (p_in[2] & p_in[1] & p_in[0] & carry_in);
        carry_UAT[3]=g_in[3] | (p_in[3] & g_in[2]) | (p_in[3] & p_in[2] & g_in[1]) | (p_in[3] & p_in[2] & p_in[1] & g_in[0]) | (p_in[3] & p_in[2] & p_in[1] & p_in[0] & carry_in);
    end
endmodule
