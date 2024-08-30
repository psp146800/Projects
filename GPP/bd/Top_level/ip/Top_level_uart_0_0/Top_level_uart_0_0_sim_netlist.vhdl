-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 22:13:49 2024
-- Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Top_level_uart_0_0 -prefix
--               Top_level_uart_0_0_ uproc_top_level_uart_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_uart_0_0_uart_rx is
  port (
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    rx : in STD_LOGIC
  );
end Top_level_uart_0_0_uart_rx;

architecture STRUCTURE of Top_level_uart_0_0_uart_rx is
  signal \FSM_onehot_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  signal \char[7]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \inshift_reg_n_0_[0]\ : STD_LOGIC;
  signal maj : STD_LOGIC;
  signal \^newchar\ : STD_LOGIC;
  signal newChar_i_1_n_0 : STD_LOGIC;
  signal newChar_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_curr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "idle:001,start:010,data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "idle:001,start:010,data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "idle:001,start:010,data:100,";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of newChar_i_2 : label is "soft_lutpair2";
begin
  newChar <= \^newchar\;
\FSM_onehot_curr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => rst,
      O => \FSM_onehot_curr[0]_i_1_n_0\
    );
\FSM_onehot_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => rst,
      O => \FSM_onehot_curr[1]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[1]\,
      I3 => rst,
      O => \FSM_onehot_curr[2]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBFAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_curr[2]_i_3_n_0\,
      I1 => p_2_in,
      I2 => p_1_in,
      I3 => p_0_in,
      I4 => en,
      I5 => \FSM_onehot_curr_reg_n_0_[0]\,
      O => \FSM_onehot_curr[2]_i_2_n_0\
    );
\FSM_onehot_curr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => en,
      O => \FSM_onehot_curr[2]_i_3_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[1]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[2]\,
      R => '0'
    );
\char[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => en,
      I3 => count(2),
      I4 => count(0),
      I5 => count(1),
      O => \char[7]_i_1_n_0\
    );
\char_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(0),
      Q => charRec(0),
      R => '0'
    );
\char_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(1),
      Q => charRec(1),
      R => '0'
    );
\char_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(2),
      Q => charRec(2),
      R => '0'
    );
\char_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(3),
      Q => charRec(3),
      R => '0'
    );
\char_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(4),
      Q => charRec(4),
      R => '0'
    );
\char_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(5),
      Q => charRec(5),
      R => '0'
    );
\char_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(6),
      Q => charRec(6),
      R => '0'
    );
\char_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(7),
      Q => charRec(7),
      R => '0'
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => count(0),
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => count(1),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => en,
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => count(2),
      O => count_0(2)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \count[0]_i_1__0_n_0\,
      Q => count(0),
      R => rst
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(1),
      Q => count(1),
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(2),
      Q => count(2),
      R => rst
    );
\d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in,
      I2 => p_0_in,
      O => maj
    );
\d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(1),
      Q => d(0),
      R => rst
    );
\d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(2),
      Q => d(1),
      R => rst
    );
\d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(3),
      Q => d(2),
      R => rst
    );
\d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(4),
      Q => d(3),
      R => rst
    );
\d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(5),
      Q => d(4),
      R => rst
    );
\d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(6),
      Q => d(5),
      R => rst
    );
\d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(7),
      Q => d(6),
      R => rst
    );
\d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => maj,
      Q => d(7),
      R => rst
    );
\inshift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => \inshift_reg_n_0_[0]\,
      R => '0'
    );
\inshift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \inshift_reg_n_0_[0]\,
      Q => p_2_in,
      R => '0'
    );
\inshift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_in,
      Q => p_0_in,
      R => '0'
    );
\inshift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => p_1_in,
      R => '0'
    );
newChar_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2AAEA"
    )
        port map (
      I0 => \^newchar\,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => newChar_i_2_n_0,
      I4 => \FSM_onehot_curr_reg_n_0_[0]\,
      I5 => rst,
      O => newChar_i_1_n_0
    );
newChar_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      O => newChar_i_2_n_0
    );
newChar_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => newChar_i_1_n_0,
      Q => \^newchar\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_uart_0_0_uart_tx is
  port (
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Top_level_uart_0_0_uart_tx;

architecture STRUCTURE of Top_level_uart_0_0_uart_tx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal \state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_1\ : STD_LOGIC;
  signal \state1_carry__1_n_2\ : STD_LOGIC;
  signal \state1_carry__1_n_3\ : STD_LOGIC;
  signal \state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__2_n_1\ : STD_LOGIC;
  signal \state1_carry__2_n_2\ : STD_LOGIC;
  signal \state1_carry__2_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_2_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "data:10,idle:00,start:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "data:10,idle:00,start:01";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__2\ : label is 11;
begin
  ready <= \^ready\;
  tx <= \^tx\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C008F038"
    )
        port map (
      I0 => send,
      I1 => en,
      I2 => state(0),
      I3 => state(1),
      I4 => rst,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F888D8"
    )
        port map (
      I0 => en,
      I1 => state(0),
      I2 => state(1),
      I3 => rst,
      I4 => \state1_carry__2_n_1\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA3AAA"
    )
        port map (
      I0 => rst,
      I1 => \state1_carry__2_n_1\,
      I2 => state(1),
      I3 => en,
      I4 => state(0),
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AEA"
    )
        port map (
      I0 => rst,
      I1 => state(1),
      I2 => en,
      I3 => state(0),
      O => \count[31]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(10),
      Q => \count_reg_n_0_[10]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(11),
      Q => \count_reg_n_0_[11]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(12),
      Q => \count_reg_n_0_[12]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(13),
      Q => \count_reg_n_0_[13]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(14),
      Q => \count_reg_n_0_[14]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(15),
      Q => \count_reg_n_0_[15]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(16),
      Q => \count_reg_n_0_[16]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(17),
      Q => \count_reg_n_0_[17]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(18),
      Q => \count_reg_n_0_[18]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(19),
      Q => \count_reg_n_0_[19]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(1),
      Q => \count_reg_n_0_[1]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(20),
      Q => \count_reg_n_0_[20]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(21),
      Q => \count_reg_n_0_[21]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(22),
      Q => \count_reg_n_0_[22]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(23),
      Q => \count_reg_n_0_[23]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(24),
      Q => \count_reg_n_0_[24]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(25),
      Q => \count_reg_n_0_[25]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(26),
      Q => \count_reg_n_0_[26]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(27),
      Q => \count_reg_n_0_[27]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(28),
      Q => \count_reg_n_0_[28]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(29),
      Q => \count_reg_n_0_[29]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(2),
      Q => \count_reg_n_0_[2]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(30),
      Q => \count_reg_n_0_[30]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(31),
      Q => \count_reg_n_0_[31]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(3),
      Q => \count_reg_n_0_[3]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(4),
      Q => \count_reg_n_0_[4]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(5),
      Q => \count_reg_n_0_[5]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(6),
      Q => \count_reg_n_0_[6]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(7),
      Q => \count_reg_n_0_[7]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(8),
      Q => \count_reg_n_0_[8]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_2_n_0\,
      D => count0(9),
      Q => \count_reg_n_0_[9]\,
      R => \count[31]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2AA2AA"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => state(0),
      I3 => send,
      I4 => state(1),
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF0020"
    )
        port map (
      I0 => send,
      I1 => state(0),
      I2 => en,
      I3 => state(1),
      I4 => rst,
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(0),
      Q => data_reg(0),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(1),
      Q => data_reg(1),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(2),
      Q => data_reg(2),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(3),
      Q => data_reg(3),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(4),
      Q => data_reg(4),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(5),
      Q => data_reg(5),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(6),
      Q => data_reg(6),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => charSend(7),
      Q => data_reg(7),
      R => \data_reg[7]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03FF03AA"
    )
        port map (
      I0 => \^ready\,
      I1 => state(1),
      I2 => state(0),
      I3 => en,
      I4 => rst,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => state1_carry_i_1_n_0,
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_2_n_0,
      S(2) => state1_carry_i_3_n_0,
      S(1) => state1_carry_i_4_n_0,
      S(0) => state1_carry_i_5_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \state1_carry__0_n_0\,
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__0_i_1_n_0\,
      S(2) => \state1_carry__0_i_2_n_0\,
      S(1) => \state1_carry__0_i_3_n_0\,
      S(0) => \state1_carry__0_i_4_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[16]\,
      I1 => \count_reg_n_0_[17]\,
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[15]\,
      O => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[12]\,
      I1 => \count_reg_n_0_[13]\,
      O => \state1_carry__0_i_3_n_0\
    );
\state1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[11]\,
      O => \state1_carry__0_i_4_n_0\
    );
\state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__0_n_0\,
      CO(3) => \state1_carry__1_n_0\,
      CO(2) => \state1_carry__1_n_1\,
      CO(1) => \state1_carry__1_n_2\,
      CO(0) => \state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__1_i_1_n_0\,
      S(2) => \state1_carry__1_i_2_n_0\,
      S(1) => \state1_carry__1_i_3_n_0\,
      S(0) => \state1_carry__1_i_4_n_0\
    );
\state1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[24]\,
      I1 => \count_reg_n_0_[25]\,
      O => \state1_carry__1_i_1_n_0\
    );
\state1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[22]\,
      I1 => \count_reg_n_0_[23]\,
      O => \state1_carry__1_i_2_n_0\
    );
\state1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[20]\,
      I1 => \count_reg_n_0_[21]\,
      O => \state1_carry__1_i_3_n_0\
    );
\state1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[18]\,
      I1 => \count_reg_n_0_[19]\,
      O => \state1_carry__1_i_4_n_0\
    );
\state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__1_n_0\,
      CO(3) => \NLW_state1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \state1_carry__2_n_1\,
      CO(1) => \state1_carry__2_n_2\,
      CO(0) => \state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count_reg_n_0_[31]\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state1_carry__2_i_1_n_0\,
      S(1) => \state1_carry__2_i_2_n_0\,
      S(0) => \state1_carry__2_i_3_n_0\
    );
\state1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[30]\,
      I1 => \count_reg_n_0_[31]\,
      O => \state1_carry__2_i_1_n_0\
    );
\state1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[28]\,
      I1 => \count_reg_n_0_[29]\,
      O => \state1_carry__2_i_2_n_0\
    );
\state1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[27]\,
      O => \state1_carry__2_i_3_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[9]\,
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      O => state1_carry_i_4_n_0
    );
state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[2]\,
      O => state1_carry_i_5_n_0
    );
tx_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFCA"
    )
        port map (
      I0 => \^tx\,
      I1 => tx_i_2_n_0,
      I2 => en,
      I3 => rst,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF77F7F7"
    )
        port map (
      I0 => state(1),
      I1 => \state1_carry__2_n_1\,
      I2 => tx_i_3_n_0,
      I3 => tx_i_4_n_0,
      I4 => \count_reg_n_0_[0]\,
      I5 => state(0),
      O => tx_i_2_n_0
    );
tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_reg(6),
      I1 => data_reg(2),
      I2 => \count_reg_n_0_[1]\,
      I3 => data_reg(4),
      I4 => \count_reg_n_0_[2]\,
      I5 => data_reg(0),
      O => tx_i_3_n_0
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_reg(7),
      I1 => data_reg(3),
      I2 => \count_reg_n_0_[1]\,
      I3 => data_reg(5),
      I4 => \count_reg_n_0_[2]\,
      I5 => data_reg(1),
      O => tx_i_4_n_0
    );
tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_i_1_n_0,
      Q => \^tx\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_uart_0_0_uart is
  port (
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    newChar : out STD_LOGIC;
    tx : out STD_LOGIC;
    ready : out STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Top_level_uart_0_0_uart;

architecture STRUCTURE of Top_level_uart_0_0_uart is
begin
r_x: entity work.Top_level_uart_0_0_uart_rx
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      rst => rst,
      rx => rx
    );
t_x: entity work.Top_level_uart_0_0_uart_tx
     port map (
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      ready => ready,
      rst => rst,
      send => send,
      tx => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top_level_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Top_level_uart_0_0 : entity is "uproc_top_level_uart_0_0,uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Top_level_uart_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Top_level_uart_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Top_level_uart_0_0 : entity is "uart,Vivado 2023.2";
end Top_level_uart_0_0;

architecture STRUCTURE of Top_level_uart_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Top_level_uart_0_0_uart
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      ready => ready,
      rst => rst,
      rx => rx,
      send => send,
      tx => tx
    );
end STRUCTURE;
