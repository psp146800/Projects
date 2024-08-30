library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity uproc_top_level_tb is
end uproc_top_level_tb;

architecture Behavioral of uproc_top_level_tb is
  component Top_level_wrapper
    port (
      CTS    : out STD_LOGIC;
      RTS    : out STD_LOGIC;
      RXD    : out STD_LOGIC;
      TXD    : in STD_LOGIC;
      btn_0  : in STD_LOGIC;
      clk    : in STD_LOGIC;
      vga_b  : out STD_LOGIC_VECTOR (4 downto 0);
      vga_g  : out STD_LOGIC_VECTOR (5 downto 0);
      vga_hs : out STD_LOGIC;
      vga_r  : out STD_LOGIC_VECTOR (4 downto 0);
      vga_vs : out STD_LOGIC
    );
  end component;
  
  signal clk, btn : std_logic;
  signal CTS, RTS, RXD, TXD : std_logic;
  signal vgaB, vgaR : std_logic_vector(4 downto 0);
  signal vgaG : std_logic_vector(5 downto 0); 
  signal vgaHS, vgaVS : std_logic;
begin
  top : Top_level_wrapper
    port map (
      CTS    => CTS,
      RTS    => RTS,
      RXD    => RXD,
      TXD    => TXD,
      btn_0  => btn,
      clk    => clk,
      vga_b  => vgaB,
      vga_g  => vgaG,
      vga_hs => vgaHS,
      vga_r  => vgaR,
      vga_vs => vgaVS
    );
  
  clock : process 
  begin
    clk <= '0';
    wait for 4 ns;
    clk <= '1';
    wait for 4 ns;
  end process; 

end Behavioral;
