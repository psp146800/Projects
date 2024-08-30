library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity controls is
port(
    clk, en, rst: in std_logic;
    
    rID1, rID2: out std_logic_vector(4 downto 0);
    wr_en1, wr_en2: out std_logic := '0';
    regrD1, regrD2: in std_logic_vector(15 downto 0);
    regwD1, regwD2: out std_logic_vector(15 downto 0):= (others => '0');
    
    fbRST: out std_logic:= '0';
    fbAddr1: out std_logic_vector(11 downto 0) := (others => '0'); 
    fbDin1: in std_logic_vector(15 downto 0);
    fbDout1: out std_logic_vector(15 downto 0);
    fbWr_en: out std_logic:= '0';
    
    irAddr: out std_logic_vector(13 downto 0);
    irWord: in std_logic_vector(31 downto 0);
    
    dAddr: out std_logic_vector(14 downto 0):= (others => '0');
    d_wr_en: out std_logic ;
    dOut: out std_logic_vector(15 downto 0);
    dIn: in std_logic_vector(15 downto 0);
    
    aluA, aluB: out std_logic_vector(15 downto 0) := (others => '0');
    aluOp: out std_logic_vector(3 downto 0);
    aluResult: in std_logic_vector(15 downto 0);
    
    ready, newChar: in std_logic;
    send: out std_logic := '0';
    charRec: in std_logic_vector(7 downto 0);
    charSend: out std_logic_vector(7 downto 0)    
);
end entity;

architecture behavioral of controls is

signal pc: std_logic_vector(15 downto 0) := (others => '0');
signal instruction: std_logic_vector(31 downto 0);
signal opcode: std_logic_vector(4 downto 0);
signal regA1,regA2,regA3: std_logic_vector(4 downto 0):= (others => '0');
signal reg1,reg2,reg3: std_logic_vector(15 downto 0) := (others => '0');
signal immediate: std_logic_vector(15 downto 0);
signal ALU_Result: std_logic_vector(15 downto 0);

type state is(lw1,fetch,fetch1, decode, decode1, decode2, Rops, Rops1, Iops, Iops1, Jops, calc,calc2, store, store1, jr, jr1, recv, rpix, wpix,wpix1, sendUart,sendUart1,sendUart2, equals, nequal, ori, lw, sw, jmp,jmp1, jal, clrscr, finish);
signal curr: state := fetch;
begin
process(clk)
begin
    if rising_edge(clk) and en = '1' then
    case curr is
        when fetch =>
            rID1 <= "00001";
            curr <= fetch1;
        when fetch1=>
            pc <= regrD1;
            curr <= decode; 
        when decode => 
            irAddr <= pc(13 downto 0);
            instruction <= irWord;
            opcode <= instruction(31 downto 27);   
            wr_en1 <= '1';
            rID1 <= "00001";
            curr <= decode1;
        when decode1 => 
            curr <= decode2;
            regwD1 <= std_logic_vector(unsigned(pc) + 1);
        when decode2 =>
            wr_en1 <= '0';            
            if opcode(4 downto 3) = "00" or opcode(4 downto 3) = "01" then 
                curr <= rops;
                regA1 <= instruction(26 downto 22);
                rID1 <= instruction(21 downto 17);
                rID2 <= instruction(16 downto 12);                           
            elsif opcode (4 downto 3) = "10" then
                curr <= Iops;
                rID2 <= instruction(21 downto 17);
                immediate <= instruction(16 downto 1);
            else
                curr <= Jops;
                immediate <= instruction(26 downto 11);
            end if;
        when Rops =>
            curr <= Rops1;
        when Rops1 =>
            reg2 <= regrD1;
            reg3 <= regrD2;
                   
            if opcode = "01101" then
                curr <= jr;
            elsif opcode = "01100" then
                curr <= recv;
            elsif opcode = "01111" then
                curr <= rpix;
            elsif opcode = "01110" then
                curr <= wpix;
            elsif opcode = "01011" then
                curr <= sendUart;
            else
                curr <= calc;
            end if;                         
        when Iops =>
            reg2 <= regrD2;
            curr <= Iops1;
       when Iops1 =>
            if opcode(2 downto 0) = "000" then
                curr <= equals;
            elsif opcode(2 downto 0) = "001" then
                curr <= nequal;
            elsif opcode(2 downto 0) = "010" then
                curr <= ori;
            elsif opcode(2 downto 0) = "011" then
                curr <= lw;
            else
                curr <= sw;
            end if;
        when Jops => 
            if opcode = "11000" then
                curr <= jmp;
            elsif opcode = "11001" then
                curr <= jal;
            else
                curr <= clrscr;
            end if;
        when calc =>
                aluA <= reg2;
                aluB <= reg3;
                aluOp <= opcode(3 downto 0);
                curr <= calc2;
        when calc2 =>
            ALU_result <= aluResult;
            curr <= store;
        when store =>
            rID1 <= regA1;
            wr_en1 <= '1';
            curr <= store1; 
        when store1 =>
            regwD1 <= ALU_result;
            curr <= finish;
        when jr =>
            rID1 <= regA1;
            curr <= jr1;
        when jr1 =>
            ALU_result <= regrD1;
            curr <= store;
        when recv =>
            ALU_result <= "00000000" & CharRec;
            if newChar = '0' then
                curr <= recv;
            else
                curr <= store;
            end if;
        when rpix =>        
            curr <= finish;
        when wpix =>
            fbWr_en <= '1';
            fbAddr1 <= reg1(11 downto 0);
            curr <= wpix1;
        when wpix1 =>
            fbDout1 <= reg2;
            curr <= finish;
        when sendUart =>
            rID1 <= regA1;
            curr <= sendUart1;
        when sendUart1 =>
            reg1 <= regrD1;
            curr <= sendUart2;
        when sendUart2 =>
           send <= '1';
           charSend <= reg1(7 downto 0);
           
           if ready = '1' then
                curr <= finish;
           else
               curr <= sendUart2;
           end if;
        when equals =>
            if (reg1 = reg2) then
                ALU_result <= immediate;
                regA1 <= "00001";
            end if;
            curr <= store;
        when nequal =>      
            curr <= finish;
        when ori =>
            ALU_result <= immediate OR reg2;
            curr <= store; 
        when lw => 
            dAddr <= std_logic_vector(unsigned(reg2(14 downto 0)) + unsigned(immediate(14 downto 0))); 
            curr <= lw1;
        when lw1 =>
            ALU_result <= dIn;
            curr <= store;
        when sw =>        
            curr <= finish;
        when jmp =>
            rID1 <= "00001";
            wr_en1 <= '1';
            curr <= jmp1;
        when jmp1 =>
            regwD1 <= immediate;
            curr <= finish;
        when jal =>        
            curr <= finish;
        when clrscr =>
            curr <= finish;
        when finish =>
            rID1 <= (others => '0');
            fbAddr1 <= (others => '0');
            fbDout1 <= (others => '0');
            fbWr_en <= '0';          
            regwD1 <= (others => '0');
            regwD2 <= (others => '0');
            send <= '0';
            wr_en1 <= '0';
            wr_en2 <= '0';         
            fbRST <= '0';
            curr <= fetch;   
         when others =>
            curr <= finish;        
    end case;
    end if;
end process;
end behavioral;