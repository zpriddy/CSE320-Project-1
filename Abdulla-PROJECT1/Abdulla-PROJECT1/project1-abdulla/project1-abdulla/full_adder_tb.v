`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:23:10 03/17/2014
// Design Name:   full_adder
// Module Name:   C:/Xilinx/project1-abdulla/full_adder_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
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
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			a=0;b=0;c_in=0;
		#10 a=1;b=0;c_in=0;
		#10 a=0;b=1;c_in=0;
		#10 a=1;b=1;c_in=0;
		#10 a=0;b=0;c_in=1;
		#10 a=1;b=0;c_in=1;
		#10 a=0;b=1;c_in=1;
		#10 a=1;b=1;c_in=1;

	end
      
endmodule

