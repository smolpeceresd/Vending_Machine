
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD;

entity Contador is
  Port (CLK,RST,Restador:in STD_LOGIC;
         Led_empty:out STD_LOGIC);
end Contador;

architecture Behavioral of Contador is

signal cuenta: integer range 0 to 3;

begin
process(CLK,RST,Restador) is begin
    if(RST='1')then
        cuenta<=3;
    elsif(rising_edge(CLK)) then
        if(Restador='1')then 
            if(cuenta>0)then 
                cuenta<=cuenta-1;
            end if;
        end if;
    end if;
end process;
Led_empty<='1' when (cuenta=0) else'0';
end Behavioral;