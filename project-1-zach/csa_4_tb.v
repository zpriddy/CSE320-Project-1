`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:57 03/16/2014
// Design Name:   csa_4_bit
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/project-1-zach/csa_4_tb.v
// Project Name:  project-1-zach
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: csa_4_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module csa_4_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] sum;
	wire c_out;
	wire p;

	// Instantiate the Unit Under Test (UUT)
	csa_4_bit uut (
		.sum(sum), 
		.c_out(c_out), 
		.p(p), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a=4'b1111;b=4'b1111;
		// Add stimulus here

	end
      
endmodule

