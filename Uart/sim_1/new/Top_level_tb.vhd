library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_level_tb is
end Top_level_tb;

architecture tb of Top_level_tb is
    component Top_level
    port(
          TXD, clk: in std_logic;
          CTS, RTS: out std_logic;  
          btn: in std_logic_vector(1 downto 0);
          RXD: out std_logic
      );
    end component;
 signal clk: std_logic := '0';
 signal TXD,RXD: std_logic;
 signal btn:  std_logic_vector(1 downto 0) := (others => '0');
begin
    dut:Top_level
    port map(
        clk => clk,
        TXD => TXD,
        RXD => RXD,
        btn => btn
    );
       
     process begin
           clk <= '0';
           wait for 4 ns;
           clk <= '1';
           wait for 4 ns;
     end process;
   
     test: process
     begin
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '1';
        wait for 25 ms;
        btn(1) <= '0';
        wait for 25 ms;
        btn(1) <= '0';
        wait;
      end process;
      

end tb;
