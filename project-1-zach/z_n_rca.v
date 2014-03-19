`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:23 03/16/2014 
// Design Name: 
// Module Name:    z_n_rca 
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
module z_n_rca(sum, c_out, a, b, c_in);
	parameter n = 4;
	parameter D = 2;
	
	input [n-1:0] a,b;
	input c_in;
	
	output [n-1:0] sum;
	output c_out;
	
	wire [n-1:0] gen, prop;
	wire [n:0] c;
	assign c[0] = c_in;
	
	wire c_t;
	
	
	
	genvar j;
	generate
	for(j=0 ; j<n ; j=j+1) begin: setup
		z_setup S(prop[j], gen[j], a[j], b[j]);
		defparam setup[j].S.D = D;
	end
	endgenerate
	
	generate
	for(j=0 ; j<n ; j=j+1) begin: rca 
		z_full_adder FA(sum[j],c[j+1],gen[j],prop[j],c[j]);
		defparam rca[j].FA.D = D;
	end
	endgenerate
	

	assign c_out = c[n];


endmodule