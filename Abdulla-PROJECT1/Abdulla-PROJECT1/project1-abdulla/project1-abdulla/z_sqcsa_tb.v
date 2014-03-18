`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:36 03/17/2014
// Design Name:   z_sqcsa
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/Abdulla-PROJECT1/Abdulla-PROJECT1/project1-abdulla/project1-abdulla/z_sqcsa_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: z_sqcsa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module z_sqcsa_tb;
	parameter k = 15;
	parameter n = ((k+1)*(k+2)/2)-1;

	// Inputs
	reg [n-1:0] a;
	reg [n-1:0] b;
	reg c_in;

	// Outputs
	wire [n-1:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	z_sqcsa uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		a=135'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;b=135'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;c_in=1;
		#700 $finish;

	end
      
endmodule

