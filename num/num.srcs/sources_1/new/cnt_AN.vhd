library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cnt_AN is
    Port (rst : in STD_LOGIC;
          clk : in STD_LOGIC;
          H_1k : in STD_LOGIC;
          ANN : out STD_LOGIC_VECTOR (7 downto 0));
end cnt_AN;


architecture Behavioral of cnt_AN is
    signal etat :STD_LOGIC_VECTOR(7 downto 0);
begin
    process (rst, clk, H_1k)
        begin
            if (rst = '1') then
                etat <= "11111110";
            elsif rising_edge(clk) then
                if (H_1k = '1') then
                    case etat is
                        when "11111110" => etat <= "11111101";
                        when "11111101" => etat <= "11111011";
                        when "11111011" => etat <= "11110111";
                        when "11110111" => etat <= "11101111";
                        when "11101111" => etat <= "11011111";
                        when "11011111" => etat <= "10111111";
                        when "10111111" => etat <= "01111111";
                        when "01111111" => etat <= "11111110";
                        when others => etat <= "11111110"; 
                    end case;    
                end if;
           end if;    
    end process;
    ANN <= etat;
end Behavioral;