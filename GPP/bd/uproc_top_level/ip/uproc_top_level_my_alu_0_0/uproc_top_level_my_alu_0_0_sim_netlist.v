// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 18 13:30:08 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_my_alu_0_0/uproc_top_level_my_alu_0_0_sim_netlist.v
// Design      : uproc_top_level_my_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uproc_top_level_my_alu_0_0,my_alu,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "my_alu,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uproc_top_level_my_alu_0_0
   (clk,
    en,
    A,
    B,
    opcode,
    alu_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0" *) input clk;
  input en;
  input [15:0]A;
  input [15:0]B;
  input [3:0]opcode;
  output [15:0]alu_out;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]alu_out;
  wire clk;
  wire en;
  wire [3:0]opcode;

  uproc_top_level_my_alu_0_0_my_alu U0
       (.A(A),
        .B(B),
        .alu_out(alu_out),
        .clk(clk),
        .en(en),
        .opcode(opcode));
endmodule

(* ORIG_REF_NAME = "my_alu" *) 
module uproc_top_level_my_alu_0_0_my_alu
   (alu_out,
    B,
    A,
    clk,
    opcode,
    en);
  output [15:0]alu_out;
  input [15:0]B;
  input [15:0]A;
  input clk;
  input [3:0]opcode;
  input en;

  wire [15:0]A;
  wire [15:0]B;
  wire \_inferred__3/i___0_carry__0_n_0 ;
  wire \_inferred__3/i___0_carry__0_n_1 ;
  wire \_inferred__3/i___0_carry__0_n_2 ;
  wire \_inferred__3/i___0_carry__0_n_3 ;
  wire \_inferred__3/i___0_carry__0_n_4 ;
  wire \_inferred__3/i___0_carry__0_n_5 ;
  wire \_inferred__3/i___0_carry__0_n_6 ;
  wire \_inferred__3/i___0_carry__0_n_7 ;
  wire \_inferred__3/i___0_carry__1_n_0 ;
  wire \_inferred__3/i___0_carry__1_n_1 ;
  wire \_inferred__3/i___0_carry__1_n_2 ;
  wire \_inferred__3/i___0_carry__1_n_3 ;
  wire \_inferred__3/i___0_carry__1_n_4 ;
  wire \_inferred__3/i___0_carry__1_n_5 ;
  wire \_inferred__3/i___0_carry__1_n_6 ;
  wire \_inferred__3/i___0_carry__1_n_7 ;
  wire \_inferred__3/i___0_carry__2_n_1 ;
  wire \_inferred__3/i___0_carry__2_n_2 ;
  wire \_inferred__3/i___0_carry__2_n_3 ;
  wire \_inferred__3/i___0_carry__2_n_4 ;
  wire \_inferred__3/i___0_carry__2_n_5 ;
  wire \_inferred__3/i___0_carry__2_n_6 ;
  wire \_inferred__3/i___0_carry__2_n_7 ;
  wire \_inferred__3/i___0_carry_n_0 ;
  wire \_inferred__3/i___0_carry_n_1 ;
  wire \_inferred__3/i___0_carry_n_2 ;
  wire \_inferred__3/i___0_carry_n_3 ;
  wire \_inferred__3/i___0_carry_n_4 ;
  wire \_inferred__3/i___0_carry_n_5 ;
  wire \_inferred__3/i___0_carry_n_6 ;
  wire \_inferred__3/i___0_carry_n_7 ;
  wire [15:0]alu_out;
  wire alu_out0;
  wire alu_out0_carry__0_i_1_n_0;
  wire alu_out0_carry__0_i_2_n_0;
  wire alu_out0_carry__0_i_3_n_0;
  wire alu_out0_carry__0_i_4_n_0;
  wire alu_out0_carry__0_i_5_n_0;
  wire alu_out0_carry__0_i_6_n_0;
  wire alu_out0_carry__0_i_7_n_0;
  wire alu_out0_carry__0_i_8_n_0;
  wire alu_out0_carry__0_n_0;
  wire alu_out0_carry__0_n_1;
  wire alu_out0_carry__0_n_2;
  wire alu_out0_carry__0_n_3;
  wire alu_out0_carry_i_1_n_0;
  wire alu_out0_carry_i_2_n_0;
  wire alu_out0_carry_i_3_n_0;
  wire alu_out0_carry_i_4_n_0;
  wire alu_out0_carry_i_5_n_0;
  wire alu_out0_carry_i_6_n_0;
  wire alu_out0_carry_i_7_n_0;
  wire alu_out0_carry_i_8_n_0;
  wire alu_out0_carry_n_0;
  wire alu_out0_carry_n_1;
  wire alu_out0_carry_n_2;
  wire alu_out0_carry_n_3;
  wire [0:0]alu_out0_in;
  wire \alu_out0_inferred__0/i__carry__0_n_1 ;
  wire \alu_out0_inferred__0/i__carry__0_n_2 ;
  wire \alu_out0_inferred__0/i__carry__0_n_3 ;
  wire \alu_out0_inferred__0/i__carry_n_0 ;
  wire \alu_out0_inferred__0/i__carry_n_1 ;
  wire \alu_out0_inferred__0/i__carry_n_2 ;
  wire \alu_out0_inferred__0/i__carry_n_3 ;
  wire \alu_out0_inferred__1/i__carry__0_n_0 ;
  wire \alu_out0_inferred__1/i__carry__0_n_1 ;
  wire \alu_out0_inferred__1/i__carry__0_n_2 ;
  wire \alu_out0_inferred__1/i__carry__0_n_3 ;
  wire \alu_out0_inferred__1/i__carry_n_0 ;
  wire \alu_out0_inferred__1/i__carry_n_1 ;
  wire \alu_out0_inferred__1/i__carry_n_2 ;
  wire \alu_out0_inferred__1/i__carry_n_3 ;
  wire \alu_out0_inferred__2/i__carry__0_n_1 ;
  wire \alu_out0_inferred__2/i__carry__0_n_2 ;
  wire \alu_out0_inferred__2/i__carry__0_n_3 ;
  wire \alu_out0_inferred__2/i__carry_n_0 ;
  wire \alu_out0_inferred__2/i__carry_n_1 ;
  wire \alu_out0_inferred__2/i__carry_n_2 ;
  wire \alu_out0_inferred__2/i__carry_n_3 ;
  wire \alu_out0_inferred__3/i__carry__0_n_3 ;
  wire \alu_out0_inferred__3/i__carry_n_0 ;
  wire \alu_out0_inferred__3/i__carry_n_1 ;
  wire \alu_out0_inferred__3/i__carry_n_2 ;
  wire \alu_out0_inferred__3/i__carry_n_3 ;
  wire [0:0]alu_out1_in;
  wire \alu_out[0]_i_1_n_0 ;
  wire \alu_out[0]_i_4_n_0 ;
  wire \alu_out[0]_i_5_n_0 ;
  wire \alu_out[0]_i_6_n_0 ;
  wire \alu_out[0]_i_7_n_0 ;
  wire \alu_out[10]_i_2_n_0 ;
  wire \alu_out[10]_i_3_n_0 ;
  wire \alu_out[10]_i_4_n_0 ;
  wire \alu_out[11]_i_2_n_0 ;
  wire \alu_out[11]_i_3_n_0 ;
  wire \alu_out[11]_i_4_n_0 ;
  wire \alu_out[12]_i_2_n_0 ;
  wire \alu_out[12]_i_3_n_0 ;
  wire \alu_out[12]_i_4_n_0 ;
  wire \alu_out[13]_i_2_n_0 ;
  wire \alu_out[13]_i_3_n_0 ;
  wire \alu_out[13]_i_4_n_0 ;
  wire \alu_out[14]_i_2_n_0 ;
  wire \alu_out[14]_i_3_n_0 ;
  wire \alu_out[14]_i_4_n_0 ;
  wire \alu_out[15]_i_1_n_0 ;
  wire \alu_out[15]_i_3_n_0 ;
  wire \alu_out[15]_i_4_n_0 ;
  wire \alu_out[15]_i_5_n_0 ;
  wire \alu_out[1]_i_2_n_0 ;
  wire \alu_out[1]_i_3_n_0 ;
  wire \alu_out[1]_i_4_n_0 ;
  wire \alu_out[2]_i_2_n_0 ;
  wire \alu_out[2]_i_3_n_0 ;
  wire \alu_out[2]_i_4_n_0 ;
  wire \alu_out[3]_i_2_n_0 ;
  wire \alu_out[3]_i_3_n_0 ;
  wire \alu_out[3]_i_4_n_0 ;
  wire \alu_out[4]_i_2_n_0 ;
  wire \alu_out[4]_i_3_n_0 ;
  wire \alu_out[4]_i_4_n_0 ;
  wire \alu_out[5]_i_2_n_0 ;
  wire \alu_out[5]_i_3_n_0 ;
  wire \alu_out[5]_i_4_n_0 ;
  wire \alu_out[6]_i_2_n_0 ;
  wire \alu_out[6]_i_3_n_0 ;
  wire \alu_out[6]_i_4_n_0 ;
  wire \alu_out[7]_i_2_n_0 ;
  wire \alu_out[7]_i_3_n_0 ;
  wire \alu_out[7]_i_4_n_0 ;
  wire \alu_out[8]_i_2_n_0 ;
  wire \alu_out[8]_i_3_n_0 ;
  wire \alu_out[8]_i_4_n_0 ;
  wire \alu_out[9]_i_2_n_0 ;
  wire \alu_out[9]_i_3_n_0 ;
  wire \alu_out[9]_i_4_n_0 ;
  wire \alu_out_reg[0]_i_2_n_0 ;
  wire \alu_out_reg[0]_i_3_n_0 ;
  wire clk;
  wire en;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_4_n_0;
  wire i___0_carry__0_i_5_n_0;
  wire i___0_carry__0_i_6_n_0;
  wire i___0_carry__0_i_7_n_0;
  wire i___0_carry__0_i_8_n_0;
  wire i___0_carry__1_i_1_n_0;
  wire i___0_carry__1_i_2_n_0;
  wire i___0_carry__1_i_3_n_0;
  wire i___0_carry__1_i_4_n_0;
  wire i___0_carry__1_i_5_n_0;
  wire i___0_carry__1_i_6_n_0;
  wire i___0_carry__1_i_7_n_0;
  wire i___0_carry__1_i_8_n_0;
  wire i___0_carry__2_i_1_n_0;
  wire i___0_carry__2_i_2_n_0;
  wire i___0_carry__2_i_3_n_0;
  wire i___0_carry__2_i_4_n_0;
  wire i___0_carry__2_i_5_n_0;
  wire i___0_carry__2_i_6_n_0;
  wire i___0_carry__2_i_7_n_0;
  wire i___0_carry__2_i_8_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___0_carry_i_5_n_0;
  wire i___0_carry_i_6_n_0;
  wire i___0_carry_i_7_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire [3:0]opcode;
  wire [15:1]p_1_in;
  wire [3:3]\NLW__inferred__3/i___0_carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_alu_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_alu_out0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_alu_out0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_alu_out0_inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_alu_out0_inferred__3/i__carry__0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i___0_carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i___0_carry_n_0 ,\_inferred__3/i___0_carry_n_1 ,\_inferred__3/i___0_carry_n_2 ,\_inferred__3/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,1'b0}),
        .O({\_inferred__3/i___0_carry_n_4 ,\_inferred__3/i___0_carry_n_5 ,\_inferred__3/i___0_carry_n_6 ,\_inferred__3/i___0_carry_n_7 }),
        .S({i___0_carry_i_4_n_0,i___0_carry_i_5_n_0,i___0_carry_i_6_n_0,i___0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i___0_carry__0 
       (.CI(\_inferred__3/i___0_carry_n_0 ),
        .CO({\_inferred__3/i___0_carry__0_n_0 ,\_inferred__3/i___0_carry__0_n_1 ,\_inferred__3/i___0_carry__0_n_2 ,\_inferred__3/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__0_i_1_n_0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0,i___0_carry__0_i_4_n_0}),
        .O({\_inferred__3/i___0_carry__0_n_4 ,\_inferred__3/i___0_carry__0_n_5 ,\_inferred__3/i___0_carry__0_n_6 ,\_inferred__3/i___0_carry__0_n_7 }),
        .S({i___0_carry__0_i_5_n_0,i___0_carry__0_i_6_n_0,i___0_carry__0_i_7_n_0,i___0_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i___0_carry__1 
       (.CI(\_inferred__3/i___0_carry__0_n_0 ),
        .CO({\_inferred__3/i___0_carry__1_n_0 ,\_inferred__3/i___0_carry__1_n_1 ,\_inferred__3/i___0_carry__1_n_2 ,\_inferred__3/i___0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__1_i_1_n_0,i___0_carry__1_i_2_n_0,i___0_carry__1_i_3_n_0,i___0_carry__1_i_4_n_0}),
        .O({\_inferred__3/i___0_carry__1_n_4 ,\_inferred__3/i___0_carry__1_n_5 ,\_inferred__3/i___0_carry__1_n_6 ,\_inferred__3/i___0_carry__1_n_7 }),
        .S({i___0_carry__1_i_5_n_0,i___0_carry__1_i_6_n_0,i___0_carry__1_i_7_n_0,i___0_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i___0_carry__2 
       (.CI(\_inferred__3/i___0_carry__1_n_0 ),
        .CO({\NLW__inferred__3/i___0_carry__2_CO_UNCONNECTED [3],\_inferred__3/i___0_carry__2_n_1 ,\_inferred__3/i___0_carry__2_n_2 ,\_inferred__3/i___0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___0_carry__2_i_1_n_0,i___0_carry__2_i_2_n_0,i___0_carry__2_i_3_n_0}),
        .O({\_inferred__3/i___0_carry__2_n_4 ,\_inferred__3/i___0_carry__2_n_5 ,\_inferred__3/i___0_carry__2_n_6 ,\_inferred__3/i___0_carry__2_n_7 }),
        .S({i___0_carry__2_i_4_n_0,i___0_carry__2_i_5_n_0,i___0_carry__2_i_6_n_0,i___0_carry__2_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out0_carry
       (.CI(1'b0),
        .CO({alu_out0_carry_n_0,alu_out0_carry_n_1,alu_out0_carry_n_2,alu_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out0_carry_i_1_n_0,alu_out0_carry_i_2_n_0,alu_out0_carry_i_3_n_0,alu_out0_carry_i_4_n_0}),
        .O(NLW_alu_out0_carry_O_UNCONNECTED[3:0]),
        .S({alu_out0_carry_i_5_n_0,alu_out0_carry_i_6_n_0,alu_out0_carry_i_7_n_0,alu_out0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out0_carry__0
       (.CI(alu_out0_carry_n_0),
        .CO({alu_out0_carry__0_n_0,alu_out0_carry__0_n_1,alu_out0_carry__0_n_2,alu_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out0_carry__0_i_1_n_0,alu_out0_carry__0_i_2_n_0,alu_out0_carry__0_i_3_n_0,alu_out0_carry__0_i_4_n_0}),
        .O(NLW_alu_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({alu_out0_carry__0_i_5_n_0,alu_out0_carry__0_i_6_n_0,alu_out0_carry__0_i_7_n_0,alu_out0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out0_carry__0_i_1
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(alu_out0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h40DC)) 
    alu_out0_carry__0_i_2
       (.I0(B[12]),
        .I1(A[13]),
        .I2(A[12]),
        .I3(B[13]),
        .O(alu_out0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    alu_out0_carry__0_i_3
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(alu_out0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7310)) 
    alu_out0_carry__0_i_4
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[8]),
        .I3(A[9]),
        .O(alu_out0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry__0_i_5
       (.I0(A[14]),
        .I1(B[15]),
        .I2(A[15]),
        .I3(B[14]),
        .O(alu_out0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry__0_i_6
       (.I0(B[12]),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[12]),
        .O(alu_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry__0_i_7
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(alu_out0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry__0_i_8
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[9]),
        .I3(A[8]),
        .O(alu_out0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h40DC)) 
    alu_out0_carry_i_1
       (.I0(B[6]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(B[7]),
        .O(alu_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    alu_out0_carry_i_2
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(alu_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7310)) 
    alu_out0_carry_i_3
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(A[3]),
        .O(alu_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out0_carry_i_4
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(alu_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry_i_5
       (.I0(B[6]),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .O(alu_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry_i_6
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(alu_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry_i_7
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(A[2]),
        .O(alu_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    alu_out0_carry_i_8
       (.I0(A[0]),
        .I1(B[1]),
        .I2(A[1]),
        .I3(B[0]),
        .O(alu_out0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__0/i__carry_n_0 ,\alu_out0_inferred__0/i__carry_n_1 ,\alu_out0_inferred__0/i__carry_n_2 ,\alu_out0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_alu_out0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__0 
       (.CI(\alu_out0_inferred__0/i__carry_n_0 ),
        .CO({alu_out0,\alu_out0_inferred__0/i__carry__0_n_1 ,\alu_out0_inferred__0/i__carry__0_n_2 ,\alu_out0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_alu_out0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__1/i__carry_n_0 ,\alu_out0_inferred__1/i__carry_n_1 ,\alu_out0_inferred__1/i__carry_n_2 ,\alu_out0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_alu_out0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__1/i__carry__0 
       (.CI(\alu_out0_inferred__1/i__carry_n_0 ),
        .CO({\alu_out0_inferred__1/i__carry__0_n_0 ,\alu_out0_inferred__1/i__carry__0_n_1 ,\alu_out0_inferred__1/i__carry__0_n_2 ,\alu_out0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_alu_out0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__2/i__carry_n_0 ,\alu_out0_inferred__2/i__carry_n_1 ,\alu_out0_inferred__2/i__carry_n_2 ,\alu_out0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_alu_out0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out0_inferred__2/i__carry__0 
       (.CI(\alu_out0_inferred__2/i__carry_n_0 ),
        .CO({alu_out0_in,\alu_out0_inferred__2/i__carry__0_n_1 ,\alu_out0_inferred__2/i__carry__0_n_2 ,\alu_out0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_alu_out0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \alu_out0_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__3/i__carry_n_0 ,\alu_out0_inferred__3/i__carry_n_1 ,\alu_out0_inferred__3/i__carry_n_2 ,\alu_out0_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out0_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \alu_out0_inferred__3/i__carry__0 
       (.CI(\alu_out0_inferred__3/i__carry_n_0 ),
        .CO({\NLW_alu_out0_inferred__3/i__carry__0_CO_UNCONNECTED [3:2],alu_out1_in,\alu_out0_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out0_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__2_n_0,i__carry__0_i_2_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[0]_i_1 
       (.I0(\alu_out_reg[0]_i_2_n_0 ),
        .I1(opcode[2]),
        .I2(\alu_out_reg[0]_i_3_n_0 ),
        .I3(en),
        .I4(alu_out[0]),
        .O(\alu_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[0]_i_4 
       (.I0(alu_out0_in),
        .I1(A[1]),
        .I2(opcode[1]),
        .I3(alu_out0_carry__0_n_0),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_7 ),
        .O(\alu_out[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \alu_out[0]_i_5 
       (.I0(\alu_out0_inferred__1/i__carry__0_n_0 ),
        .I1(A[1]),
        .I2(opcode[1]),
        .I3(opcode[3]),
        .I4(alu_out1_in),
        .O(\alu_out[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h68FF6800)) 
    \alu_out[0]_i_6 
       (.I0(opcode[1]),
        .I1(B[0]),
        .I2(A[0]),
        .I3(opcode[3]),
        .I4(\_inferred__3/i___0_carry_n_7 ),
        .O(\alu_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \alu_out[0]_i_7 
       (.I0(alu_out0),
        .I1(opcode[1]),
        .I2(B[0]),
        .I3(A[0]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_7 ),
        .O(\alu_out[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[10]_i_1 
       (.I0(\alu_out[10]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[10]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[10]_i_4_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[10]_i_2 
       (.I0(A[11]),
        .I1(opcode[1]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(opcode[3]),
        .I5(A[9]),
        .O(\alu_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[10]_i_3 
       (.I0(A[11]),
        .I1(opcode[1]),
        .I2(B[10]),
        .I3(A[10]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_5 ),
        .O(\alu_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[10]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[10]),
        .I3(A[10]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_5 ),
        .O(\alu_out[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[11]_i_1 
       (.I0(\alu_out[11]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[11]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[11]_i_4_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[11]_i_2 
       (.I0(A[12]),
        .I1(opcode[1]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(opcode[3]),
        .I5(A[10]),
        .O(\alu_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[11]_i_3 
       (.I0(A[12]),
        .I1(opcode[1]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_4 ),
        .O(\alu_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[11]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_4 ),
        .O(\alu_out[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[12]_i_1 
       (.I0(\alu_out[12]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[12]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[12]_i_4_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[12]_i_2 
       (.I0(A[13]),
        .I1(opcode[1]),
        .I2(A[12]),
        .I3(B[12]),
        .I4(opcode[3]),
        .I5(A[11]),
        .O(\alu_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[12]_i_3 
       (.I0(A[13]),
        .I1(opcode[1]),
        .I2(A[12]),
        .I3(B[12]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_7 ),
        .O(\alu_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[12]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[12]),
        .I3(B[12]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_7 ),
        .O(\alu_out[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[13]_i_1 
       (.I0(\alu_out[13]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[13]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[13]_i_4_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[13]_i_2 
       (.I0(A[14]),
        .I1(opcode[1]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(opcode[3]),
        .I5(A[12]),
        .O(\alu_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[13]_i_3 
       (.I0(A[14]),
        .I1(opcode[1]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_6 ),
        .O(\alu_out[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[13]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_6 ),
        .O(\alu_out[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[14]_i_1 
       (.I0(\alu_out[14]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[14]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[14]_i_4_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[14]_i_2 
       (.I0(A[15]),
        .I1(opcode[1]),
        .I2(B[14]),
        .I3(A[14]),
        .I4(opcode[3]),
        .I5(A[13]),
        .O(\alu_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[14]_i_3 
       (.I0(A[15]),
        .I1(opcode[1]),
        .I2(B[14]),
        .I3(A[14]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_5 ),
        .O(\alu_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[14]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[14]),
        .I3(A[14]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_5 ),
        .O(\alu_out[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h337F0000)) 
    \alu_out[15]_i_1 
       (.I0(opcode[0]),
        .I1(opcode[3]),
        .I2(opcode[1]),
        .I3(opcode[2]),
        .I4(en),
        .O(\alu_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \alu_out[15]_i_2 
       (.I0(\alu_out[15]_i_3_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[15]_i_4_n_0 ),
        .I3(opcode[1]),
        .I4(opcode[2]),
        .I5(\alu_out[15]_i_5_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hFDDDFC88)) 
    \alu_out[15]_i_3 
       (.I0(opcode[1]),
        .I1(A[15]),
        .I2(B[15]),
        .I3(opcode[3]),
        .I4(A[14]),
        .O(\alu_out[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \alu_out[15]_i_4 
       (.I0(B[15]),
        .I1(A[15]),
        .I2(opcode[3]),
        .I3(\_inferred__3/i___0_carry__2_n_4 ),
        .O(\alu_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[15]_i_5 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[15]),
        .I3(A[15]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__2_n_4 ),
        .O(\alu_out[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[1]_i_1 
       (.I0(\alu_out[1]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[1]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[1]_i_4_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[1]_i_2 
       (.I0(A[2]),
        .I1(opcode[1]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(opcode[3]),
        .I5(A[0]),
        .O(\alu_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[1]_i_3 
       (.I0(A[2]),
        .I1(opcode[1]),
        .I2(B[1]),
        .I3(A[1]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_6 ),
        .O(\alu_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[1]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[1]),
        .I3(A[1]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_6 ),
        .O(\alu_out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[2]_i_1 
       (.I0(\alu_out[2]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[2]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[2]_i_4_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[2]_i_2 
       (.I0(A[3]),
        .I1(opcode[1]),
        .I2(A[2]),
        .I3(B[2]),
        .I4(opcode[3]),
        .I5(A[1]),
        .O(\alu_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[2]_i_3 
       (.I0(A[3]),
        .I1(opcode[1]),
        .I2(A[2]),
        .I3(B[2]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_5 ),
        .O(\alu_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[2]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[2]),
        .I3(B[2]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_5 ),
        .O(\alu_out[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[3]_i_1 
       (.I0(\alu_out[3]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[3]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[3]_i_4_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[3]_i_2 
       (.I0(A[4]),
        .I1(opcode[1]),
        .I2(A[3]),
        .I3(B[3]),
        .I4(opcode[3]),
        .I5(A[2]),
        .O(\alu_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[3]_i_3 
       (.I0(A[4]),
        .I1(opcode[1]),
        .I2(A[3]),
        .I3(B[3]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_4 ),
        .O(\alu_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[3]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[3]),
        .I3(B[3]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry_n_4 ),
        .O(\alu_out[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[4]_i_1 
       (.I0(\alu_out[4]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[4]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[4]_i_4_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[4]_i_2 
       (.I0(A[5]),
        .I1(opcode[1]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(opcode[3]),
        .I5(A[3]),
        .O(\alu_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[4]_i_3 
       (.I0(A[5]),
        .I1(opcode[1]),
        .I2(B[4]),
        .I3(A[4]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_7 ),
        .O(\alu_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[4]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[4]),
        .I3(A[4]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_7 ),
        .O(\alu_out[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[5]_i_1 
       (.I0(\alu_out[5]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[5]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[5]_i_4_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[5]_i_2 
       (.I0(A[6]),
        .I1(opcode[1]),
        .I2(A[5]),
        .I3(B[5]),
        .I4(opcode[3]),
        .I5(A[4]),
        .O(\alu_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[5]_i_3 
       (.I0(A[6]),
        .I1(opcode[1]),
        .I2(A[5]),
        .I3(B[5]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_6 ),
        .O(\alu_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[5]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[5]),
        .I3(B[5]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_6 ),
        .O(\alu_out[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[6]_i_1 
       (.I0(\alu_out[6]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[6]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[6]_i_4_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[6]_i_2 
       (.I0(A[7]),
        .I1(opcode[1]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(opcode[3]),
        .I5(A[5]),
        .O(\alu_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[6]_i_3 
       (.I0(A[7]),
        .I1(opcode[1]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_5 ),
        .O(\alu_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[6]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_5 ),
        .O(\alu_out[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[7]_i_1 
       (.I0(\alu_out[7]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[7]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[7]_i_4_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[7]_i_2 
       (.I0(A[8]),
        .I1(opcode[1]),
        .I2(B[7]),
        .I3(A[7]),
        .I4(opcode[3]),
        .I5(A[6]),
        .O(\alu_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[7]_i_3 
       (.I0(A[8]),
        .I1(opcode[1]),
        .I2(B[7]),
        .I3(A[7]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_4 ),
        .O(\alu_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[7]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[7]),
        .I3(A[7]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__0_n_4 ),
        .O(\alu_out[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[8]_i_1 
       (.I0(\alu_out[8]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[8]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[8]_i_4_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[8]_i_2 
       (.I0(A[9]),
        .I1(opcode[1]),
        .I2(A[8]),
        .I3(B[8]),
        .I4(opcode[3]),
        .I5(A[7]),
        .O(\alu_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[8]_i_3 
       (.I0(A[9]),
        .I1(opcode[1]),
        .I2(A[8]),
        .I3(B[8]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_7 ),
        .O(\alu_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[8]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[8]),
        .I3(B[8]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_7 ),
        .O(\alu_out[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[9]_i_1 
       (.I0(\alu_out[9]_i_2_n_0 ),
        .I1(opcode[0]),
        .I2(\alu_out[9]_i_3_n_0 ),
        .I3(opcode[2]),
        .I4(\alu_out[9]_i_4_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hFFFBBBBBFFF88888)) 
    \alu_out[9]_i_2 
       (.I0(A[10]),
        .I1(opcode[1]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(opcode[3]),
        .I5(A[8]),
        .O(\alu_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \alu_out[9]_i_3 
       (.I0(A[10]),
        .I1(opcode[1]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_6 ),
        .O(\alu_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEE0FFFFBEE00000)) 
    \alu_out[9]_i_4 
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(opcode[3]),
        .I5(\_inferred__3/i___0_carry__1_n_6 ),
        .O(\alu_out[9]_i_4_n_0 ));
  FDRE \alu_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out[0]_i_1_n_0 ),
        .Q(alu_out[0]),
        .R(1'b0));
  MUXF7 \alu_out_reg[0]_i_2 
       (.I0(\alu_out[0]_i_4_n_0 ),
        .I1(\alu_out[0]_i_5_n_0 ),
        .O(\alu_out_reg[0]_i_2_n_0 ),
        .S(opcode[0]));
  MUXF7 \alu_out_reg[0]_i_3 
       (.I0(\alu_out[0]_i_6_n_0 ),
        .I1(\alu_out[0]_i_7_n_0 ),
        .O(\alu_out_reg[0]_i_3_n_0 ),
        .S(opcode[0]));
  FDRE \alu_out_reg[10] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(alu_out[10]),
        .R(1'b0));
  FDRE \alu_out_reg[11] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(alu_out[11]),
        .R(1'b0));
  FDRE \alu_out_reg[12] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(alu_out[12]),
        .R(1'b0));
  FDRE \alu_out_reg[13] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(alu_out[13]),
        .R(1'b0));
  FDRE \alu_out_reg[14] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(alu_out[14]),
        .R(1'b0));
  FDRE \alu_out_reg[15] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(alu_out[15]),
        .R(1'b0));
  FDRE \alu_out_reg[1] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(alu_out[1]),
        .R(1'b0));
  FDRE \alu_out_reg[2] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(alu_out[2]),
        .R(1'b0));
  FDRE \alu_out_reg[3] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(alu_out[3]),
        .R(1'b0));
  FDRE \alu_out_reg[4] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(alu_out[4]),
        .R(1'b0));
  FDRE \alu_out_reg[5] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(alu_out[5]),
        .R(1'b0));
  FDRE \alu_out_reg[6] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(alu_out[6]),
        .R(1'b0));
  FDRE \alu_out_reg[7] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(alu_out[7]),
        .R(1'b0));
  FDRE \alu_out_reg[8] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(alu_out[8]),
        .R(1'b0));
  FDRE \alu_out_reg[9] 
       (.C(clk),
        .CE(\alu_out[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(alu_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__0_i_1
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[6]),
        .I3(A[6]),
        .I4(opcode[1]),
        .O(i___0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__0_i_2
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[5]),
        .I3(A[5]),
        .I4(opcode[1]),
        .O(i___0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h48481040)) 
    i___0_carry__0_i_3
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(opcode[1]),
        .O(i___0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__0_i_4
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[3]),
        .I3(A[3]),
        .I4(opcode[1]),
        .O(i___0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry__0_i_5
       (.I0(i___0_carry__0_i_1_n_0),
        .I1(B[7]),
        .I2(A[7]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__0_i_6
       (.I0(i___0_carry__0_i_2_n_0),
        .I1(A[6]),
        .I2(B[6]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__0_i_7
       (.I0(i___0_carry__0_i_3_n_0),
        .I1(A[5]),
        .I2(B[5]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry__0_i_8
       (.I0(i___0_carry__0_i_4_n_0),
        .I1(B[4]),
        .I2(A[4]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h48481040)) 
    i___0_carry__1_i_1
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(opcode[1]),
        .O(i___0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__1_i_2
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[9]),
        .I3(A[9]),
        .I4(opcode[1]),
        .O(i___0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__1_i_3
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[8]),
        .I3(A[8]),
        .I4(opcode[1]),
        .O(i___0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h48481040)) 
    i___0_carry__1_i_4
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(A[7]),
        .I3(B[7]),
        .I4(opcode[1]),
        .O(i___0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__1_i_5
       (.I0(i___0_carry__1_i_1_n_0),
        .I1(A[11]),
        .I2(B[11]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry__1_i_6
       (.I0(i___0_carry__1_i_2_n_0),
        .I1(B[10]),
        .I2(A[10]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__1_i_7
       (.I0(i___0_carry__1_i_3_n_0),
        .I1(A[9]),
        .I2(B[9]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__1_i_8
       (.I0(i___0_carry__1_i_4_n_0),
        .I1(A[8]),
        .I2(B[8]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h48481040)) 
    i___0_carry__2_i_1
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(A[13]),
        .I3(B[13]),
        .I4(opcode[1]),
        .O(i___0_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__2_i_2
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[12]),
        .I3(A[12]),
        .I4(opcode[1]),
        .O(i___0_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry__2_i_3
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[11]),
        .I3(A[11]),
        .I4(opcode[1]),
        .O(i___0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h807FFFFF807F0000)) 
    i___0_carry__2_i_4
       (.I0(A[14]),
        .I1(opcode[1]),
        .I2(opcode[0]),
        .I3(A[15]),
        .I4(opcode[2]),
        .I5(i___0_carry__2_i_8_n_0),
        .O(i___0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry__2_i_5
       (.I0(i___0_carry__2_i_1_n_0),
        .I1(B[14]),
        .I2(A[14]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry__2_i_6
       (.I0(i___0_carry__2_i_2_n_0),
        .I1(B[13]),
        .I2(A[13]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry__2_i_7
       (.I0(i___0_carry__2_i_3_n_0),
        .I1(A[12]),
        .I2(B[12]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hFC660399CF5530AA)) 
    i___0_carry__2_i_8
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(B[14]),
        .I3(A[14]),
        .I4(A[15]),
        .I5(B[15]),
        .O(i___0_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'h44881400)) 
    i___0_carry_i_1
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(B[2]),
        .I3(A[2]),
        .I4(opcode[1]),
        .O(i___0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h48481040)) 
    i___0_carry_i_2
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(opcode[1]),
        .O(i___0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h5554AAAE)) 
    i___0_carry_i_3
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(opcode[1]),
        .I3(B[0]),
        .I4(A[0]),
        .O(i___0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry_i_4
       (.I0(i___0_carry_i_1_n_0),
        .I1(A[3]),
        .I2(B[3]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6699999999696696)) 
    i___0_carry_i_5
       (.I0(i___0_carry_i_2_n_0),
        .I1(A[2]),
        .I2(B[2]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h5AA5A5A5A5695A96)) 
    i___0_carry_i_6
       (.I0(i___0_carry_i_3_n_0),
        .I1(B[1]),
        .I2(A[1]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .I5(opcode[2]),
        .O(i___0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hF01E)) 
    i___0_carry_i_7
       (.I0(B[0]),
        .I1(opcode[1]),
        .I2(A[0]),
        .I3(opcode[2]),
        .O(i___0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_1
       (.I0(A[14]),
        .I1(B[14]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_1__0
       (.I0(B[14]),
        .I1(A[14]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_1__1
       (.I0(A[14]),
        .I1(B[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(B[15]),
        .I1(A[15]),
        .O(i__carry__0_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_2
       (.I0(A[14]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(B[12]),
        .I5(B[14]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h40DC)) 
    i__carry__0_i_2__0
       (.I0(B[12]),
        .I1(A[13]),
        .I2(A[12]),
        .I3(B[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_2__1
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_2__2
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry__0_i_3
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry__0_i_3__0
       (.I0(B[11]),
        .I1(A[10]),
        .I2(B[10]),
        .I3(A[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry__0_i_3__1
       (.I0(B[11]),
        .I1(A[10]),
        .I2(B[10]),
        .I3(A[11]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h7310)) 
    i__carry__0_i_4
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[8]),
        .I3(A[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_4__0
       (.I0(A[8]),
        .I1(B[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_4__1
       (.I0(A[8]),
        .I1(B[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_5
       (.I0(A[14]),
        .I1(B[15]),
        .I2(A[15]),
        .I3(B[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_5__0
       (.I0(A[14]),
        .I1(B[15]),
        .I2(A[15]),
        .I3(B[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_5__1
       (.I0(A[14]),
        .I1(B[15]),
        .I2(A[15]),
        .I3(B[14]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_6
       (.I0(B[12]),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_6__0
       (.I0(B[12]),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_6__1
       (.I0(B[12]),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_7
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_7__0
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_7__1
       (.I0(B[11]),
        .I1(B[10]),
        .I2(A[10]),
        .I3(A[11]),
        .O(i__carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_8
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[9]),
        .I3(A[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_8__0
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[9]),
        .I3(A[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_8__1
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[9]),
        .I3(A[8]),
        .O(i__carry__0_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_1
       (.I0(B[11]),
        .I1(A[9]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(B[9]),
        .I5(A[11]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h40DC)) 
    i__carry_i_1__0
       (.I0(B[6]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(B[7]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_1__1
       (.I0(A[6]),
        .I1(B[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_1__2
       (.I0(A[6]),
        .I1(B[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_2
       (.I0(B[8]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[7]),
        .I4(B[6]),
        .I5(A[8]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry_i_2__0
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_2__1
       (.I0(B[5]),
        .I1(A[4]),
        .I2(B[4]),
        .I3(A[5]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_2__2
       (.I0(B[5]),
        .I1(A[4]),
        .I2(B[4]),
        .I3(A[5]),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_3
       (.I0(B[5]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(B[3]),
        .I5(A[5]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h7310)) 
    i__carry_i_3__0
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(A[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_3__1
       (.I0(A[2]),
        .I1(B[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_3__2
       (.I0(A[2]),
        .I1(B[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(i__carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_4
       (.I0(B[2]),
        .I1(B[0]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(A[0]),
        .I5(A[2]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4__0
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4__1
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4__2
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_5
       (.I0(B[6]),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_5__0
       (.I0(B[6]),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_5__1
       (.I0(B[6]),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_6
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_6__0
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_6__1
       (.I0(B[5]),
        .I1(B[4]),
        .I2(A[4]),
        .I3(A[5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_7
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(A[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_7__0
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(A[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_7__1
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(A[2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_8
       (.I0(A[0]),
        .I1(B[1]),
        .I2(A[1]),
        .I3(B[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_8__0
       (.I0(A[0]),
        .I1(B[1]),
        .I2(A[1]),
        .I3(B[0]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_8__1
       (.I0(A[0]),
        .I1(B[1]),
        .I2(A[1]),
        .I3(B[0]),
        .O(i__carry_i_8__1_n_0));
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
