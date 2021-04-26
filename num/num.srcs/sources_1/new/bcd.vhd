library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd is
    Port (clk : STD_LOGIC;
          value : in STD_LOGIC_VECTOR (7 downto -1);
          decimal : out STD_LOGIC_VECTOR (3 downto 0);
          unites : out STD_LOGIC_VECTOR (3 downto 0);
          dizaines : out STD_LOGIC_VECTOR (3 downto 0);
          centaines : out STD_LOGIC_VECTOR (3 downto 0));
end bcd;

architecture Behavioral of bcd is

begin
    bcd1: process(clk)
        variable temp : STD_LOGIC_VECTOR (6 downto 0);
        variable bcd : UNSIGNED (11 downto 0) := (others => '0');
        
        begin
            if (rising_edge(clk)) then  
                bcd := (others => '0');
                temp(6 downto 0) := value (6 downto 0);
                
                
                for i in 0 to 6 loop
                    if bcd(3 downto 0) > 4 then 
                        bcd(3 downto 0) := bcd(3 downto 0) + 3;
                    end if;
                    
                    if bcd(7 downto 4) > 4 then 
                        bcd(7 downto 4) := bcd(7 downto 4) + 3;
                    end if;
                    
                    if bcd(11 downto 8) > 4 then  
                        bcd(11 downto 8) := bcd(11 downto 8) + 3;
                    end if;
                    bcd := bcd(10 downto 0) & temp(6);
                    temp := temp(5 downto 0) & '0';
                end loop;   
                
                unites <= STD_LOGIC_VECTOR(bcd(3 downto 0));
                dizaines <= STD_LOGIC_VECTOR(bcd(7 downto 4));
                centaines <= STD_LOGIC_VECTOR(bcd(11 downto 8));
             end if;
    end process bcd1;
    
    decl : process (clk)
        begin
            if (rising_edge(clk)) then  
                if (value(-1)='1') then
                    decimal <= "0101";
                else
                    decimal <= "0000";
                end if;
            end if;
    end process decl; 
end Behavioral;