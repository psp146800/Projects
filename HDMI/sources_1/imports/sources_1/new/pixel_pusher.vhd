library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pixel_pusher is
Port ( 
    clk,clk_en,VS,vid: in std_logic;
    pixel: in std_logic_vector(7 downto 0);
    hcount: in std_logic_vector(9 downto 0);
    R, B: out std_logic_vector(7 downto 0);
    G: out std_logic_vector(7 downto 0);
    addr: out std_logic_vector(17 downto 0)   
);
end pixel_pusher;

architecture Behavioral of pixel_pusher is
    signal count: std_logic_vector(17 downto 0) := (others => '0');

begin
    process(clk)
    begin
         addr <= count;
        if(rising_edge(clk)) then
           
            if VS = '0' then
               count <= (others => '0');
            end if;
            if(clk_en = '1') then
            if (vid = '1'AND unsigned(hcount) > 149  AND unsigned(hcount)< 491 )then
                count <= std_logic_vector(unsigned(count) + 1);

                R <= pixel (7 downto 5) & pixel (7 downto 5) & pixel (7 downto 6);
                G <= pixel (4 downto 2) & pixel (4 downto 2) & pixel (4 downto 3);
                B <= pixel (1 downto 0) & pixel (1 downto 0) & pixel (1 downto 0) & pixel (1 downto 0);
            else
                R <= (others => '0');
                G <= (others => '0');
                B <= (others => '0');

            end if;  
            end if;                    
        end if;
    end process;
end Behavioral;
