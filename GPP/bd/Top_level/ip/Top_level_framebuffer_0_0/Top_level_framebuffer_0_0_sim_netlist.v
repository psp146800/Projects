// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Apr 19 15:15:43 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/Top_level/ip/Top_level_framebuffer_0_0/Top_level_framebuffer_0_0_sim_netlist.v
// Design      : Top_level_framebuffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_level_framebuffer_0_0,framebuffer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "framebuffer,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Top_level_framebuffer_0_0
   (clk1,
    en1,
    en2,
    ld,
    addr1,
    addr2,
    wr_en1,
    din1,
    dout1,
    dout2);
  input clk1;
  input en1;
  input en2;
  input ld;
  input [11:0]addr1;
  input [11:0]addr2;
  input wr_en1;
  input [15:0]din1;
  output [15:0]dout1;
  output [15:0]dout2;

  wire [11:0]addr1;
  wire [11:0]addr2;
  wire clk1;
  wire [15:0]din1;
  wire [15:0]dout1;
  wire [15:0]dout2;
  wire en1;
  wire en2;
  wire wr_en1;

  Top_level_framebuffer_0_0_framebuffer U0
       (.addr1(addr1),
        .addr2(addr2),
        .clk1(clk1),
        .din1(din1),
        .dout1(dout1),
        .dout2(dout2),
        .en1(en1),
        .en2(en2),
        .wr_en1(wr_en1));
endmodule

(* ORIG_REF_NAME = "framebuffer" *) 
module Top_level_framebuffer_0_0_framebuffer
   (dout1,
    dout2,
    clk1,
    addr1,
    addr2,
    din1,
    en1,
    wr_en1,
    en2);
  output [15:0]dout1;
  output [15:0]dout2;
  input clk1;
  input [11:0]addr1;
  input [11:0]addr2;
  input [15:0]din1;
  input en1;
  input wr_en1;
  input en2;

  wire [11:0]addr1;
  wire [11:0]addr2;
  wire clk1;
  wire [15:0]din1;
  wire [15:0]dout1;
  wire [15:0]dout2;
  wire en1;
  wire en2;
  wire fmem_reg_1_i_1_n_0;
  wire fmem_reg_1_i_2_n_0;
  wire fmem_reg_1_i_3_n_0;
  wire wr_en1;
  wire NLW_fmem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_fmem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_fmem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_fmem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_fmem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_fmem_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_fmem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_fmem_reg_0_DOBDO_UNCONNECTED;
  wire [3:1]NLW_fmem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fmem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fmem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fmem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_fmem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_fmem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_fmem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_fmem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_fmem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_fmem_reg_1_SBITERR_UNCONNECTED;
  wire [31:7]NLW_fmem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_fmem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fmem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_fmem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fmem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fmem_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "U0/fmem_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fmem_reg_0
       (.ADDRARDADDR({1'b1,addr1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr2,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fmem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fmem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk1),
        .CLKBWRCLK(clk1),
        .DBITERR(NLW_fmem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din1[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,din1[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO({NLW_fmem_reg_0_DOADO_UNCONNECTED[31:8],dout1[7:0]}),
        .DOBDO({NLW_fmem_reg_0_DOBDO_UNCONNECTED[31:8],dout2[7:0]}),
        .DOPADOP({NLW_fmem_reg_0_DOPADOP_UNCONNECTED[3:1],dout1[8]}),
        .DOPBDOP({NLW_fmem_reg_0_DOPBDOP_UNCONNECTED[3:1],dout2[8]}),
        .ECCPARITY(NLW_fmem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_fmem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fmem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fmem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(fmem_reg_1_i_1_n_0),
        .RSTRAMB(fmem_reg_1_i_2_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fmem_reg_0_SBITERR_UNCONNECTED),
        .WEA({fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "U0/fmem_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fmem_reg_1
       (.ADDRARDADDR({1'b1,addr1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr2,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fmem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fmem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk1),
        .CLKBWRCLK(clk1),
        .DBITERR(NLW_fmem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din1[15:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_fmem_reg_1_DOADO_UNCONNECTED[31:7],dout1[15:9]}),
        .DOBDO({NLW_fmem_reg_1_DOBDO_UNCONNECTED[31:7],dout2[15:9]}),
        .DOPADOP(NLW_fmem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_fmem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_fmem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_fmem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fmem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fmem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(fmem_reg_1_i_1_n_0),
        .RSTRAMB(fmem_reg_1_i_2_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fmem_reg_1_SBITERR_UNCONNECTED),
        .WEA({fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0,fmem_reg_1_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    fmem_reg_1_i_1
       (.I0(en1),
        .O(fmem_reg_1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fmem_reg_1_i_2
       (.I0(en2),
        .O(fmem_reg_1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fmem_reg_1_i_3
       (.I0(en1),
        .I1(wr_en1),
        .O(fmem_reg_1_i_3_n_0));
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