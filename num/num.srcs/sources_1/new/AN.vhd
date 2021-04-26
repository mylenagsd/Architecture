library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AN is
    Port (rst : in STD_LOGIC;
          clk : in STD_LOGIC;
          AN_out : out STD_LOGIC_VECTOR (7 downto 0));
end AN;


architecture Behavioral of AN is
    signal H: std_logic;
    
    component cnt_AN
       Port (rst : in STD_LOGIC;
             clk : in STD_LOGIC;
             H_1k : in STD_LOGIC;
             ANN : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component h1k
       Port (rst : in STD_LOGIC;
             clk : in STD_LOGIC;
             H_1k : out STD_LOGIC);
    end component;
    
begin

    inst1 : cnt_AN port map (rst => rst,
                             clk => clk,
                             H_1k => H,
                             ANN => AN_out);
			
	inst2 : h1k port map (rst => rst,
                          clk => clk,
                          H_1k => H);
end Behavioral;
