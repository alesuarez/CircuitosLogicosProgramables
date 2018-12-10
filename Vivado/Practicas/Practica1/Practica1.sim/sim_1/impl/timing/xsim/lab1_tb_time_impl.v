// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Nov 13 22:01:42 2018
// Host        : laptop-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/CircuitosLogicosProgramables/Vivado/Practicas/Practica1/Practica1.sim/sim_1/impl/timing/xsim/lab1_tb_time_impl.v
// Design      : lab1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* XLNX_LINE_COL = "1536" *) 
(* NotValidForBitStream *)
module lab1
   (swt,
    led);
  input [3:0]swt;
  output [3:0]led;

  wire [3:0]led;
  wire [3:0]swt;

initial begin
 $sdf_annotate("lab1_tb_time_impl.sdf",,,,"tool_control");
end
  (* XLNX_LINE_COL = "983808" *) 
  (* map_to_module = "1" *) 
  RTL_INV led_aux0_i
       (.I0(swt[0]),
        .O(led[0]));
  (* XLNX_LINE_COL = "1704448" *) 
  (* map_to_module = "0" *) 
  RTL_OR led_aux0_i__0
       (.I0(led[1]),
        .I1(led[3]),
        .O(led[2]));
  (* INV = "I1" *) 
  (* XLNX_LINE_COL = "1442560" *) 
  (* map_to_module = "3" *) 
  RTL_AND0 led_aux_1_i
       (.I0(swt[1]),
        .I1(swt[2]),
        .O(led[1]));
  (* XLNX_LINE_COL = "1442560" *) 
  (* map_to_module = "2" *) 
  RTL_AND0 led_aux_3_i
       (.I0(swt[2]),
        .I1(swt[3]),
        .O(led[3]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
