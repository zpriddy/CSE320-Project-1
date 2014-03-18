`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:01 03/17/2014 
// Design Name: 
// Module Name:    z_m_sca_stage 
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
module z_m_sca_stage(sum,c_out,a,b,c_in);
	parameter m = 4;
	
	input [m-1:0] a, b;
	input c_in;
	
	output [m-1:0] sum;
	output c_out;
	
	wire [m:0] carry;
	wire [m-1:0] sum_w;
	
	assign carry[0] = c_in;
	assign c_out = carry[m];

	genvar j;
	generate
	for(j=0 ; j<m ; j=j+1) begin
		z_csa_stage CSA(sum[j],carry[j+1],a[j],b[j],carry[j]);
	end
	endgenerate
	
	
endmodule
