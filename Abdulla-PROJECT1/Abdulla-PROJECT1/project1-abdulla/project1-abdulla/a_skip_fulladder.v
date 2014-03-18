`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:59 03/17/2014 
// Design Name: 
// Module Name:    a_skip_fulladder 
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
module a_skip_fulladder(a,b,carryin,sum,carryout,p);
	input a,b,carryin;
	output sum,carryout,p;

	assign #2 {carryout,sum}=a+b+carryin;
	assign #2 p=a^b; // Might need #2
endmodule
