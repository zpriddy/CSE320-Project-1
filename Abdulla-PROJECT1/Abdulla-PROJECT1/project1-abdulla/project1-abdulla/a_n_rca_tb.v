`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:50 03/17/2014
// Design Name:   a_n_rca
// Module Name:   C:/Xilinx/project1-abdulla/a_n_rca_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: a_n_rca
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module a_n_rca_tb;

	parameter n=4;
	// Inputs
	reg [n-1:0] a;
	reg [n-1:0] b;
	reg c_in;

	// Outputs
	wire [n-1:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	a_n_rca #(n) uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin

		// Add stimulus here
		a=4'hF;b=4'h0;c_in=1;
		#700 $finish;

	end
      
endmodule

