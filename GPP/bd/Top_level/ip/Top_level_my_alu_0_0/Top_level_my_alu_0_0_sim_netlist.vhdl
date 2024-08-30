-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr 18 13:30:07 2024
-- Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Top_level_my_alu_0_0 -prefix
--               Top_level_my_alu_0_0_ uproc_top_level_my_alu_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_my_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_my_alu_0_0_my_alu is
  port (
    alu_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : in STD_LOGIC
  );
end Top_level_my_alu_0_0_my_alu;

architecture STRUCTURE of Top_level_my_alu_0_0_my_alu is
  signal \_inferred__3/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_4\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_5\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_4\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_5\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_6\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry__2_n_7\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_3\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_4\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_5\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_6\ : STD_LOGIC;
  signal \_inferred__3/i___0_carry_n_7\ : STD_LOGIC;
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal alu_out0 : STD_LOGIC;
  signal \alu_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_3\ : STD_LOGIC;
  signal alu_out0_carry_i_1_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_2_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_3_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_4_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_5_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_6_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_7_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_8_n_0 : STD_LOGIC;
  signal alu_out0_carry_n_0 : STD_LOGIC;
  signal alu_out0_carry_n_1 : STD_LOGIC;
  signal alu_out0_carry_n_2 : STD_LOGIC;
  signal alu_out0_carry_n_3 : STD_LOGIC;
  signal alu_out0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu_out0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal alu_out1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW__inferred__3/i___0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_alu_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out0_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_alu_out0_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__3/i___0_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__3/i___0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__3/i___0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__3/i___0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__3/i___0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__3/i___0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__3/i___0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__3/i___0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of alu_out0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out0_inferred__2/i__carry__0\ : label is 11;
begin
  alu_out(15 downto 0) <= \^alu_out\(15 downto 0);
\_inferred__3/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__3/i___0_carry_n_0\,
      CO(2) => \_inferred__3/i___0_carry_n_1\,
      CO(1) => \_inferred__3/i___0_carry_n_2\,
      CO(0) => \_inferred__3/i___0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => \i___0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \_inferred__3/i___0_carry_n_4\,
      O(2) => \_inferred__3/i___0_carry_n_5\,
      O(1) => \_inferred__3/i___0_carry_n_6\,
      O(0) => \_inferred__3/i___0_carry_n_7\,
      S(3) => \i___0_carry_i_4_n_0\,
      S(2) => \i___0_carry_i_5_n_0\,
      S(1) => \i___0_carry_i_6_n_0\,
      S(0) => \i___0_carry_i_7_n_0\
    );
\_inferred__3/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i___0_carry_n_0\,
      CO(3) => \_inferred__3/i___0_carry__0_n_0\,
      CO(2) => \_inferred__3/i___0_carry__0_n_1\,
      CO(1) => \_inferred__3/i___0_carry__0_n_2\,
      CO(0) => \_inferred__3/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__0_i_1_n_0\,
      DI(2) => \i___0_carry__0_i_2_n_0\,
      DI(1) => \i___0_carry__0_i_3_n_0\,
      DI(0) => \i___0_carry__0_i_4_n_0\,
      O(3) => \_inferred__3/i___0_carry__0_n_4\,
      O(2) => \_inferred__3/i___0_carry__0_n_5\,
      O(1) => \_inferred__3/i___0_carry__0_n_6\,
      O(0) => \_inferred__3/i___0_carry__0_n_7\,
      S(3) => \i___0_carry__0_i_5_n_0\,
      S(2) => \i___0_carry__0_i_6_n_0\,
      S(1) => \i___0_carry__0_i_7_n_0\,
      S(0) => \i___0_carry__0_i_8_n_0\
    );
\_inferred__3/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i___0_carry__0_n_0\,
      CO(3) => \_inferred__3/i___0_carry__1_n_0\,
      CO(2) => \_inferred__3/i___0_carry__1_n_1\,
      CO(1) => \_inferred__3/i___0_carry__1_n_2\,
      CO(0) => \_inferred__3/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__1_i_1_n_0\,
      DI(2) => \i___0_carry__1_i_2_n_0\,
      DI(1) => \i___0_carry__1_i_3_n_0\,
      DI(0) => \i___0_carry__1_i_4_n_0\,
      O(3) => \_inferred__3/i___0_carry__1_n_4\,
      O(2) => \_inferred__3/i___0_carry__1_n_5\,
      O(1) => \_inferred__3/i___0_carry__1_n_6\,
      O(0) => \_inferred__3/i___0_carry__1_n_7\,
      S(3) => \i___0_carry__1_i_5_n_0\,
      S(2) => \i___0_carry__1_i_6_n_0\,
      S(1) => \i___0_carry__1_i_7_n_0\,
      S(0) => \i___0_carry__1_i_8_n_0\
    );
\_inferred__3/i___0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i___0_carry__1_n_0\,
      CO(3) => \NLW__inferred__3/i___0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__3/i___0_carry__2_n_1\,
      CO(1) => \_inferred__3/i___0_carry__2_n_2\,
      CO(0) => \_inferred__3/i___0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___0_carry__2_i_1_n_0\,
      DI(1) => \i___0_carry__2_i_2_n_0\,
      DI(0) => \i___0_carry__2_i_3_n_0\,
      O(3) => \_inferred__3/i___0_carry__2_n_4\,
      O(2) => \_inferred__3/i___0_carry__2_n_5\,
      O(1) => \_inferred__3/i___0_carry__2_n_6\,
      O(0) => \_inferred__3/i___0_carry__2_n_7\,
      S(3) => \i___0_carry__2_i_4_n_0\,
      S(2) => \i___0_carry__2_i_5_n_0\,
      S(1) => \i___0_carry__2_i_6_n_0\,
      S(0) => \i___0_carry__2_i_7_n_0\
    );
alu_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_out0_carry_n_0,
      CO(2) => alu_out0_carry_n_1,
      CO(1) => alu_out0_carry_n_2,
      CO(0) => alu_out0_carry_n_3,
      CYINIT => '0',
      DI(3) => alu_out0_carry_i_1_n_0,
      DI(2) => alu_out0_carry_i_2_n_0,
      DI(1) => alu_out0_carry_i_3_n_0,
      DI(0) => alu_out0_carry_i_4_n_0,
      O(3 downto 0) => NLW_alu_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => alu_out0_carry_i_5_n_0,
      S(2) => alu_out0_carry_i_6_n_0,
      S(1) => alu_out0_carry_i_7_n_0,
      S(0) => alu_out0_carry_i_8_n_0
    );
\alu_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => alu_out0_carry_n_0,
      CO(3) => \alu_out0_carry__0_n_0\,
      CO(2) => \alu_out0_carry__0_n_1\,
      CO(1) => \alu_out0_carry__0_n_2\,
      CO(0) => \alu_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out0_carry__0_i_1_n_0\,
      DI(2) => \alu_out0_carry__0_i_2_n_0\,
      DI(1) => \alu_out0_carry__0_i_3_n_0\,
      DI(0) => \alu_out0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out0_carry__0_i_5_n_0\,
      S(2) => \alu_out0_carry__0_i_6_n_0\,
      S(1) => \alu_out0_carry__0_i_7_n_0\,
      S(0) => \alu_out0_carry__0_i_8_n_0\
    );
\alu_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => B(15),
      I3 => A(15),
      O => \alu_out0_carry__0_i_1_n_0\
    );
\alu_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40DC"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => A(12),
      I3 => B(13),
      O => \alu_out0_carry__0_i_2_n_0\
    );
\alu_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \alu_out0_carry__0_i_3_n_0\
    );
\alu_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(8),
      I3 => A(9),
      O => \alu_out0_carry__0_i_4_n_0\
    );
\alu_out0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(14),
      I1 => B(15),
      I2 => A(15),
      I3 => B(14),
      O => \alu_out0_carry__0_i_5_n_0\
    );
\alu_out0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => B(13),
      I3 => A(12),
      O => \alu_out0_carry__0_i_6_n_0\
    );
\alu_out0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \alu_out0_carry__0_i_7_n_0\
    );
\alu_out0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(9),
      I3 => A(8),
      O => \alu_out0_carry__0_i_8_n_0\
    );
alu_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40DC"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => A(6),
      I3 => B(7),
      O => alu_out0_carry_i_1_n_0
    );
alu_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => alu_out0_carry_i_2_n_0
    );
alu_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(2),
      I3 => A(3),
      O => alu_out0_carry_i_3_n_0
    );
alu_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      O => alu_out0_carry_i_4_n_0
    );
alu_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => B(7),
      I3 => A(6),
      O => alu_out0_carry_i_5_n_0
    );
alu_out0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => alu_out0_carry_i_6_n_0
    );
alu_out0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(3),
      I3 => A(2),
      O => alu_out0_carry_i_7_n_0
    );
alu_out0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(0),
      I1 => B(1),
      I2 => A(1),
      I3 => B(0),
      O => alu_out0_carry_i_8_n_0
    );
\alu_out0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__0/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\alu_out0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry_n_0\,
      CO(3) => alu_out0,
      CO(2) => \alu_out0_inferred__0/i__carry__0_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__0_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2__2_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\alu_out0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__1/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__1/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__1/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\alu_out0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__1/i__carry_n_0\,
      CO(3) => \alu_out0_inferred__1/i__carry__0_n_0\,
      CO(2) => \alu_out0_inferred__1/i__carry__0_n_1\,
      CO(1) => \alu_out0_inferred__1/i__carry__0_n_2\,
      CO(0) => \alu_out0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__1_n_0\,
      S(2) => \i__carry__0_i_6__1_n_0\,
      S(1) => \i__carry__0_i_7__1_n_0\,
      S(0) => \i__carry__0_i_8__1_n_0\
    );
\alu_out0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__2/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__2/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__2/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\alu_out0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__2/i__carry_n_0\,
      CO(3) => alu_out0_in(0),
      CO(2) => \alu_out0_inferred__2/i__carry__0_n_1\,
      CO(1) => \alu_out0_inferred__2/i__carry__0_n_2\,
      CO(0) => \alu_out0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_alu_out0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\alu_out0_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__3/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__3/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__3/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_out0_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\alu_out0_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__3/i__carry_n_0\,
      CO(3 downto 2) => \NLW_alu_out0_inferred__3/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => alu_out1_in(0),
      CO(0) => \alu_out0_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_out0_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__2_n_0\,
      S(0) => \i__carry__0_i_2_n_0\
    );
\alu_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out_reg[0]_i_2_n_0\,
      I1 => opcode(2),
      I2 => \alu_out_reg[0]_i_3_n_0\,
      I3 => en,
      I4 => \^alu_out\(0),
      O => \alu_out[0]_i_1_n_0\
    );
\alu_out[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => alu_out0_in(0),
      I1 => A(1),
      I2 => opcode(1),
      I3 => \alu_out0_carry__0_n_0\,
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_7\,
      O => \alu_out[0]_i_4_n_0\
    );
\alu_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \alu_out0_inferred__1/i__carry__0_n_0\,
      I1 => A(1),
      I2 => opcode(1),
      I3 => opcode(3),
      I4 => alu_out1_in(0),
      O => \alu_out[0]_i_5_n_0\
    );
\alu_out[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68FF6800"
    )
        port map (
      I0 => opcode(1),
      I1 => B(0),
      I2 => A(0),
      I3 => opcode(3),
      I4 => \_inferred__3/i___0_carry_n_7\,
      O => \alu_out[0]_i_6_n_0\
    );
\alu_out[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => alu_out0,
      I1 => opcode(1),
      I2 => B(0),
      I3 => A(0),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_7\,
      O => \alu_out[0]_i_7_n_0\
    );
\alu_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[10]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[10]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[10]_i_4_n_0\,
      O => p_1_in(10)
    );
\alu_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(11),
      I1 => opcode(1),
      I2 => A(10),
      I3 => B(10),
      I4 => opcode(3),
      I5 => A(9),
      O => \alu_out[10]_i_2_n_0\
    );
\alu_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(11),
      I1 => opcode(1),
      I2 => B(10),
      I3 => A(10),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_5\,
      O => \alu_out[10]_i_3_n_0\
    );
\alu_out[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(10),
      I3 => A(10),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_5\,
      O => \alu_out[10]_i_4_n_0\
    );
\alu_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[11]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[11]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[11]_i_4_n_0\,
      O => p_1_in(11)
    );
\alu_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(12),
      I1 => opcode(1),
      I2 => A(11),
      I3 => B(11),
      I4 => opcode(3),
      I5 => A(10),
      O => \alu_out[11]_i_2_n_0\
    );
\alu_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(12),
      I1 => opcode(1),
      I2 => A(11),
      I3 => B(11),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_4\,
      O => \alu_out[11]_i_3_n_0\
    );
\alu_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(11),
      I3 => B(11),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_4\,
      O => \alu_out[11]_i_4_n_0\
    );
\alu_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[12]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[12]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[12]_i_4_n_0\,
      O => p_1_in(12)
    );
\alu_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(13),
      I1 => opcode(1),
      I2 => A(12),
      I3 => B(12),
      I4 => opcode(3),
      I5 => A(11),
      O => \alu_out[12]_i_2_n_0\
    );
\alu_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(13),
      I1 => opcode(1),
      I2 => A(12),
      I3 => B(12),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_7\,
      O => \alu_out[12]_i_3_n_0\
    );
\alu_out[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(12),
      I3 => B(12),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_7\,
      O => \alu_out[12]_i_4_n_0\
    );
\alu_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[13]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[13]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[13]_i_4_n_0\,
      O => p_1_in(13)
    );
\alu_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(14),
      I1 => opcode(1),
      I2 => B(13),
      I3 => A(13),
      I4 => opcode(3),
      I5 => A(12),
      O => \alu_out[13]_i_2_n_0\
    );
\alu_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(14),
      I1 => opcode(1),
      I2 => B(13),
      I3 => A(13),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_6\,
      O => \alu_out[13]_i_3_n_0\
    );
\alu_out[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(13),
      I3 => A(13),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_6\,
      O => \alu_out[13]_i_4_n_0\
    );
\alu_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[14]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[14]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[14]_i_4_n_0\,
      O => p_1_in(14)
    );
\alu_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(15),
      I1 => opcode(1),
      I2 => B(14),
      I3 => A(14),
      I4 => opcode(3),
      I5 => A(13),
      O => \alu_out[14]_i_2_n_0\
    );
\alu_out[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(15),
      I1 => opcode(1),
      I2 => B(14),
      I3 => A(14),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_5\,
      O => \alu_out[14]_i_3_n_0\
    );
\alu_out[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(14),
      I3 => A(14),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_5\,
      O => \alu_out[14]_i_4_n_0\
    );
\alu_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"337F0000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(3),
      I2 => opcode(1),
      I3 => opcode(2),
      I4 => en,
      O => \alu_out[15]_i_1_n_0\
    );
\alu_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \alu_out[15]_i_3_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[15]_i_4_n_0\,
      I3 => opcode(1),
      I4 => opcode(2),
      I5 => \alu_out[15]_i_5_n_0\,
      O => p_1_in(15)
    );
\alu_out[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFC88"
    )
        port map (
      I0 => opcode(1),
      I1 => A(15),
      I2 => B(15),
      I3 => opcode(3),
      I4 => A(14),
      O => \alu_out[15]_i_3_n_0\
    );
\alu_out[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => opcode(3),
      I3 => \_inferred__3/i___0_carry__2_n_4\,
      O => \alu_out[15]_i_4_n_0\
    );
\alu_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(15),
      I3 => A(15),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__2_n_4\,
      O => \alu_out[15]_i_5_n_0\
    );
\alu_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[1]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[1]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[1]_i_4_n_0\,
      O => p_1_in(1)
    );
\alu_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(2),
      I1 => opcode(1),
      I2 => A(1),
      I3 => B(1),
      I4 => opcode(3),
      I5 => A(0),
      O => \alu_out[1]_i_2_n_0\
    );
\alu_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(2),
      I1 => opcode(1),
      I2 => B(1),
      I3 => A(1),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_6\,
      O => \alu_out[1]_i_3_n_0\
    );
\alu_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(1),
      I3 => A(1),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_6\,
      O => \alu_out[1]_i_4_n_0\
    );
\alu_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[2]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[2]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[2]_i_4_n_0\,
      O => p_1_in(2)
    );
\alu_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(3),
      I1 => opcode(1),
      I2 => A(2),
      I3 => B(2),
      I4 => opcode(3),
      I5 => A(1),
      O => \alu_out[2]_i_2_n_0\
    );
\alu_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(3),
      I1 => opcode(1),
      I2 => A(2),
      I3 => B(2),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_5\,
      O => \alu_out[2]_i_3_n_0\
    );
\alu_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(2),
      I3 => B(2),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_5\,
      O => \alu_out[2]_i_4_n_0\
    );
\alu_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[3]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[3]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[3]_i_4_n_0\,
      O => p_1_in(3)
    );
\alu_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(4),
      I1 => opcode(1),
      I2 => A(3),
      I3 => B(3),
      I4 => opcode(3),
      I5 => A(2),
      O => \alu_out[3]_i_2_n_0\
    );
\alu_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(4),
      I1 => opcode(1),
      I2 => A(3),
      I3 => B(3),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_4\,
      O => \alu_out[3]_i_3_n_0\
    );
\alu_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(3),
      I3 => B(3),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry_n_4\,
      O => \alu_out[3]_i_4_n_0\
    );
\alu_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[4]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[4]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[4]_i_4_n_0\,
      O => p_1_in(4)
    );
\alu_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(5),
      I1 => opcode(1),
      I2 => A(4),
      I3 => B(4),
      I4 => opcode(3),
      I5 => A(3),
      O => \alu_out[4]_i_2_n_0\
    );
\alu_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(5),
      I1 => opcode(1),
      I2 => B(4),
      I3 => A(4),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_7\,
      O => \alu_out[4]_i_3_n_0\
    );
\alu_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(4),
      I3 => A(4),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_7\,
      O => \alu_out[4]_i_4_n_0\
    );
\alu_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[5]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[5]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[5]_i_4_n_0\,
      O => p_1_in(5)
    );
\alu_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(6),
      I1 => opcode(1),
      I2 => A(5),
      I3 => B(5),
      I4 => opcode(3),
      I5 => A(4),
      O => \alu_out[5]_i_2_n_0\
    );
\alu_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(6),
      I1 => opcode(1),
      I2 => A(5),
      I3 => B(5),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_6\,
      O => \alu_out[5]_i_3_n_0\
    );
\alu_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(5),
      I3 => B(5),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_6\,
      O => \alu_out[5]_i_4_n_0\
    );
\alu_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[6]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[6]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[6]_i_4_n_0\,
      O => p_1_in(6)
    );
\alu_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(7),
      I1 => opcode(1),
      I2 => A(6),
      I3 => B(6),
      I4 => opcode(3),
      I5 => A(5),
      O => \alu_out[6]_i_2_n_0\
    );
\alu_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(7),
      I1 => opcode(1),
      I2 => A(6),
      I3 => B(6),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_5\,
      O => \alu_out[6]_i_3_n_0\
    );
\alu_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(6),
      I3 => B(6),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_5\,
      O => \alu_out[6]_i_4_n_0\
    );
\alu_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[7]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[7]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[7]_i_4_n_0\,
      O => p_1_in(7)
    );
\alu_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(8),
      I1 => opcode(1),
      I2 => B(7),
      I3 => A(7),
      I4 => opcode(3),
      I5 => A(6),
      O => \alu_out[7]_i_2_n_0\
    );
\alu_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(8),
      I1 => opcode(1),
      I2 => B(7),
      I3 => A(7),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_4\,
      O => \alu_out[7]_i_3_n_0\
    );
\alu_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(7),
      I3 => A(7),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__0_n_4\,
      O => \alu_out[7]_i_4_n_0\
    );
\alu_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[8]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[8]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[8]_i_4_n_0\,
      O => p_1_in(8)
    );
\alu_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(9),
      I1 => opcode(1),
      I2 => A(8),
      I3 => B(8),
      I4 => opcode(3),
      I5 => A(7),
      O => \alu_out[8]_i_2_n_0\
    );
\alu_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(9),
      I1 => opcode(1),
      I2 => A(8),
      I3 => B(8),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_7\,
      O => \alu_out[8]_i_3_n_0\
    );
\alu_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(8),
      I3 => B(8),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_7\,
      O => \alu_out[8]_i_4_n_0\
    );
\alu_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[9]_i_2_n_0\,
      I1 => opcode(0),
      I2 => \alu_out[9]_i_3_n_0\,
      I3 => opcode(2),
      I4 => \alu_out[9]_i_4_n_0\,
      O => p_1_in(9)
    );
\alu_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBBBBFFF88888"
    )
        port map (
      I0 => A(10),
      I1 => opcode(1),
      I2 => A(9),
      I3 => B(9),
      I4 => opcode(3),
      I5 => A(8),
      O => \alu_out[9]_i_2_n_0\
    );
\alu_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => A(10),
      I1 => opcode(1),
      I2 => A(9),
      I3 => B(9),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_6\,
      O => \alu_out[9]_i_3_n_0\
    );
\alu_out[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEE0FFFFBEE00000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => A(9),
      I3 => B(9),
      I4 => opcode(3),
      I5 => \_inferred__3/i___0_carry__1_n_6\,
      O => \alu_out[9]_i_4_n_0\
    );
\alu_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \alu_out[0]_i_1_n_0\,
      Q => \^alu_out\(0),
      R => '0'
    );
\alu_out_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[0]_i_4_n_0\,
      I1 => \alu_out[0]_i_5_n_0\,
      O => \alu_out_reg[0]_i_2_n_0\,
      S => opcode(0)
    );
\alu_out_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[0]_i_6_n_0\,
      I1 => \alu_out[0]_i_7_n_0\,
      O => \alu_out_reg[0]_i_3_n_0\,
      S => opcode(0)
    );
\alu_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => \^alu_out\(10),
      R => '0'
    );
\alu_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^alu_out\(11),
      R => '0'
    );
\alu_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => \^alu_out\(12),
      R => '0'
    );
\alu_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => \^alu_out\(13),
      R => '0'
    );
\alu_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => \^alu_out\(14),
      R => '0'
    );
\alu_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => \^alu_out\(15),
      R => '0'
    );
\alu_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^alu_out\(1),
      R => '0'
    );
\alu_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^alu_out\(2),
      R => '0'
    );
\alu_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^alu_out\(3),
      R => '0'
    );
\alu_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^alu_out\(4),
      R => '0'
    );
\alu_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^alu_out\(5),
      R => '0'
    );
\alu_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^alu_out\(6),
      R => '0'
    );
\alu_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^alu_out\(7),
      R => '0'
    );
\alu_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^alu_out\(8),
      R => '0'
    );
\alu_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alu_out[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^alu_out\(9),
      R => '0'
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(6),
      I3 => A(6),
      I4 => opcode(1),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(5),
      I3 => A(5),
      I4 => opcode(1),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48481040"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => A(4),
      I3 => B(4),
      I4 => opcode(1),
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(3),
      I3 => A(3),
      I4 => opcode(1),
      O => \i___0_carry__0_i_4_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry__0_i_1_n_0\,
      I1 => B(7),
      I2 => A(7),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__0_i_2_n_0\,
      I1 => A(6),
      I2 => B(6),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__0_i_6_n_0\
    );
\i___0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__0_i_3_n_0\,
      I1 => A(5),
      I2 => B(5),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__0_i_7_n_0\
    );
\i___0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry__0_i_4_n_0\,
      I1 => B(4),
      I2 => A(4),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__0_i_8_n_0\
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48481040"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => A(10),
      I3 => B(10),
      I4 => opcode(1),
      O => \i___0_carry__1_i_1_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(9),
      I3 => A(9),
      I4 => opcode(1),
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(8),
      I3 => A(8),
      I4 => opcode(1),
      O => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48481040"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => A(7),
      I3 => B(7),
      I4 => opcode(1),
      O => \i___0_carry__1_i_4_n_0\
    );
\i___0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__1_i_1_n_0\,
      I1 => A(11),
      I2 => B(11),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__1_i_5_n_0\
    );
\i___0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry__1_i_2_n_0\,
      I1 => B(10),
      I2 => A(10),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__1_i_6_n_0\
    );
\i___0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__1_i_3_n_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__1_i_7_n_0\
    );
\i___0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__1_i_4_n_0\,
      I1 => A(8),
      I2 => B(8),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__1_i_8_n_0\
    );
\i___0_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48481040"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => A(13),
      I3 => B(13),
      I4 => opcode(1),
      O => \i___0_carry__2_i_1_n_0\
    );
\i___0_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(12),
      I3 => A(12),
      I4 => opcode(1),
      O => \i___0_carry__2_i_2_n_0\
    );
\i___0_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(11),
      I3 => A(11),
      I4 => opcode(1),
      O => \i___0_carry__2_i_3_n_0\
    );
\i___0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807FFFFF807F0000"
    )
        port map (
      I0 => A(14),
      I1 => opcode(1),
      I2 => opcode(0),
      I3 => A(15),
      I4 => opcode(2),
      I5 => \i___0_carry__2_i_8_n_0\,
      O => \i___0_carry__2_i_4_n_0\
    );
\i___0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry__2_i_1_n_0\,
      I1 => B(14),
      I2 => A(14),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__2_i_5_n_0\
    );
\i___0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry__2_i_2_n_0\,
      I1 => B(13),
      I2 => A(13),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__2_i_6_n_0\
    );
\i___0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry__2_i_3_n_0\,
      I1 => A(12),
      I2 => B(12),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry__2_i_7_n_0\
    );
\i___0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC660399CF5530AA"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => B(14),
      I3 => A(14),
      I4 => A(15),
      I5 => B(15),
      O => \i___0_carry__2_i_8_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44881400"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => B(2),
      I3 => A(2),
      I4 => opcode(1),
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48481040"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => A(1),
      I3 => B(1),
      I4 => opcode(1),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5554AAAE"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => opcode(1),
      I3 => B(0),
      I4 => A(0),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry_i_1_n_0\,
      I1 => A(3),
      I2 => B(3),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999999696696"
    )
        port map (
      I0 => \i___0_carry_i_2_n_0\,
      I1 => A(2),
      I2 => B(2),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry_i_5_n_0\
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A5A5A5695A96"
    )
        port map (
      I0 => \i___0_carry_i_3_n_0\,
      I1 => B(1),
      I2 => A(1),
      I3 => opcode(1),
      I4 => opcode(0),
      I5 => opcode(2),
      O => \i___0_carry_i_6_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F01E"
    )
        port map (
      I0 => B(0),
      I1 => opcode(1),
      I2 => A(0),
      I3 => opcode(2),
      O => \i___0_carry_i_7_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => B(15),
      I3 => A(15),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => A(14),
      I1 => A(12),
      I2 => B(13),
      I3 => A(13),
      I4 => B(12),
      I5 => B(14),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40DC"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => A(12),
      I3 => B(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => B(13),
      I3 => A(13),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => B(13),
      I3 => A(13),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => B(11),
      I1 => A(10),
      I2 => B(10),
      I3 => A(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => B(11),
      I1 => A(10),
      I2 => B(10),
      I3 => A(11),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(8),
      I3 => A(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => B(9),
      I3 => A(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => B(9),
      I3 => A(9),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(14),
      I1 => B(15),
      I2 => A(15),
      I3 => B(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(14),
      I1 => B(15),
      I2 => A(15),
      I3 => B(14),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(14),
      I1 => B(15),
      I2 => A(15),
      I3 => B(14),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => B(13),
      I3 => A(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => B(13),
      I3 => A(12),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(12),
      I1 => A(13),
      I2 => B(13),
      I3 => A(12),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => A(10),
      I3 => A(11),
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(9),
      I3 => A(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(9),
      I3 => A(8),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__0_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(9),
      I3 => A(8),
      O => \i__carry__0_i_8__1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => B(11),
      I1 => A(9),
      I2 => A(10),
      I3 => B(10),
      I4 => B(9),
      I5 => A(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40DC"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => A(6),
      I3 => B(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => B(7),
      I3 => A(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => B(7),
      I3 => A(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => B(8),
      I1 => A(6),
      I2 => B(7),
      I3 => A(7),
      I4 => B(6),
      I5 => A(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => B(5),
      I1 => A(4),
      I2 => B(4),
      I3 => A(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => B(5),
      I1 => A(4),
      I2 => B(4),
      I3 => A(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => B(5),
      I1 => A(3),
      I2 => A(4),
      I3 => B(4),
      I4 => B(3),
      I5 => A(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(2),
      I3 => A(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => B(3),
      I3 => A(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => B(3),
      I3 => A(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => B(2),
      I1 => B(0),
      I2 => A(1),
      I3 => B(1),
      I4 => A(0),
      I5 => A(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => B(1),
      I3 => A(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => B(1),
      I3 => A(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => B(7),
      I3 => A(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => B(7),
      I3 => A(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(6),
      I1 => A(7),
      I2 => B(7),
      I3 => A(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => A(4),
      I3 => A(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(3),
      I3 => A(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(3),
      I3 => A(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(3),
      I3 => A(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(0),
      I1 => B(1),
      I2 => A(1),
      I3 => B(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(0),
      I1 => B(1),
      I2 => A(1),
      I3 => B(0),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => A(0),
      I1 => B(1),
      I2 => A(1),
      I3 => B(0),
      O => \i__carry_i_8__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_my_alu_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top_level_my_alu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Top_level_my_alu_0_0 : entity is "uproc_top_level_my_alu_0_0,my_alu,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Top_level_my_alu_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Top_level_my_alu_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Top_level_my_alu_0_0 : entity is "my_alu,Vivado 2023.2";
end Top_level_my_alu_0_0;

architecture STRUCTURE of Top_level_my_alu_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0";
begin
U0: entity work.Top_level_my_alu_0_0_my_alu
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      alu_out(15 downto 0) => alu_out(15 downto 0),
      clk => clk,
      en => en,
      opcode(3 downto 0) => opcode(3 downto 0)
    );
end STRUCTURE;
