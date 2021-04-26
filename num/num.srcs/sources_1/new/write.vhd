library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity write is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_write : in STD_LOGIC;
           word : in STD_LOGIC_VECTOR(7 downto 0);
           done_write : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end write;

architecture Behavioral of write is
type etat is (START, RECOVER, PULL_DOWN, ONE, READY);
signal etatp : etat;
signal count : integer range 0 to 200001;
signal i : integer range 0 to 7;

begin
    process(rst, clk)
    begin
        if (rst = '1') then
            i <= 0;
            count <= 0;
            done_write <= '0';
            etatp <= START;
            wire_tx <= 'Z';
        elsif (rising_edge(clk)) then
            case etatp is
                when START => 
                    if (en_write = '1') then
                        i <= 0;
                        count <= 0;
                        etatp <= RECOVER;
                    else
                        wire_tx <= 'Z';
                        done_write <= '0'; 
                        etatp <= START;
                    end if;
                    
                when RECOVER => 
                    if (count > 200) then
                        count <= 0;
                        etatp <= PULL_DOWN;
                    else 
                        wire_tx <= 'Z';
                        done_write <= '0';
                        count <= count +1;
                        etatp <= RECOVER;
                    end if;
                    
                when PULL_DOWN => 
                    if (count > 500 and word(i) = '1') then
                        count <= 0;
                        etatp <= ONE;
                    elsif (count > 10000 and word(i) = '0' and i < 7) then
                        count <= 0;
                        wire_tx <= 'Z';
                        i <= i + 1;
                        etatp <= RECOVER;
                    elsif (count > 10000 and word(i) = '0' and i = 7) then
                        count <= 0;
                        etatp <= READY;
                    else 
                        wire_tx <= '0';
                        done_write <= '0';
                        count <= count +1;
                        etatp <= PULL_DOWN;
                    end if;
                    
                when ONE => 
                    if (count > 9500 and i < 7) then
                        count <= 0;
                        wire_tx <= 'Z';
                        i <= i + 1;
                        etatp <= RECOVER;
                    elsif (count > 9500 and i = 7) then
                        count <= 0;
                        --wire_tx <= 'Z';
                        etatp <= READY;
                    else 
                        wire_tx <= '1'; -- era 'Z'
                        done_write <= '0'; 
                        count <= count +1;
                        etatp <= ONE;
                    end if;  
             
                when READY => 
                    if (count > 20000) then -- a changer par 6000
                        count <= 0;
                        wire_tx <= 'Z';
                        done_write <= '1'; 
                        etatp <= START;
                    else 
                        wire_tx <= 'Z';
                        count <= count +1;
                        etatp <= READY;
                    end if;
                    
                when others => 
                    etatp <= START;
            end case;
        end if;
    end process;

end Behavioral;
