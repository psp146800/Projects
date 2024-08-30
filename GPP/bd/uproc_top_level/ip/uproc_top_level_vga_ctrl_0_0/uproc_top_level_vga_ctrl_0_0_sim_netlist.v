// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 18 15:41:54 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_vga_ctrl_0_0/uproc_top_level_vga_ctrl_0_0_sim_netlist.v
// Design      : uproc_top_level_vga_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uproc_top_level_vga_ctrl_0_0,vga_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "vga_ctrl,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uproc_top_level_vga_ctrl_0_0
   (clk,
    clk_en,
    hcount,
    vcount,
    vid,
    HS,
    VS);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0" *) input clk;
  input clk_en;
  output [9:0]hcount;
  output [9:0]vcount;
  output vid;
  output HS;
  output VS;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_en;
  wire [6:0]\^hcount ;
  wire [6:0]\^vcount ;

  assign HS = \<const1> ;
  assign VS = \<const1> ;
  assign hcount[9] = \<const0> ;
  assign hcount[8] = \<const0> ;
  assign hcount[7] = \<const0> ;
  assign hcount[6:0] = \^hcount [6:0];
  assign vcount[9] = \<const0> ;
  assign vcount[8] = \<const0> ;
  assign vcount[7] = \<const0> ;
  assign vcount[6:0] = \^vcount [6:0];
  assign vid = \<const1> ;
  GND GND
       (.G(\<const0> ));
  uproc_top_level_vga_ctrl_0_0_vga_ctrl U0
       (.clk(clk),
        .clk_en(clk_en),
        .hcount(\^hcount ),
        .vcount(\^vcount ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "vga_ctrl" *) 
module uproc_top_level_vga_ctrl_0_0_vga_ctrl
   (hcount,
    vcount,
    clk_en,
    clk);
  output [6:0]hcount;
  output [6:0]vcount;
  input clk_en;
  input clk;

  wire clk;
  wire clk_en;
  wire [6:0]hcount;
  wire hcounter;
  wire \hcounter[0]_i_1_n_0 ;
  wire \hcounter[1]_i_1_n_0 ;
  wire \hcounter[2]_i_1_n_0 ;
  wire \hcounter[3]_i_1_n_0 ;
  wire \hcounter[4]_i_1_n_0 ;
  wire \hcounter[6]_i_1_n_0 ;
  wire \hcounter[6]_i_2_n_0 ;
  wire [6:0]hcounter_reg;
  wire [5:5]plusOp;
  wire [6:0]plusOp__0;
  wire [6:0]vcount;
  wire vcounter;
  wire \vcounter[6]_i_3_n_0 ;
  wire [6:0]vcounter_reg;

  FDRE \hcount_reg[0] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[0]),
        .Q(hcount[0]),
        .R(1'b0));
  FDRE \hcount_reg[1] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[1]),
        .Q(hcount[1]),
        .R(1'b0));
  FDRE \hcount_reg[2] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[2]),
        .Q(hcount[2]),
        .R(1'b0));
  FDRE \hcount_reg[3] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[3]),
        .Q(hcount[3]),
        .R(1'b0));
  FDRE \hcount_reg[4] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[4]),
        .Q(hcount[4]),
        .R(1'b0));
  FDRE \hcount_reg[5] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[5]),
        .Q(hcount[5]),
        .R(1'b0));
  FDRE \hcount_reg[6] 
       (.C(clk),
        .CE(clk_en),
        .D(hcounter_reg[6]),
        .Q(hcount[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \hcounter[0]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(hcounter_reg[0]),
        .O(\hcounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \hcounter[1]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(hcounter_reg[0]),
        .I2(hcounter_reg[1]),
        .O(\hcounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \hcounter[2]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(hcounter_reg[0]),
        .I2(hcounter_reg[1]),
        .I3(hcounter_reg[2]),
        .O(\hcounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \hcounter[3]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(hcounter_reg[1]),
        .I2(hcounter_reg[0]),
        .I3(hcounter_reg[2]),
        .I4(hcounter_reg[3]),
        .O(\hcounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \hcounter[4]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(hcounter_reg[2]),
        .I2(hcounter_reg[0]),
        .I3(hcounter_reg[1]),
        .I4(hcounter_reg[3]),
        .I5(hcounter_reg[4]),
        .O(\hcounter[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hcounter[5]_i_1 
       (.I0(clk_en),
        .I1(hcounter_reg[6]),
        .O(hcounter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcounter[5]_i_2 
       (.I0(hcounter_reg[3]),
        .I1(hcounter_reg[1]),
        .I2(hcounter_reg[0]),
        .I3(hcounter_reg[2]),
        .I4(hcounter_reg[4]),
        .I5(hcounter_reg[5]),
        .O(plusOp));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \hcounter[6]_i_1 
       (.I0(hcounter_reg[6]),
        .I1(\hcounter[6]_i_2_n_0 ),
        .I2(hcounter_reg[5]),
        .O(\hcounter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \hcounter[6]_i_2 
       (.I0(hcounter_reg[4]),
        .I1(hcounter_reg[2]),
        .I2(hcounter_reg[0]),
        .I3(hcounter_reg[1]),
        .I4(hcounter_reg[3]),
        .O(\hcounter[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[0] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[0]_i_1_n_0 ),
        .Q(hcounter_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[1] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[1]_i_1_n_0 ),
        .Q(hcounter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[2] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[2]_i_1_n_0 ),
        .Q(hcounter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[3] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[3]_i_1_n_0 ),
        .Q(hcounter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[4] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[4]_i_1_n_0 ),
        .Q(hcounter_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[5] 
       (.C(clk),
        .CE(clk_en),
        .D(plusOp),
        .Q(hcounter_reg[5]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[6] 
       (.C(clk),
        .CE(clk_en),
        .D(\hcounter[6]_i_1_n_0 ),
        .Q(hcounter_reg[6]),
        .R(1'b0));
  FDRE \vcount_reg[0] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[0]),
        .Q(vcount[0]),
        .R(1'b0));
  FDRE \vcount_reg[1] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[1]),
        .Q(vcount[1]),
        .R(1'b0));
  FDRE \vcount_reg[2] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[2]),
        .Q(vcount[2]),
        .R(1'b0));
  FDRE \vcount_reg[3] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[3]),
        .Q(vcount[3]),
        .R(1'b0));
  FDRE \vcount_reg[4] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[4]),
        .Q(vcount[4]),
        .R(1'b0));
  FDRE \vcount_reg[5] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[5]),
        .Q(vcount[5]),
        .R(1'b0));
  FDRE \vcount_reg[6] 
       (.C(clk),
        .CE(clk_en),
        .D(vcounter_reg[6]),
        .Q(vcount[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcounter[0]_i_1 
       (.I0(vcounter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcounter[1]_i_1 
       (.I0(vcounter_reg[0]),
        .I1(vcounter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcounter[2]_i_1 
       (.I0(vcounter_reg[0]),
        .I1(vcounter_reg[1]),
        .I2(vcounter_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcounter[3]_i_1 
       (.I0(vcounter_reg[1]),
        .I1(vcounter_reg[0]),
        .I2(vcounter_reg[2]),
        .I3(vcounter_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcounter[4]_i_1 
       (.I0(vcounter_reg[2]),
        .I1(vcounter_reg[0]),
        .I2(vcounter_reg[1]),
        .I3(vcounter_reg[3]),
        .I4(vcounter_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vcounter[5]_i_1 
       (.I0(vcounter_reg[3]),
        .I1(vcounter_reg[1]),
        .I2(vcounter_reg[0]),
        .I3(vcounter_reg[2]),
        .I4(vcounter_reg[4]),
        .I5(vcounter_reg[5]),
        .O(plusOp__0[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \vcounter[6]_i_1 
       (.I0(clk_en),
        .I1(vcounter_reg[6]),
        .I2(hcounter_reg[6]),
        .O(vcounter));
  LUT3 #(
    .INIT(8'h78)) 
    \vcounter[6]_i_2 
       (.I0(\vcounter[6]_i_3_n_0 ),
        .I1(vcounter_reg[5]),
        .I2(vcounter_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \vcounter[6]_i_3 
       (.I0(vcounter_reg[4]),
        .I1(vcounter_reg[2]),
        .I2(vcounter_reg[0]),
        .I3(vcounter_reg[1]),
        .I4(vcounter_reg[3]),
        .O(\vcounter[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[0] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[0]),
        .Q(vcounter_reg[0]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[1] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[1]),
        .Q(vcounter_reg[1]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[2] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[2]),
        .Q(vcounter_reg[2]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[3] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[3]),
        .Q(vcounter_reg[3]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[4] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[4]),
        .Q(vcounter_reg[4]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[5] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[5]),
        .Q(vcounter_reg[5]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[6] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[6]),
        .Q(vcounter_reg[6]),
        .R(vcounter));
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
