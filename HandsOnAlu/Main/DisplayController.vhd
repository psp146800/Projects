library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DisplayController is
    Port ( 
	      --output from the Decoder
	      DispVal : in  STD_LOGIC_VECTOR (3 downto 0);
	      --controls the display digit		
              segOut : out  STD_LOGIC_VECTOR (6 downto 0)); 
end DisplayController;

architecture Behavioral of DisplayController is
begin
	 with DispVal select
       segOut <=  "1111110" when "0000", --0
                  "0110000" when "0001", --1
                  "1101101" when "0010", --2
                  "1111001" when "0011", --3
                  "0110011" when "0100", --4
                  "1011011" when "0101", --5
                  "1011111" when "0110", --6
                  "1110000" when "0111", --7
                  "1111111" when "1000", --8
                  "1110011" when "1001", --9
                  "1110111" when "1010", --A
                  "0011111" when "1011", --B
                  "1001110" when "1100", --C
                  "0111101" when "1101", --D
                  "1001111" when "1110", --E
                  "1000111" when "1111", --F
                  "0111111" when others;
end Behavioral;
