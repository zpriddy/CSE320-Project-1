`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:15 03/17/2014 
// Design Name: 
// Module Name:    a_full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module a_full_adder(sum,c_out,a,b,c_in);

	input a,b,c_in;
	output sum, c_out;
	wire g,p,pc;

	// Internal nets
	wire s1, c1, c2;

	// Logic gates
	xor #2 (s1, a, b);
	and #1 (c1, a, b);

	xor #2 (sum, s1, c_in);
	and #1 (c2, s1, c_in);

	or #1 (c_out, c2, c1);
endmodule
