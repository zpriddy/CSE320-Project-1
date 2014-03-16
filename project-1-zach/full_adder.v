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
//FULL ADDER
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

// RIPPLE ADDER
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

// CARRY-SKIP ADDER
module full_adder_p(sum,c_out,p,a,b,c_in);
	input a,b,c_in;
	output sum,c_out,p;
	
	assign{c_out,sum}=a+b+c_in;
	assign p=a^b;
endmodule 

module n_carry_skip_adder(sum,c_out,a,b,c_in);
	parameter n = 4; //How many sets of 4 bits
	parameter bits = 4*n;
	integer k;

	
	input [bits-1:0] a, b;
	input c_in;
	
	output [bits-1:0] sum;
	output c_out;
	
	reg c_out;
	reg [bits-1:0] sum;
	reg [bits:0] C, p;
	reg [n:0] cs;
	
	reg Ct, sumt, pt, cst;
	
	always @(a or b or c_in) begin
	C[0] = c_in;
	cs[0] = 0;
	for (k = 0 ; k < n ; k = k + 1) begin
		#4 assign {Ct,sumt}=a[k*4]+b[k*4]+C[k*4];
		assign pt=a[k*4]^b[k*4];
		C[k*4+1] = Ct;
		sum[k*4] = sumt;
		p[k*4] = pt;
		
		
		#4 assign {Ct,sumt}=a[k*4+1]+b[k*4+1]+C[k*4+1];
		assign pt=a[k*4+1]^b[k*4+1];
		C[k*4+2] = Ct;
		sum[k*4+1] = sumt;
		p[k*4+1] = pt;
		
		#4 assign {Ct,sumt}=a[k*4+2]+b[k*4+2]+C[k*4+2];
		assign pt=a[k*4+2]^b[k*4+2];
		C[k*4+3] = Ct;
		sum[k*4+2] = sumt;
		p[k*4+2] = pt;
		
		#4 assign {Ct,sumt}=a[k*4+3]+b[k*4+3]+C[k*4+3];
		assign pt=a[k*4+3]^b[k*4+3];
		C[k*4+4] = Ct;
		sum[k*4+3] = sumt;
		p[k*4+3] = pt;
		
		assign cst = C[k*4+4]|(p[k*4]&p[k*4+1]&p[k*4+2]&p[k*4+3]&cs[k*4]);
		cs[k+1] = cst;
		
	end
	
	c_out = cs[n];
	
	end
	
endmodule
	

