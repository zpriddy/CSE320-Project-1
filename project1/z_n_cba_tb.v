`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:18 03/17/2014
// Design Name:   a_n_cba
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/Abdulla-PROJECT1/Abdulla-PROJECT1/project1-abdulla/project1-abdulla/z_n_cba_tb.v
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

module z_n_cba_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg carryin;

	// Outputs
	wire [7:0] sum;
	wire [1:0] carryout;

	// Instantiate the Unit Under Test (UUT)
	a_n_cba uut (
		.a(a), 
		.b(b), 
		.carryin(carryin), 
		.sum(sum), 
		.carryout(carryout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		carryin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

