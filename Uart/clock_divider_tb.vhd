library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity clock_divider_tb is
end clock_divider_tb;

architecture testbench of clock_divider_tb is

    signal tb_clk : std_logic := '0';
    signal tb_div: std_logic;
    signal tb_led0: std_logic;
    
    component clock_divider_tb is
        port(    
            clk  : in std_logic;        -- 125 Mhz clock    
            div  : out std_logic;
            led0 : out std_logic
        );
    end component;

begin


    -- simulate a 125 Mhz clock
    clk_gen_proc: process
    begin
    
        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;
        tb_clk <= '0';
    
    end process clk_gen_proc;
    

    dut : clock_divider_tb
    port map (   
        clk  => tb_clk,
        div  => tb_div,
        led0 => tb_led0
    );
end testbench; 
