library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sel is
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
end sel;

architecture Behavioral of sel is
    begin
    process (clk, AN)
        begin
            if (rising_edge(clk)) then 
                case AN is 
                    when "11111110" => data <= CF; dp <= '1';
                    when "11111101" => data <= decimal; dp <= '1';
                    when "11111011" => data <= unites; dp <= '0';
                    when "11110111" => data <= dizaines; dp <= '1';
                    when "11101111" => data <= centaines; dp <= '1';
                    when "11011111" => data <= sign; dp <= '1';
                    when "10111111" => data <= "1100"; dp <= '1';
                    when "01111111" => data <= "1100"; dp <= '1';
                    when others => data <= "1101";
                end case;
            end if;
    end process;


end Behavioral;
