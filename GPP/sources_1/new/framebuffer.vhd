library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity framebuffer is
port(
    clk1,en1,en2, ld: in std_logic;
    addr1,addr2: in std_logic_vector(11 downto 0);
    wr_en1: in std_logic;
    din1: in std_logic_vector(15 downto 0);
    dout1,dout2: out std_logic_vector(15 downto 0)
);
end entity;

architecture behavioral of framebuffer is
type mem_type is array(0 to 4095) of std_logic_vector(15 downto 0);
signal fmem: mem_type;
begin
process(clk1)
begin
    if(rising_edge(clk1)) then
        if en1 = '1' then
            dout1 <= fmem(to_integer(unsigned(addr1)));
        else
            dout1 <= (others => '0');
        end if;
        if en1 = '1' AND wr_en1 = '1'then
            fmem(to_integer(unsigned(addr1))) <= din1;
        end if;
        
        if en2 = '1' then 
            dout2 <= fmem(to_integer(unsigned(addr2)));
        else
            dout2 <= (others => '0');
        end if;
    end if;
end process;
end behavioral;