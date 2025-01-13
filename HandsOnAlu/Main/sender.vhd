library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sender is
    Port (
        clk, en, btn, ready : in std_logic;
        send : out std_logic;
        number : in std_logic_vector(7 downto 0);
        ascii_out : out std_logic_vector(7 downto 0)
    );
end sender;

architecture Behavioral of sender is 
    signal num_int : integer := 0;
    signal one_int : std_logic_vector(7 downto 0) := (others => '0');
    signal ten_int : std_logic_vector(7 downto 0) := (others => '0');
    signal hund_int : std_logic_vector(7 downto 0) := (others => '0');
    signal one_int_t : std_logic_vector(7 downto 0) := (others => '0');
    signal ten_int_t : std_logic_vector(7 downto 0) := (others => '0');
    signal hund_int_t : std_logic_vector(7 downto 0) := (others => '0');
    signal fortyeight : std_logic_vector(7 downto 0) := "00110000"; 
    signal i : integer := 0;
    type str is array (0 to 2) of std_logic_vector(7 downto 0);
    signal output : str := (others => (others => '0')) ;
    type state_type is (Idle, Idle1, Idle2, busyA, busyB, busyC, busy, Stop);
    signal state : state_type := Idle;
begin
    -- Turn number to integer
    num_int <= to_integer(unsigned(number));
    -- Calculate each place 
    one_int  <= std_logic_vector(to_unsigned(num_int mod 10, ascii_out'length));
    ten_int  <= std_logic_vector(to_unsigned((num_int / 10) mod 10, ascii_out'length));
    hund_int <= std_logic_vector(to_unsigned((num_int / 100) mod 10, ascii_out'length));

    one_int_t   <= std_logic_vector(unsigned(one_int) + unsigned(fortyeight));
    ten_int_t   <= std_logic_vector(unsigned(ten_int) + unsigned(fortyeight));
    hund_int_t  <= std_logic_vector(unsigned(hund_int) + unsigned(fortyeight));
  
    output <= (hund_int_t, ten_int_t, one_int_t);

    process (clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                case state is
                    when Idle =>
                        if ready = '1' and btn = '1' and i < 3 then
                            send <= '1';
                            ascii_out <= output(i);
                            i <= i + 1;
                            state <= busyA;
                        elsif ready = '1' and btn = '1' and i = 3 then
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
