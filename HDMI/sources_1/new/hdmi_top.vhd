library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_top is
    Port (
        -- Ports for rgb2dvi_0
        clk : in STD_LOGIC;
        hdmi_tx_clk_n : out STD_LOGIC;
        hdmi_tx_clk_p : out STD_LOGIC;
        hdmi_tx_n : out STD_LOGIC_VECTOR(2 downto 0);
        hdmi_tx_p : out STD_LOGIC_VECTOR(2 downto 0)
      
    );
end hdmi_top;

architecture Behavioral of hdmi_top is
    -- Instantiate components
    component vga_ctrl is
            port(
                clk, clk_en     : in  std_logic;    
                hcount, vcount  : out std_logic_vector(9 downto 0);
                vid, HS, VS     : out std_logic
            );
    end component;
    component rgb2dvi_0 is
        port (
            TMDS_Clk_p : out STD_LOGIC;
            TMDS_Clk_n : out STD_LOGIC;
            TMDS_Data_p : out STD_LOGIC_VECTOR(2 downto 0);
            TMDS_Data_n : out STD_LOGIC_VECTOR(2 downto 0);
            aRst : in STD_LOGIC;
            vid_pData : in STD_LOGIC_VECTOR(23 downto 0);
            vid_pVDE : in STD_LOGIC;
            vid_pHSync : in STD_LOGIC;
            vid_pVSync : in STD_LOGIC;
            PixelClk : in STD_LOGIC;
            SerialClk : in STD_LOGIC
        );
    end component;
    
    component clock_divider is
        port (
            clk : in STD_LOGIC;
            pixel_clk : out STD_LOGIC
        );
    end component;
    
    component pixel_pusher is
        Port (
            clk, clk_en, VS, vid : in STD_LOGIC;
            pixel : in STD_LOGIC_VECTOR(7 downto 0);
            hcount : in STD_LOGIC_VECTOR(9 downto 0);
            R, B : out STD_LOGIC_VECTOR(7 downto 0);
            G : out STD_LOGIC_VECTOR(7 downto 0);
            addr : out STD_LOGIC_VECTOR(17 downto 0)
        );
    end component;

    component picture is
        port (
            clka : in STD_LOGIC;
            addra : in STD_LOGIC_VECTOR(17 downto 0);
            douta : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- Signals for internal connections
    signal internal_pixel_clk: STD_LOGIC;
    signal internal_pixel : STD_LOGIC_VECTOR(7 downto 0);
    signal internal_hcount : STD_LOGIC_VECTOR(9 downto 0);
    signal internal_R, internal_G, internal_B: STD_LOGIC_VECTOR(7 downto 0);
    signal internal_douta : STD_LOGIC_VECTOR(7 downto 0);
    signal internal_addr: std_logic_vector(17 downto 0);
    signal data: std_logic_vector(23 downto 0);
    signal temp_hs, temp_vs: std_logic;
    signal temp_vid:std_logic;
    signal temp_rst: std_logic;
begin
data <= internal_R & internal_G & internal_B;
 cntrl: vga_ctrl
   port map(
       clk    => clk,
       clk_en => internal_pixel_clk,
       hcount => internal_hcount,
       vid    => temp_vid,
       HS     => temp_hs,
       VS     => temp_vs
   );
    -- Instantiate components
       picture_inst : picture
         port map (
             clka => clk,
             addra => internal_addr,
             douta => internal_douta
         );
    rgb2dvi_inst : rgb2dvi_0
        port map (
            TMDS_Clk_p => hdmi_tx_clk_p,
            TMDS_Clk_n => hdmi_tx_clk_n,
            TMDS_Data_p => hdmi_tx_p,
            TMDS_Data_n => hdmi_tx_n,
            aRst => temp_rst,
            vid_pData => data,
            vid_pVDE => temp_vid,
            vid_pHSync => temp_hs,
            vid_pVSync => temp_vs,
            PixelClk => internal_pixel_clk,
            SerialClk => clk
        );
    
    clock_divider_inst : clock_divider
        port map (
            clk => clk,
            pixel_clk => internal_pixel_clk
        );
    
    pixel_pusher_inst : pixel_pusher
        port map (
            clk => clk,
            clk_en => internal_pixel_clk,
            VS => temp_vs,
            vid => temp_vid,
            pixel => internal_douta,
            hcount => internal_hcount,
            R => internal_R,
            G => internal_G,
            B => internal_B,
            addr => internal_addr
        );  
        temp_rst <= '0';
end Behavioral;
