-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 22:19:54 2024
-- Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Top_level_clock_divider_0_0 -prefix
--               Top_level_clock_divider_0_0_ uproc_top_level_clock_divider_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_clock_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_clock_divider_0_0_clock_divider is
  port (
    div : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end Top_level_clock_divider_0_0_clock_divider;

architecture STRUCTURE of Top_level_clock_divider_0_0_clock_divider is
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      I1 => counter(2),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => '0'
    );
div_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(2),
      Q => div,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top_level_clock_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Top_level_clock_divider_0_0 : entity is "uproc_top_level_clock_divider_0_0,clock_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Top_level_clock_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Top_level_clock_divider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Top_level_clock_divider_0_0 : entity is "clock_divider,Vivado 2023.2";
end Top_level_clock_divider_0_0;

architecture STRUCTURE of Top_level_clock_divider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk_0, INSERT_VIP 0";
begin
U0: entity work.Top_level_clock_divider_0_0_clock_divider
     port map (
      clk => clk,
      div => div
    );
end STRUCTURE;