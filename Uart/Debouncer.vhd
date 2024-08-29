library ieee;
    use ieee.std_logic_1164.all; 
    use ieee.numeric_std.all;
    
entity Debouncer is
    port(
            clk: in std_logic;
            btn: in std_logic;
            dbnc: out std_logic
        );
end Debouncer;     

Architecture behavorial of Debouncer is 
    signal counter: std_logic_vector(21 downto 0) := (others => '0');
begin
    process(clk)
    begin 
        if(rising_edge(clk)) then
            if(btn = '1' and unsigned(counter) < 2499999) then
                counter <= std_logic_vector(unsigned(counter) + 1);
                dbnc <= '0';
            elsif (btn = '0') then
                counter <= (others => '0');
                dbnc <= '0';
            else
                dbnc <= '1';
            end if;
        end if;
    end process;
end behavorial;

         
                      
            
    
