library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity my_alu is
    port(
        clk: in std_logic;
        A, B: in std_logic_vector(3 downto 0);
        opcode: in std_logic_vector(3 downto 0);
        alu_out: out std_logic_vector(7 downto 0)
    );
end entity my_alu;

architecture Behavioral of my_alu is
    signal A_int, B_int: integer;
    signal alu_out_int: integer;
begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            -- Convert keypad inputs to integers
            A_int <= to_integer(unsigned(A));
            B_int <= to_integer(unsigned(B));
            
            -- Perform ALU operations based on opcode
            case opcode is
                when "0000" =>
                    alu_out_int <= A_int + B_int;
                when "0001" =>
                    alu_out_int <= B_int - A_int;
                when "0010" =>     
                    alu_out_int <= A_int * B_int;
                when "0011" =>
                    alu_out_int <= A_int * A_int;
                when "0100" =>
                if(A_int > B_int) then
                    alu_out_int <= A_int;
                else
                    alu_out_int <= B_int;
                end if; 
                when "0101" => 
                    alu_out_int <= (A_int * A_int) + (B_int * B_int);             
                when "0110" =>
                    alu_out_int <= B_int * B_int;
                when "0111" => 
                    alu_out_int <= B_int / A_int;
                when "1000" =>
                    alu_out_int <= B_int mod A_int;
                when "1001" =>
                    alu_out_int <= A_int mod B_int;
                when "1010" =>
                    if(A_int = B_int) then
                        alu_out_int <= 1;
                    else
                        alu_out_int <= 0;
                    end if;
                when "1011" =>
                    alu_out_int <= A_int + 1;
                when "1100" => 
                    alu_out_int <= B_int + 1;
                when "1101" =>
                    alu_out_int <= (A_int * B_int) * (A_int * B_int); 
                when "1110" => 
                    alu_out_int <= (A_int * B_int)/2;
                when "1111" => 
                    alu_out_int <= (A_int * A_int) - (B_int * B_int);             
                when others => 
                    alu_out_int <= 0; 
            end case;
            
            -- Convert ALU result to 8-bit binary
            alu_out <= std_logic_vector(to_unsigned(alu_out_int, alu_out'length));
        end if;
    end process;
end Behavioral;
