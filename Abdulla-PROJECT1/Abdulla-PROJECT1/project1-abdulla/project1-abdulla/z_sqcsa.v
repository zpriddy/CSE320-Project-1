`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:35 03/17/2014 
// Design Name: 
// Module Name:    z_n_csa 
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
module z_sqcsa(sum,c_out,a,b,c_in);
	parameter k = 15;
	parameter n = ((k+1)*(k+2)/2)-1;

	
	input [n-1:0] a, b;
	input c_in;
	
	output [n-1:0] sum;
	output c_out;
	
	wire [n:0] carry;
	wire [n-1:0] sum_w;
	
	assign carry[0] = c_in;
	assign c_out = carry[k];

	
	genvar j;
	generate 
	
	for(j=0 ; j<k ; j=j+1) begin
		parameter m = ((j+2)*(j+3)/2)-2;
		parameter m_last = ((j+1)*(j+2)/2)-1;
		z_m_sca_stage CSAM(sum[m:m_last],carry[j+1],a[m:m_last],b[m:m_last],carry[j]);
		defparam CSAM[j].m=m+1-m_last;
	end
	endgenerate

endmodule
