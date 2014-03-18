`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:20 03/17/2014 
// Design Name: 
// Module Name:    a_n_rca 
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
module a_n_rca(sum, c_out, a, b, c_in);
	parameter n = 4;

	input [n-1:0] a,b;
	input c_in;

	output [n-1:0] sum;
	output c_out;

	wire [n-1:0] gen, prop;
	wire [n:0] cc; // internal carry bits
	assign cc[0] = c_in;
	assign c_out = cc[n];
	genvar j;
	generate
	for(j=0 ; j<n ; j=j+1) begin
		a_full_adder FA(sum[j],cc[j+1],a[j],b[j],cc[j]);
	end
	endgenerate

endmodule
