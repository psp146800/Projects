library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_tester is 
port(
      clk: in std_logic;
      btn: in std_logic_vector(2 downto 0);
      val: in std_logic_vector(3 downto 0);
      output: out std_logic_vector(7 downto 0)
     );
end entity;
     
architecture behavioral of alu_tester is
 component Debouncer is
    port(
            clk: in std_logic;
            btn: in std_logic;
            dbnc: out std_logic
        );
end component;    
    component my_alu
        port(
             clk: std_logic;
             A,B: in std_logic_vector(3 downto 0);
             opcode: in std_logic_vector(3 downto 0);
             alu_out: out std_logic_vector(7 downto 0)
            );
    end component;
    signal db1,db2,db3: std_logic;
    signal temp_A, temp_B, temp_opcode: std_logic_vector(3 downto 0);
begin
  process(clk)
    begin
        if (rising_edge(clk)) then
            if(db1 = '1') then
                temp_B <= val ;
            end if;
            if(db2 = '1') then
                temp_A <= val ;
            end if;
            if(db3 = '1') then
                temp_opcode <= val; 
            end if; 
        end if;
    end process; 
 U1: Debouncer
       port map(
           btn => btn(0),
           clk => clk,
           dbnc => db1
       );
                  
       U2: Debouncer
       port map(
           btn => btn(1),
           clk => clk,
           dbnc => db2 
       );
    
       U3: Debouncer
       port map(
           btn => btn(2),
           clk => clk, 
           dbnc => db3
       );  
   U5: my_alu
   port map(
       clk => clk,
       A => temp_A,
       B  => temp_B,
       opcode => temp_opcode,
       alu_out => output
   );   
  
   end behavioral;
  