library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_ctrl is
    Port ( 
        clk, clk_en     : in  std_logic;    
        hcount, vcount  : out std_logic_vector(9 downto 0);
        vid, HS, VS     : out std_logic
    );
end vga_ctrl;

architecture Behavioral of vga_ctrl is
    signal hcounter : std_logic_vector(9 downto 0) := (others => '0');
    signal vcounter : std_logic_vector(9 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if clk_en = '1' then
                hcount <= hcounter;
                vcount <= vcounter;

                if unsigned(hcounter) < 799 then
                    hcounter <= std_logic_vector(unsigned(hcounter) + 1);
                else
                    hcounter <= (others => '0');
                    if unsigned(vcounter) < 524 then
                        vcounter <= std_logic_vector(unsigned(vcounter) + 1);
                    else
                        vcounter <= (others => '0');
                    end if; 
                end if;

                if unsigned(hcounter) < 640 and unsigned(vcounter) < 480 then
                    vid <= '1';
                else
                    vid <= '0';
                end if;
                
                if unsigned(hcounter) >= 656 and unsigned(hcounter) <= 751 then
                    HS <= '0';
                else
                    HS <= '1';
                end if; 
                
                if unsigned(vcounter) >= 490 and unsigned(vcounter) <= 491 then
                    VS <= '0';
                else
                    VS <= '1';
                end if;
            end if; 
        end if;
    end process;
end Behavioral;
