`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:20:05 PM
// Design Name: 
// Module Name: simulare_4_biti
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


module simulare_4_biti();
reg cin;
reg [3:0] a, b;
//wire P, G;
wire [3:0] sum;

sum_4bit name (a, b, cin, G, P, sum);

initial begin
    cin = 0; a = 4'b1100; b = 4'b0011;
    #100 a = 4'b1010; b = 4'b1111; 
    #100 a = 4'b0111; b = 4'b1001;
    #100 a = 4'b1111; b = 4'b1001;
    #100 a = 4'b1010; b = 4'b1111; 
    #100 $stop;
end
endmodule
