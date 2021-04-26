library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity read is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_read : in STD_LOGIC;
           wire_rx : in STD_LOGIC;
           word : out STD_LOGIC_VECTOR(8 downto 0);
           done_read : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end read;

architecture Behavioral of read is
type etat is (START, RECOVER, PULL_DOWN, US10, READ, READY , WAIT8);
signal etatp : etat;
signal count : integer range 0 to 200000;
signal i : integer range 0 to 16;
signal mot : STD_LOGIC_VECTOR(8 downto 0);

begin
    process(rst, clk, mot)
    begin
        if (rst = '1') then
            i <= 0;
            count <= 0;
            done_read <= '0';
            etatp <= START;
            wire_tx <= 'Z';
        elsif (rising_edge(clk)) then
            case etatp is
                when START => 
                    if (en_read = '1') then
                        i <= 0;
                        count <= 0;
                        etatp <= RECOVER;
                    else
                        mot <= mot;
                        wire_tx <= 'Z';
                        done_read <= '0'; 
                        etatp <= START;
                    end if;
                    
                when RECOVER => 
                    if (count > 150) then
                        count <= 0;
                        etatp <= PULL_DOWN;
                    else
                        mot <= mot; 
                        wire_tx <= 'Z';
                        done_read <= '0';
                        count <= count +1;
                        etatp <= RECOVER;
                    end if;
                    
                when PULL_DOWN => 
                    if (count > 150) then
                        count <= 0;
                        wire_tx <= 'Z';
                        etatp <= US10;
                    else
                        mot <= mot;  
                        wire_tx <= '0';
                        done_read <= '0';
                        count <= count +1;
                        etatp <= PULL_DOWN;
                    end if;
                    
                when US10 => 
                    if (count > 1300) then
                        count <= 0;
                        etatp <= READ;
                    else
                        mot <= mot; 
                        wire_tx <= 'Z';
                        done_read <= '0'; 
                        count <= count +1;
                        etatp <= US10;
                    end if;   

                when READ => 
                        mot(i) <= wire_rx; 
                        wire_tx <= 'Z';
                        done_read <= '0';
                    if (i < 9) then --tinha contador antes
                        i <= i + 1;
                        etatp <= WAIT8;
                    elsif (i = 9) then
                        i <= 0;
                        etatp <= READY;
                    end if;
                    
                when WAIT8 => 
                    
                    if (count >= 5000) then --tinha contador antes
                        count <= 0;
                        etatp <= RECOVER;
                    else
                        count <= count + 1;
                        etatp <= WAIT8;
                    end if;    
                when READY => 
                    if (count > 5000) then
                        count <= 0;
                        wire_tx <= 'Z';
                        done_read <= '1';
                        etatp <= START;
                    else
                        mot <= mot; 
                        wire_tx <= 'Z'; 
                        count <= count +1;
                        etatp <= READY;
                    end if;
                    
                when others => 
                    etatp <= START;
            end case;
        end if;
        word <= mot;
    end process;

end Behavioral;
