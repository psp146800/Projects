library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity my_alu is
    port(
        clk,en      : in  std_logic;
        A, B     : in  std_logic_vector(15 downto 0);
        opcode   : in  std_logic_vector(3 downto 0);
        alu_out  : out std_logic_vector(15 downto 0)
    );
end entity my_alu;

architecture Behavioral of my_alu is 
begin
    
    process (A, B, opcode, en,clk)
    begin
        if rising_edge(clk) and en = '1'then
            case opcode is
                when "0000" =>
                    alu_out <= std_logic_vector(unsigned(A) + unsigned(B)); 
                when "0001" =>
                    alu_out <= std_logic_vector(unsigned(A) - unsigned(B));
                when "0010" =>
                    alu_out <= std_logic_vector(unsigned(A) + 1);
                when "0011" =>
                    alu_out <= std_logic_vector(unsigned(A) - 1);
                when "0100" =>
                    alu_out <= std_logic_vector(0 - unsigned(A));
                when "0101" =>
                    alu_out <= A(14 downto 0) & "0";
                when "0110" =>
                    alu_out <= "0" & A(15 downto 1);
                when "0111" =>
                    alu_out <= A(15) & A(15 downto 1); 
                when "1000" =>
                    alu_out <= std_logic_vector(unsigned(A) AND unsigned(B));
                when "1001" =>
                    alu_out <= std_logic_vector(unsigned(A) OR unsigned(B));
                when "1010" =>
                    alu_out <= std_logic_vector(unsigned(A) XOR unsigned(B));
                when "1011" => 
                    if (signed(A) < signed(B)) then
                        alu_out(0) <= '1';
                    else
                        alu_out(0) <= '0';
                    end if;
                when "1100" => 
                    if (signed(A) > signed(B)) then
                        alu_out(0) <= '1';
                    else
                        alu_out(0) <= '0';
                    end if;          
                when "1101" => 
                    if (unsigned(A) = unsigned(B)) then
                        alu_out(0) <= '1';
                    else
                        alu_out(0) <= '0';
                    end if;
                when "1110" => 
                    if (unsigned(A) < unsigned(B)) then
                        alu_out(0) <= '1';
                    else
                        alu_out(0) <= '0';
                    end if;
                when "1111" => 
                    if (unsigned(A) > unsigned(B)) then
                        alu_out(0) <= '1';
                    else
                        alu_out(0) <= '0';
                    end if;                                          
                when others =>
                    alu_out <= (others => 'X');
            end case;
        end if;
    end process;     
end Behavioral;
