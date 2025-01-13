library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_tester_tb is
end alu_tester_tb;

architecture testbench of alu_tester_tb is
  component alu_tester
    port (
      clk: in std_logic;
      btn: in std_logic_vector(2 downto 0);
      val: in std_logic_vector(3 downto 0);
      output: out std_logic_vector( 7 downto 0)
    );
  end component;

  signal clk: std_logic;
  signal btn : std_logic_vector(2 downto 0) := (others => '0');
  signal val: std_logic_vector(3 downto 0):= (others => '0');
  signal output: std_logic_vector( 7 downto 0) := (others => '0');

begin

  DUT: alu_tester
    port map (
      clk => clk,
      btn => btn,
      val => val,
      output => output
    );

  clk_gen: process
  begin
    clk <= '0';
    wait for 4 ns;
    clk <= '1';
    wait for 4 ns;
  end process;

  alu_test: process
  begin
      wait for 25 ms;
      val <= "0010";
      btn(2) <= '1';
      wait for 25 ms;
      btn(2) <= '0';
      wait for 25 ms;
      val <= "0100";
      btn(1) <= '1';
      wait for 25 ms;
      btn(1) <= '0';
      wait for 25 ms;
      val <= "0110";
      btn(0) <= '1';
      wait for 25 ms;
      btn(0) <= '0';
      wait for 25 ms;
      val <= "1000";
      btn(2) <= '1';
      wait for 25 ms;
      btn(2) <= '0';
      wait for 25 ms;
      val <= "0001";
      btn(2) <= '1';
      wait for 25 ms;
      btn(2) <= '0';
      wait for 25 ms;
   
  end process;
end testbench; 
