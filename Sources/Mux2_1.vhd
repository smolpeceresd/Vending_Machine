
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2_1 is
     Port (D_cin,D_cout: in STD_LOGIC_VECTOR( 2 downto 0);
           S:in STD_LOGIC;
           Salida_Display: out STD_LOGIC_VECTOR(2 downto 0)
           );
end Mux2_1;

architecture Behavioral of Mux2_1 is

begin
Process(D_cin,D_cout,S) is begin
 if(S='0') then
    Salida_Display<=D_cin;
 else
    Salida_Display<=D_cout;
 end if;
 end process;

end Behavioral;
