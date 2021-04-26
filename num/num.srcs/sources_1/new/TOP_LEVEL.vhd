library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_LEVEL is
    Port (clk : in STD_LOGIC;
          rst : in STD_LOGIC;
          C_F : in STD_LOGIC;
          rx : in STD_LOGIC;
          oi : out STD_LOGIC;
          en_read : out STD_LOGIC;
          done_read : out STD_LOGIC;
          mesure_done : out STD_LOGIC;
          tx : out STD_LOGIC;
          a :  out STD_LOGIC;
          b :  out STD_LOGIC;
          c :  out STD_LOGIC;
          d :  out STD_LOGIC;
          e :  out STD_LOGIC;
          f :  out STD_LOGIC;
          g :  out STD_LOGIC;
          dp_out : out STD_LOGIC;
          ANN : OUT STD_LOGIC_VECTOR (7 downto 0));
end TOP_LEVEL;

architecture Behavioral of TOP_LEVEL is
signal data_middle,data_middle_2 : std_logic_vector (7 downto -1);

component controlation
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           rx : in STD_LOGIC;
           oi : out STD_LOGIC;
           temp : out STD_LOGIC_VECTOR(8 downto 0);
           en_read : out STD_LOGIC;
           done_read : out STD_LOGIC;
           mesure_done : out STD_LOGIC;
           tx : out STD_LOGIC);
end component;

component display
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
end component;

component converteur
    Port (clk : in STD_LOGIC;
          C_F : in STD_LOGIC;
          data_in : in STD_LOGIC_VECTOR (7 downto -1);
          data_out : OUT STD_LOGIC_VECTOR (7 downto -1));
end component;
begin
    C1 : controlation port map (rst => rst,
                                clk =>clk,
                                rx =>rx, --rx : in STD_LOGIC;
                                oi =>oi, --out STD_LOGIC;
                                temp =>data_middle_2, --temp : out STD_LOGIC_VECTOR(8 downto 0);
                                en_read =>en_read, --en_read : out STD_LOGIC;
                                done_read=>done_read, --done_read : out STD_LOGIC;
                                mesure_done=>mesure_done, --mesure_done : out STD_LOGIC;
                                tx =>tx --tx : out STD_LOGIC
                                );
    
   C2 : converteur port map (   clk=>clk,
                                C_F=>C_F,
                                data_in=>data_middle_2,
                                data_out=>data_middle);
    
    C3: display port map(   clk=>clk,
                        rst=>rst,
                        data=>data_middle,
                        C_F=>C_F,
                        a=>a,
                        b=>b,
                        c=>c,
                        d=>d,
                        e=>e,
                        f=>f,
                        g=>g,
                        dp_out=>dp_out,
                        ANN=> ANN);
                                
end Behavioral;
