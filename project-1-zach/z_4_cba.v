`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:27 03/16/2014 
// Design Name: 
// Module Name:    z_4_cba 
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
module z_4_cba(sum,c_out,a,b,c_in);

	output [3:0] sum;
	output c_out;
	
	input [3:0] a,b;
	input c_in;
	
	wire [3:0] prop, gen, p, c;
	wire co;
	
	wire c1,c2,c3;
	
	
	z_setup S0(prop[0], gen[0], a[0], b[0]);
	z_setup S1(prop[1], gen[1], a[1], b[1]);
	z_setup S2(prop[2], gen[2], a[2], b[2]);
	z_setup S3(prop[3], gen[3], a[3], b[3]);
	
	z_full_adder_p FAP0(sum[0],c1,p[0],gen[0],prop[0],c_in);
	z_full_adder_p FAP1(sum[1],c2,p[1],gen[1],prop[1],c1);
	z_full_adder_p #10 FAP2(sum[2],c3,p[2],gen[2],prop[2],c2);
	z_full_adder_p FAP3(sum[3],co,p[3],gen[3],prop[3],c3);
	
	
	assign c_out = co|(p[0]&p[1]&p[2]&p[3]);
	
	
	

endmodule
