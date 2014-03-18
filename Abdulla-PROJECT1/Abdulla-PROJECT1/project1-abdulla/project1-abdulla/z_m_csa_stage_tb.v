`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:29:28 03/17/2014
// Design Name:   z_m_sca_stage
// Module Name:   C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/Abdulla-PROJECT1/Abdulla-PROJECT1/project1-abdulla/project1-abdulla/z_m_csa_stage_tb.v
// Project Name:  project1-abdulla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: z_m_sca_stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module z_m_csa_stage_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	z_m_sca_stage uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		a=4'hF;b=4'hF;c_in=1;
		#700 $finish;

	end
      
endmodule

