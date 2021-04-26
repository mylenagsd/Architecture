library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity init is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en_init : in STD_LOGIC;
           wire_rx : in STD_LOGIC;
           done_init : out STD_LOGIC;
           wire_tx : out STD_LOGIC);
end init;

architecture Behavioral of init is
type etat is (IDLE, START, CHECK, READY );
signal etatp : etat;
signal count : integer range 0 to 200000;

begin
    process(rst,clk)
    begin
        if (rst = '1') then
            count <= 0;
            done_init <= '0';
            etatp <= IDLE;
            wire_tx <= 'Z';
        elsif (rising_edge(clk)) then
            case etatp is
                when IDLE => 
                    if (en_init = '1') then
                        count <= 0;
                        etatp <= START;
                        
                    else
                        wire_tx <= 'Z';
                        done_init <= '0'; 
                        count <= count +1;
                        etatp <= IDLE;
                    end if;
                when START => 
                    if (count > 48000) then
                        count <= 0;
                        etatp <= CHECK;
                    else 
                        wire_tx <= '0';
                        done_init <= '0';
                        count <= count +1;
                        etatp <= START;
                    end if;
                    
                when CHECK => 
                    if (count > 8000) then
                        count <= 0;
                        if (wire_rx = '0') then
                            etatp <= READY;
                        else
                            etatp <= IDLE;
                        end if;                        
                    else 
                        wire_tx <= 'Z';
                        count <= count +1;
                        etatp <= CHECK;
                    end if;
                    
                when READY => 
                    if (count > 40000) then
                        count <= 0;
                        done_init <= '1'; 
                        etatp <= IDLE;
                    else 
                        wire_tx <= 'Z';
                        count <= count +1;
                        etatp <= READY;
                    end if;
                    
                when others => 
                    etatp <= IDLE;
            end case;
        end if;
    end process;

end Behavioral;
