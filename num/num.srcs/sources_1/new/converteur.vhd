library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity converteur is
    Port (clk : in STD_LOGIC;
          C_F : in STD_LOGIC;
          data_in : in STD_LOGIC_VECTOR (7 downto -1);
          data_out : OUT STD_LOGIC_VECTOR (7 downto -1));
end converteur;

architecture Behavioral of converteur is
signal temp : integer;
signal X : signed (7 downto 0);
signal inter : STD_LOGIC_VECTOR (7 downto 0);
begin
    process (clk)
        begin
        if (rising_edge (clk)) then 
            if (C_F = '1')then
               X <= signed (data_in(7 downto 0));
               temp <= to_integer(X)*9/5+32;
               data_out <= std_logic_vector(to_signed(temp, X'length))&data_in(0);
            else
               data_out <= data_in; 
            end if;
        end if;
    end process;
end Behavioral;
