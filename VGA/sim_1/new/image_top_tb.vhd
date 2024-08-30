library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_top_tb is
end image_top_tb;

architecture Behavioral of image_top_tb is
    component image_top is
        Port ( 
            clk : in  std_logic;
            vga_hs, vga_vs : out std_logic;
            vga_r, vga_b : out std_logic_vector(4 downto 0);
            vga_g : out std_logic_vector(5 downto 0)
        );
    end component;

    signal clk : std_logic;
    signal vga_hs, vga_vs : std_logic;
    signal vga_r, vga_b : std_logic_vector(4 downto 0);
    signal vga_g : std_logic_vector(5 downto 0);
begin
    clk_gen_proc : process -- 125 MHz clock
    begin
        clk <= '0';
        wait for 4 ns;
        clk <= '1';
        wait for 4 ns;
    end process clk_gen_proc;

    DUT: image_top
        port map(
            clk    => clk,
            vga_r  => vga_r,
            vga_b  => vga_b,
            vga_g  => vga_g,
            vga_hs => vga_hs,
            vga_vs => vga_vs
        );

end Behavioral;
