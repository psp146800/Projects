library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_ctrl_tb is
end vga_ctrl_tb;

architecture Behavioral of vga_ctrl_tb is
    component vga_ctrl is
        port(
            clk, clk_en : in  std_logic;    
            hcount, vcount : out std_logic_vector(9 downto 0);
            vid, HS, VS : out std_logic
        );
    end component;

    signal hcounter_tb : std_logic_vector(9 downto 0);
    signal vcounter_tb : std_logic_vector(9 downto 0);
    signal clk_en_tb : std_logic := '1';
    signal clk_tb : std_logic := '0';
    signal vid_tb, HS_tb, VS_tb : std_logic; 

begin  
    clk_gen_proc : process -- 125 MHz clock
    begin
        wait for 4 ns;
        clk_tb <= '1';
     
        wait for 4 ns;
        clk_tb <= '0';
    end process clk_gen_proc;
 
    vga_control : vga_ctrl
        port map(
            clk => clk_tb,
            clk_en => clk_en_tb,
            hcount => hcounter_tb,
            vcount => vcounter_tb,
            vid => vid_tb,
            HS => HS_tb,
            VS => VS_tb
        );
end Behavioral;
