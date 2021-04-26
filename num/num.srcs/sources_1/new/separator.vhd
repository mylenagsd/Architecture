library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity separator is
    Port (  clk : in STD_LOGIC;
            value : in STD_LOGIC_VECTOR (7 downto -1);
            C_F : in STD_LOGIC;
            CF : out STD_LOGIC_VECTOR (3 downto 0);
            value_out : out STD_LOGIC_VECTOR (7 downto -1);
            sign : out STD_LOGIC_VECTOR (3 downto 0));
end separator;

architecture Behavioral of separator is
signal temporaire : STD_LOGIC_VECTOR (8 downto 0);
begin
     process(clk)
        begin
            if (rising_edge(clk)) then            
                if ( value(7) = '1') then
                    temporaire <= std_logic_vector(not unsigned(value) + 1);
                    value_out <= temporaire (8 downto 0);
                    sign <= "1101";
                else
                    value_out <= value (7 downto -1);
                    sign <= "1100";
                end if;
                
                if (C_F = '1') then 
                    CF <= "1011";
                else
                    CF <= "1010";
                end if;
            end if;
    end process; 
end Behavioral;