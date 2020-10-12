// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Mon Oct 12 11:42:05 2020
// Host        : fermi running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/shimo/workspace/fpga/basys3/projects/fpga-practice/adder/adder.sim/sim_1/impl/timing/xsim/adder_test_time_impl.v
// Design      : adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "5346b078" *) 
(* NotValidForBitStream *)
module adder
   (in_data1,
    in_data2,
    out_data,
    cy);
  input [3:0]in_data1;
  input [3:0]in_data2;
  output [3:0]out_data;
  output cy;

  wire cy;
  wire cy_OBUF;
  wire [3:0]in_data1;
  wire [3:0]in_data1_IBUF;
  wire [3:0]in_data2;
  wire [3:0]in_data2_IBUF;
  wire [3:0]out_data;
  wire [3:0]out_data_OBUF;
  wire \out_data_OBUF[3]_inst_i_2_n_0 ;

initial begin
 $sdf_annotate("adder_test_time_impl.sdf",,,,"tool_control");
end
  OBUF cy_OBUF_inst
       (.I(cy_OBUF),
        .O(cy));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    cy_OBUF_inst_i_1
       (.I0(in_data2_IBUF[3]),
        .I1(in_data1_IBUF[3]),
        .I2(\out_data_OBUF[3]_inst_i_2_n_0 ),
        .O(cy_OBUF));
  IBUF \in_data1_IBUF[0]_inst 
       (.I(in_data1[0]),
        .O(in_data1_IBUF[0]));
  IBUF \in_data1_IBUF[1]_inst 
       (.I(in_data1[1]),
        .O(in_data1_IBUF[1]));
  IBUF \in_data1_IBUF[2]_inst 
       (.I(in_data1[2]),
        .O(in_data1_IBUF[2]));
  IBUF \in_data1_IBUF[3]_inst 
       (.I(in_data1[3]),
        .O(in_data1_IBUF[3]));
  IBUF \in_data2_IBUF[0]_inst 
       (.I(in_data2[0]),
        .O(in_data2_IBUF[0]));
  IBUF \in_data2_IBUF[1]_inst 
       (.I(in_data2[1]),
        .O(in_data2_IBUF[1]));
  IBUF \in_data2_IBUF[2]_inst 
       (.I(in_data2[2]),
        .O(in_data2_IBUF[2]));
  IBUF \in_data2_IBUF[3]_inst 
       (.I(in_data2[3]),
        .O(in_data2_IBUF[3]));
  OBUF \out_data_OBUF[0]_inst 
       (.I(out_data_OBUF[0]),
        .O(out_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_data_OBUF[0]_inst_i_1 
       (.I0(in_data1_IBUF[0]),
        .I1(in_data2_IBUF[0]),
        .O(out_data_OBUF[0]));
  OBUF \out_data_OBUF[1]_inst 
       (.I(out_data_OBUF[1]),
        .O(out_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \out_data_OBUF[1]_inst_i_1 
       (.I0(in_data1_IBUF[0]),
        .I1(in_data2_IBUF[0]),
        .I2(in_data2_IBUF[1]),
        .I3(in_data1_IBUF[1]),
        .O(out_data_OBUF[1]));
  OBUF \out_data_OBUF[2]_inst 
       (.I(out_data_OBUF[2]),
        .O(out_data[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \out_data_OBUF[2]_inst_i_1 
       (.I0(in_data2_IBUF[0]),
        .I1(in_data1_IBUF[0]),
        .I2(in_data1_IBUF[1]),
        .I3(in_data2_IBUF[1]),
        .I4(in_data2_IBUF[2]),
        .I5(in_data1_IBUF[2]),
        .O(out_data_OBUF[2]));
  OBUF \out_data_OBUF[3]_inst 
       (.I(out_data_OBUF[3]),
        .O(out_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_data_OBUF[3]_inst_i_1 
       (.I0(\out_data_OBUF[3]_inst_i_2_n_0 ),
        .I1(in_data2_IBUF[3]),
        .I2(in_data1_IBUF[3]),
        .O(out_data_OBUF[3]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \out_data_OBUF[3]_inst_i_2 
       (.I0(in_data2_IBUF[2]),
        .I1(in_data1_IBUF[2]),
        .I2(in_data2_IBUF[0]),
        .I3(in_data1_IBUF[0]),
        .I4(in_data1_IBUF[1]),
        .I5(in_data2_IBUF[1]),
        .O(\out_data_OBUF[3]_inst_i_2_n_0 ));
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
