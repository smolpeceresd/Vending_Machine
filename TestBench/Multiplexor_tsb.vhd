
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor_tsb is end Multiplexor_tsb;

architecture Behavioral of Multiplexor_tsb is
component Mux2_1 is
     Port (D_cin,D_cout: in STD_LOGIC_VECTOR( 2 downto 0);
           S:in STD_LOGIC;
           Salida_Display: out STD_LOGIC_VECTOR(2 downto 0)
           );
end component;
signal D_cin,D_cout,Salida_Display:STD_LOGIC_VECTOR(2 downto 0);
signal S:STD_LOGIC;
begin
DUT: Mux2_1 port map(D_cin,D_cout,S,Salida_Display);
process begin
D_cin<="001";wait for 10ns;
D_cin<="101";wait for 10ns;
D_cin<="010";wait for 10ns;
D_cin<="011";wait for 10ns;
end process;

process begin
D_cout<="000";wait for 10ns;
D_cout<="011";wait for 10ns;
D_cout<="000";wait for 10ns;
D_cout<="001";wait for 10ns;
end process;

process begin
S<='1';wait for 10ns;
S<='0';wait for 20ns;
S<='1';wait for 10ns;
S<='0';wait;
end process;

end Behavioral;
