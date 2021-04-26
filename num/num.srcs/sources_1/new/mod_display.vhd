library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity mod_display is
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
 end mod_display;
 
 architecture Behavioral of mod_display is
        signal  dp : std_logic;
        signal  AN_middle : std_logic_vector ( 7 downto 0);
        signal  data: std_logic_vector ( 3 downto 0);
       
       
       component sel
            Port (clk : in STD_LOGIC;
                 CF : in STD_LOGIC_VECTOR (3 downto 0);
                 decimal : in STD_LOGIC_VECTOR (3 downto 0);
                 unites : in STD_LOGIC_VECTOR (3 downto 0);
                 dizaines : in STD_LOGIC_VECTOR (3 downto 0);
                 centaines : in STD_LOGIC_VECTOR (3 downto 0);
                 sign : in STD_LOGIC_VECTOR (3 downto 0);
                 AN : in STD_LOGIC_VECTOR (7 downto 0);
                 data : out STD_LOGIC_VECTOR (3 downto 0);
                 dp : out STD_LOGIC);
          end component;
        
        component AN
            Port ( rst : in STD_LOGIC;
               clk : in STD_LOGIC;
               AN_out : out STD_LOGIC_VECTOR (7 downto 0));
        end component;
        
        component display7seg
        	port (  clk : in STD_LOGIC;
                    dp_in :  in STD_LOGIC;
                    data :  in STD_LOGIC_VECTOR (3 downto 0);
                    a :  out STD_LOGIC;
                    b :  out STD_LOGIC;
                    c :  out STD_LOGIC;
                    d :  out STD_LOGIC;
                    e :  out STD_LOGIC;
                    f :  out STD_LOGIC;
                    g :  out STD_LOGIC;
                    dp : out STD_LOGIC);
      end component;
      
begin
        C1: display7seg port map(   clk=>clk,
                                    dp_in =>dp,
                                    data => data,
                                    a=>a,
                                    b=>b,
                                    c=>c,
                                    d=>d,
                                    e=>e,
                                    f=>f,
                                    g=>g,
                                    dp=>dp_out
                                    );
         C2: AN port map(rst => rst,
                         clk => clk,
                         AN_out=>AN_middle
                         );
         
         C3: sel port map(   clk => clk,
                             CF=>CF,
                             decimal=>decimal,
                             unites=>unites,
                             dizaines=>dizaines,
                             centaines=>centaines,
                             sign=>sign,
                             AN=>AN_middle,
                             data=>data,
                             dp=>dp
                             );
        ANN<=AN_middle;
end Behavioral;