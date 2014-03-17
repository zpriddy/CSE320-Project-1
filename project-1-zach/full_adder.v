`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Zachary Priddy
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

// MUX

module mux_2_1(out,a,b,sel);
	output out;
	input a,b,sel;
	
	not #1 not1(sel_,sel);
	and #1 and1(a1,a,sel_);
	and and2(b1,b,sel);
	or #2 or1(out,a1,b1);
	
endmodule

module mux_2_4(out,a,b,sel);
	output [3:0] out;
	input [3:0] a, b;
	input sel;
	
	mux_2_1 MUX0(out[0],a[0],b[0],sel);
	mux_2_1 MUX1(out[1],a[1],b[1],sel);
	mux_2_1 MUX2(out[2],a[2],b[2],sel);
	mux_2_1 MUX3(out[3],a[3],b[3],sel);

endmodule

// CARRY-SKIP ADDER
module full_adder_p(sum,c_out,p,a,b,c_in);
	input a,b,c_in;
	output sum,c_out,p;
	
	assign #4 {c_out,sum}=a+b+c_in;
	assign p=a^b;
endmodule 

module csa_4_bit(sum,c_out,p,a,b,c_in);
	input [3:0] a , b;
	input c_in;
	
	output [3:0] sum;
	output p, c_out;
	
	wire c0, c1, c2, c3;
	wire p0, p1, p2 ,p3;
	
	full_adder_p CSA0(sum[0],c0,p0,a[0],b[0],c_in);
	full_adder_p CSA1(sum[1],c1,p1,a[1],b[1],c0);
	full_adder_p CSA2(sum[2],c2,p2,a[2],b[2],c1);
	full_adder_p CSA3(sum[3],c3,p3,a[3],b[3],c2);
	
	assign c_out = c3;
	assign p = p0&p1&p2&p3;
	
endmodule

module csa_8_bit(sum,c_out,p,a,b,c_in);
	input [7:0] a , b;
	input c_in;
	
	output [7:0] sum;
	output p, c_out;
	
	wire [7:0] sum_0, sum_1;

	wire c00, c01, c10, c11, c_in0, c_in1,c0,c1;
	assign c_in1 = 1;
	assign c_in0 = 0;
	wire p00, p01, p10, p11;
	
	csa_4_bit CSA400(sum_0[3:0],c00,p00,a[3:0],b[3:0],c_in0);
	csa_4_bit CSA410(sum_0[7:4],c10,p10,a[7:4],b[7:4],c_in0);
	
	csa_4_bit CSA401(sum_1[3:0],c01,p01,a[3:0],b[3:0],c_in1);
	csa_4_bit CSA411(sum_1[7:4],c11,p11,a[7:4],b[7:4],c_in1);
	
	mux_2_4 MUX1(sum[3:0],sum_0[3:0],sum_1[3:0],c_in);
	mux_2_1 MUX1A(c0,c00,c01,c_in);
	mux_2_4 MUX2(sum[7:4],sum_0[7:4],sum_1[7:4],c0);
	mux_2_1 MUX2A(c1,c10,c11,c0);
	
	assign c_out = c1;
	
	
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
	
// N BIT CSA AGAIN

module n_carry_skip_adder_v2(sum,c_out,a,b,c_in);
	parameter n = 4; //How many sets of 4 bits
	parameter bits = 4*n;
	integer  j, c_in0, c_in1;
	genvar k;
	
	
	
	input [bits-1:0] a, b;
	input c_in;
	
	output [bits-1:0] sum;
	output c_out;
	
	reg c_out;
	reg [bits-1:0] sum;
	reg [bits:0] C_0, C_1, p, C;
	reg [n:0] cs;
	
	reg [bits-1:0] sum_1, sum_0;
	
	always @(a or b or c_in) begin
		c_in0 = 0;
		c_in1 = 1;
		for( j = 0 ; j < 4 ; j = j + 1) begin
			generate for( k = 0 ; k < n ; k = k + 1) begin
				full_adder_p (sum_0[k*4+j],C_0[k*4+j],p[k*4+j],a[k*4+j],b[k*4+j],c_in0);
				full_adder_p (sum_1[k*4+j],C_1[k*4+j],p[k*4+j],a[k*4+j],b[k*4+j],c_in1);
			end
			endgenerate
		end
		C[0] = c_in;
		end
		
		genvar g;
		generate for( g = 0 ; g < n ; g = g + 1) begin
			//mux_2_4(sum[4*j+3:j*4],sum_0[j*4+3:j*4],C[j*4]);
			//mux_2_4(C[4*j+4:j*4+1],C_0[j*4+4:j*4+1],C_1[j*4+4:j*4+1],C[j*4]);
			mux_2_1 M_0_g(sum[4*g],sum_0[4*g],sum_1[4*g],C[4*g]);
			mux_2_1 M_1_g(sum[4*g+1],sum_0[4*g+1],sum_1[4*g+1],C[4*g]);
			mux_2_1 M_2_g(sum[4*g+2],sum_0[4*g+2],sum_1[4*g+2],C[4*g+1]);
			mux_2_1 M_3_g(sum[4*g+3],sum_0[4*g+3],sum_1[4*g+3],C[4*g+2]);
			
		end
		endgenerate

	
	


endmodule



// Square root adder


module square_root_adder(sum,c_out,a,b,c_in);
	// WILL HAVE TO CALCULATE THESE OUT
	parameter n = 3; //How many Sets
	parameter bits = (((n+1)*(n+2))/2)-1;
	integer j,k, count;
				
	input [bits-1:0] a, b;
	input c_in;
	
	output [bits-1:0] sum;
	output c_out;
	
	reg c_out;
	reg [bits-1:0] sum;
	reg [bits:0] C, p, cs;
	reg [n-1:0] step_carry;
	integer bits_step[n-1:0];

	
	always @(a,b,c_in) begin
		for( k = 1 ; k <= n ; k = k + 1) begin
			bits_step[k-1] = (((k+1)*(k+2))/2)-1;
		end
	end
	
	reg Ct, sumt, pt, cst;
	
	always @(a,b,c_in) begin
		count = 0;
		
		cs[j]=0;
		for( j = 0 ; j < n ; j = j + 1) begin
			C[count] = 0;
			C[0] = c_in;
			for( k = 0 ; k < bits_step[j] ; k = k + 1) begin
				#4 assign {Ct,sumt}=a[count]+b[count]+C[count];
				assign pt=a[count]^b[count];
				C[count+1] = Ct;
				sum[count] = sumt;
				p[count] = pt;
				
				cst = cst&p[count];
				
				count = count + 1;
				
				
			end
			cs[j+1] = C[count]|cst&cs[j];
		end
		c_out=cs[n];
	end
	


endmodule 