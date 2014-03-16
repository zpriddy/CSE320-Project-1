----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:41 03/15/2014 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
module full_adder(

// I/O Ports
output sum, c_out
input a, b, c_in
);
// Internal nets
wire s1, c1, c2;

// Logic gates
xor (s1, a, b);
and (c1, a, b);

xor(sum, s1, c_in);
and (c2, s1, c_in);

xor (c_out, c2, c1);

endmodule

