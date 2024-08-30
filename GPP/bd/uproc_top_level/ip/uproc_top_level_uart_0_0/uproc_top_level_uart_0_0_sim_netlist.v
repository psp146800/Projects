// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 17 22:13:50 2024
// Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_uart_0_0/uproc_top_level_uart_0_0_sim_netlist.v
// Design      : uproc_top_level_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uproc_top_level_uart_0_0,uart,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uproc_top_level_uart_0_0
   (clk,
    en,
    send,
    rx,
    rst,
    charSend,
    ready,
    tx,
    newChar,
    charRec);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk_0, INSERT_VIP 0" *) input clk;
  input en;
  input send;
  input rx;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]charSend;
  output ready;
  output tx;
  output newChar;
  output [7:0]charRec;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  uproc_top_level_uart_0_0_uart U0
       (.charRec(charRec),
        .charSend(charSend),
        .clk(clk),
        .en(en),
        .newChar(newChar),
        .ready(ready),
        .rst(rst),
        .rx(rx),
        .send(send),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "uart" *) 
module uproc_top_level_uart_0_0_uart
   (charRec,
    newChar,
    tx,
    ready,
    rst,
    en,
    send,
    clk,
    rx,
    charSend);
  output [7:0]charRec;
  output newChar;
  output tx;
  output ready;
  input rst;
  input en;
  input send;
  input clk;
  input rx;
  input [7:0]charSend;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  uproc_top_level_uart_0_0_uart_rx r_x
       (.charRec(charRec),
        .clk(clk),
        .en(en),
        .newChar(newChar),
        .rst(rst),
        .rx(rx));
  uproc_top_level_uart_0_0_uart_tx t_x
       (.charSend(charSend),
        .clk(clk),
        .en(en),
        .ready(ready),
        .rst(rst),
        .send(send),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module uproc_top_level_uart_0_0_uart_rx
   (newChar,
    charRec,
    clk,
    rst,
    en,
    rx);
  output newChar;
  output [7:0]charRec;
  input clk;
  input rst;
  input en;
  input rx;

  wire \FSM_onehot_curr[0]_i_1_n_0 ;
  wire \FSM_onehot_curr[1]_i_1_n_0 ;
  wire \FSM_onehot_curr[2]_i_1_n_0 ;
  wire \FSM_onehot_curr[2]_i_2_n_0 ;
  wire \FSM_onehot_curr[2]_i_3_n_0 ;
  wire \FSM_onehot_curr_reg_n_0_[0] ;
  wire \FSM_onehot_curr_reg_n_0_[1] ;
  wire \FSM_onehot_curr_reg_n_0_[2] ;
  wire [7:0]charRec;
  wire \char[7]_i_1_n_0 ;
  wire clk;
  wire [2:0]count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:1]count_0;
  wire [7:0]d;
  wire en;
  wire \inshift_reg_n_0_[0] ;
  wire maj;
  wire newChar;
  wire newChar_i_1_n_0;
  wire newChar_i_2_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire rst;
  wire rx;

  LUT4 #(
    .INIT(16'hFFE2)) 
    \FSM_onehot_curr[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(rst),
        .O(\FSM_onehot_curr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_curr[1]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(rst),
        .O(\FSM_onehot_curr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_curr[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[1] ),
        .I3(rst),
        .O(\FSM_onehot_curr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBFAAAAAAAAAAAA)) 
    \FSM_onehot_curr[2]_i_2 
       (.I0(\FSM_onehot_curr[2]_i_3_n_0 ),
        .I1(p_2_in),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(en),
        .I5(\FSM_onehot_curr_reg_n_0_[0] ),
        .O(\FSM_onehot_curr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \FSM_onehot_curr[2]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(en),
        .O(\FSM_onehot_curr[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[2]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \char[7]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .I2(en),
        .I3(count[2]),
        .I4(count[0]),
        .I5(count[1]),
        .O(\char[7]_i_1_n_0 ));
  FDRE \char_reg[0] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[0]),
        .Q(charRec[0]),
        .R(1'b0));
  FDRE \char_reg[1] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[1]),
        .Q(charRec[1]),
        .R(1'b0));
  FDRE \char_reg[2] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[2]),
        .Q(charRec[2]),
        .R(1'b0));
  FDRE \char_reg[3] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[3]),
        .Q(charRec[3]),
        .R(1'b0));
  FDRE \char_reg[4] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[4]),
        .Q(charRec[4]),
        .R(1'b0));
  FDRE \char_reg[5] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[5]),
        .Q(charRec[5]),
        .R(1'b0));
  FDRE \char_reg[6] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[6]),
        .Q(charRec[6]),
        .R(1'b0));
  FDRE \char_reg[7] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[7]),
        .Q(charRec[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1__0 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .I2(count[1]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hBFFFAAAA00000000)) 
    \count[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(en),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count[2]_i_2 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(count[2]),
        .O(count_0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[1]),
        .Q(count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[2]),
        .Q(count[2]),
        .R(rst));
  LUT3 #(
    .INIT(8'hE8)) 
    \d[7]_i_1 
       (.I0(p_2_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(maj));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[1]),
        .Q(d[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[2]),
        .Q(d[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[3]),
        .Q(d[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[4]),
        .Q(d[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[5]),
        .Q(d[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[6]),
        .Q(d[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[7]),
        .Q(d[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(maj),
        .Q(d[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(\inshift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\inshift_reg_n_0_[0] ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E2E2AAEA)) 
    newChar_i_1
       (.I0(newChar),
        .I1(en),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(newChar_i_2_n_0),
        .I4(\FSM_onehot_curr_reg_n_0_[0] ),
        .I5(rst),
        .O(newChar_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    newChar_i_2
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(newChar_i_2_n_0));
  FDRE newChar_reg
       (.C(clk),
        .CE(1'b1),
        .D(newChar_i_1_n_0),
        .Q(newChar),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module uproc_top_level_uart_0_0_uart_tx
   (ready,
    tx,
    clk,
    rst,
    en,
    send,
    charSend);
  output ready;
  output tx;
  input clk;
  input rst;
  input en;
  input send;
  input [7:0]charSend;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [7:0]charSend;
  wire clk;
  wire [31:1]count0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [7:0]data_reg;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire en;
  wire ready;
  wire ready_i_1_n_0;
  wire rst;
  wire send;
  wire [1:0]state;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_i_4_n_0;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_i_1_n_0;
  wire state1_carry__2_i_2_n_0;
  wire state1_carry__2_i_3_n_0;
  wire state1_carry__2_n_1;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire tx;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_i_4_n_0;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hC008F038)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(send),
        .I1(en),
        .I2(state[0]),
        .I3(state[1]),
        .I4(rst),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F888D8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(en),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst),
        .I4(state1_carry__2_n_1),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "data:10,idle:00,start:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "data:10,idle:00,start:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0AAA3AAA)) 
    \count[31]_i_1 
       (.I0(rst),
        .I1(state1_carry__2_n_1),
        .I2(state[1]),
        .I3(en),
        .I4(state[0]),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2AEA)) 
    \count[31]_i_2 
       (.I0(rst),
        .I1(state[1]),
        .I2(en),
        .I3(state[0]),
        .O(\count[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2A2AA2AA)) 
    \data_reg[7]_i_1 
       (.I0(rst),
        .I1(en),
        .I2(state[0]),
        .I3(send),
        .I4(state[1]),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF0020)) 
    \data_reg[7]_i_2 
       (.I0(send),
        .I1(state[0]),
        .I2(en),
        .I3(state[1]),
        .I4(rst),
        .O(\data_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[0]),
        .Q(data_reg[0]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[1]),
        .Q(data_reg[1]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[2]),
        .Q(data_reg[2]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[3]),
        .Q(data_reg[3]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[4]),
        .Q(data_reg[4]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[5]),
        .Q(data_reg[5]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[6]),
        .Q(data_reg[6]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(charSend[7]),
        .Q(data_reg[7]),
        .R(\data_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03FF03AA)) 
    ready_i_1
       (.I0(ready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(en),
        .I4(rst),
        .O(ready_i_1_n_0));
  FDRE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state1_carry_i_1_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0,state1_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_1
       (.I0(\count_reg_n_0_[16] ),
        .I1(\count_reg_n_0_[17] ),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_2
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[15] ),
        .O(state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_3
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[13] ),
        .O(state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_4
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[11] ),
        .O(state1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({state1_carry__1_i_1_n_0,state1_carry__1_i_2_n_0,state1_carry__1_i_3_n_0,state1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_1
       (.I0(\count_reg_n_0_[24] ),
        .I1(\count_reg_n_0_[25] ),
        .O(state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_2
       (.I0(\count_reg_n_0_[22] ),
        .I1(\count_reg_n_0_[23] ),
        .O(state1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_3
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[21] ),
        .O(state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_4
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .O(state1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({NLW_state1_carry__2_CO_UNCONNECTED[3],state1_carry__2_n_1,state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\count_reg_n_0_[31] ,1'b0,1'b0}),
        .O(NLW_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,state1_carry__2_i_1_n_0,state1_carry__2_i_2_n_0,state1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_1
       (.I0(\count_reg_n_0_[30] ),
        .I1(\count_reg_n_0_[31] ),
        .O(state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_2
       (.I0(\count_reg_n_0_[28] ),
        .I1(\count_reg_n_0_[29] ),
        .O(state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[27] ),
        .O(state1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_1
       (.I0(\count_reg_n_0_[3] ),
        .O(state1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[9] ),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_3
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_4
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_5
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .O(state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hCFCA)) 
    tx_i_1
       (.I0(tx),
        .I1(tx_i_2_n_0),
        .I2(en),
        .I3(rst),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF77F7F7)) 
    tx_i_2
       (.I0(state[1]),
        .I1(state1_carry__2_n_1),
        .I2(tx_i_3_n_0),
        .I3(tx_i_4_n_0),
        .I4(\count_reg_n_0_[0] ),
        .I5(state[0]),
        .O(tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_3
       (.I0(data_reg[6]),
        .I1(data_reg[2]),
        .I2(\count_reg_n_0_[1] ),
        .I3(data_reg[4]),
        .I4(\count_reg_n_0_[2] ),
        .I5(data_reg[0]),
        .O(tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_4
       (.I0(data_reg[7]),
        .I1(data_reg[3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(data_reg[5]),
        .I4(\count_reg_n_0_[2] ),
        .I5(data_reg[1]),
        .O(tx_i_4_n_0));
  FDRE tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_i_1_n_0),
        .Q(tx),
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
