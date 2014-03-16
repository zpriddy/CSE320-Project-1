`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:09 03/15/2014 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
	// I/O Ports
	output sum, c_out,
	input a, b, c_in
    );
// Internal nets
wire s1, c1, c2;

// Logic gates
xor #2 (s1, a, b);
and #1 (c1, a, b);

xor #2 (sum, s1, c_in);
and #1 (c2, s1, c_in);

xor #2 (c_out, c2, c1);

assign c_out = c_out;
assign sum = sum;
endmodule

module n_ripple_adder(sum,c_out,a,b,c_in);
	parameter n = 4;
	

	input [n-1:0] a, b;
	input c_in;
	output [n-1:0] sum;
	output c_out;
	reg [n-1:0] sum;
	reg c_out;
	reg [n-1:0] s1, c1, c2;
	reg [n:0] C;
	integer k; 
	
	always @(a or b or c_in) begin
	C[0] = c_in;
	for (k = 0; k < n ; k = k + 1) begin
		#4 sum[k] = a[k] ^ b[k] ^ C[k];
		#1 C[k+1] = (a[k] & b[k])|(a[k] & C[k])|(b[k] & C[k]);
	end
	c_out = C[n];
	end

endmodule 