`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:20 03/17/2014 
// Design Name: 
// Module Name:    z_csa_stage 
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
module z_csa_stage(sum,c_out,a,b,c_in);

	input a,b,c_in;
	output sum,c_out;
	
	wire [1:0] sum_r, c_out_r;
	
	// Full Adders for both c_in = 0 & 1
	a_full_adder FA1(sum_r[0],c_out_r[0],a,b,0);
	a_full_adder FA2(sum_r[1],c_out_r[1],a,b,1);
	
	// MUX - Starts at the same time as the FA so no delay
	z_2_1_mux M1(sum,sum_r[0],sum_r[1],c_in);
	z_2_1_mux M2(c_out,c_out_r[0],c_out_r[1],c_in);
	
	
	
	

endmodule
