// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Mar  8 18:07:01 2026
// Host        : LAPTOP-AVQG6N31 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/vivado_projects/arithmetic_and_logical
//               functions/arithmetic_and_logical functions.sim/sim_1/synth/func/xsim/asc_tb_func_synth.v}
// Design      : asc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module asc
   (a,
    b,
    c_in,
    sum1,
    sum2,
    c_out,
    diffrence1,
    diffrence2,
    borrow1,
    borrow2,
    b_in,
    a_grt_b,
    a_eq_b,
    a_less_b);
  input a;
  input b;
  input c_in;
  output sum1;
  output sum2;
  output c_out;
  output diffrence1;
  output diffrence2;
  output borrow1;
  output borrow2;
  input b_in;
  output a_grt_b;
  output a_eq_b;
  output a_less_b;

  wire a;
  wire a_IBUF;
  wire a_eq_b;
  wire a_eq_b_OBUF;
  wire a_grt_b;
  wire a_grt_b_OBUF;
  wire a_less_b;
  wire a_less_b_OBUF;
  wire b;
  wire b_IBUF;
  wire b_in;
  wire b_in_IBUF;
  wire borrow1;
  wire borrow2;
  wire borrow2_OBUF;
  wire c_in;
  wire c_in_IBUF;
  wire c_out;
  wire c_out_OBUF;
  wire diffrence1;
  wire diffrence1_OBUF;
  wire diffrence2;
  wire diffrence2_OBUF;
  wire sum1;
  wire sum2;
  wire sum2_OBUF;

  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  OBUF a_eq_b_OBUF_inst
       (.I(a_eq_b_OBUF),
        .O(a_eq_b));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    a_eq_b_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .O(a_eq_b_OBUF));
  OBUF a_grt_b_OBUF_inst
       (.I(a_grt_b_OBUF),
        .O(a_grt_b));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    a_grt_b_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .O(a_grt_b_OBUF));
  OBUF a_less_b_OBUF_inst
       (.I(a_less_b_OBUF),
        .O(a_less_b));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF b_in_IBUF_inst
       (.I(b_in),
        .O(b_in_IBUF));
  OBUF borrow1_OBUF_inst
       (.I(a_less_b_OBUF),
        .O(borrow1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    borrow1_OBUF_inst_i_1
       (.I0(b_IBUF),
        .I1(a_IBUF),
        .O(a_less_b_OBUF));
  OBUF borrow2_OBUF_inst
       (.I(borrow2_OBUF),
        .O(borrow2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    borrow2_OBUF_inst_i_1
       (.I0(b_in_IBUF),
        .I1(a_IBUF),
        .I2(b_IBUF),
        .O(borrow2_OBUF));
  IBUF c_in_IBUF_inst
       (.I(c_in),
        .O(c_in_IBUF));
  OBUF c_out_OBUF_inst
       (.I(c_out_OBUF),
        .O(c_out));
  LUT4 #(
    .INIT(16'hFF28)) 
    c_out_OBUF_inst_i_1
       (.I0(c_in_IBUF),
        .I1(a_IBUF),
        .I2(b_IBUF),
        .I3(c_out_OBUF),
        .O(c_out_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    c_out_OBUF_inst_i_2
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .O(c_out_OBUF));
  OBUF diffrence1_OBUF_inst
       (.I(diffrence1_OBUF),
        .O(diffrence1));
  OBUF diffrence2_OBUF_inst
       (.I(diffrence2_OBUF),
        .O(diffrence2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    diffrence2_OBUF_inst_i_1
       (.I0(b_in_IBUF),
        .I1(a_IBUF),
        .I2(b_IBUF),
        .O(diffrence2_OBUF));
  OBUF sum1_OBUF_inst
       (.I(diffrence1_OBUF),
        .O(sum1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sum1_OBUF_inst_i_1
       (.I0(b_IBUF),
        .I1(a_IBUF),
        .O(diffrence1_OBUF));
  OBUF sum2_OBUF_inst
       (.I(sum2_OBUF),
        .O(sum2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    sum2_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .I2(c_in_IBUF),
        .O(sum2_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
