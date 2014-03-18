`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:21 03/17/2014 
// Design Name: 
// Module Name:    z_full_adder_p 
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
module z_full_adder_p(sum,c_out,p,gen,prop,c_in);
	input gen, prop, c_in;
	output sum,c_out,p;
	
	reg sum, c_out, p;
	
	always @(gen or prop or c_in) begin
		#2 sum = prop ^ c_in;
		#10 c_out = gen | (prop & c_in);
		p = prop;
	end
	
endmodule
