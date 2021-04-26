Library IEEE;
use IEEE.std_logic_1164.all;
entity display7seg is	
    port (clk : in STD_LOGIC;
          dp_in :  in STD_LOGIC;
	      data :  in STD_LOGIC_VECTOR (3 downto 0);
		  a :  out STD_LOGIC;
		  b :  out STD_LOGIC;
		  c :  out STD_LOGIC;
		  d :  out STD_LOGIC;
		  e :  out STD_LOGIC;
		  f :  out STD_LOGIC;
		  g :  out STD_LOGIC;
		  dp : out STD_LOGIC);
end display7seg;


architecture Behavioral of display7seg is
begin	
	process (clk,data) 
	   begin
	       if (rising_edge (clk)) then
            case data is 
                when "0000" => a <= '0';b <= '0';c <= '0';d <= '0';e <= '0';f <= '0';g <= '1';
                when "0001" => a <= '1';b <= '0';c <= '0';d <= '1';e <= '1';f <= '1';g <= '1';
                when "0010" => a <= '0';b <= '0';c <= '1';d <= '0';e <= '0';f <= '1';g <= '0';
                when "0011" => a <= '0';b <= '0';c <= '0';d <= '0';e <= '1';f <= '1';g <= '0';
                when "0100" => a <= '1';b <= '0';c <= '0';d <= '1';e <= '1';f <= '0';g <= '0';
                when "0101" => a <= '0';b <= '1';c <= '0';d <= '0';e <= '1';f <= '0';g <= '0';
                when "0110" => a <= '0';b <= '1';c <= '0';d <= '0';e <= '0';f <= '0';g <= '0';
                when "0111" => a <= '0';b <= '0';c <= '0';d <= '1';e <= '1';f <= '1';g <= '1';
                when "1000" => a <= '0';b <= '0';c <= '0';d <= '0';e <= '0';f <= '0';g <= '0';
                when "1001" => a <= '0';b <= '0';c <= '0';d <= '0';e <= '1';f <= '0';g <= '0';
                when "1010" => a <= '0';b <= '1';c <= '1';d <= '0';e <= '0';f <= '0';g <= '1';
                when "1011" => a <= '0';b <= '1';c <= '1';d <= '1';e <= '0';f <= '0';g <= '0';
                when "1100" => a <= '1';b <= '1';c <= '1';d <= '1';e <= '1';f <= '1';g <= '1';
                when "1101" => a <= '1';b <= '1';c <= '1';d <= '1';e <= '1';f <= '1';g <= '0';
                when "1110" => a <= '0';b <= '1';c <= '1';d <= '0';e <= '0';f <= '0';g <= '0';
                when others => a <= '0';b <= '1';c <= '1';d <= '0';e <= '0';f <= '0';g <= '0';
            end case;
          end if;
	end process;
	dp <= dp_in;
end;