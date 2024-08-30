-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr 18 15:41:54 2024
-- Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_vga_ctrl_0_0/uproc_top_level_vga_ctrl_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_vga_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_vga_ctrl_0_0_vga_ctrl is
  port (
    hcount : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uproc_top_level_vga_ctrl_0_0_vga_ctrl : entity is "vga_ctrl";
end uproc_top_level_vga_ctrl_0_0_vga_ctrl;

architecture STRUCTURE of uproc_top_level_vga_ctrl_0_0_vga_ctrl is
  signal hcounter : STD_LOGIC;
  signal \hcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[6]_i_2_n_0\ : STD_LOGIC;
  signal hcounter_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vcounter : STD_LOGIC;
  signal \vcounter[6]_i_3_n_0\ : STD_LOGIC;
  signal vcounter_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hcounter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hcounter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcounter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vcounter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcounter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcounter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vcounter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vcounter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vcounter[6]_i_3\ : label is "soft_lutpair1";
begin
\hcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(0),
      Q => hcount(0),
      R => '0'
    );
\hcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(1),
      Q => hcount(1),
      R => '0'
    );
\hcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(2),
      Q => hcount(2),
      R => '0'
    );
\hcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(3),
      Q => hcount(3),
      R => '0'
    );
\hcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(4),
      Q => hcount(4),
      R => '0'
    );
\hcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(5),
      Q => hcount(5),
      R => '0'
    );
\hcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => hcounter_reg(6),
      Q => hcount(6),
      R => '0'
    );
\hcounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => hcounter_reg(0),
      O => \hcounter[0]_i_1_n_0\
    );
\hcounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => hcounter_reg(0),
      I2 => hcounter_reg(1),
      O => \hcounter[1]_i_1_n_0\
    );
\hcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => hcounter_reg(0),
      I2 => hcounter_reg(1),
      I3 => hcounter_reg(2),
      O => \hcounter[2]_i_1_n_0\
    );
\hcounter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => hcounter_reg(1),
      I2 => hcounter_reg(0),
      I3 => hcounter_reg(2),
      I4 => hcounter_reg(3),
      O => \hcounter[3]_i_1_n_0\
    );
\hcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => hcounter_reg(2),
      I2 => hcounter_reg(0),
      I3 => hcounter_reg(1),
      I4 => hcounter_reg(3),
      I5 => hcounter_reg(4),
      O => \hcounter[4]_i_1_n_0\
    );
\hcounter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_en,
      I1 => hcounter_reg(6),
      O => hcounter
    );
\hcounter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => hcounter_reg(3),
      I1 => hcounter_reg(1),
      I2 => hcounter_reg(0),
      I3 => hcounter_reg(2),
      I4 => hcounter_reg(4),
      I5 => hcounter_reg(5),
      O => plusOp(5)
    );
\hcounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => hcounter_reg(6),
      I1 => \hcounter[6]_i_2_n_0\,
      I2 => hcounter_reg(5),
      O => \hcounter[6]_i_1_n_0\
    );
\hcounter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => hcounter_reg(4),
      I1 => hcounter_reg(2),
      I2 => hcounter_reg(0),
      I3 => hcounter_reg(1),
      I4 => hcounter_reg(3),
      O => \hcounter[6]_i_2_n_0\
    );
\hcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[0]_i_1_n_0\,
      Q => hcounter_reg(0),
      R => '0'
    );
\hcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[1]_i_1_n_0\,
      Q => hcounter_reg(1),
      R => '0'
    );
\hcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[2]_i_1_n_0\,
      Q => hcounter_reg(2),
      R => '0'
    );
\hcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[3]_i_1_n_0\,
      Q => hcounter_reg(3),
      R => '0'
    );
\hcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[4]_i_1_n_0\,
      Q => hcounter_reg(4),
      R => '0'
    );
\hcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => plusOp(5),
      Q => hcounter_reg(5),
      R => hcounter
    );
\hcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_en,
      D => \hcounter[6]_i_1_n_0\,
      Q => hcounter_reg(6),
      R => '0'
    );
\vcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(0),
      Q => vcount(0),
      R => '0'
    );
\vcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(1),
      Q => vcount(1),
      R => '0'
    );
\vcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(2),
      Q => vcount(2),
      R => '0'
    );
\vcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(3),
      Q => vcount(3),
      R => '0'
    );
\vcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(4),
      Q => vcount(4),
      R => '0'
    );
\vcount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(5),
      Q => vcount(5),
      R => '0'
    );
\vcount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clk_en,
      D => vcounter_reg(6),
      Q => vcount(6),
      R => '0'
    );
\vcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vcounter_reg(0),
      O => \plusOp__0\(0)
    );
\vcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vcounter_reg(0),
      I1 => vcounter_reg(1),
      O => \plusOp__0\(1)
    );
\vcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => vcounter_reg(0),
      I1 => vcounter_reg(1),
      I2 => vcounter_reg(2),
      O => \plusOp__0\(2)
    );
\vcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => vcounter_reg(1),
      I1 => vcounter_reg(0),
      I2 => vcounter_reg(2),
      I3 => vcounter_reg(3),
      O => \plusOp__0\(3)
    );
\vcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => vcounter_reg(2),
      I1 => vcounter_reg(0),
      I2 => vcounter_reg(1),
      I3 => vcounter_reg(3),
      I4 => vcounter_reg(4),
      O => \plusOp__0\(4)
    );
\vcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => vcounter_reg(3),
      I1 => vcounter_reg(1),
      I2 => vcounter_reg(0),
      I3 => vcounter_reg(2),
      I4 => vcounter_reg(4),
      I5 => vcounter_reg(5),
      O => \plusOp__0\(5)
    );
\vcounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clk_en,
      I1 => vcounter_reg(6),
      I2 => hcounter_reg(6),
      O => vcounter
    );
\vcounter[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \vcounter[6]_i_3_n_0\,
      I1 => vcounter_reg(5),
      I2 => vcounter_reg(6),
      O => \plusOp__0\(6)
    );
\vcounter[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => vcounter_reg(4),
      I1 => vcounter_reg(2),
      I2 => vcounter_reg(0),
      I3 => vcounter_reg(1),
      I4 => vcounter_reg(3),
      O => \vcounter[6]_i_3_n_0\
    );
\vcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(0),
      Q => vcounter_reg(0),
      R => vcounter
    );
\vcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(1),
      Q => vcounter_reg(1),
      R => vcounter
    );
\vcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(2),
      Q => vcounter_reg(2),
      R => vcounter
    );
\vcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(3),
      Q => vcounter_reg(3),
      R => vcounter
    );
\vcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(4),
      Q => vcounter_reg(4),
      R => vcounter
    );
\vcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(5),
      Q => vcounter_reg(5),
      R => vcounter
    );
\vcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => hcounter,
      D => \plusOp__0\(6),
      Q => vcounter_reg(6),
      R => vcounter
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_vga_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid : out STD_LOGIC;
    HS : out STD_LOGIC;
    VS : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uproc_top_level_vga_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uproc_top_level_vga_ctrl_0_0 : entity is "uproc_top_level_vga_ctrl_0_0,vga_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uproc_top_level_vga_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of uproc_top_level_vga_ctrl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of uproc_top_level_vga_ctrl_0_0 : entity is "vga_ctrl,Vivado 2023.2";
end uproc_top_level_vga_ctrl_0_0;

architecture STRUCTURE of uproc_top_level_vga_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^hcount\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^vcount\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0";
begin
  HS <= \<const1>\;
  VS <= \<const1>\;
  hcount(9) <= \<const0>\;
  hcount(8) <= \<const0>\;
  hcount(7) <= \<const0>\;
  hcount(6 downto 0) <= \^hcount\(6 downto 0);
  vcount(9) <= \<const0>\;
  vcount(8) <= \<const0>\;
  vcount(7) <= \<const0>\;
  vcount(6 downto 0) <= \^vcount\(6 downto 0);
  vid <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.uproc_top_level_vga_ctrl_0_0_vga_ctrl
     port map (
      clk => clk,
      clk_en => clk_en,
      hcount(6 downto 0) => \^hcount\(6 downto 0),
      vcount(6 downto 0) => \^vcount\(6 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
