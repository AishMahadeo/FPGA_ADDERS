`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:06 03/14/2022 
// Design Name: 
// Module Name:    carry_skip_4bit 
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
module carry_skip_4bit(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 
    wire [3:0] p;
    wire c0;
    wire bp;
 
    ripple_carry_4_bit rca1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c0));
    generate_p p1(a,b,p,bp);
    mux2X1 m0(.in0(c0),.in1(cin),.sel(bp),.out(cout));

endmodule
