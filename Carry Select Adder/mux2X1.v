`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:17:39 03/13/2022 
// Design Name: 
// Module Name:    mux2X1 
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
module mux2X1
    # ( parameter width=16 )
	 (
    input [width-1:0] in0,in1,
    input sel,
    output [width-1:0] out
    );

    assign out=(sel)?in1:in0;

endmodule
