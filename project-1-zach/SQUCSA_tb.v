`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:23 03/16/2014
// Design Name:   square_root_adder
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/project-1-zach/SQUCSA_tb.v
// Project Name:  project-1-zach
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: square_root_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SQUCSA_tb;

	// Inputs
	reg [8:0] a;
	reg [8:0] b;
	reg c_in;

	// Outputs
	wire [8:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	square_root_adder uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

