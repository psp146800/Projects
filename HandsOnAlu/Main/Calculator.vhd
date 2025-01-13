library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Calculator is 
    Port ( 
	      TXD,clk : in  STD_LOGIC;
	      btn: in std_logic_vector(3 downto 0);
	      RXD: out std_logic;
              CTS, RTS: out std_logic;  
	      kypd : inout  STD_LOGIC_VECTOR (7 downto 0); 
              seg : out  STD_LOGIC_VECTOR (6 downto 0)); 
end Calculator;

architecture Behavioral of Calculator is
component div2 is
 port(

       clk  : in std_logic;        
       div2 : out std_logic
   );
end component;

component sender is
    Port ( 
        clk, en, btn, ready : in std_logic;
        send : out std_logic;
        number: in std_logic_vector(7 downto 0);
        ascii_out : out std_logic_vector(7 downto 0)
 );
end component;

component clock_divider is
    port(

        clk  : in std_logic;        
        div : out std_logic
    );
end component;
component uart is 
    port (

    clk, en, send, rx           : in std_logic;
    charSend                    : in std_logic_vector (7 downto 0);
    ready, tx, newChar          : out std_logic;
    charRec                     : out std_logic_vector (7 downto 0)

);
end component;
component Debouncer is
         port(
               clk: in std_logic;
               btn: in std_logic;
               dbnc: out std_logic
           );
end component;
component alu_tester is
    port( 
      clk: in std_logic;
      btn: in std_logic_vector(2 downto 0);
      val: in std_logic_vector(3 downto 0);
      output: out std_logic_vector(7 downto 0)
     );
 end component;
component Decoder is
	Port (
	  clk : in  STD_LOGIC;
          Row : in  STD_LOGIC_VECTOR (3 downto 0);
	  Col : out  STD_LOGIC_VECTOR (3 downto 0);
          DecodeOut : out  STD_LOGIC_VECTOR (3 downto 0)
          );
	end component;

component DisplayController is
	Port (
	   DispVal : in  STD_LOGIC_VECTOR (3 downto 0);  
           segOut : out  STD_LOGIC_VECTOR (6 downto 0)
         );
	end component;
signal db1, db2, db3, db4: std_logic;
signal clk_divider: std_logic;
signal ready_t: std_logic;
signal send_t: std_logic;
signal char_t: std_logic_vector(7 downto 0);   
signal Decode: STD_LOGIC_VECTOR (3 downto 0);
signal cin: std_logic_vector(7 downto 0);
signal clk_div2: std_logic;


begin
  
	C0: Decoder 
	 port map (
	           clk=>clk, 
	           Row =>kypd(7 downto 4), 
	           Col=>kypd(3 downto 0), 
	           DecodeOut=> Decode
	          );
	C1: DisplayController 
	 port map (
	       DispVal=>Decode,        
	       segOut=>seg 
	       );
    C2: alu_tester
     port map(
        clk => clk,
        btn => btn(2 downto 0),
        val => Decode,
        output => char_t
       );
    C3: uart
    port map( 
           clk => clk,
           en => clk_divider,
           charSend =>cin,
           send => send_t,
           rx => TXD,
           tx => RXD,
           ready => ready_t
       );
       
       CTS <= '0';
       RTS <= '0';
    C4: Debouncer
        port map(
                 btn => btn(3),
                 clk => clk,
                 dbnc => db4
               );
    C5: clock_divider
        port map(
            clk => clk,
            div => clk_divider
            );
    U4: sender
               port map (
                   clk => clk,
                   en => clk_divider,
                   ready => ready_t,
                   btn => db4,
                   send => send_t,
                   number => char_t,
                   ascii_out => cin
               );
end Behavioral;
