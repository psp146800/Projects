library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity clock_divider is
    port(
        clk  : in std_logic;        
        div : out std_logic
    );
end clock_divider;

architecture behavioral of clock_divider is

signal counter : std_logic_vector(26 downto 0) := (others => '0');
begin    
    process(clk)
    begin
    
        if rising_edge(clk) then               
                if (unsigned(counter) < 1085) then
                    counter <= std_logic_vector(unsigned(counter) + 1);
                    div <= '0';
                else
                    div <= '1';
                    counter <= (others => '0'); 
                end if;
         end if;
             
    end process;
end behavioral;
