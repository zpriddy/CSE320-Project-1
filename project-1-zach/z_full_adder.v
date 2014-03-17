`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:23 03/16/2014 
// Design Name: 
// Module Name:    z_full_adder 
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
module z_full_adder(sum,c_out,gen,prop,c_in);

	input gen,prop,c_in;
	output sum, c_out;
	
	assign #2 sum = prop ^ c_in;
	assign #1 c_out = gen | (prop & c_in);
	

endmodule
