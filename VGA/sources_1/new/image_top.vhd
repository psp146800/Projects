library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_top is
    Port ( 
        clk            : in  std_logic;
        vga_hs, vga_vs : out std_logic;
        vga_r, vga_b   : out std_logic_vector(4 downto 0);
        vga_g          : out std_logic_vector(5 downto 0)
    );
end image_top;

architecture Behavioral of image_top is
    component clock_divider is
        port(
            clk  : in  std_logic;        -- 125 Mhz clock
            div  : out std_logic
        );
    end component;

    component picture IS
        port(
            clka  : IN  STD_LOGIC;
            addra : IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

    component vga_ctrl is
        port(
            clk, clk_en     : in  std_logic;    
            hcount, vcount  : out std_logic_vector(9 downto 0);
            vid, HS, VS     : out std_logic
        );
    end component;

    component pixel_pusher is
        Port ( 
            clk, clk_en, VS, vid  : in  std_logic;
            pixel                 : in  std_logic_vector(7 downto 0);
            hcount                : in  std_logic_vector(9 downto 0);
            R, B                  : out std_logic_vector(4 downto 0);
            G                     : out std_logic_vector(5 downto 0);
            addr                  : out std_logic_vector(17 downto 0)
        );
    end component;

    signal temp_vs : std_logic;
    signal clk_div : std_logic;
    signal vid     : std_logic;
    signal douta   : std_logic_vector(7 downto 0);
    signal hcount  : std_logic_vector(9 downto 0);
    signal addr    : std_logic_vector(17 downto 0);

begin
    vga_vs <= temp_vs;

    div: clock_divider
    port map(
        clk => clk,
        div => clk_div
    );

    pic: picture
    port map(
        clka  => clk_div,
        addra => addr,            
        douta => douta
    );

    cntrl: vga_ctrl
    port map(
        clk    => clk,
        clk_en => clk_div,
        hcount => hcount,
        vid    => vid,
        HS     => vga_hs,
        VS     => temp_vs
    );

    pix_push: pixel_pusher
    port map(
        clk    => clk,
        clk_en => clk_div,
        VS     => temp_vs,
        vid    => vid,
        pixel  => douta,
        hcount => hcount,
        addr   => addr,
        R      => vga_r,
        B      => vga_b,
        G      => vga_g
    );
end Behavioral;
