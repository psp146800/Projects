// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Apr 19 15:13:22 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/Top_level/ip/Top_level_controls_0_0/Top_level_controls_0_0_sim_netlist.v
// Design      : Top_level_controls_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_level_controls_0_0,controls,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "controls,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Top_level_controls_0_0
   (clk,
    en,
    rst,
    rID1,
    rID2,
    wr_en1,
    wr_en2,
    regrD1,
    regrD2,
    regwD1,
    regwD2,
    fbRST,
    fbAddr1,
    fbDin1,
    fbDout1,
    fbWr_en,
    irAddr,
    irWord,
    dAddr,
    d_wr_en,
    dOut,
    dIn,
    aluA,
    aluB,
    aluOp,
    aluResult,
    ready,
    newChar,
    send,
    charRec,
    charSend);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Top_level_clk_0, INSERT_VIP 0" *) input clk;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [4:0]rID1;
  output [4:0]rID2;
  output wr_en1;
  output wr_en2;
  input [15:0]regrD1;
  input [15:0]regrD2;
  output [15:0]regwD1;
  output [15:0]regwD2;
  output fbRST;
  output [11:0]fbAddr1;
  input [15:0]fbDin1;
  output [15:0]fbDout1;
  output fbWr_en;
  output [13:0]irAddr;
  input [31:0]irWord;
  output [14:0]dAddr;
  output d_wr_en;
  output [15:0]dOut;
  input [15:0]dIn;
  output [15:0]aluA;
  output [15:0]aluB;
  output [3:0]aluOp;
  input [15:0]aluResult;
  input ready;
  input newChar;
  output send;
  input [7:0]charRec;
  output [7:0]charSend;

  wire \<const0> ;
  wire [15:0]aluA;
  wire [15:0]aluB;
  wire [3:0]aluOp;
  wire [15:0]aluResult;
  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire [14:0]dAddr;
  wire [15:0]dIn;
  wire en;
  wire [11:0]fbAddr1;
  wire fbWr_en;
  wire [13:0]irAddr;
  wire [31:0]irWord;
  wire newChar;
  wire [4:0]rID1;
  wire [4:0]rID2;
  wire ready;
  wire [15:0]regrD1;
  wire [15:0]regrD2;
  wire [15:0]regwD1;
  wire send;
  wire wr_en1;

  assign dOut[15] = \<const0> ;
  assign dOut[14] = \<const0> ;
  assign dOut[13] = \<const0> ;
  assign dOut[12] = \<const0> ;
  assign dOut[11] = \<const0> ;
  assign dOut[10] = \<const0> ;
  assign dOut[9] = \<const0> ;
  assign dOut[8] = \<const0> ;
  assign dOut[7] = \<const0> ;
  assign dOut[6] = \<const0> ;
  assign dOut[5] = \<const0> ;
  assign dOut[4] = \<const0> ;
  assign dOut[3] = \<const0> ;
  assign dOut[2] = \<const0> ;
  assign dOut[1] = \<const0> ;
  assign dOut[0] = \<const0> ;
  assign d_wr_en = \<const0> ;
  assign fbDout1[15] = \<const0> ;
  assign fbDout1[14] = \<const0> ;
  assign fbDout1[13] = \<const0> ;
  assign fbDout1[12] = \<const0> ;
  assign fbDout1[11] = \<const0> ;
  assign fbDout1[10] = \<const0> ;
  assign fbDout1[9] = \<const0> ;
  assign fbDout1[8] = \<const0> ;
  assign fbDout1[7] = \<const0> ;
  assign fbDout1[6] = \<const0> ;
  assign fbDout1[5] = \<const0> ;
  assign fbDout1[4] = \<const0> ;
  assign fbDout1[3] = \<const0> ;
  assign fbDout1[2] = \<const0> ;
  assign fbDout1[1] = \<const0> ;
  assign fbDout1[0] = \<const0> ;
  assign fbRST = \<const0> ;
  assign regwD2[15] = \<const0> ;
  assign regwD2[14] = \<const0> ;
  assign regwD2[13] = \<const0> ;
  assign regwD2[12] = \<const0> ;
  assign regwD2[11] = \<const0> ;
  assign regwD2[10] = \<const0> ;
  assign regwD2[9] = \<const0> ;
  assign regwD2[8] = \<const0> ;
  assign regwD2[7] = \<const0> ;
  assign regwD2[6] = \<const0> ;
  assign regwD2[5] = \<const0> ;
  assign regwD2[4] = \<const0> ;
  assign regwD2[3] = \<const0> ;
  assign regwD2[2] = \<const0> ;
  assign regwD2[1] = \<const0> ;
  assign regwD2[0] = \<const0> ;
  assign wr_en2 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Top_level_controls_0_0_controls U0
       (.aluA(aluA),
        .aluB(aluB),
        .aluOp(aluOp),
        .aluResult(aluResult),
        .charRec(charRec),
        .charSend(charSend),
        .clk(clk),
        .dAddr(dAddr),
        .dIn(dIn),
        .en(en),
        .fbAddr1(fbAddr1),
        .fbWr_en(fbWr_en),
        .irAddr(irAddr),
        .irWord(irWord[31:1]),
        .newChar(newChar),
        .rID1(rID1),
        .rID2(rID2),
        .ready(ready),
        .regrD1(regrD1),
        .regrD2(regrD2),
        .regwD1(regwD1),
        .send(send),
        .wr_en1(wr_en1));
endmodule

(* ORIG_REF_NAME = "controls" *) 
module Top_level_controls_0_0_controls
   (rID1,
    rID2,
    regwD1,
    fbAddr1,
    irAddr,
    dAddr,
    aluA,
    aluB,
    aluOp,
    charSend,
    wr_en1,
    send,
    fbWr_en,
    en,
    clk,
    irWord,
    regrD1,
    regrD2,
    newChar,
    ready,
    dIn,
    aluResult,
    charRec);
  output [4:0]rID1;
  output [4:0]rID2;
  output [15:0]regwD1;
  output [11:0]fbAddr1;
  output [13:0]irAddr;
  output [14:0]dAddr;
  output [15:0]aluA;
  output [15:0]aluB;
  output [3:0]aluOp;
  output [7:0]charSend;
  output wr_en1;
  output send;
  output fbWr_en;
  input en;
  input clk;
  input [30:0]irWord;
  input [15:0]regrD1;
  input [15:0]regrD2;
  input newChar;
  input ready;
  input [15:0]dIn;
  input [15:0]aluResult;
  input [7:0]charRec;

  wire [15:0]ALU_Result;
  wire ALU_Result0;
  wire \ALU_Result[0]_i_1_n_0 ;
  wire \ALU_Result[0]_i_2_n_0 ;
  wire \ALU_Result[0]_i_3_n_0 ;
  wire \ALU_Result[10]_i_1_n_0 ;
  wire \ALU_Result[10]_i_2_n_0 ;
  wire \ALU_Result[11]_i_1_n_0 ;
  wire \ALU_Result[11]_i_2_n_0 ;
  wire \ALU_Result[12]_i_1_n_0 ;
  wire \ALU_Result[12]_i_2_n_0 ;
  wire \ALU_Result[13]_i_1_n_0 ;
  wire \ALU_Result[13]_i_2_n_0 ;
  wire \ALU_Result[14]_i_1_n_0 ;
  wire \ALU_Result[14]_i_2_n_0 ;
  wire \ALU_Result[15]_i_2_n_0 ;
  wire \ALU_Result[15]_i_3_n_0 ;
  wire \ALU_Result[15]_i_4_n_0 ;
  wire \ALU_Result[1]_i_1_n_0 ;
  wire \ALU_Result[1]_i_2_n_0 ;
  wire \ALU_Result[1]_i_3_n_0 ;
  wire \ALU_Result[2]_i_1_n_0 ;
  wire \ALU_Result[2]_i_2_n_0 ;
  wire \ALU_Result[2]_i_3_n_0 ;
  wire \ALU_Result[3]_i_1_n_0 ;
  wire \ALU_Result[3]_i_2_n_0 ;
  wire \ALU_Result[3]_i_3_n_0 ;
  wire \ALU_Result[4]_i_1_n_0 ;
  wire \ALU_Result[4]_i_2_n_0 ;
  wire \ALU_Result[4]_i_3_n_0 ;
  wire \ALU_Result[5]_i_1_n_0 ;
  wire \ALU_Result[5]_i_2_n_0 ;
  wire \ALU_Result[5]_i_3_n_0 ;
  wire \ALU_Result[6]_i_1_n_0 ;
  wire \ALU_Result[6]_i_2_n_0 ;
  wire \ALU_Result[6]_i_3_n_0 ;
  wire \ALU_Result[7]_i_1_n_0 ;
  wire \ALU_Result[7]_i_2_n_0 ;
  wire \ALU_Result[7]_i_3_n_0 ;
  wire \ALU_Result[8]_i_1_n_0 ;
  wire \ALU_Result[8]_i_2_n_0 ;
  wire \ALU_Result[9]_i_1_n_0 ;
  wire \ALU_Result[9]_i_2_n_0 ;
  wire \FSM_onehot_curr[10]_i_1_n_0 ;
  wire \FSM_onehot_curr[11]_i_1_n_0 ;
  wire \FSM_onehot_curr[12]_i_1_n_0 ;
  wire \FSM_onehot_curr[14]_i_1_n_0 ;
  wire \FSM_onehot_curr[15]_i_1_n_0 ;
  wire \FSM_onehot_curr[17]_i_1_n_0 ;
  wire \FSM_onehot_curr[19]_i_1_n_0 ;
  wire \FSM_onehot_curr[20]_i_1_n_0 ;
  wire \FSM_onehot_curr[21]_i_1_n_0 ;
  wire \FSM_onehot_curr[22]_i_1_n_0 ;
  wire \FSM_onehot_curr[24]_i_1_n_0 ;
  wire \FSM_onehot_curr[24]_i_2_n_0 ;
  wire \FSM_onehot_curr[26]_i_1_n_0 ;
  wire \FSM_onehot_curr[27]_i_1_n_0 ;
  wire \FSM_onehot_curr[28]_i_1_n_0 ;
  wire \FSM_onehot_curr[30]_i_1_n_0 ;
  wire \FSM_onehot_curr[31]_i_1_n_0 ;
  wire \FSM_onehot_curr[32]_i_2_n_0 ;
  wire \FSM_onehot_curr[32]_i_3_n_0 ;
  wire \FSM_onehot_curr[32]_i_4_n_0 ;
  wire \FSM_onehot_curr[32]_i_5_n_0 ;
  wire \FSM_onehot_curr[32]_i_6_n_0 ;
  wire \FSM_onehot_curr[32]_i_7_n_0 ;
  wire \FSM_onehot_curr[32]_i_8_n_0 ;
  wire \FSM_onehot_curr[5]_i_1_n_0 ;
  wire \FSM_onehot_curr[7]_i_1_n_0 ;
  wire \FSM_onehot_curr[9]_i_1_n_0 ;
  wire \FSM_onehot_curr[9]_i_2_n_0 ;
  wire \FSM_onehot_curr_reg_n_0_[0] ;
  wire \FSM_onehot_curr_reg_n_0_[10] ;
  wire \FSM_onehot_curr_reg_n_0_[11] ;
  wire \FSM_onehot_curr_reg_n_0_[12] ;
  wire \FSM_onehot_curr_reg_n_0_[14] ;
  wire \FSM_onehot_curr_reg_n_0_[15] ;
  wire \FSM_onehot_curr_reg_n_0_[16] ;
  wire \FSM_onehot_curr_reg_n_0_[17] ;
  wire \FSM_onehot_curr_reg_n_0_[18] ;
  wire \FSM_onehot_curr_reg_n_0_[19] ;
  wire \FSM_onehot_curr_reg_n_0_[20] ;
  wire \FSM_onehot_curr_reg_n_0_[21] ;
  wire \FSM_onehot_curr_reg_n_0_[22] ;
  wire \FSM_onehot_curr_reg_n_0_[23] ;
  wire \FSM_onehot_curr_reg_n_0_[24] ;
  wire \FSM_onehot_curr_reg_n_0_[25] ;
  wire \FSM_onehot_curr_reg_n_0_[26] ;
  wire \FSM_onehot_curr_reg_n_0_[27] ;
  wire \FSM_onehot_curr_reg_n_0_[28] ;
  wire \FSM_onehot_curr_reg_n_0_[29] ;
  wire \FSM_onehot_curr_reg_n_0_[2] ;
  wire \FSM_onehot_curr_reg_n_0_[30] ;
  wire \FSM_onehot_curr_reg_n_0_[31] ;
  wire \FSM_onehot_curr_reg_n_0_[32] ;
  wire \FSM_onehot_curr_reg_n_0_[3] ;
  wire \FSM_onehot_curr_reg_n_0_[4] ;
  wire \FSM_onehot_curr_reg_n_0_[5] ;
  wire \FSM_onehot_curr_reg_n_0_[7] ;
  wire \FSM_onehot_curr_reg_n_0_[8] ;
  wire \FSM_onehot_curr_reg_n_0_[9] ;
  wire [15:0]aluA;
  wire aluA0;
  wire [15:0]aluB;
  wire [3:0]aluOp;
  wire [15:0]aluResult;
  wire [7:0]charRec;
  wire [7:0]charSend;
  wire charSend0;
  wire clk;
  wire curr0;
  wire [14:0]dAddr;
  wire dAddr0;
  wire dAddr0_carry__0_i_1_n_0;
  wire dAddr0_carry__0_i_2_n_0;
  wire dAddr0_carry__0_i_3_n_0;
  wire dAddr0_carry__0_i_4_n_0;
  wire dAddr0_carry__0_n_0;
  wire dAddr0_carry__0_n_1;
  wire dAddr0_carry__0_n_2;
  wire dAddr0_carry__0_n_3;
  wire dAddr0_carry__0_n_4;
  wire dAddr0_carry__0_n_5;
  wire dAddr0_carry__0_n_6;
  wire dAddr0_carry__0_n_7;
  wire dAddr0_carry__1_i_1_n_0;
  wire dAddr0_carry__1_i_2_n_0;
  wire dAddr0_carry__1_i_3_n_0;
  wire dAddr0_carry__1_i_4_n_0;
  wire dAddr0_carry__1_n_0;
  wire dAddr0_carry__1_n_1;
  wire dAddr0_carry__1_n_2;
  wire dAddr0_carry__1_n_3;
  wire dAddr0_carry__1_n_4;
  wire dAddr0_carry__1_n_5;
  wire dAddr0_carry__1_n_6;
  wire dAddr0_carry__1_n_7;
  wire dAddr0_carry__2_i_1_n_0;
  wire dAddr0_carry__2_i_2_n_0;
  wire dAddr0_carry__2_i_3_n_0;
  wire dAddr0_carry__2_n_2;
  wire dAddr0_carry__2_n_3;
  wire dAddr0_carry__2_n_5;
  wire dAddr0_carry__2_n_6;
  wire dAddr0_carry__2_n_7;
  wire dAddr0_carry_i_1_n_0;
  wire dAddr0_carry_i_2_n_0;
  wire dAddr0_carry_i_3_n_0;
  wire dAddr0_carry_i_4_n_0;
  wire dAddr0_carry_n_0;
  wire dAddr0_carry_n_1;
  wire dAddr0_carry_n_2;
  wire dAddr0_carry_n_3;
  wire dAddr0_carry_n_4;
  wire dAddr0_carry_n_5;
  wire dAddr0_carry_n_6;
  wire dAddr0_carry_n_7;
  wire [15:0]dIn;
  wire en;
  wire [11:0]fbAddr1;
  wire fbAddr10;
  wire \fbAddr1[11]_i_1_n_0 ;
  wire fbWr_en;
  wire fbWr_en_i_1_n_0;
  wire immediate0;
  wire \immediate[0]_i_1_n_0 ;
  wire \immediate[10]_i_1_n_0 ;
  wire \immediate[11]_i_1_n_0 ;
  wire \immediate[12]_i_1_n_0 ;
  wire \immediate[13]_i_1_n_0 ;
  wire \immediate[14]_i_1_n_0 ;
  wire \immediate[15]_i_2_n_0 ;
  wire \immediate[1]_i_1_n_0 ;
  wire \immediate[2]_i_1_n_0 ;
  wire \immediate[3]_i_1_n_0 ;
  wire \immediate[4]_i_1_n_0 ;
  wire \immediate[5]_i_1_n_0 ;
  wire \immediate[6]_i_1_n_0 ;
  wire \immediate[7]_i_1_n_0 ;
  wire \immediate[8]_i_1_n_0 ;
  wire \immediate[9]_i_1_n_0 ;
  wire \immediate_reg_n_0_[0] ;
  wire \immediate_reg_n_0_[10] ;
  wire \immediate_reg_n_0_[11] ;
  wire \immediate_reg_n_0_[12] ;
  wire \immediate_reg_n_0_[13] ;
  wire \immediate_reg_n_0_[14] ;
  wire \immediate_reg_n_0_[15] ;
  wire \immediate_reg_n_0_[1] ;
  wire \immediate_reg_n_0_[2] ;
  wire \immediate_reg_n_0_[3] ;
  wire \immediate_reg_n_0_[4] ;
  wire \immediate_reg_n_0_[5] ;
  wire \immediate_reg_n_0_[6] ;
  wire \immediate_reg_n_0_[7] ;
  wire \immediate_reg_n_0_[8] ;
  wire \immediate_reg_n_0_[9] ;
  wire [15:1]in10;
  wire [0:0]in18;
  wire [1:0]in3;
  wire \instruction_reg_n_0_[10] ;
  wire \instruction_reg_n_0_[17] ;
  wire \instruction_reg_n_0_[18] ;
  wire \instruction_reg_n_0_[19] ;
  wire \instruction_reg_n_0_[1] ;
  wire \instruction_reg_n_0_[20] ;
  wire \instruction_reg_n_0_[21] ;
  wire \instruction_reg_n_0_[22] ;
  wire \instruction_reg_n_0_[23] ;
  wire \instruction_reg_n_0_[24] ;
  wire \instruction_reg_n_0_[25] ;
  wire \instruction_reg_n_0_[26] ;
  wire \instruction_reg_n_0_[2] ;
  wire \instruction_reg_n_0_[3] ;
  wire \instruction_reg_n_0_[4] ;
  wire \instruction_reg_n_0_[5] ;
  wire \instruction_reg_n_0_[6] ;
  wire \instruction_reg_n_0_[7] ;
  wire \instruction_reg_n_0_[8] ;
  wire \instruction_reg_n_0_[9] ;
  wire [13:0]irAddr;
  wire irAddr0;
  wire [30:0]irWord;
  wire newChar;
  wire \opcode_reg_n_0_[0] ;
  wire \opcode_reg_n_0_[1] ;
  wire \opcode_reg_n_0_[2] ;
  wire [4:0]p_0_in;
  wire [4:0]p_1_in;
  wire pc;
  wire pc0;
  wire \pc_reg_n_0_[0] ;
  wire \pc_reg_n_0_[10] ;
  wire \pc_reg_n_0_[11] ;
  wire \pc_reg_n_0_[12] ;
  wire \pc_reg_n_0_[13] ;
  wire \pc_reg_n_0_[14] ;
  wire \pc_reg_n_0_[15] ;
  wire \pc_reg_n_0_[1] ;
  wire \pc_reg_n_0_[2] ;
  wire \pc_reg_n_0_[3] ;
  wire \pc_reg_n_0_[4] ;
  wire \pc_reg_n_0_[5] ;
  wire \pc_reg_n_0_[6] ;
  wire \pc_reg_n_0_[7] ;
  wire \pc_reg_n_0_[8] ;
  wire \pc_reg_n_0_[9] ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [4:0]rID1;
  wire rID10;
  wire \rID1[0]_i_1_n_0 ;
  wire \rID1[0]_i_2_n_0 ;
  wire \rID1[1]_i_1_n_0 ;
  wire \rID1[2]_i_1_n_0 ;
  wire \rID1[3]_i_1_n_0 ;
  wire \rID1[4]_i_2_n_0 ;
  wire \rID1[4]_i_3_n_0 ;
  wire \rID1[4]_i_4_n_0 ;
  wire [4:0]rID2;
  wire rID20;
  wire \rID2[0]_i_1_n_0 ;
  wire \rID2[1]_i_1_n_0 ;
  wire \rID2[2]_i_1_n_0 ;
  wire \rID2[3]_i_1_n_0 ;
  wire \rID2[4]_i_2_n_0 ;
  wire ready;
  wire reg1;
  wire reg10;
  wire \reg1_reg_n_0_[0] ;
  wire \reg1_reg_n_0_[10] ;
  wire \reg1_reg_n_0_[11] ;
  wire \reg1_reg_n_0_[12] ;
  wire \reg1_reg_n_0_[13] ;
  wire \reg1_reg_n_0_[14] ;
  wire \reg1_reg_n_0_[15] ;
  wire \reg1_reg_n_0_[1] ;
  wire \reg1_reg_n_0_[2] ;
  wire \reg1_reg_n_0_[3] ;
  wire \reg1_reg_n_0_[4] ;
  wire \reg1_reg_n_0_[5] ;
  wire \reg1_reg_n_0_[6] ;
  wire \reg1_reg_n_0_[7] ;
  wire \reg1_reg_n_0_[8] ;
  wire \reg1_reg_n_0_[9] ;
  wire reg20;
  wire \reg2[0]_i_1_n_0 ;
  wire \reg2[10]_i_1_n_0 ;
  wire \reg2[11]_i_1_n_0 ;
  wire \reg2[12]_i_1_n_0 ;
  wire \reg2[13]_i_1_n_0 ;
  wire \reg2[14]_i_1_n_0 ;
  wire \reg2[15]_i_2_n_0 ;
  wire \reg2[1]_i_1_n_0 ;
  wire \reg2[2]_i_1_n_0 ;
  wire \reg2[3]_i_1_n_0 ;
  wire \reg2[4]_i_1_n_0 ;
  wire \reg2[5]_i_1_n_0 ;
  wire \reg2[6]_i_1_n_0 ;
  wire \reg2[7]_i_1_n_0 ;
  wire \reg2[8]_i_1_n_0 ;
  wire \reg2[9]_i_1_n_0 ;
  wire \reg2_reg_n_0_[0] ;
  wire \reg2_reg_n_0_[10] ;
  wire \reg2_reg_n_0_[11] ;
  wire \reg2_reg_n_0_[12] ;
  wire \reg2_reg_n_0_[13] ;
  wire \reg2_reg_n_0_[14] ;
  wire \reg2_reg_n_0_[15] ;
  wire \reg2_reg_n_0_[1] ;
  wire \reg2_reg_n_0_[2] ;
  wire \reg2_reg_n_0_[3] ;
  wire \reg2_reg_n_0_[4] ;
  wire \reg2_reg_n_0_[5] ;
  wire \reg2_reg_n_0_[6] ;
  wire \reg2_reg_n_0_[7] ;
  wire \reg2_reg_n_0_[8] ;
  wire \reg2_reg_n_0_[9] ;
  wire [15:0]reg3;
  wire reg30;
  wire reg3_0;
  wire [0:0]regA1;
  wire regA10;
  wire regA10_carry__0_i_1_n_0;
  wire regA10_carry__0_i_2_n_0;
  wire regA10_carry__0_n_2;
  wire regA10_carry__0_n_3;
  wire regA10_carry_i_1_n_0;
  wire regA10_carry_i_2_n_0;
  wire regA10_carry_i_3_n_0;
  wire regA10_carry_i_4_n_0;
  wire regA10_carry_n_0;
  wire regA10_carry_n_1;
  wire regA10_carry_n_2;
  wire regA10_carry_n_3;
  wire \regA1[0]_i_1_n_0 ;
  wire \regA1[0]_i_3_n_0 ;
  wire \regA1[4]_i_1_n_0 ;
  wire \regA1_reg_n_0_[0] ;
  wire \regA1_reg_n_0_[1] ;
  wire \regA1_reg_n_0_[2] ;
  wire \regA1_reg_n_0_[3] ;
  wire \regA1_reg_n_0_[4] ;
  wire [15:0]regrD1;
  wire [15:0]regrD2;
  wire [15:0]regwD1;
  wire regwD10;
  wire \regwD1[0]_i_1_n_0 ;
  wire \regwD1[10]_i_1_n_0 ;
  wire \regwD1[11]_i_1_n_0 ;
  wire \regwD1[12]_i_1_n_0 ;
  wire \regwD1[13]_i_1_n_0 ;
  wire \regwD1[14]_i_1_n_0 ;
  wire \regwD1[15]_i_2_n_0 ;
  wire \regwD1[1]_i_1_n_0 ;
  wire \regwD1[2]_i_1_n_0 ;
  wire \regwD1[3]_i_1_n_0 ;
  wire \regwD1[4]_i_1_n_0 ;
  wire \regwD1[5]_i_1_n_0 ;
  wire \regwD1[6]_i_1_n_0 ;
  wire \regwD1[7]_i_1_n_0 ;
  wire \regwD1[8]_i_1_n_0 ;
  wire \regwD1[9]_i_1_n_0 ;
  wire send;
  wire send_i_1_n_0;
  wire wr_en1;
  wire wr_en1_i_1_n_0;
  wire [3:2]NLW_dAddr0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_dAddr0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_regA10_carry_O_UNCONNECTED;
  wire [3:2]NLW_regA10_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_regA10_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[0]_i_1 
       (.I0(\ALU_Result[0]_i_2_n_0 ),
        .I1(\ALU_Result[0]_i_3_n_0 ),
        .O(\ALU_Result[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[0]_i_2 
       (.I0(aluResult[0]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[0]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[0]),
        .O(\ALU_Result[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[0]_i_3 
       (.I0(dIn[0]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[0] ),
        .I3(\immediate_reg_n_0_[0] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[10]_i_1 
       (.I0(\ALU_Result[10]_i_2_n_0 ),
        .I1(aluResult[10]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[10]),
        .O(\ALU_Result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[10]_i_2 
       (.I0(dIn[10]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[10] ),
        .I3(\immediate_reg_n_0_[10] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[11]_i_1 
       (.I0(\ALU_Result[11]_i_2_n_0 ),
        .I1(aluResult[11]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[11]),
        .O(\ALU_Result[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[11]_i_2 
       (.I0(dIn[11]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[11] ),
        .I3(\immediate_reg_n_0_[11] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[12]_i_1 
       (.I0(\ALU_Result[12]_i_2_n_0 ),
        .I1(aluResult[12]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[12]),
        .O(\ALU_Result[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[12]_i_2 
       (.I0(dIn[12]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[12] ),
        .I3(\immediate_reg_n_0_[12] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[13]_i_1 
       (.I0(\ALU_Result[13]_i_2_n_0 ),
        .I1(aluResult[13]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[13]),
        .O(\ALU_Result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[13]_i_2 
       (.I0(dIn[13]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[13] ),
        .I3(\immediate_reg_n_0_[13] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[14]_i_1 
       (.I0(\ALU_Result[14]_i_2_n_0 ),
        .I1(aluResult[14]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[14]),
        .O(\ALU_Result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[14]_i_2 
       (.I0(dIn[14]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[14] ),
        .I3(\immediate_reg_n_0_[14] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA888)) 
    \ALU_Result[15]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[21] ),
        .I2(\FSM_onehot_curr_reg_n_0_[19] ),
        .I3(regA10_carry__0_n_2),
        .I4(\ALU_Result[15]_i_3_n_0 ),
        .O(ALU_Result0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[15]_i_2 
       (.I0(\ALU_Result[15]_i_4_n_0 ),
        .I1(aluResult[15]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[15]),
        .O(\ALU_Result[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \ALU_Result[15]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[9] ),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(en),
        .O(\ALU_Result[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[15]_i_4 
       (.I0(dIn[15]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[15] ),
        .I3(\immediate_reg_n_0_[15] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[1]_i_1 
       (.I0(\ALU_Result[1]_i_2_n_0 ),
        .I1(\ALU_Result[1]_i_3_n_0 ),
        .O(\ALU_Result[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[1]_i_2 
       (.I0(aluResult[1]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[1]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[1]),
        .O(\ALU_Result[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[1]_i_3 
       (.I0(dIn[1]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[1] ),
        .I3(\immediate_reg_n_0_[1] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[2]_i_1 
       (.I0(\ALU_Result[2]_i_2_n_0 ),
        .I1(\ALU_Result[2]_i_3_n_0 ),
        .O(\ALU_Result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[2]_i_2 
       (.I0(aluResult[2]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[2]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[2]),
        .O(\ALU_Result[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[2]_i_3 
       (.I0(dIn[2]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[2] ),
        .I3(\immediate_reg_n_0_[2] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[3]_i_1 
       (.I0(\ALU_Result[3]_i_2_n_0 ),
        .I1(\ALU_Result[3]_i_3_n_0 ),
        .O(\ALU_Result[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[3]_i_2 
       (.I0(aluResult[3]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[3]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[3]),
        .O(\ALU_Result[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[3]_i_3 
       (.I0(dIn[3]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[3] ),
        .I3(\immediate_reg_n_0_[3] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[4]_i_1 
       (.I0(\ALU_Result[4]_i_2_n_0 ),
        .I1(\ALU_Result[4]_i_3_n_0 ),
        .O(\ALU_Result[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[4]_i_2 
       (.I0(aluResult[4]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[4]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[4]),
        .O(\ALU_Result[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[4]_i_3 
       (.I0(dIn[4]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[4] ),
        .I3(\immediate_reg_n_0_[4] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[5]_i_1 
       (.I0(\ALU_Result[5]_i_2_n_0 ),
        .I1(\ALU_Result[5]_i_3_n_0 ),
        .O(\ALU_Result[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[5]_i_2 
       (.I0(aluResult[5]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[5]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[5]),
        .O(\ALU_Result[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[5]_i_3 
       (.I0(dIn[5]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[5] ),
        .I3(\immediate_reg_n_0_[5] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[6]_i_1 
       (.I0(\ALU_Result[6]_i_2_n_0 ),
        .I1(\ALU_Result[6]_i_3_n_0 ),
        .O(\ALU_Result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[6]_i_2 
       (.I0(aluResult[6]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[6]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[6]),
        .O(\ALU_Result[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[6]_i_3 
       (.I0(dIn[6]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[6] ),
        .I3(\immediate_reg_n_0_[6] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_Result[7]_i_1 
       (.I0(\ALU_Result[7]_i_2_n_0 ),
        .I1(\ALU_Result[7]_i_3_n_0 ),
        .O(\ALU_Result[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ALU_Result[7]_i_2 
       (.I0(aluResult[7]),
        .I1(\FSM_onehot_curr_reg_n_0_[16] ),
        .I2(charRec[7]),
        .I3(\FSM_onehot_curr_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[8] ),
        .I5(regrD1[7]),
        .O(\ALU_Result[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[7]_i_3 
       (.I0(dIn[7]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[7] ),
        .I3(\immediate_reg_n_0_[7] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[8]_i_1 
       (.I0(\ALU_Result[8]_i_2_n_0 ),
        .I1(aluResult[8]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[8]),
        .O(\ALU_Result[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[8]_i_2 
       (.I0(dIn[8]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[8] ),
        .I3(\immediate_reg_n_0_[8] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \ALU_Result[9]_i_1 
       (.I0(\ALU_Result[9]_i_2_n_0 ),
        .I1(aluResult[9]),
        .I2(\FSM_onehot_curr_reg_n_0_[16] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(regrD1[9]),
        .O(\ALU_Result[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FF888888)) 
    \ALU_Result[9]_i_2 
       (.I0(dIn[9]),
        .I1(\FSM_onehot_curr_reg_n_0_[23] ),
        .I2(\reg2_reg_n_0_[9] ),
        .I3(\immediate_reg_n_0_[9] ),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\ALU_Result[9]_i_2_n_0 ));
  FDRE \ALU_Result_reg[0] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[0]_i_1_n_0 ),
        .Q(ALU_Result[0]),
        .R(1'b0));
  FDRE \ALU_Result_reg[10] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[10]_i_1_n_0 ),
        .Q(ALU_Result[10]),
        .R(1'b0));
  FDRE \ALU_Result_reg[11] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[11]_i_1_n_0 ),
        .Q(ALU_Result[11]),
        .R(1'b0));
  FDRE \ALU_Result_reg[12] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[12]_i_1_n_0 ),
        .Q(ALU_Result[12]),
        .R(1'b0));
  FDRE \ALU_Result_reg[13] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[13]_i_1_n_0 ),
        .Q(ALU_Result[13]),
        .R(1'b0));
  FDRE \ALU_Result_reg[14] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[14]_i_1_n_0 ),
        .Q(ALU_Result[14]),
        .R(1'b0));
  FDRE \ALU_Result_reg[15] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[15]_i_2_n_0 ),
        .Q(ALU_Result[15]),
        .R(1'b0));
  FDRE \ALU_Result_reg[1] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[1]_i_1_n_0 ),
        .Q(ALU_Result[1]),
        .R(1'b0));
  FDRE \ALU_Result_reg[2] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[2]_i_1_n_0 ),
        .Q(ALU_Result[2]),
        .R(1'b0));
  FDRE \ALU_Result_reg[3] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[3]_i_1_n_0 ),
        .Q(ALU_Result[3]),
        .R(1'b0));
  FDRE \ALU_Result_reg[4] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[4]_i_1_n_0 ),
        .Q(ALU_Result[4]),
        .R(1'b0));
  FDRE \ALU_Result_reg[5] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[5]_i_1_n_0 ),
        .Q(ALU_Result[5]),
        .R(1'b0));
  FDRE \ALU_Result_reg[6] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[6]_i_1_n_0 ),
        .Q(ALU_Result[6]),
        .R(1'b0));
  FDRE \ALU_Result_reg[7] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[7]_i_1_n_0 ),
        .Q(ALU_Result[7]),
        .R(1'b0));
  FDRE \ALU_Result_reg[8] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[8]_i_1_n_0 ),
        .Q(ALU_Result[8]),
        .R(1'b0));
  FDRE \ALU_Result_reg[9] 
       (.C(clk),
        .CE(ALU_Result0),
        .D(\ALU_Result[9]_i_1_n_0 ),
        .Q(ALU_Result[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_onehot_curr[10]_i_1 
       (.I0(\opcode_reg_n_0_[1] ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(reg3_0),
        .I4(in3[0]),
        .I5(in3[1]),
        .O(\FSM_onehot_curr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_onehot_curr[11]_i_1 
       (.I0(\opcode_reg_n_0_[0] ),
        .I1(\opcode_reg_n_0_[1] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(reg3_0),
        .I4(in3[0]),
        .I5(in3[1]),
        .O(\FSM_onehot_curr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_onehot_curr[12]_i_1 
       (.I0(\opcode_reg_n_0_[0] ),
        .I1(\opcode_reg_n_0_[1] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(in3[1]),
        .I4(in3[0]),
        .I5(reg3_0),
        .O(\FSM_onehot_curr[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_curr[14]_i_1 
       (.I0(ready),
        .I1(\FSM_onehot_curr_reg_n_0_[14] ),
        .I2(reg1),
        .O(\FSM_onehot_curr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD00DD00DF00FF00)) 
    \FSM_onehot_curr[15]_i_1 
       (.I0(in3[0]),
        .I1(in3[1]),
        .I2(\opcode_reg_n_0_[1] ),
        .I3(reg3_0),
        .I4(\opcode_reg_n_0_[0] ),
        .I5(\opcode_reg_n_0_[2] ),
        .O(\FSM_onehot_curr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_curr[17]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(in3[1]),
        .I2(in3[0]),
        .O(\FSM_onehot_curr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_curr[19]_i_1 
       (.I0(\opcode_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_reg_n_0_[18] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(\opcode_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_curr[20]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[18] ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(\opcode_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_curr[21]_i_1 
       (.I0(\opcode_reg_n_0_[0] ),
        .I1(\opcode_reg_n_0_[1] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(\FSM_onehot_curr_reg_n_0_[18] ),
        .O(\FSM_onehot_curr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_curr[22]_i_1 
       (.I0(\opcode_reg_n_0_[1] ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(\FSM_onehot_curr_reg_n_0_[18] ),
        .O(\FSM_onehot_curr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \FSM_onehot_curr[24]_i_1 
       (.I0(\FSM_onehot_curr[24]_i_2_n_0 ),
        .I1(newChar),
        .I2(\FSM_onehot_curr_reg_n_0_[9] ),
        .I3(\FSM_onehot_curr_reg_n_0_[8] ),
        .I4(\FSM_onehot_curr_reg_n_0_[16] ),
        .I5(\FSM_onehot_curr_reg_n_0_[23] ),
        .O(\FSM_onehot_curr[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_curr[24]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[19] ),
        .I1(\FSM_onehot_curr_reg_n_0_[21] ),
        .O(\FSM_onehot_curr[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr[26]_i_1 
       (.I0(\opcode_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_reg_n_0_[18] ),
        .O(\FSM_onehot_curr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_curr[27]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(in3[1]),
        .I2(in3[0]),
        .O(\FSM_onehot_curr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_onehot_curr[28]_i_1 
       (.I0(\opcode_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_reg_n_0_[27] ),
        .I2(\opcode_reg_n_0_[1] ),
        .I3(\opcode_reg_n_0_[2] ),
        .I4(in3[0]),
        .I5(in3[1]),
        .O(\FSM_onehot_curr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_onehot_curr[30]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[27] ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[1] ),
        .I3(\opcode_reg_n_0_[2] ),
        .I4(in3[0]),
        .I5(in3[1]),
        .O(\FSM_onehot_curr[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    \FSM_onehot_curr[31]_i_1 
       (.I0(\opcode_reg_n_0_[1] ),
        .I1(\opcode_reg_n_0_[2] ),
        .I2(in3[0]),
        .I3(in3[1]),
        .I4(\FSM_onehot_curr_reg_n_0_[27] ),
        .O(\FSM_onehot_curr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_curr[32]_i_1 
       (.I0(\FSM_onehot_curr[32]_i_3_n_0 ),
        .I1(\FSM_onehot_curr[32]_i_4_n_0 ),
        .I2(\FSM_onehot_curr[32]_i_5_n_0 ),
        .I3(\FSM_onehot_curr[32]_i_6_n_0 ),
        .O(curr0));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_curr[32]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[25] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ready),
        .I3(\FSM_onehot_curr_reg_n_0_[14] ),
        .I4(\FSM_onehot_curr[32]_i_7_n_0 ),
        .O(\FSM_onehot_curr[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_curr[32]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(\FSM_onehot_curr_reg_n_0_[28] ),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(\FSM_onehot_curr_reg_n_0_[32] ),
        .I4(en),
        .O(\FSM_onehot_curr[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFAFAFFFEFAFA)) 
    \FSM_onehot_curr[32]_i_4 
       (.I0(reg20),
        .I1(\FSM_onehot_curr_reg_n_0_[22] ),
        .I2(immediate0),
        .I3(\FSM_onehot_curr[32]_i_7_n_0 ),
        .I4(en),
        .I5(\FSM_onehot_curr[24]_i_2_n_0 ),
        .O(\FSM_onehot_curr[32]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00FE00)) 
    \FSM_onehot_curr[32]_i_5 
       (.I0(\FSM_onehot_curr_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_reg_n_0_[25] ),
        .I2(\FSM_onehot_curr_reg_n_0_[29] ),
        .I3(en),
        .I4(pc),
        .I5(\FSM_onehot_curr[32]_i_8_n_0 ),
        .O(\FSM_onehot_curr[32]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFFFEAAAA)) 
    \FSM_onehot_curr[32]_i_6 
       (.I0(\ALU_Result[15]_i_3_n_0 ),
        .I1(\FSM_onehot_curr_reg_n_0_[14] ),
        .I2(\FSM_onehot_curr_reg_n_0_[15] ),
        .I3(reg1),
        .I4(en),
        .I5(\FSM_onehot_curr_reg_n_0_[5] ),
        .O(\FSM_onehot_curr[32]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_curr[32]_i_7 
       (.I0(\FSM_onehot_curr_reg_n_0_[10] ),
        .I1(\FSM_onehot_curr_reg_n_0_[30] ),
        .I2(\FSM_onehot_curr_reg_n_0_[31] ),
        .I3(\FSM_onehot_curr_reg_n_0_[26] ),
        .I4(\FSM_onehot_curr_reg_n_0_[20] ),
        .O(\FSM_onehot_curr[32]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_curr[32]_i_8 
       (.I0(\FSM_onehot_curr_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_reg_n_0_[24] ),
        .I2(\FSM_onehot_curr_reg_n_0_[12] ),
        .I3(\FSM_onehot_curr_reg_n_0_[7] ),
        .I4(en),
        .O(\FSM_onehot_curr[32]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_curr[5]_i_1 
       (.I0(in3[1]),
        .I1(\FSM_onehot_curr_reg_n_0_[4] ),
        .O(\FSM_onehot_curr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_onehot_curr[7]_i_1 
       (.I0(\opcode_reg_n_0_[1] ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[2] ),
        .I3(reg3_0),
        .I4(in3[0]),
        .I5(in3[1]),
        .O(\FSM_onehot_curr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    \FSM_onehot_curr[9]_i_1 
       (.I0(\FSM_onehot_curr[9]_i_2_n_0 ),
        .I1(\opcode_reg_n_0_[0] ),
        .I2(\opcode_reg_n_0_[1] ),
        .I3(newChar),
        .I4(\FSM_onehot_curr_reg_n_0_[9] ),
        .O(\FSM_onehot_curr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_curr[9]_i_2 
       (.I0(in3[1]),
        .I1(in3[0]),
        .I2(reg3_0),
        .I3(\opcode_reg_n_0_[2] ),
        .O(\FSM_onehot_curr[9]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_reg[0] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[32] ),
        .Q(\FSM_onehot_curr_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[10] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[10]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[11] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[11]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[11] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[12] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[12]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[12] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[13] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[12] ),
        .Q(reg1),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[14] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[14]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[14] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[15] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[15]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[15] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[16] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[15] ),
        .Q(\FSM_onehot_curr_reg_n_0_[16] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[17] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[17]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[17] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[18] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[17] ),
        .Q(\FSM_onehot_curr_reg_n_0_[18] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[19] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[19]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[19] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[1] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[0] ),
        .Q(pc),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[20] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[20]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[20] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[21] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[21]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[21] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[22] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[22]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[22] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[23] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[22] ),
        .Q(\FSM_onehot_curr_reg_n_0_[23] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[24] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[24]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[24] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[25] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[24] ),
        .Q(\FSM_onehot_curr_reg_n_0_[25] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[26] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[26]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[26] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[27] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[27]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[27] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[28] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[28]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[28] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[29] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[28] ),
        .Q(\FSM_onehot_curr_reg_n_0_[29] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[2] 
       (.C(clk),
        .CE(curr0),
        .D(pc),
        .Q(\FSM_onehot_curr_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[30] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[30]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[30] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[31] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[31]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[31] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[32] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[32]_i_2_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[32] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[3] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[4] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[3] ),
        .Q(\FSM_onehot_curr_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[5] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[5]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[6] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[5] ),
        .Q(reg3_0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[7] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[7]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[8] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr_reg_n_0_[7] ),
        .Q(\FSM_onehot_curr_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fetch1:000000000000000000000000000000010,fetch:000000000000000000000000000000001,lw1:000000000100000000000000000000000,lw:000000000010000000000000000000000,senduart2:000000000000000000100000000000000,ori:000000000001000000000000000000000,senduart1:000000000000000000010000000000000,nequal:000000000000100000000000000000000,senduart:000000000000000000001000000000000,equals:000000000000010000000000000000000,finish:100000000000000000000000000000000,jr:000000000000000000000000010000000,wpix1:010100,clrscr:010000000000000000000000000000000,store1:000000010000000000000000000000000,store:000000001000000000000000000000000,calc2:000000000000000010000000000000000,wpix:000000000000000000000100000000000,rpix:000000000000000000000010000000000,calc:000000000000000001000000000000000,recv:000000000000000000000001000000000,rops1:000000000000000000000000001000000,jops:000001000000000000000000000000000,jr1:000000000000000000000000100000000,rops:000000000000000000000000000100000,iops1:000000000000001000000000000000000,decode2:000000000000000000000000000010000,iops:000000000000000100000000000000000,decode1:000000000000000000000000000001000,jal:001000000000000000000000000000000,jmp1:000100000000000000000000000000000,jmp:000010000000000000000000000000000,sw:000000100000000000000000000000000,decode:000000000000000000000000000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[9] 
       (.C(clk),
        .CE(curr0),
        .D(\FSM_onehot_curr[9]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \aluA[15]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[15] ),
        .O(aluA0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[0] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[0] ),
        .Q(aluA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[10] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[10] ),
        .Q(aluA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[11] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[11] ),
        .Q(aluA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[12] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[12] ),
        .Q(aluA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[13] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[13] ),
        .Q(aluA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[14] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[14] ),
        .Q(aluA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[15] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[15] ),
        .Q(aluA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[1] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[1] ),
        .Q(aluA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[2] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[2] ),
        .Q(aluA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[3] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[3] ),
        .Q(aluA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[4] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[4] ),
        .Q(aluA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[5] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[5] ),
        .Q(aluA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[6] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[6] ),
        .Q(aluA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[7] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[7] ),
        .Q(aluA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[8] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[8] ),
        .Q(aluA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluA_reg[9] 
       (.C(clk),
        .CE(aluA0),
        .D(\reg2_reg_n_0_[9] ),
        .Q(aluA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[0] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[0]),
        .Q(aluB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[10] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[10]),
        .Q(aluB[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[11] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[11]),
        .Q(aluB[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[12] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[12]),
        .Q(aluB[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[13] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[13]),
        .Q(aluB[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[14] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[14]),
        .Q(aluB[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[15] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[15]),
        .Q(aluB[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[1] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[1]),
        .Q(aluB[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[2] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[2]),
        .Q(aluB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[3] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[3]),
        .Q(aluB[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[4] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[4]),
        .Q(aluB[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[5] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[5]),
        .Q(aluB[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[6] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[6]),
        .Q(aluB[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[7] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[7]),
        .Q(aluB[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[8] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[8]),
        .Q(aluB[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aluB_reg[9] 
       (.C(clk),
        .CE(aluA0),
        .D(reg3[9]),
        .Q(aluB[9]),
        .R(1'b0));
  FDRE \aluOp_reg[0] 
       (.C(clk),
        .CE(aluA0),
        .D(\opcode_reg_n_0_[0] ),
        .Q(aluOp[0]),
        .R(1'b0));
  FDRE \aluOp_reg[1] 
       (.C(clk),
        .CE(aluA0),
        .D(\opcode_reg_n_0_[1] ),
        .Q(aluOp[1]),
        .R(1'b0));
  FDRE \aluOp_reg[2] 
       (.C(clk),
        .CE(aluA0),
        .D(\opcode_reg_n_0_[2] ),
        .Q(aluOp[2]),
        .R(1'b0));
  FDRE \aluOp_reg[3] 
       (.C(clk),
        .CE(aluA0),
        .D(in3[0]),
        .Q(aluOp[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \charSend[7]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[14] ),
        .O(charSend0));
  FDRE \charSend_reg[0] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[0] ),
        .Q(charSend[0]),
        .R(1'b0));
  FDRE \charSend_reg[1] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[1] ),
        .Q(charSend[1]),
        .R(1'b0));
  FDRE \charSend_reg[2] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[2] ),
        .Q(charSend[2]),
        .R(1'b0));
  FDRE \charSend_reg[3] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[3] ),
        .Q(charSend[3]),
        .R(1'b0));
  FDRE \charSend_reg[4] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[4] ),
        .Q(charSend[4]),
        .R(1'b0));
  FDRE \charSend_reg[5] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[5] ),
        .Q(charSend[5]),
        .R(1'b0));
  FDRE \charSend_reg[6] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[6] ),
        .Q(charSend[6]),
        .R(1'b0));
  FDRE \charSend_reg[7] 
       (.C(clk),
        .CE(charSend0),
        .D(\reg1_reg_n_0_[7] ),
        .Q(charSend[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dAddr0_carry
       (.CI(1'b0),
        .CO({dAddr0_carry_n_0,dAddr0_carry_n_1,dAddr0_carry_n_2,dAddr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\reg2_reg_n_0_[3] ,\reg2_reg_n_0_[2] ,\reg2_reg_n_0_[1] ,\reg2_reg_n_0_[0] }),
        .O({dAddr0_carry_n_4,dAddr0_carry_n_5,dAddr0_carry_n_6,dAddr0_carry_n_7}),
        .S({dAddr0_carry_i_1_n_0,dAddr0_carry_i_2_n_0,dAddr0_carry_i_3_n_0,dAddr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dAddr0_carry__0
       (.CI(dAddr0_carry_n_0),
        .CO({dAddr0_carry__0_n_0,dAddr0_carry__0_n_1,dAddr0_carry__0_n_2,dAddr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\reg2_reg_n_0_[7] ,\reg2_reg_n_0_[6] ,\reg2_reg_n_0_[5] ,\reg2_reg_n_0_[4] }),
        .O({dAddr0_carry__0_n_4,dAddr0_carry__0_n_5,dAddr0_carry__0_n_6,dAddr0_carry__0_n_7}),
        .S({dAddr0_carry__0_i_1_n_0,dAddr0_carry__0_i_2_n_0,dAddr0_carry__0_i_3_n_0,dAddr0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__0_i_1
       (.I0(\reg2_reg_n_0_[7] ),
        .I1(\immediate_reg_n_0_[7] ),
        .O(dAddr0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__0_i_2
       (.I0(\reg2_reg_n_0_[6] ),
        .I1(\immediate_reg_n_0_[6] ),
        .O(dAddr0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__0_i_3
       (.I0(\reg2_reg_n_0_[5] ),
        .I1(\immediate_reg_n_0_[5] ),
        .O(dAddr0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__0_i_4
       (.I0(\reg2_reg_n_0_[4] ),
        .I1(\immediate_reg_n_0_[4] ),
        .O(dAddr0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dAddr0_carry__1
       (.CI(dAddr0_carry__0_n_0),
        .CO({dAddr0_carry__1_n_0,dAddr0_carry__1_n_1,dAddr0_carry__1_n_2,dAddr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\reg2_reg_n_0_[11] ,\reg2_reg_n_0_[10] ,\reg2_reg_n_0_[9] ,\reg2_reg_n_0_[8] }),
        .O({dAddr0_carry__1_n_4,dAddr0_carry__1_n_5,dAddr0_carry__1_n_6,dAddr0_carry__1_n_7}),
        .S({dAddr0_carry__1_i_1_n_0,dAddr0_carry__1_i_2_n_0,dAddr0_carry__1_i_3_n_0,dAddr0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__1_i_1
       (.I0(\reg2_reg_n_0_[11] ),
        .I1(\immediate_reg_n_0_[11] ),
        .O(dAddr0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__1_i_2
       (.I0(\reg2_reg_n_0_[10] ),
        .I1(\immediate_reg_n_0_[10] ),
        .O(dAddr0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__1_i_3
       (.I0(\reg2_reg_n_0_[9] ),
        .I1(\immediate_reg_n_0_[9] ),
        .O(dAddr0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__1_i_4
       (.I0(\reg2_reg_n_0_[8] ),
        .I1(\immediate_reg_n_0_[8] ),
        .O(dAddr0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dAddr0_carry__2
       (.CI(dAddr0_carry__1_n_0),
        .CO({NLW_dAddr0_carry__2_CO_UNCONNECTED[3:2],dAddr0_carry__2_n_2,dAddr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg2_reg_n_0_[13] ,\reg2_reg_n_0_[12] }),
        .O({NLW_dAddr0_carry__2_O_UNCONNECTED[3],dAddr0_carry__2_n_5,dAddr0_carry__2_n_6,dAddr0_carry__2_n_7}),
        .S({1'b0,dAddr0_carry__2_i_1_n_0,dAddr0_carry__2_i_2_n_0,dAddr0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__2_i_1
       (.I0(\reg2_reg_n_0_[14] ),
        .I1(\immediate_reg_n_0_[14] ),
        .O(dAddr0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__2_i_2
       (.I0(\reg2_reg_n_0_[13] ),
        .I1(\immediate_reg_n_0_[13] ),
        .O(dAddr0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry__2_i_3
       (.I0(\reg2_reg_n_0_[12] ),
        .I1(\immediate_reg_n_0_[12] ),
        .O(dAddr0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry_i_1
       (.I0(\reg2_reg_n_0_[3] ),
        .I1(\immediate_reg_n_0_[3] ),
        .O(dAddr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry_i_2
       (.I0(\reg2_reg_n_0_[2] ),
        .I1(\immediate_reg_n_0_[2] ),
        .O(dAddr0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry_i_3
       (.I0(\reg2_reg_n_0_[1] ),
        .I1(\immediate_reg_n_0_[1] ),
        .O(dAddr0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dAddr0_carry_i_4
       (.I0(\reg2_reg_n_0_[0] ),
        .I1(\immediate_reg_n_0_[0] ),
        .O(dAddr0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \dAddr[14]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[22] ),
        .O(dAddr0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[0] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry_n_7),
        .Q(dAddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[10] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__1_n_5),
        .Q(dAddr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[11] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__1_n_4),
        .Q(dAddr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[12] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__2_n_7),
        .Q(dAddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[13] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__2_n_6),
        .Q(dAddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[14] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__2_n_5),
        .Q(dAddr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[1] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry_n_6),
        .Q(dAddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[2] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry_n_5),
        .Q(dAddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[3] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry_n_4),
        .Q(dAddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[4] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__0_n_7),
        .Q(dAddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[5] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__0_n_6),
        .Q(dAddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[6] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__0_n_5),
        .Q(dAddr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[7] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__0_n_4),
        .Q(dAddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[8] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__1_n_7),
        .Q(dAddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dAddr_reg[9] 
       (.C(clk),
        .CE(dAddr0),
        .D(dAddr0_carry__1_n_6),
        .Q(dAddr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \fbAddr1[11]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[32] ),
        .I2(\FSM_onehot_curr_reg_n_0_[11] ),
        .O(\fbAddr1[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \fbAddr1[11]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[11] ),
        .I1(\FSM_onehot_curr_reg_n_0_[32] ),
        .I2(en),
        .O(fbAddr10));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[0] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[0] ),
        .Q(fbAddr1[0]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[10] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[10] ),
        .Q(fbAddr1[10]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[11] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[11] ),
        .Q(fbAddr1[11]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[1] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[1] ),
        .Q(fbAddr1[1]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[2] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[2] ),
        .Q(fbAddr1[2]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[3] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[3] ),
        .Q(fbAddr1[3]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[4] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[4] ),
        .Q(fbAddr1[4]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[5] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[5] ),
        .Q(fbAddr1[5]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[6] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[6] ),
        .Q(fbAddr1[6]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[7] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[7] ),
        .Q(fbAddr1[7]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[8] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[8] ),
        .Q(fbAddr1[8]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fbAddr1_reg[9] 
       (.C(clk),
        .CE(fbAddr10),
        .D(\reg1_reg_n_0_[9] ),
        .Q(fbAddr1[9]),
        .R(\fbAddr1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFA0)) 
    fbWr_en_i_1
       (.I0(\FSM_onehot_curr_reg_n_0_[11] ),
        .I1(\FSM_onehot_curr_reg_n_0_[32] ),
        .I2(en),
        .I3(fbWr_en),
        .O(fbWr_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fbWr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(fbWr_en_i_1_n_0),
        .Q(fbWr_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(in18),
        .O(\immediate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[10]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(in18),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[21] ),
        .O(\immediate[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[11]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(p_1_in[0]),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[22] ),
        .O(\immediate[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[12]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(p_1_in[1]),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[23] ),
        .O(\immediate[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[13]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(p_1_in[2]),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[24] ),
        .O(\immediate[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[14]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(p_1_in[3]),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[25] ),
        .O(\immediate[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \immediate[15]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[27] ),
        .I1(\FSM_onehot_curr_reg_n_0_[17] ),
        .I2(en),
        .O(immediate0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[15]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(p_1_in[4]),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[26] ),
        .O(\immediate[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[1]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[2] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(p_1_in[0]),
        .O(\immediate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[3] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(p_1_in[1]),
        .O(\immediate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[3]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[4] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(p_1_in[2]),
        .O(\immediate[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[4]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[5] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(p_1_in[3]),
        .O(\immediate[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[5]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[6] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(p_1_in[4]),
        .O(\immediate[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[6]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[7] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[17] ),
        .O(\immediate[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[7]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[8] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[18] ),
        .O(\immediate[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[8]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[9] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[19] ),
        .O(\immediate[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \immediate[9]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\instruction_reg_n_0_[10] ),
        .I2(\FSM_onehot_curr_reg_n_0_[27] ),
        .I3(\instruction_reg_n_0_[20] ),
        .O(\immediate[9]_i_1_n_0 ));
  FDRE \immediate_reg[0] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[0]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \immediate_reg[10] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[10]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \immediate_reg[11] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[11]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \immediate_reg[12] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[12]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \immediate_reg[13] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[13]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \immediate_reg[14] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[14]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \immediate_reg[15] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[15]_i_2_n_0 ),
        .Q(\immediate_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \immediate_reg[1] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[1]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \immediate_reg[2] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[2]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \immediate_reg[3] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[3]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \immediate_reg[4] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[4]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \immediate_reg[5] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[5]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \immediate_reg[6] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[6]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \immediate_reg[7] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[7]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \immediate_reg[8] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[8]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \immediate_reg[9] 
       (.C(clk),
        .CE(immediate0),
        .D(\immediate[9]_i_1_n_0 ),
        .Q(\immediate_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \instruction_reg[10] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[9]),
        .Q(\instruction_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \instruction_reg[11] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[10]),
        .Q(in18),
        .R(1'b0));
  FDRE \instruction_reg[12] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[11]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \instruction_reg[13] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[12]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \instruction_reg[14] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[13]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \instruction_reg[15] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[14]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \instruction_reg[16] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[15]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \instruction_reg[17] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[16]),
        .Q(\instruction_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \instruction_reg[18] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[17]),
        .Q(\instruction_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \instruction_reg[19] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[18]),
        .Q(\instruction_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \instruction_reg[1] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[0]),
        .Q(\instruction_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \instruction_reg[20] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[19]),
        .Q(\instruction_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \instruction_reg[21] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[20]),
        .Q(\instruction_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \instruction_reg[22] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[21]),
        .Q(\instruction_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \instruction_reg[23] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[22]),
        .Q(\instruction_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \instruction_reg[24] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[23]),
        .Q(\instruction_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \instruction_reg[25] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[24]),
        .Q(\instruction_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \instruction_reg[26] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[25]),
        .Q(\instruction_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \instruction_reg[27] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[26]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \instruction_reg[28] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[27]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \instruction_reg[29] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[28]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \instruction_reg[2] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[1]),
        .Q(\instruction_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \instruction_reg[30] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[29]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \instruction_reg[31] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[30]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \instruction_reg[3] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[2]),
        .Q(\instruction_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \instruction_reg[4] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[3]),
        .Q(\instruction_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \instruction_reg[5] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[4]),
        .Q(\instruction_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \instruction_reg[6] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[5]),
        .Q(\instruction_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \instruction_reg[7] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[6]),
        .Q(\instruction_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \instruction_reg[8] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[7]),
        .Q(\instruction_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \instruction_reg[9] 
       (.C(clk),
        .CE(irAddr0),
        .D(irWord[8]),
        .Q(\instruction_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \irAddr[13]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .O(irAddr0));
  FDRE \irAddr_reg[0] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[0] ),
        .Q(irAddr[0]),
        .R(1'b0));
  FDRE \irAddr_reg[10] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[10] ),
        .Q(irAddr[10]),
        .R(1'b0));
  FDRE \irAddr_reg[11] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[11] ),
        .Q(irAddr[11]),
        .R(1'b0));
  FDRE \irAddr_reg[12] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[12] ),
        .Q(irAddr[12]),
        .R(1'b0));
  FDRE \irAddr_reg[13] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[13] ),
        .Q(irAddr[13]),
        .R(1'b0));
  FDRE \irAddr_reg[1] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[1] ),
        .Q(irAddr[1]),
        .R(1'b0));
  FDRE \irAddr_reg[2] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[2] ),
        .Q(irAddr[2]),
        .R(1'b0));
  FDRE \irAddr_reg[3] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[3] ),
        .Q(irAddr[3]),
        .R(1'b0));
  FDRE \irAddr_reg[4] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[4] ),
        .Q(irAddr[4]),
        .R(1'b0));
  FDRE \irAddr_reg[5] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[5] ),
        .Q(irAddr[5]),
        .R(1'b0));
  FDRE \irAddr_reg[6] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[6] ),
        .Q(irAddr[6]),
        .R(1'b0));
  FDRE \irAddr_reg[7] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[7] ),
        .Q(irAddr[7]),
        .R(1'b0));
  FDRE \irAddr_reg[8] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[8] ),
        .Q(irAddr[8]),
        .R(1'b0));
  FDRE \irAddr_reg[9] 
       (.C(clk),
        .CE(irAddr0),
        .D(\pc_reg_n_0_[9] ),
        .Q(irAddr[9]),
        .R(1'b0));
  FDRE \opcode_reg[0] 
       (.C(clk),
        .CE(irAddr0),
        .D(p_0_in[0]),
        .Q(\opcode_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \opcode_reg[1] 
       (.C(clk),
        .CE(irAddr0),
        .D(p_0_in[1]),
        .Q(\opcode_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \opcode_reg[2] 
       (.C(clk),
        .CE(irAddr0),
        .D(p_0_in[2]),
        .Q(\opcode_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \opcode_reg[3] 
       (.C(clk),
        .CE(irAddr0),
        .D(p_0_in[3]),
        .Q(in3[0]),
        .R(1'b0));
  FDRE \opcode_reg[4] 
       (.C(clk),
        .CE(irAddr0),
        .D(p_0_in[4]),
        .Q(in3[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_1 
       (.I0(en),
        .I1(pc),
        .O(pc0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[0]),
        .Q(\pc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[10]),
        .Q(\pc_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[11]),
        .Q(\pc_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[12]),
        .Q(\pc_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[13]),
        .Q(\pc_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[14]),
        .Q(\pc_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[15]),
        .Q(\pc_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[1]),
        .Q(\pc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[2]),
        .Q(\pc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[3]),
        .Q(\pc_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[4]),
        .Q(\pc_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[5]),
        .Q(\pc_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[6]),
        .Q(\pc_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[7]),
        .Q(\pc_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[8]),
        .Q(\pc_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(pc0),
        .D(regrD1[9]),
        .Q(\pc_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\pc_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\pc_reg_n_0_[4] ,\pc_reg_n_0_[3] ,\pc_reg_n_0_[2] ,\pc_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\pc_reg_n_0_[8] ,\pc_reg_n_0_[7] ,\pc_reg_n_0_[6] ,\pc_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\pc_reg_n_0_[12] ,\pc_reg_n_0_[11] ,\pc_reg_n_0_[10] ,\pc_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],in10[15:13]}),
        .S({1'b0,\pc_reg_n_0_[15] ,\pc_reg_n_0_[14] ,\pc_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \rID1[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_reg_n_0_[28] ),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(\rID1[4]_i_4_n_0 ),
        .I4(\regA1_reg_n_0_[0] ),
        .I5(\rID1[0]_i_2_n_0 ),
        .O(\rID1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rID1[0]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(\instruction_reg_n_0_[17] ),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[22] ),
        .O(\rID1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rID1[1]_i_1 
       (.I0(\instruction_reg_n_0_[23] ),
        .I1(\FSM_onehot_curr_reg_n_0_[17] ),
        .I2(\instruction_reg_n_0_[18] ),
        .I3(\FSM_onehot_curr_reg_n_0_[4] ),
        .I4(\regA1_reg_n_0_[1] ),
        .I5(\rID1[4]_i_4_n_0 ),
        .O(\rID1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rID1[2]_i_1 
       (.I0(\instruction_reg_n_0_[24] ),
        .I1(\FSM_onehot_curr_reg_n_0_[17] ),
        .I2(\instruction_reg_n_0_[19] ),
        .I3(\FSM_onehot_curr_reg_n_0_[4] ),
        .I4(\regA1_reg_n_0_[2] ),
        .I5(\rID1[4]_i_4_n_0 ),
        .O(\rID1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rID1[3]_i_1 
       (.I0(\instruction_reg_n_0_[25] ),
        .I1(\FSM_onehot_curr_reg_n_0_[17] ),
        .I2(\instruction_reg_n_0_[20] ),
        .I3(\FSM_onehot_curr_reg_n_0_[4] ),
        .I4(\regA1_reg_n_0_[3] ),
        .I5(\rID1[4]_i_4_n_0 ),
        .O(\rID1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0FEF0)) 
    \rID1[4]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[32] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(rID20),
        .I3(en),
        .I4(\rID1[4]_i_4_n_0 ),
        .I5(\FSM_onehot_curr_reg_n_0_[0] ),
        .O(rID10));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rID1[4]_i_2 
       (.I0(\instruction_reg_n_0_[26] ),
        .I1(\FSM_onehot_curr_reg_n_0_[17] ),
        .I2(\instruction_reg_n_0_[21] ),
        .I3(\FSM_onehot_curr_reg_n_0_[4] ),
        .I4(\regA1_reg_n_0_[4] ),
        .I5(\rID1[4]_i_4_n_0 ),
        .O(\rID1[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rID1[4]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_reg_n_0_[28] ),
        .O(\rID1[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rID1[4]_i_4 
       (.I0(\FSM_onehot_curr_reg_n_0_[24] ),
        .I1(\FSM_onehot_curr_reg_n_0_[12] ),
        .I2(\FSM_onehot_curr_reg_n_0_[7] ),
        .O(\rID1[4]_i_4_n_0 ));
  FDRE \rID1_reg[0] 
       (.C(clk),
        .CE(rID10),
        .D(\rID1[0]_i_1_n_0 ),
        .Q(rID1[0]),
        .R(1'b0));
  FDRE \rID1_reg[1] 
       (.C(clk),
        .CE(rID10),
        .D(\rID1[1]_i_1_n_0 ),
        .Q(rID1[1]),
        .R(1'b0));
  FDRE \rID1_reg[2] 
       (.C(clk),
        .CE(rID10),
        .D(\rID1[2]_i_1_n_0 ),
        .Q(rID1[2]),
        .R(1'b0));
  FDRE \rID1_reg[3] 
       (.C(clk),
        .CE(rID10),
        .D(\rID1[3]_i_1_n_0 ),
        .Q(rID1[3]),
        .R(1'b0));
  FDRE \rID1_reg[4] 
       (.C(clk),
        .CE(rID10),
        .D(\rID1[4]_i_2_n_0 ),
        .Q(rID1[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rID2[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(p_1_in[0]),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[17] ),
        .O(\rID2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID2[1]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(p_1_in[1]),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[18] ),
        .O(\rID2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID2[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(p_1_in[2]),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[19] ),
        .O(\rID2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID2[3]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(p_1_in[3]),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[20] ),
        .O(\rID2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAE00)) 
    \rID2[4]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[17] ),
        .I1(\FSM_onehot_curr_reg_n_0_[4] ),
        .I2(in3[1]),
        .I3(en),
        .O(rID20));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rID2[4]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(p_1_in[4]),
        .I2(\FSM_onehot_curr_reg_n_0_[17] ),
        .I3(\instruction_reg_n_0_[21] ),
        .O(\rID2[4]_i_2_n_0 ));
  FDRE \rID2_reg[0] 
       (.C(clk),
        .CE(rID20),
        .D(\rID2[0]_i_1_n_0 ),
        .Q(rID2[0]),
        .R(1'b0));
  FDRE \rID2_reg[1] 
       (.C(clk),
        .CE(rID20),
        .D(\rID2[1]_i_1_n_0 ),
        .Q(rID2[1]),
        .R(1'b0));
  FDRE \rID2_reg[2] 
       (.C(clk),
        .CE(rID20),
        .D(\rID2[2]_i_1_n_0 ),
        .Q(rID2[2]),
        .R(1'b0));
  FDRE \rID2_reg[3] 
       (.C(clk),
        .CE(rID20),
        .D(\rID2[3]_i_1_n_0 ),
        .Q(rID2[3]),
        .R(1'b0));
  FDRE \rID2_reg[4] 
       (.C(clk),
        .CE(rID20),
        .D(\rID2[4]_i_2_n_0 ),
        .Q(rID2[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg1[15]_i_1 
       (.I0(en),
        .I1(reg1),
        .O(reg10));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[0] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[0]),
        .Q(\reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[10] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[10]),
        .Q(\reg1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[11] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[11]),
        .Q(\reg1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[12] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[12]),
        .Q(\reg1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[13] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[13]),
        .Q(\reg1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[14] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[14]),
        .Q(\reg1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[15] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[15]),
        .Q(\reg1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[1] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[1]),
        .Q(\reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[2] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[2]),
        .Q(\reg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[3] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[3]),
        .Q(\reg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[4] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[4]),
        .Q(\reg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[5] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[5]),
        .Q(\reg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[6] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[6]),
        .Q(\reg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[7] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[7]),
        .Q(\reg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[8] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[8]),
        .Q(\reg1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[9] 
       (.C(clk),
        .CE(reg10),
        .D(regrD1[9]),
        .Q(\reg1_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[0]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[0]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[0]),
        .O(\reg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[10]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[10]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[10]),
        .O(\reg2[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[11]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[11]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[11]),
        .O(\reg2[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[12]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[12]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[12]),
        .O(\reg2[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[13]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[13]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[13]),
        .O(\reg2[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[14]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[14]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[14]),
        .O(\reg2[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \reg2[15]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[18] ),
        .I1(reg3_0),
        .I2(en),
        .O(reg20));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[15]_i_2 
       (.I0(reg3_0),
        .I1(regrD1[15]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[15]),
        .O(\reg2[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[1]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[1]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[1]),
        .O(\reg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[2]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[2]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[2]),
        .O(\reg2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[3]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[3]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[3]),
        .O(\reg2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[4]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[4]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[4]),
        .O(\reg2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[5]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[5]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[5]),
        .O(\reg2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[6]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[6]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[6]),
        .O(\reg2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[7]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[7]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[7]),
        .O(\reg2[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[8]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[8]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[8]),
        .O(\reg2[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg2[9]_i_1 
       (.I0(reg3_0),
        .I1(regrD1[9]),
        .I2(\FSM_onehot_curr_reg_n_0_[18] ),
        .I3(regrD2[9]),
        .O(\reg2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[0] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[0]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[10] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[10]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[11] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[11]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[12] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[12]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[13] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[13]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[14] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[14]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[15] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[15]_i_2_n_0 ),
        .Q(\reg2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[1] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[1]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[2] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[2]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[3] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[3]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[4] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[4]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[5] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[5]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[6] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[6]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[7] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[7]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[8] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[8]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[9] 
       (.C(clk),
        .CE(reg20),
        .D(\reg2[9]_i_1_n_0 ),
        .Q(\reg2_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg3[15]_i_1 
       (.I0(en),
        .I1(reg3_0),
        .O(reg30));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[0] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[0]),
        .Q(reg3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[10] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[10]),
        .Q(reg3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[11] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[11]),
        .Q(reg3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[12] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[12]),
        .Q(reg3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[13] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[13]),
        .Q(reg3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[14] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[14]),
        .Q(reg3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[15] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[15]),
        .Q(reg3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[1] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[1]),
        .Q(reg3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[2] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[2]),
        .Q(reg3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[3] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[3]),
        .Q(reg3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[4] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[4]),
        .Q(reg3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[5] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[5]),
        .Q(reg3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[6] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[6]),
        .Q(reg3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[7] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[7]),
        .Q(reg3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[8] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[8]),
        .Q(reg3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[9] 
       (.C(clk),
        .CE(reg30),
        .D(regrD2[9]),
        .Q(reg3[9]),
        .R(1'b0));
  CARRY4 regA10_carry
       (.CI(1'b0),
        .CO({regA10_carry_n_0,regA10_carry_n_1,regA10_carry_n_2,regA10_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_regA10_carry_O_UNCONNECTED[3:0]),
        .S({regA10_carry_i_1_n_0,regA10_carry_i_2_n_0,regA10_carry_i_3_n_0,regA10_carry_i_4_n_0}));
  CARRY4 regA10_carry__0
       (.CI(regA10_carry_n_0),
        .CO({NLW_regA10_carry__0_CO_UNCONNECTED[3:2],regA10_carry__0_n_2,regA10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_regA10_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,regA10_carry__0_i_1_n_0,regA10_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    regA10_carry__0_i_1
       (.I0(\reg2_reg_n_0_[15] ),
        .I1(\reg1_reg_n_0_[15] ),
        .O(regA10_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    regA10_carry__0_i_2
       (.I0(\reg2_reg_n_0_[14] ),
        .I1(\reg1_reg_n_0_[14] ),
        .I2(\reg2_reg_n_0_[13] ),
        .I3(\reg1_reg_n_0_[13] ),
        .I4(\reg1_reg_n_0_[12] ),
        .I5(\reg2_reg_n_0_[12] ),
        .O(regA10_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    regA10_carry_i_1
       (.I0(\reg2_reg_n_0_[11] ),
        .I1(\reg1_reg_n_0_[11] ),
        .I2(\reg2_reg_n_0_[10] ),
        .I3(\reg1_reg_n_0_[10] ),
        .I4(\reg1_reg_n_0_[9] ),
        .I5(\reg2_reg_n_0_[9] ),
        .O(regA10_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    regA10_carry_i_2
       (.I0(\reg2_reg_n_0_[8] ),
        .I1(\reg1_reg_n_0_[8] ),
        .I2(\reg2_reg_n_0_[7] ),
        .I3(\reg1_reg_n_0_[7] ),
        .I4(\reg1_reg_n_0_[6] ),
        .I5(\reg2_reg_n_0_[6] ),
        .O(regA10_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    regA10_carry_i_3
       (.I0(\reg2_reg_n_0_[5] ),
        .I1(\reg1_reg_n_0_[5] ),
        .I2(\reg2_reg_n_0_[4] ),
        .I3(\reg1_reg_n_0_[4] ),
        .I4(\reg1_reg_n_0_[3] ),
        .I5(\reg2_reg_n_0_[3] ),
        .O(regA10_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    regA10_carry_i_4
       (.I0(\reg2_reg_n_0_[2] ),
        .I1(\reg1_reg_n_0_[2] ),
        .I2(\reg2_reg_n_0_[1] ),
        .I3(\reg1_reg_n_0_[1] ),
        .I4(\reg1_reg_n_0_[0] ),
        .I5(\reg2_reg_n_0_[0] ),
        .O(regA10_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFBFBFBFA0808080)) 
    \regA1[0]_i_1 
       (.I0(regA1),
        .I1(\regA1[0]_i_3_n_0 ),
        .I2(en),
        .I3(regA10_carry__0_n_2),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .I5(\regA1_reg_n_0_[0] ),
        .O(\regA1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \regA1[0]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(\instruction_reg_n_0_[22] ),
        .I2(\FSM_onehot_curr_reg_n_0_[19] ),
        .O(regA1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \regA1[0]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(in3[1]),
        .O(\regA1[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \regA1[4]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[19] ),
        .I1(regA10_carry__0_n_2),
        .I2(en),
        .I3(\FSM_onehot_curr_reg_n_0_[4] ),
        .O(\regA1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0202020)) 
    \regA1[4]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[4] ),
        .I1(in3[1]),
        .I2(en),
        .I3(regA10_carry__0_n_2),
        .I4(\FSM_onehot_curr_reg_n_0_[19] ),
        .O(regA10));
  FDRE #(
    .INIT(1'b0)) 
    \regA1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\regA1[0]_i_1_n_0 ),
        .Q(\regA1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regA1_reg[1] 
       (.C(clk),
        .CE(regA10),
        .D(\instruction_reg_n_0_[23] ),
        .Q(\regA1_reg_n_0_[1] ),
        .R(\regA1[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regA1_reg[2] 
       (.C(clk),
        .CE(regA10),
        .D(\instruction_reg_n_0_[24] ),
        .Q(\regA1_reg_n_0_[2] ),
        .R(\regA1[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regA1_reg[3] 
       (.C(clk),
        .CE(regA10),
        .D(\instruction_reg_n_0_[25] ),
        .Q(\regA1_reg_n_0_[3] ),
        .R(\regA1[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regA1_reg[4] 
       (.C(clk),
        .CE(regA10),
        .D(\instruction_reg_n_0_[26] ),
        .Q(\regA1_reg_n_0_[4] ),
        .R(\regA1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \regwD1[0]_i_1 
       (.I0(\immediate_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[0]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\pc_reg_n_0_[0] ),
        .I5(\FSM_onehot_curr_reg_n_0_[3] ),
        .O(\regwD1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[10]_i_1 
       (.I0(\immediate_reg_n_0_[10] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[10]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[10]),
        .O(\regwD1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[11]_i_1 
       (.I0(\immediate_reg_n_0_[11] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[11]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[11]),
        .O(\regwD1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[12]_i_1 
       (.I0(\immediate_reg_n_0_[12] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[12]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[12]),
        .O(\regwD1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[13]_i_1 
       (.I0(\immediate_reg_n_0_[13] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[13]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[13]),
        .O(\regwD1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[14]_i_1 
       (.I0(\immediate_reg_n_0_[14] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[14]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[14]),
        .O(\regwD1[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \regwD1[15]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[29] ),
        .I1(\FSM_onehot_curr_reg_n_0_[25] ),
        .I2(\FSM_onehot_curr_reg_n_0_[3] ),
        .I3(\FSM_onehot_curr_reg_n_0_[32] ),
        .I4(en),
        .O(regwD10));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[15]_i_2 
       (.I0(\immediate_reg_n_0_[15] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[15]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[15]),
        .O(\regwD1[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[1]_i_1 
       (.I0(\immediate_reg_n_0_[1] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[1]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[1]),
        .O(\regwD1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[2]_i_1 
       (.I0(\immediate_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[2]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[2]),
        .O(\regwD1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[3]_i_1 
       (.I0(\immediate_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[3]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[3]),
        .O(\regwD1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[4]_i_1 
       (.I0(\immediate_reg_n_0_[4] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[4]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[4]),
        .O(\regwD1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[5]_i_1 
       (.I0(\immediate_reg_n_0_[5] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[5]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[5]),
        .O(\regwD1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[6]_i_1 
       (.I0(\immediate_reg_n_0_[6] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[6]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[6]),
        .O(\regwD1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[7]_i_1 
       (.I0(\immediate_reg_n_0_[7] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[7]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[7]),
        .O(\regwD1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[8]_i_1 
       (.I0(\immediate_reg_n_0_[8] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[8]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[8]),
        .O(\regwD1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \regwD1[9]_i_1 
       (.I0(\immediate_reg_n_0_[9] ),
        .I1(\FSM_onehot_curr_reg_n_0_[29] ),
        .I2(ALU_Result[9]),
        .I3(\FSM_onehot_curr_reg_n_0_[25] ),
        .I4(\FSM_onehot_curr_reg_n_0_[3] ),
        .I5(in10[9]),
        .O(\regwD1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[0] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[0]_i_1_n_0 ),
        .Q(regwD1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[10] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[10]_i_1_n_0 ),
        .Q(regwD1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[11] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[11]_i_1_n_0 ),
        .Q(regwD1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[12] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[12]_i_1_n_0 ),
        .Q(regwD1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[13] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[13]_i_1_n_0 ),
        .Q(regwD1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[14] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[14]_i_1_n_0 ),
        .Q(regwD1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[15] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[15]_i_2_n_0 ),
        .Q(regwD1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[1] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[1]_i_1_n_0 ),
        .Q(regwD1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[2] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[2]_i_1_n_0 ),
        .Q(regwD1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[3] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[3]_i_1_n_0 ),
        .Q(regwD1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[4] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[4]_i_1_n_0 ),
        .Q(regwD1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[5] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[5]_i_1_n_0 ),
        .Q(regwD1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[6] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[6]_i_1_n_0 ),
        .Q(regwD1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[7] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[7]_i_1_n_0 ),
        .Q(regwD1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[8] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[8]_i_1_n_0 ),
        .Q(regwD1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regwD1_reg[9] 
       (.C(clk),
        .CE(regwD10),
        .D(\regwD1[9]_i_1_n_0 ),
        .Q(regwD1[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBFA0)) 
    send_i_1
       (.I0(\FSM_onehot_curr_reg_n_0_[14] ),
        .I1(\FSM_onehot_curr_reg_n_0_[32] ),
        .I2(en),
        .I3(send),
        .O(send_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_i_1_n_0),
        .Q(send),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFCDFFFFFFCC0000)) 
    wr_en1_i_1
       (.I0(\FSM_onehot_curr_reg_n_0_[32] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[4] ),
        .I3(\FSM_onehot_curr_reg_n_0_[24] ),
        .I4(en),
        .I5(wr_en1),
        .O(wr_en1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_en1_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en1_i_1_n_0),
        .Q(wr_en1),
        .R(1'b0));
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
