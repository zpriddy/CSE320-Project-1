`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:14:36 03/17/2014
// Design Name:   z_4_cba
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/project-1-zach/z_4_cba_tb.v
// Project Name:  project-1-zach
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: z_4_cba
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module z_4_cba_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	z_4_cba uut (
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
		#10 a=4'b1111;b=4'b1111;

	end
      
endmodule

