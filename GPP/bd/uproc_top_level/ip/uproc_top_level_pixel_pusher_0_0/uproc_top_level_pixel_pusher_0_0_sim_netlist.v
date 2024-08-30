// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 17 22:13:50 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_pixel_pusher_0_0/uproc_top_level_pixel_pusher_0_0_sim_netlist.v
// Design      : uproc_top_level_pixel_pusher_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uproc_top_level_pixel_pusher_0_0,pixel_pusher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pixel_pusher,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uproc_top_level_pixel_pusher_0_0
   (clk,
    clk_en,
    VS,
    vid,
    pixel,
    hcount,
    R,
    B,
    G,
    addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk_0, INSERT_VIP 0" *) input clk;
  input clk_en;
  input VS;
  input vid;
  input [15:0]pixel;
  input [9:0]hcount;
  output [4:0]R;
  output [4:0]B;
  output [5:0]G;
  output [11:0]addr;

  wire [4:0]B;
  wire [5:0]G;
  wire [4:0]R;
  wire VS;
  wire [11:0]addr;
  wire clk;
  wire clk_en;
  wire [9:0]hcount;
  wire [15:0]pixel;
  wire vid;

  uproc_top_level_pixel_pusher_0_0_pixel_pusher U0
       (.B(B),
        .G(G),
        .R(R),
        .VS(VS),
        .addr(addr),
        .clk(clk),
        .clk_en(clk_en),
        .hcount(hcount[9:5]),
        .pixel(pixel),
        .vid(vid));
endmodule

(* ORIG_REF_NAME = "pixel_pusher" *) 
module uproc_top_level_pixel_pusher_0_0_pixel_pusher
   (R,
    B,
    G,
    addr,
    pixel,
    clk,
    clk_en,
    VS,
    hcount,
    vid);
  output [4:0]R;
  output [4:0]B;
  output [5:0]G;
  output [11:0]addr;
  input [15:0]pixel;
  input clk;
  input clk_en;
  input VS;
  input [4:0]hcount;
  input vid;

  wire [4:0]B;
  wire [5:0]G;
  wire [4:0]R;
  wire \R[4]_i_1_n_0 ;
  wire \R[4]_i_2_n_0 ;
  wire VS;
  wire [11:0]addr;
  wire clk;
  wire clk_en;
  wire count;
  wire \count[11]_i_2_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count_reg[11]_i_3_n_1 ;
  wire \count_reg[11]_i_3_n_2 ;
  wire \count_reg[11]_i_3_n_3 ;
  wire \count_reg[11]_i_3_n_4 ;
  wire \count_reg[11]_i_3_n_5 ;
  wire \count_reg[11]_i_3_n_6 ;
  wire \count_reg[11]_i_3_n_7 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_1 ;
  wire \count_reg[3]_i_1_n_2 ;
  wire \count_reg[3]_i_1_n_3 ;
  wire \count_reg[3]_i_1_n_4 ;
  wire \count_reg[3]_i_1_n_5 ;
  wire \count_reg[3]_i_1_n_6 ;
  wire \count_reg[3]_i_1_n_7 ;
  wire \count_reg[7]_i_1_n_0 ;
  wire \count_reg[7]_i_1_n_1 ;
  wire \count_reg[7]_i_1_n_2 ;
  wire \count_reg[7]_i_1_n_3 ;
  wire \count_reg[7]_i_1_n_4 ;
  wire \count_reg[7]_i_1_n_5 ;
  wire \count_reg[7]_i_1_n_6 ;
  wire \count_reg[7]_i_1_n_7 ;
  wire [4:0]hcount;
  wire [15:0]pixel;
  wire vid;
  wire [3:3]\NLW_count_reg[11]_i_3_CO_UNCONNECTED ;

  FDRE \B_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[0]),
        .Q(B[0]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \B_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[1]),
        .Q(B[1]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \B_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[2]),
        .Q(B[2]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \B_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[3]),
        .Q(B[3]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \B_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[4]),
        .Q(B[4]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[5]),
        .Q(G[0]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[6]),
        .Q(G[1]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[7]),
        .Q(G[2]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[8]),
        .Q(G[3]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[9]),
        .Q(G[4]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \G_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[10]),
        .Q(G[5]),
        .R(\R[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \R[4]_i_1 
       (.I0(\R[4]_i_2_n_0 ),
        .I1(clk_en),
        .O(\R[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00000000)) 
    \R[4]_i_2 
       (.I0(hcount[1]),
        .I1(hcount[0]),
        .I2(hcount[3]),
        .I3(hcount[2]),
        .I4(hcount[4]),
        .I5(vid),
        .O(\R[4]_i_2_n_0 ));
  FDRE \R_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[11]),
        .Q(R[0]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \R_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[12]),
        .Q(R[1]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \R_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[13]),
        .Q(R[2]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \R_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[14]),
        .Q(R[3]),
        .R(\R[4]_i_1_n_0 ));
  FDRE \R_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel[15]),
        .Q(R[4]),
        .R(\R[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \count[11]_i_1 
       (.I0(\R[4]_i_2_n_0 ),
        .I1(clk_en),
        .I2(VS),
        .O(count));
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_2 
       (.I0(clk_en),
        .I1(\R[4]_i_2_n_0 ),
        .O(\count[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[3]_i_2 
       (.I0(addr[0]),
        .O(\count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_3_n_5 ),
        .Q(addr[10]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_3_n_4 ),
        .Q(addr[11]),
        .R(count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[11]_i_3 
       (.CI(\count_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_reg[11]_i_3_CO_UNCONNECTED [3],\count_reg[11]_i_3_n_1 ,\count_reg[11]_i_3_n_2 ,\count_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[11]_i_3_n_4 ,\count_reg[11]_i_3_n_5 ,\count_reg[11]_i_3_n_6 ,\count_reg[11]_i_3_n_7 }),
        .S(addr[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_1_n_0 ,\count_reg[3]_i_1_n_1 ,\count_reg[3]_i_1_n_2 ,\count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[3]_i_1_n_4 ,\count_reg[3]_i_1_n_5 ,\count_reg[3]_i_1_n_6 ,\count_reg[3]_i_1_n_7 }),
        .S({addr[3:1],\count[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[7]_i_1 
       (.CI(\count_reg[3]_i_1_n_0 ),
        .CO({\count_reg[7]_i_1_n_0 ,\count_reg[7]_i_1_n_1 ,\count_reg[7]_i_1_n_2 ,\count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[7]_i_1_n_4 ,\count_reg[7]_i_1_n_5 ,\count_reg[7]_i_1_n_6 ,\count_reg[7]_i_1_n_7 }),
        .S(addr[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_3_n_7 ),
        .Q(addr[8]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\count[11]_i_2_n_0 ),
        .D(\count_reg[11]_i_3_n_6 ),
        .Q(addr[9]),
        .R(count));
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
