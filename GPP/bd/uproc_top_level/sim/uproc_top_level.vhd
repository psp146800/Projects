--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Thu Apr 18 20:33:30 2024
--Host        : DESKTOP-HGD4UK1 running 64-bit major release  (build 9200)
--Command     : generate_target uproc_top_level.bd
--Design      : uproc_top_level
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level is
  port (
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_vs : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of uproc_top_level : entity is "uproc_top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uproc_top_level,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of uproc_top_level : entity is "uproc_top_level.hwdef";
end uproc_top_level;

architecture STRUCTURE of uproc_top_level is
  component uproc_top_level_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component uproc_top_level_clock_divider_0_0;
  component uproc_top_level_clock_divider25_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component uproc_top_level_clock_divider25_0_0;
  component uproc_top_level_controls_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en1 : out STD_LOGIC;
    wr_en2 : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbRST : out STD_LOGIC;
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbWr_en : out STD_LOGIC;
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    irWord : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    d_wr_en : out STD_LOGIC;
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    send : out STD_LOGIC;
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component uproc_top_level_controls_0_0;
  component uproc_top_level_Debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    dbnc : out STD_LOGIC
  );
  end component uproc_top_level_Debouncer_0_0;
  component uproc_top_level_framebuffer_0_0 is
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
  end component uproc_top_level_framebuffer_0_0;
  component uproc_top_level_my_alu_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component uproc_top_level_my_alu_0_0;
  component uproc_top_level_regs_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    id1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en1 : in STD_LOGIC;
    wr_en2 : in STD_LOGIC;
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component uproc_top_level_regs_0_0;
  component uproc_top_level_vga_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid : out STD_LOGIC;
    HS : out STD_LOGIC;
    VS : out STD_LOGIC
  );
  end component uproc_top_level_vga_ctrl_0_0;
  component uproc_top_level_pixel_pusher_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    VS : in STD_LOGIC;
    vid : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hcount : in STD_LOGIC_VECTOR ( 9 downto 0 );
    R : out STD_LOGIC_VECTOR ( 4 downto 0 );
    B : out STD_LOGIC_VECTOR ( 4 downto 0 );
    G : out STD_LOGIC_VECTOR ( 5 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component uproc_top_level_pixel_pusher_0_0;
  component uproc_top_level_uart_0_0 is
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
  end component uproc_top_level_uart_0_0;
  component uproc_top_level_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component uproc_top_level_blk_mem_gen_1_0;
  component uproc_top_level_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component uproc_top_level_blk_mem_gen_0_2;
  signal Debouncer_0_dbnc : STD_LOGIC;
  signal TXD_1 : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal btn_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_divider25_0_div : STD_LOGIC;
  signal clock_divider_0_div : STD_LOGIC;
  signal controls_0_aluA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal controls_0_charSend : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal controls_0_dAddr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal controls_0_dOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_d_wr_en : STD_LOGIC;
  signal controls_0_fbAddr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal controls_0_fbDout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_fbRST : STD_LOGIC;
  signal controls_0_fbWr_en : STD_LOGIC;
  signal controls_0_irAddr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal controls_0_rID1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_rID2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_regwD1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_regwD2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_send : STD_LOGIC;
  signal controls_0_wr_en1 : STD_LOGIC;
  signal controls_0_wr_en2 : STD_LOGIC;
  signal framebuffer_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal framebuffer_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal my_alu_0_alu_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pixel_pusher_0_B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pixel_pusher_0_G : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal pixel_pusher_0_R : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pixel_pusher_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal regs_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal regs_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_0_charRec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_0_newChar : STD_LOGIC;
  signal uart_0_ready : STD_LOGIC;
  signal uart_0_tx : STD_LOGIC;
  signal vga_ctrl_0_HS : STD_LOGIC;
  signal vga_ctrl_0_VS : STD_LOGIC;
  signal vga_ctrl_0_hcount : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vga_ctrl_0_vid : STD_LOGIC;
  signal NLW_vga_ctrl_0_vcount_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN uproc_top_level_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  RXD <= uart_0_tx;
  TXD_1 <= TXD;
  btn_0_1 <= btn_0;
  clk_1 <= clk;
  vga_b(4 downto 0) <= pixel_pusher_0_B(4 downto 0);
  vga_g(5 downto 0) <= pixel_pusher_0_G(5 downto 0);
  vga_hs <= vga_ctrl_0_HS;
  vga_r(4 downto 0) <= pixel_pusher_0_R(4 downto 0);
  vga_vs <= vga_ctrl_0_VS;
Debouncer_0: component uproc_top_level_Debouncer_0_0
     port map (
      btn => btn_0_1,
      clk => clk_1,
      dbnc => Debouncer_0_dbnc
    );
blk_mem_gen_0: component uproc_top_level_blk_mem_gen_0_2
     port map (
      addra(14 downto 0) => controls_0_dAddr(14 downto 0),
      clka => clk_1,
      dina(15 downto 0) => controls_0_dOut(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      wea(0) => controls_0_d_wr_en
    );
blk_mem_gen_1: component uproc_top_level_blk_mem_gen_1_0
     port map (
      addra(13 downto 0) => controls_0_irAddr(13 downto 0),
      clka => clk_1,
      douta(31 downto 0) => blk_mem_gen_1_douta(31 downto 0)
    );
clock_divider25_0: component uproc_top_level_clock_divider25_0_0
     port map (
      clk => clk_1,
      div => clock_divider25_0_div
    );
clock_divider_0: component uproc_top_level_clock_divider_0_0
     port map (
      clk => clk_1,
      div => clock_divider_0_div
    );
controls_0: component uproc_top_level_controls_0_0
     port map (
      aluA(15 downto 0) => controls_0_aluA(15 downto 0),
      aluB(15 downto 0) => controls_0_aluB(15 downto 0),
      aluOp(3 downto 0) => controls_0_aluOp(3 downto 0),
      aluResult(15 downto 0) => my_alu_0_alu_out(15 downto 0),
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => clk_1,
      dAddr(14 downto 0) => controls_0_dAddr(14 downto 0),
      dIn(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      dOut(15 downto 0) => controls_0_dOut(15 downto 0),
      d_wr_en => controls_0_d_wr_en,
      en => clock_divider25_0_div,
      fbAddr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      fbDin1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      fbDout1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      fbRST => controls_0_fbRST,
      fbWr_en => controls_0_fbWr_en,
      irAddr(13 downto 0) => controls_0_irAddr(13 downto 0),
      irWord(31 downto 0) => blk_mem_gen_1_douta(31 downto 0),
      newChar => uart_0_newChar,
      rID1(4 downto 0) => controls_0_rID1(4 downto 0),
      rID2(4 downto 0) => controls_0_rID2(4 downto 0),
      ready => uart_0_ready,
      regrD1(15 downto 0) => regs_0_dout1(15 downto 0),
      regrD2(15 downto 0) => regs_0_dout2(15 downto 0),
      regwD1(15 downto 0) => controls_0_regwD1(15 downto 0),
      regwD2(15 downto 0) => controls_0_regwD2(15 downto 0),
      rst => Debouncer_0_dbnc,
      send => controls_0_send,
      wr_en1 => controls_0_wr_en1,
      wr_en2 => controls_0_wr_en2
    );
framebuffer_0: component uproc_top_level_framebuffer_0_0
     port map (
      addr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      addr2(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      clk1 => clk_1,
      din1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      dout1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      dout2(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      en1 => clock_divider25_0_div,
      en2 => clock_divider_0_div,
      ld => controls_0_fbRST,
      wr_en1 => controls_0_fbWr_en
    );
my_alu_0: component uproc_top_level_my_alu_0_0
     port map (
      A(15 downto 0) => controls_0_aluA(15 downto 0),
      B(15 downto 0) => controls_0_aluB(15 downto 0),
      alu_out(15 downto 0) => my_alu_0_alu_out(15 downto 0),
      clk => clk_1,
      en => clock_divider25_0_div,
      opcode(3 downto 0) => controls_0_aluOp(3 downto 0)
    );
pixel_pusher_0: component uproc_top_level_pixel_pusher_0_0
     port map (
      B(4 downto 0) => pixel_pusher_0_B(4 downto 0),
      G(5 downto 0) => pixel_pusher_0_G(5 downto 0),
      R(4 downto 0) => pixel_pusher_0_R(4 downto 0),
      VS => vga_ctrl_0_VS,
      addr(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      clk => clk_1,
      clk_en => clock_divider_0_div,
      hcount(9 downto 0) => vga_ctrl_0_hcount(9 downto 0),
      pixel(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      vid => vga_ctrl_0_vid
    );
regs_0: component uproc_top_level_regs_0_0
     port map (
      clk => clk_1,
      din1(15 downto 0) => controls_0_regwD1(15 downto 0),
      din2(15 downto 0) => controls_0_regwD2(15 downto 0),
      dout1(15 downto 0) => regs_0_dout1(15 downto 0),
      dout2(15 downto 0) => regs_0_dout2(15 downto 0),
      en => clock_divider25_0_div,
      id1(4 downto 0) => controls_0_rID1(4 downto 0),
      id2(4 downto 0) => controls_0_rID2(4 downto 0),
      rst => Debouncer_0_dbnc,
      wr_en1 => controls_0_wr_en1,
      wr_en2 => controls_0_wr_en2
    );
uart_0: component uproc_top_level_uart_0_0
     port map (
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => clk_1,
      en => clock_divider25_0_div,
      newChar => uart_0_newChar,
      ready => uart_0_ready,
      rst => Debouncer_0_dbnc,
      rx => TXD_1,
      send => controls_0_send,
      tx => uart_0_tx
    );
vga_ctrl_0: component uproc_top_level_vga_ctrl_0_0
     port map (
      HS => vga_ctrl_0_HS,
      VS => vga_ctrl_0_VS,
      clk => clk_1,
      clk_en => clock_divider_0_div,
      hcount(9 downto 0) => vga_ctrl_0_hcount(9 downto 0),
      vcount(9 downto 0) => NLW_vga_ctrl_0_vcount_UNCONNECTED(9 downto 0),
      vid => vga_ctrl_0_vid
    );
end STRUCTURE;
