`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:19 03/14/2022 
// Design Name: 
// Module Name:    generate_p 
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
module generate_p(
    input [3:0] a,b,
    output [3:0] p,
    output bp
    );

    assign p= a^b;//get all propagate bits
    assign bp= &p;// and p0p1p2p3 bits

endmodule
