library ieee;
use ieee.std_logic_1164.all;

entity uart is
    port (

    clk, en, send, rx     : in std_logic;
    charSend                    : in std_logic_vector (7 downto 0);
    ready, tx, newChar          : out std_logic;
    charRec                     : out std_logic_vector (7 downto 0)

);
end uart;

architecture structural of uart is
    component uart_tx port
    (
        clk, en, send : in std_logic;
        char                : in std_logic_vector (7 downto 0);
        ready, tx           : out std_logic
    );
    end component;

    component uart_rx port
    (
        clk, en, rx    : in std_logic;
        newChar             : out std_logic;
        char                : out std_logic_vector (7 downto 0)
    );
    end component;

begin

    r_x: uart_rx port map(
        clk => clk,
        en => en,
        rx => rx,
        newChar => newChar,
        char => charRec);

    t_x: uart_tx port map(
        clk => clk,
        en => en,
        send => send,
        char => charSend,
        ready => ready,
        tx => tx);

end structural;
