library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity display is
    Port (clk : in STD_LOGIC;
          rst : in STD_LOGIC;
          data : in STD_LOGIC_VECTOR (7 downto -1);
          C_F : in STD_LOGIC;
          a :  out STD_LOGIC;
          b :  out STD_LOGIC;
          c :  out STD_LOGIC;
          d :  out STD_LOGIC;
          e :  out STD_LOGIC;
          f :  out STD_LOGIC;
          g :  out STD_LOGIC;
          dp_out : out STD_LOGIC;
          ANN : OUT STD_LOGIC_VECTOR (7 downto 0));
end display;

architecture Behavioral of display is
        signal  CF : std_logic_vector ( 3 downto 0);
        signal  decimal : std_logic_vector ( 3 downto 0);
        signal  unites : std_logic_vector ( 3 downto 0);
        signal  dizaines : std_logic_vector ( 3 downto 0);
        signal  centaines: std_logic_vector ( 3 downto 0);
        signal  sign: std_logic_vector ( 3 downto 0);
        signal  bcdl: std_logic_vector ( 7 downto -1);
        
       component mod_display
            Port (CF : in STD_LOGIC_VECTOR (3 downto 0);
                 decimal : in STD_LOGIC_VECTOR (3 downto 0);
                 unites : in STD_LOGIC_VECTOR (3 downto 0);
                 dizaines : in STD_LOGIC_VECTOR (3 downto 0);
                 centaines : in STD_LOGIC_VECTOR (3 downto 0);
                 sign : in STD_LOGIC_VECTOR (3 downto 0);
                 clk :  in std_logic;
                 rst : in std_logic;
                 a :  out STD_LOGIC;
                 b :  out STD_LOGIC;
                 c :  out STD_LOGIC;
                 d :  out STD_LOGIC;
                 e :  out STD_LOGIC;
                 f :  out STD_LOGIC;
                 g :  out STD_LOGIC;
                 dp_out : out STD_LOGIC;
                 ANN : out STD_LOGIC_VECTOR (7 downto 0)
                 );
          end component;
          
          component separator
               Port (clk : in STD_LOGIC;
                    value : in STD_LOGIC_VECTOR (7 downto -1);
                    C_F : in STD_LOGIC;
                    CF : out STD_LOGIC_VECTOR (3 downto 0);
                    value_out : out STD_LOGIC_VECTOR (7 downto -1);
                    sign : out STD_LOGIC_VECTOR (3 downto 0));
          end component;
          
          component bcd
                  Port (clk : in STD_LOGIC;
                        value : in STD_LOGIC_VECTOR (7 downto -1);
                        decimal : out STD_LOGIC_VECTOR (3 downto 0);
                        unites : out STD_LOGIC_VECTOR (3 downto 0);
                        dizaines : out STD_LOGIC_VECTOR (3 downto 0);
                        centaines : out STD_LOGIC_VECTOR (3 downto 0));
          end component;
begin
    C1: mod_display port map(CF=>CF,
                             decimal=>decimal,
                             unites=>unites,
                             dizaines=>dizaines,
                             centaines=>centaines,
                             sign=>sign,
                             clk=>clk,
                             rst=>rst,
                             a=>a,
                             b=>b,
                             c=>c,
                             d=>d,
                             e=>e,
                             f=>f,
                             g=>g,
                             dp_out=>dp_out,
                             ANN=> ANN);
                             
    C2: separator port map( clk=>clk,
                            value=>data,
                            C_F=>C_F,
                            CF=>CF,
                            value_out=>bcdl,
                            sign=>sign);
                            
    C3: bcd port map (  clk=>clk,
                        value =>bcdl,
                        decimal=>decimal,
                        unites=>unites,
                        dizaines=>dizaines,
                        centaines=>centaines);
end Behavioral;
