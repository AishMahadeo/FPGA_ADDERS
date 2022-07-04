`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:19 04/20/2022 
// Design Name: 
// Module Name:    Full_adder 
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
module Full_adder(
    input a_in, b_in,c_in,
    output sum,carry
    );

	assign sum = a_in ^ b_in ^ c_in;
	assign carry = (a_in & b_in) | (b_in & c_in)| (c_in & a_in);
endmodule
