library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity regs is 
port(
    clk,en,rst: in std_logic;
    id1, id2: in std_logic_vector(4 downto 0);
    wr_en1,wr_en2: in std_logic;
    din1, din2: in std_logic_vector(15 downto 0);
    dout1, dout2: out std_logic_vector(15 downto 0)
 );
 end entity;
 
 architecture behavioral of regs is
 type regs is array (0 to 31) of std_logic_vector(15 downto 0);
 signal registers: regs;

 begin
 dout1 <= registers(to_integer(unsigned(id1)));
 dout2 <= registers(to_integer(unsigned(id2)));
 process(clk)
    begin
    if(rising_edge(clk)) then
        registers(0) <= (others => '0');
        if rst = '1' then
            registers <= (others => (others => '0'));
        end if;
        if en = '1' then
            if wr_en1 = '1' then
                registers(to_integer(unsigned(id1))) <= din1;
            end if;
            if wr_en2 = '1' then
                registers(to_integer(unsigned(id2))) <= din2;
            end if;
        end if;      
    end if;
 end process;
 end behavioral;