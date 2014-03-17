`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:43 03/16/2014 
// Design Name: 
// Module Name:    z_setup 
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
module z_setup(prop, gen, a, b);
		
	input a, b;
	output prop, gen;
	
	assign #2 prop = a ^ b;
	assign #1 gen = a & b;


endmodule
