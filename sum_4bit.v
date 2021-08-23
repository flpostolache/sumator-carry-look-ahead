`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 12:48:34 PM
// Design Name: 
// Module Name: sum_4bit
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


module sum_4bit(nr1, nr2, carry_in, G, P, sum);

input [3:0] nr1;
input [3:0] nr2;
input carry_in;
output reg G;
output reg P;
output reg [3:0]sum;

reg [3:0] p, g;
reg c1, c2, c3, c4;

integer i;
always@(nr1, nr2, carry_in)
begin
    for(i = 0; i < 4; i = i + 1)
        begin
        p[i] = nr1[i] | nr2[i];
        g[i] = nr1[i] & nr2[i];
        end 
    c1 = g[0] | p[0] & carry_in;
    c2 = g[1] | p[1] & c1;
    c3 = g[2] | p[2] & c2;
    sum[0] = nr1[0] + nr2[0] + carry_in;
    sum[1] = nr1[1] + nr2[1] + c1;
    sum[2] = nr1[2] + nr2[2] + c2;
    sum[3] = nr1[3] + nr2[3] + c3;
    P = p[3] & p[2] & p[1] & p[0];
    G = g[3] | p[3] & g[2] | p[3] & p[2] & g[1] | p[3] & p[2] & p[1] & g[0];
end
endmodule
