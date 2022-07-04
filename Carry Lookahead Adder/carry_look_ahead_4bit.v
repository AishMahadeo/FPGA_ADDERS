`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:30 04/08/2022 
// Design Name: 
// Module Name:    carry_look_ahead_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module carry_look_ahead_4bit(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [3:0] p,g,c;
 
    assign p=a^b;//propagate
    assign g=a&b; //generate
 
    //carry=gi + Pi.ci
 
    assign c[0]=cin;
    assign c[1]= g[0]|(p[0]&c[0]);
    assign c[2]= g[1] | (p[1]&g[0]) | p[1]&p[0]&c[0];
    assign c[3]= g[2] | (p[2]&g[1]) | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&c[0];
    assign cout= g[3] | (p[3]&g[2]) | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&c[0];
    assign sum=p^c;

endmodule
