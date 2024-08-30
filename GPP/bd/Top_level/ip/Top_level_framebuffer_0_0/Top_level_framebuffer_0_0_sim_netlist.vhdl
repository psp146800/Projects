-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Apr 19 15:15:43 2024
-- Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx/Lab-5/Lab-5.gen/sources_1/bd/Top_level/ip/Top_level_framebuffer_0_0/Top_level_framebuffer_0_0_sim_netlist.vhdl
-- Design      : Top_level_framebuffer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_framebuffer_0_0_framebuffer is
  port (
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk1 : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en1 : in STD_LOGIC;
    wr_en1 : in STD_LOGIC;
    en2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Top_level_framebuffer_0_0_framebuffer : entity is "framebuffer";
end Top_level_framebuffer_0_0_framebuffer;

architecture STRUCTURE of Top_level_framebuffer_0_0_framebuffer is
  signal fmem_reg_1_i_1_n_0 : STD_LOGIC;
  signal fmem_reg_1_i_2_n_0 : STD_LOGIC;
  signal fmem_reg_1_i_3_n_0 : STD_LOGIC;
  signal NLW_fmem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fmem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fmem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fmem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fmem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fmem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fmem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fmem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_fmem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_fmem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fmem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fmem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fmem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fmem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fmem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fmem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fmem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fmem_reg_0 : label is "U0/fmem_reg_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fmem_reg_0 : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fmem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fmem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of fmem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fmem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fmem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fmem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fmem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of fmem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fmem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of fmem_reg_1 : label is "U0/fmem_reg_1";
  attribute RTL_RAM_TYPE of fmem_reg_1 : label is "RAM_TDP";
  attribute ram_addr_begin of fmem_reg_1 : label is 0;
  attribute ram_addr_end of fmem_reg_1 : label is 4095;
  attribute ram_offset of fmem_reg_1 : label is 0;
  attribute ram_slice_begin of fmem_reg_1 : label is 9;
  attribute ram_slice_end of fmem_reg_1 : label is 15;
begin
fmem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr1(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr2(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fmem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fmem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk1,
      CLKBWRCLK => clk1,
      DBITERR => NLW_fmem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => din1(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => din1(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 8) => NLW_fmem_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => dout1(7 downto 0),
      DOBDO(31 downto 8) => NLW_fmem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => dout2(7 downto 0),
      DOPADOP(3 downto 1) => NLW_fmem_reg_0_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => dout1(8),
      DOPBDOP(3 downto 1) => NLW_fmem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => dout2(8),
      ECCPARITY(7 downto 0) => NLW_fmem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_fmem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fmem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fmem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => fmem_reg_1_i_1_n_0,
      RSTRAMB => fmem_reg_1_i_2_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fmem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => fmem_reg_1_i_3_n_0,
      WEA(2) => fmem_reg_1_i_3_n_0,
      WEA(1) => fmem_reg_1_i_3_n_0,
      WEA(0) => fmem_reg_1_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
fmem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr1(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr2(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fmem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fmem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk1,
      CLKBWRCLK => clk1,
      DBITERR => NLW_fmem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6 downto 0) => din1(15 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 7) => NLW_fmem_reg_1_DOADO_UNCONNECTED(31 downto 7),
      DOADO(6 downto 0) => dout1(15 downto 9),
      DOBDO(31 downto 7) => NLW_fmem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6 downto 0) => dout2(15 downto 9),
      DOPADOP(3 downto 0) => NLW_fmem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_fmem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_fmem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_fmem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fmem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fmem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => fmem_reg_1_i_1_n_0,
      RSTRAMB => fmem_reg_1_i_2_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fmem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => fmem_reg_1_i_3_n_0,
      WEA(2) => fmem_reg_1_i_3_n_0,
      WEA(1) => fmem_reg_1_i_3_n_0,
      WEA(0) => fmem_reg_1_i_3_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
fmem_reg_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en1,
      O => fmem_reg_1_i_1_n_0
    );
fmem_reg_1_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en2,
      O => fmem_reg_1_i_2_n_0
    );
fmem_reg_1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en1,
      I1 => wr_en1,
      O => fmem_reg_1_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_level_framebuffer_0_0 is
  port (
    clk1 : in STD_LOGIC;
    en1 : in STD_LOGIC;
    en2 : in STD_LOGIC;
    ld : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en1 : in STD_LOGIC;
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top_level_framebuffer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Top_level_framebuffer_0_0 : entity is "Top_level_framebuffer_0_0,framebuffer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Top_level_framebuffer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Top_level_framebuffer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Top_level_framebuffer_0_0 : entity is "framebuffer,Vivado 2023.2";
end Top_level_framebuffer_0_0;

architecture STRUCTURE of Top_level_framebuffer_0_0 is
begin
U0: entity work.Top_level_framebuffer_0_0_framebuffer
     port map (
      addr1(11 downto 0) => addr1(11 downto 0),
      addr2(11 downto 0) => addr2(11 downto 0),
      clk1 => clk1,
      din1(15 downto 0) => din1(15 downto 0),
      dout1(15 downto 0) => dout1(15 downto 0),
      dout2(15 downto 0) => dout2(15 downto 0),
      en1 => en1,
      en2 => en2,
      wr_en1 => wr_en1
    );
end STRUCTURE;
