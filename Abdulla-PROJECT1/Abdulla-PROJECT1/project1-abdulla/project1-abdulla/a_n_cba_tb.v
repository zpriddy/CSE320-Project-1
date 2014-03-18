`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:48:32 03/17/2014
// Design Name:   a_n_cba
// Module Name:   C:/Xilinx/project1-abdulla/a_n_cba_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: a_n_cba
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module a_n_cba_tb;
	parameter k=32;
	// Inputs
	reg [4*k-1:0] a;
	reg [4*k-1:0] b;
	reg carryin;

	// Outputs
	wire [4*k-1:0] sum;
	wire [k-1:0] carryout;

	// Instantiate the Unit Under Test (UUT)
	a_n_cba #(.k(k)) uut (
		.a(a), 
		.b(b), 
		.carryin(carryin), 
		.sum(sum), 
		.carryout(carryout)
	);

	initial begin
		// Add stimulus here
		a=128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;b=128'h00000000000000000000000000000000;carryin=1;
		#700 $finish;
	end
      
endmodule

