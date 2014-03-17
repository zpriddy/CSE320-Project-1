`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:15 03/16/2014
// Design Name:   mux_2_1
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/project-1-zach/mux_2_1_tb.v
// Project Name:  project-1-zach
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_2_1_tb;

	// Inputs
	reg a;
	reg b;
	reg sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux_2_1 uut (
		.out(out), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		sel = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

