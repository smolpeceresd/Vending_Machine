
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Selector is
  Port (CLK,Activador:in STD_LOGIC;
         LedLata_Selector_Restador:out STD_LOGIC);
end Selector;

architecture Behavioral of Selector is
begin
process(CLK,Activador) is begin 
    if(falling_edge(CLK))then -- bajada 
        if(Activador='1')then
            LedLata_Selector_Restador<='1';
        else 
             LedLata_Selector_Restador<='0';
        end if;
    end if;
 end process;
end Behavioral;
