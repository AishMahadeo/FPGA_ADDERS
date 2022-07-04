`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:30 03/14/2022 
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
module mux2X1(
    input in0,in1,
    input sel,
    output out
    );
	 
    assign out=(sel)?in1:in0;

endmodule
