library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity h1k is
    Port (rst : in STD_LOGIC;
          clk : in STD_LOGIC;
          H_1k : out STD_LOGIC);
end h1k;

architecture Behavioral of h1k is
    --signal change :unsigned(26 downto 0); --1 Hz
    signal change :unsigned(16 downto 0); --1 kHz
    signal etat :STD_LOGIC;
    begin
        process (rst,clk)
           begin
              if (rst = '1') then
                  --change <= "000000000000000000000000000"; --1 Hz
                  change <= "00000000000000000"; --1 kHz
                  etat <= '0';
              elsif (rising_edge(clk)) then
                    --if (change >= "101111101011110000100000000") then --1 Hz
                    if (change >= "11000011010011111") then --1 kHz
                        etat <= not etat;
                        change <= (others =>'0');                
                    else   
                       change <= change + 1;
                       etat <= '0' ;                
                    end if;
              end if;
            
         end process; 
 H_1k <= etat;
end Behavioral;
