library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlation is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           rx : in STD_LOGIC;
           oi : out STD_LOGIC;
           temp : out STD_LOGIC_VECTOR(8 downto 0);
           en_read : out STD_LOGIC;
           done_read : out STD_LOGIC;
           mesure_done : out STD_LOGIC;
           tx : out STD_LOGIC);
end controlation;

architecture Behavioral of controlation is

component control
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           done_init : in STD_LOGIC;
           done_write : in STD_LOGIC;
           done_read : in STD_LOGIC;
           H1s : in STD_LOGIC;
           oi : out STD_LOGIC;
           en_init : out STD_LOGIC;
           en_write : out STD_LOGIC;
           en_read : out STD_LOGIC;
           mesure_done : out STD_LOGIC;
           word_tx : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component H_1hz
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Hout : out STD_LOGIC);
end component;

component init
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_init : in STD_LOGIC;
           wire_rx : in STD_LOGIC;
           done_init : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end component;

component write is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_write : in STD_LOGIC;
           word : in STD_LOGIC_VECTOR(7 downto 0);
           done_write : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end component;

component read
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_read : in STD_LOGIC;
           wire_rx : in STD_LOGIC;
           word : out STD_LOGIC_VECTOR(8 downto 0);
           done_read : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end component;

signal en_init : std_logic;
signal en_write : std_logic;
signal en_read1 : std_logic;
signal wire_rx : std_logic;
signal done_init : std_logic;
signal done_write : std_logic;
signal done_read1 : std_logic;
signal word_control : std_logic_vector(7 downto 0);
signal Hint : std_logic;

begin
    en_read <= en_read1;
    done_read <= done_read1;
    a1: control
        port map (rst => rst,
                  clk => clk,
                  done_init => done_init,
                  done_write => done_write,
                  done_read => done_read1,
                  H1s => Hint,
                  oi => oi,
                  en_init => en_init,
                  en_write => en_write,
                  en_read => en_read1,
                  mesure_done => mesure_done,
                  word_tx => word_control);
        
    a2: H_1hz 
        port map (rst => rst,
                  clk => clk,
                  Hout => Hint);     
    a3: init 
        port map (rst => rst,
                  clk => clk,
                  en_init => en_init,
                  wire_rx => rx,
                  done_init => done_init,
                  wire_tx => tx);    

    a4: write 
        port map (rst => rst,
                  clk => clk,
                  en_write => en_write,
                  word => word_control,
                  done_write => done_write,
                  wire_tx => tx);
                  
    a5: read 
        port map (rst => rst,
                  clk => clk,
                  en_read => en_read1,
                  wire_rx => rx,
                  word => temp,
                  done_read => done_read1,
                  wire_tx => tx);
                  
end Behavioral;
