-- Create Date: 13.01.2019 16:25:25
-- Module Name: FSM_Mult - Behavioral
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM_Mult1 is
    Port ( H : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Start : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           En : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (15 downto 0));
end FSM_Mult1;

architecture Behavioral of FSM_Mult1 is
type etat is  (reset,idle,load,inc,sum,shift,store);
signal present_state : etat;
signal sauv_B : unsigned (7 downto 0);
signal i : integer range 0 to 8;
signal decalage_A, somme : unsigned (15 downto 0);
signal En_ref_Load, En_Inc, En_ref_Sum, En_Shift, En_Store : STD_LOGIC;
signal En_up : STD_LOGIC;

begin
Process(H)
begin
if rising_edge(H)then
    if (rst = '1') then
        i<= 0;
        Sauv_B <= (others=>'0');
        somme <= (others=>'0');
        decalage_A <= (others=>'0');
        Result <= (others=>'0');
        En <='0';      
        present_state <= idle;
     else
        case present_state is 
            when reset =>
                i<= 0;
                Sauv_B <= (others=>'0');
                somme <= (others=>'0');
                decalage_A <= (others=>'0');
                Result <= (others=>'0');
                En <='0';      
                present_state <= idle;
            when idle =>
                if (Start ='1') then
                    i<= 0;
                    somme <= (others=>'0');
                    En <='0';      
                    sauv_B <= unsigned(B);
                    decalage_A <= "00000000" & unsigned (A);
                    present_state <= load;
                else
                    present_state <= idle;
                end if;
            when load =>
                if (Sauv_B(i)='1') then
                    somme <= somme + decalage_A;
                    i <= i + 1;
                    present_state <= sum;
                else
                    i <= i + 1;
                    present_state <= inc;
                end if;
            when sum =>
                decalage_A <= decalage_A sll 1;
                present_state <= shift;
            when inc =>
                decalage_A <= decalage_A sll 1;
                present_state <= shift;
            when shift =>
                if i=8 then 
                    Result <= std_logic_vector(somme);
                    En <= '1';
                    present_state <= store;
                else
                    if (Sauv_B(i)='1') then
                        somme <= somme + decalage_A;
                        i <= i + 1;
                        present_state <= sum;
                    else
                        i <= i + 1;
                        present_state <= inc;
                    end if;
                end if;     
            when store =>
                i<= 0;
                somme <= (others=>'0');
                En <='0';      
                sauv_B <= unsigned(B);
                decalage_A <= "00000000" & unsigned (A);
                present_state <= idle;
        end case;
    end if;
end if;
end process;

end Behavioral;