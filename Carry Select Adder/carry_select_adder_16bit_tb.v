`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:44:02 03/13/2022
// Design Name:   carry_select_adder_16bit
// Module Name:   /home/ise/Adders/carry_select_adder_16bit_tb.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carry_select_adder_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_select_adder_16bit_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	carry_select_adder_16bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		#10 a=16'd0; b=16'd0; cin=1'd1;
      #10 a=16'd14; b=16'd1; cin=1'd1;
      #10 a=16'd5; b=16'd0; cin=1'd0;
      #10 a=16'd999; b=16'd0; cin=1'd1;

		
        
		// Add stimulus here
		

	end
initial
     $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", a,b,cin,sum,cout);
endmodule

