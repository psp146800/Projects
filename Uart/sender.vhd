library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sender is
    Port (
        rst, clk, en, btn, ready : in std_logic;
        send : out std_logic;
        char : out std_logic_vector(7 downto 0)
 );
end sender;

architecture Behavioral of sender is
    type str is array (0 to 5) of std_logic_vector(7 downto 0);
    signal NETID : str := ("01110000", "01110011", "01110000", "00110001", "00110010", "00110011");
    signal i : integer := 0; 
    type state_type is (Idle, busyA, busyB, busyC);
    signal state : state_type := Idle;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if rst = '1' then
                    i <= 0;
                    send <= '0';
                    char <= (others => '0');
                    state <= Idle;
                end if;
                case state is
                    when Idle =>
                        if ready = '1' and btn = '1' and i < 6 then
                            send <= '1';
                            char <= NETID(i);
                            i <= i + 1;
                            state <= busyA;
                        elsif ready = '1' and btn = '1' and i = 6 then
                            i <= 0;
                            state <= Idle;
                        end if;
                    when busyA =>
                        state <= busyB;
                    when busyB =>
                        send <= '0';
                        state <= busyC;
                    when busyC =>
                        if ready = '1' and btn = '0' then
                            state <= Idle;
                        end if;
                    when others =>
                        state <= Idle;
                end case;
            end if;
        end if;
    end process;
end Behavioral;
