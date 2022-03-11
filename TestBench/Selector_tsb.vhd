library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Selector_tsb is end Selector_tsb;

architecture Behavioral of Selector_tsb is
component Selector is
  Port (CLK,Activador:in STD_LOGIC;
         LedLata_Selector_Restador:out STD_LOGIC);
end component;

signal CLK,Activador,LedLata_Selector_Restador: STD_LOGIC;
begin
DUT: Selector port map(CLK,Activador,LedLata_Selector_Restador);

process begin
CLK<='1'; wait for 10ns;
CLK<='0'; wait for 10ns;
end process;

process begin
Activador<='0' ; wait for 10ns;
Activador<='1' ; wait for 30ns;
Activador<='0' ; wait for 20ns;
Activador<='1' ; wait for 20ns;
Activador<='0' ; wait;
end process;
end Behavioral;
