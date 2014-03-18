`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:08 03/17/2014 
// Design Name: 
// Module Name:    a_n_cba 
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

// CARRY-SKIP ADDER
module a_n_cba(a,b,carryin,sum,carryout);
	parameter m = 4;
	parameter k = 2;
	parameter n = k*m;
	input [n-1:0] a, b; /* add these bits */
	input carryin; /* carry in*/
	output [n-1:0] sum; /* result */
	output [k-1:0] carryout;
	wire [n:0] carry; /* transfers the carry between bits */
	wire [n-1:0] p; /* propagate for each bit */
	//wire [k-1:0] cs4; /* final carry for first group */
	
	assign carry[0] = carryin;
	
	genvar i,j;
	generate
	for(i=1 ; i<=k ; i=i+1) begin
	
		for(j=0 ; j<i*m ; j=j+1) begin
			a_skip_fulladder A(a[j],b[j],carry[j],sum[j],carry[j+1],p[j]);
		end
		
		assign #2 carryout[i-1] = carry[j] | ((p[j-4] & p[j-3] & p[j-2] & p[j-1] & carryin));
		
	end
	endgenerate
endmodule
