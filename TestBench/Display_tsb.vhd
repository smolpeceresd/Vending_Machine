library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Display_tsb is end Display_tsb;

architecture Behavioral of Display_tsb is
component Decodificador7seg is
  Port (X:in STD_LOGIC_VECTOR(2 downto 0);
        D:out STD_LOGIC_VECTOR(6 downto 0)
        ); 
end component;

signal X: STD_LOGIC_VECTOR( 2 downto 0);
signal D: STD_LOGIC_VECTOR( 6 downto 0);

begin

DUT: Decodificador7seg port map(X,D);

process begin
X<="000";wait for 10ns;
X<="001";wait for 10ns;
X<="010";wait for 10ns;
X<="011";wait for 10ns;
X<="101";wait for 10ns;
X<="110";wait for 10ns;
X<="111";wait;
end process;

end Behavioral;
