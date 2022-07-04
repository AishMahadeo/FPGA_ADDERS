`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:07 03/14/2022 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,b,cin,
    output sum,cout
    );

    wire x,y,z;
    half_adder h1(.a(a), .b(b), .sum(x), .cout(y));
    half_adder h2(.a(x), .b(cin), .sum(sum), .cout(z));
    or or_1(cout,z,y);

endmodule
