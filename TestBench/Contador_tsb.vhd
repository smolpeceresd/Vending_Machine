
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contador_tsb is end Contador_tsb;

architecture Behavioral of Contador_tsb is
component Contador is
  Port (CLK,RST,Restador:in STD_LOGIC;
         Led_empty:out STD_LOGIC);
end component;
signal CLK,RST,Restador,Led_empty:STD_LOGIC;
begin

DUT:Contador port map(CLK,RST,REstador,Led_empty);

process begin
CLK<='0';wait for 10ns;
CLK<='1';wait for 10ns;
end process;

process begin
RST<='1';wait for 5ns;
RST<='0';wait for 105ns;
RST<='1';wait for 2ns;
RST<='0';wait;
end process;

process begin
Restador<='0';wait for 20ns;
Restador<='1';wait for 60ns;
Restador<='0';wait for 10ns;
Restador<='1';wait;
end process;
end Behavioral;
