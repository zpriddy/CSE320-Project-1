`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:54 03/17/2014 
// Design Name: 
// Module Name:    a_setup 
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
module a_setup(prop, gen, a, b);

	input a, b;
	output prop, gen;

	assign #2 prop = a ^ b;
	assign #1 gen = a & b;

endmodule
