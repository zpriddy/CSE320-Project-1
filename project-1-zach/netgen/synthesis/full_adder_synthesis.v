////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: full_adder_synthesis.v
// /___/   /\     Timestamp: Sat Mar 15 15:45:15 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim full_adder.ngc full_adder_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: full_adder.ngc
// Output file	: C:\Users\Zachary\Documents\GitHub\CSE320-Project-1\project-1-zach\netgen\synthesis\full_adder_synthesis.v
// # of Modules	: 1
// Design Name	: full_adder
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module full_adder (
  a, b, c_in, sum, c_out
);
  input a;
  input b;
  input c_in;
  output sum;
  output c_out;
  wire a_IBUF_0;
  wire b_IBUF_1;
  wire c_in_IBUF_2;
  wire sum_OBUF_3;
  wire c_out_OBUF_4;
  LUT3 #(
    .INIT ( 8'hE8 ))
  \Mxor_c_out_xo<0>1  (
    .I0(b_IBUF_1),
    .I1(c_in_IBUF_2),
    .I2(a_IBUF_0),
    .O(c_out_OBUF_4)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  sum1 (
    .I0(c_in_IBUF_2),
    .I1(a_IBUF_0),
    .I2(b_IBUF_1),
    .O(sum_OBUF_3)
  );
  IBUF   a_IBUF (
    .I(a),
    .O(a_IBUF_0)
  );
  IBUF   b_IBUF (
    .I(b),
    .O(b_IBUF_1)
  );
  IBUF   c_in_IBUF (
    .I(c_in),
    .O(c_in_IBUF_2)
  );
  OBUF   sum_OBUF (
    .I(sum_OBUF_3),
    .O(sum)
  );
  OBUF   c_out_OBUF (
    .I(c_out_OBUF_4),
    .O(c_out)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

