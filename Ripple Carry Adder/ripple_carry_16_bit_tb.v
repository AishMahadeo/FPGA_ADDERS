`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:49:28 04/21/2022
// Design Name:   ripple_carry_16_bit
// Module Name:   /home/ise/RCA/ripple_carry_16_bit_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_16_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////

module ripple_carry_16_bit_tb;
wire [15:0] sum;//output
wire cout;//output
reg [15:0] a,b;//input
reg cin;//input
 
ripple_carry_16_bit uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));

initial begin
     a=0; b=0; cin=0;
#100 a= 16'b0000000000011111; b=16'b000000000001100; cin=1'b0;
#10 a= 16'b0000000000011111; b=16'b000000000001100; cin=1'b0;
#10 a= 16'b1100011000011111; b=16'b000000110001100; cin=1'b1;
#10 a= 16'b1111111111111111; b=16'b000000000000000; cin=1'b1;
end

initial
$monitor("time= ", $time, "A=%b,B=&b,Cin=%b : Sum= %b,Cout=%cout",a,b,cin,sum,cout);
endmodule
