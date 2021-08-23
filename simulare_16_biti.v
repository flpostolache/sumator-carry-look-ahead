`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:31:03 PM
// Design Name: 
// Module Name: simulare_16_biti
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


module simulare_16_biti();
reg carry_in;
reg [15:0] nr1, nr2;
wire [15:0] sum;
wire c;

sum_16bit uut(nr1, nr2, carry_in, sum, c);
initial begin
    carry_in = 0; nr1 = 1; nr2 = 1;
    #20
    nr1 = 20;
    nr2 = 32;
    #20 
    carry_in = 1;
    nr1= 200; 
    nr2 = 50;
    #20
    carry_in = 0;
    nr1 = 76;
    nr2 = 20;
    #20
    nr1 = 562;
    nr2 = 364;
    #20
    nr1 = 16'b1111111111111111;
    nr2 = 1;
    #20
    nr1 = 30000;
    nr2 = 30000;
 
 end
endmodule
