library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
    port (
        clk, en, send, rst : in std_logic;
        char : in std_logic_vector(7 downto 0);
        ready, tx : out std_logic
    );
end entity uart_tx;

architecture behavioral of uart_tx is
    type state_type is (Idle, Start, Data);
    signal state : state_type := IDLE;
    signal data_reg : std_logic_vector(7 downto 0) := (others => '0');
    signal count : integer := 0;
begin
    process (clk, rst)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= Idle;
                count <= 0;
                data_reg <= (others => '0');
                ready <= '1';
                tx <= '1';
            end if;
            if en = '1' then 
                case state is
                    when Idle =>
                        ready <= '1';
                        tx <= '1';
                        if send = '1' then
                            data_reg <= char;
                            state <= Start;
                        end if;
                        
                    when Start =>
                        ready <= '0';
                        tx <= '0';
                        state <= Data;
                        
                    when Data =>
                        ready <= '0';
                        if count < 8 then
                            tx <= data_reg(count);
                            count <= count + 1;
                        else
                            count <= 0;
                            tx <= '1';
                            state <= Idle;
                        end if; 
                end case;
            end if;
        end if;
    end process;
end behavioral;
