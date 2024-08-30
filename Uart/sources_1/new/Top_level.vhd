library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_level is 
    port (
        TXD, clk: in std_logic;
        CTS, RTS: out std_logic;  
        btn: in std_logic_vector(1 downto 0);
        RXD: out std_logic
    );
end entity;

architecture behavioral of Top_level is 
    component clock_divider 
        port (
            clk: in std_logic;
            div: out std_logic
        );
    end component;

    component debouncer
        port (
            clk: in std_logic;
            btn: in std_logic;
            dbnc: out std_logic
        );
    end component;

    component uart
        port (
            clk, en, send, rx, rst: in std_logic;
            charSend: in std_logic_vector (7 downto 0);
            ready, tx, newChar: out std_logic;
            charRec: out std_logic_vector (7 downto 0)
        );
    end component;

    component sender
        Port (
            rst, clk, en, btn, ready: in std_logic;
            send: out std_logic;
            char: out std_logic_vector(7 downto 0)
        );
    end component;

    signal db1, db2: std_logic;
    signal clk_divider: std_logic;
    signal ready_t: std_logic;
    signal send_t: std_logic;
    signal char_t: std_logic_vector(7 downto 0);

begin
    U1: Debouncer
    port map (
        btn => btn(0),
        clk => clk,
        dbnc => db1
    );
    
    U2: Debouncer
    port map (
        btn => btn(1),
        clk => clk,
        dbnc => db2
    ); 
    
    U3: clock_divider
    port map (
        clk => clk,
        div => clk_divider
    ); 
    
    U4: sender
    port map (
        rst => db1,
        clk => clk,
        en => clk_divider,
        ready => ready_t,
        btn => db2,
        char => char_t,
        send => send_t
    );
    
    U5: uart
    port map (
        clk => clk,
        en => clk_divider,
        charSend => char_t,
        send => send_t,
        rx => TXD,
        rst => db1,
        tx => RXD,
        ready => ready_t
    );
    
    CTS <= '0';
    RTS <= '0';
        
end architecture;
