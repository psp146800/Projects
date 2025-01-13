library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity int_to_ascii_tb is
end int_to_ascii_tb;

architecture Behavioral of int_to_ascii_tb is


    signal clk, en, btn, ready : std_logic;
    signal number_in        : std_logic_vector(7 downto 0);
    signal ascii_out        : std_logic_vector(7 downto 0);
    component sender is
     Port (
           clk, en, btn, ready : in std_logic;
           send : out std_logic;
           number : in std_logic_vector(7 downto 0);
           ascii_out : out std_logic_vector(7 downto 0)
       );
     end component;
    
begin

    -- Instantiate the unit under test
    UUT : sender
        port map (
            clk         => clk,
            en          => en,
            btn         => btn,
            ready       => ready,
            number      => number_in,
            ascii_out   => ascii_out
        );

    -- Clock process
    clk_process: process
    begin
           clk <= '0';
            wait for 4 ns;
            clk <= '1';
            wait for 4 ns;
    end process clk_process;

    -- Stimulus process
    stim_process: process
    begin
        ready <= '1';
        en <= '1';
        btn <= '0';
        number_in <= "00001011"; 
        
        wait for 20 ns;  
        
        btn <= '1';  
        
        wait for 25 ns; 
    end process stim_process;

end Behavioral;
