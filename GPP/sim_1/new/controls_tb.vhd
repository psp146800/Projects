library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controls_tb is
end controls_tb;

architecture Behavioral of controls_tb is
    component controls
        Port (
            clk, en, rst: in std_logic;
        
            rID1, rID2: out std_logic_vector( 4 downto 0 );
            wr_en1, wr_en2: out std_logic;
            regrD1, regrD2: in  std_logic_vector( 15 downto 0 );
            regwD1, regwD2: out std_logic_vector( 15 downto 0 );
        
            fbRST, fbWr_en: out std_logic := '0';
            fbAddr1: out std_logic_vector( 11 downto 0 );
            fbDin1: in std_logic_vector( 15 downto 0 );
            fbDout1: out std_logic_vector( 15 downto 0 );
        
            irAddr: out std_logic_vector( 13 downto 0 );
            irWord: in std_logic_vector( 31 downto 0 );
        
            dAddr: out std_logic_vector( 14 downto 0 );
            d_wr_en: out std_logic;
            dOut: out std_logic_vector( 15 downto 0 );
            dIn: in  std_logic_vector( 15 downto 0 );
        
            aluA, aluB: out std_logic_vector( 15 downto 0 );
            aluOp: out std_logic_vector( 3 downto 0 );
            aluResult: in std_logic_vector( 15 downto 0 );
        
            ready, newChar: in std_logic;
            send: out std_logic;
            charRec: in  std_logic_vector( 7 downto 0 );
            charSend: out std_logic_vector( 7 downto 0 )
        );
    end component;
    
    component regs
    port(
        clk,en,rst: in std_logic;
        id1, id2: in std_logic_vector(4 downto 0);
        wr_en1,wr_en2: in std_logic;
        din1, din2: in std_logic_vector(15 downto 0);
        dout1, dout2: out std_logic_vector(15 downto 0)
     );
    end component;
    
    component my_alu
       port(
         clk,en      : in  std_logic;
         A, B     : in  std_logic_vector(15 downto 0);
         opcode   : in  std_logic_vector(3 downto 0);
         alu_out  : out std_logic_vector(15 downto 0)
     );
     end component;
    
    signal clk: std_logic:= '1';
    signal en: std_logic:= '1';
    signal rst: std_logic;
    signal rID1, rID2: std_logic_vector( 4 downto 0 );
    signal wr_en1, wr_en2: std_logic;
    signal regrD1, regrD2: std_logic_vector( 15 downto 0 );
    signal regwD1, regwD2: std_logic_vector( 15 downto 0 );
    signal fbRST,fbWr_en: std_logic;
    signal fbAddr1: std_logic_vector( 11 downto 0 );
    signal fbDin1, fbDout1: std_logic_vector( 15 downto 0 );
    signal irAddr: std_logic_vector( 13 downto 0 );
    signal irWord: std_logic_vector( 31 downto 0 ):= x"00C85000";
    signal dAddr: std_logic_vector( 14 downto 0 );
    signal d_wr_en: std_logic;
    signal dOut, dIn: std_logic_vector( 15 downto 0 );
    signal aluA, aluB: std_logic_vector( 15 downto 0 );
    signal aluOp: std_logic_vector( 3 downto 0 );
    signal aluResult: std_logic_vector( 15 downto 0 );
    signal ready, newChar, send: std_logic;
    signal charRec, charSend: std_logic_vector( 7 downto 0 );
    signal ID1,ID2: std_logic_vector(4 downto 0);
    signal din1, din2: std_logic_vector(15 downto 0);
    signal dout1, dout2: std_logic_vector(15 downto 0);
    signal A, B: std_logic_vector(3 downto 0);
     
begin
    contr : controls
        port map(
            clk       => clk,     
            en        => en,
            rst       => rst,
            rID1      => rID1,    
            rID2      => rID2,
            wr_en1   => wr_en1,
            wr_en2   => wr_en2,
            regrD1    => regrD1,
            regrD2    => regrD2,
            regwD1    => regwD1,
            regwD2    => regwD2,
            fbRST     => fbRST,   
            fbWr_en  => fbWr_en,
            fbAddr1   => fbAddr1,
            fbDin1    => fbDin1,
            fbDout1   => fbDout1,
            irAddr    => irAddr,  
            irWord    => irWord,
            dAddr     => dAddr,   
            d_wr_en   => d_wr_en,
            dOut      => dOut,
            dIn       => dIn,
            aluA      => aluA,    
            aluB      => aluB,
            aluOp     => aluOp,
            aluResult => aluResult,
            ready     => ready,   
            newChar   => newChar,
            send  => send,
            charRec   => charRec,
            charSend  => charSend
    );
    alu: my_alu
    port map(
        clk => clk,
        en => en,
        A => aluA,
        B => aluB,
        opcode => aluOp,
        alu_out => aluResult
    );
    reg: regs
    port map(
        clk => clk,
        en => en,
        rst => rst,
        iD1 => rID1,
        iD2 => rID2,
        wr_en1 => wr_en1,
        wr_en2 => wr_en2,
        dout1 => regrD1,
        dout2 => regrD2,
        din1 => regwD1,
        din2 => regwD2
    );
    
    clock : process 
    begin
        clk <= '0';
        wait for 4 ns;
        clk <= '1';
        wait for 4 ns;
    end process;
end Behavioral;