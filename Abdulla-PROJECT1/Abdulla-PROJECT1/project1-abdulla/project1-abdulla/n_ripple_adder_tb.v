`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:27:26 03/17/2014
// Design Name:   n_ripple_adder
// Module Name:   C:/Xilinx/project1-abdulla/n_ripple_adder_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: n_ripple_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module n_ripple_adder_tb;
	parameter n=128;
	// Inputs
	reg [n-1:0] a;
	reg [n-1:0] b;
	reg c_in;

	// Outputs
	wire [n-1:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	n_ripple_adder #(n) uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
        
		// Add stimulus here
		a=128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;b=128'h00000000000000000000000000000000;c_in=1;
		#700 $finish;

	end
      
endmodule

