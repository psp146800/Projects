library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hdmi_top_tb is
end hdmi_top_tb;

architecture testbench of hdmi_top_tb is

    -- Component declaration for the DUT (Device Under Test)
    component hdmi_top
        Port (
            clk : in STD_LOGIC;
            hdmi_tx_clk_n : out STD_LOGIC;
            hdmi_tx_clk_p : out STD_LOGIC;
            hdmi_tx_n : out STD_LOGIC_VECTOR(2 downto 0);
            hdmi_tx_p : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Test bench signals
    signal clk : STD_LOGIC;
    signal hdmi_tx_clk_n, hdmi_tx_clk_p : STD_LOGIC;
    signal hdmi_tx_n, hdmi_tx_p : STD_LOGIC_VECTOR(2 downto 0);

begin

    -- Instantiate the DUT
    DUT: hdmi_top
        port map (
            clk => clk,
            hdmi_tx_clk_n => hdmi_tx_clk_n,
            hdmi_tx_clk_p => hdmi_tx_clk_p,
            hdmi_tx_n => hdmi_tx_n,
            hdmi_tx_p => hdmi_tx_p
        );

    clk_gen_proc : process -- 125 MHz clock
        begin
            clk <= '0';
            wait for 4 ns;
            clk <= '1';
            wait for 4 ns;
        end process clk_gen_proc;

end testbench;
