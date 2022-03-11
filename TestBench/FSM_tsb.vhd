
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_tsb is end FSM_tsb;

architecture Behavioral of FSM_tsb is
component FSM is
     Port (CLK,RST:in STD_LOGIC;
            Cin:in STD_LOGIC_VECTOR(2 downto 0);
            Empty_Latas:in STD_LOGIC;
            Activador: out STD_LOGIC;
            Display_Cin,Display_Cout:out STD_LOGIC_VECTOR(2 downto 0)
            );
end component;
signal CLK,RST,Empty_Latas,Activador: STD_LOGIC;
signal cin,Display_Cin,Display_Cout : STD_LOGIC_VECTOR( 2 downto 0);
begin
DUT : FSM port map(CLK,RST,cin,Empty_Latas,Activador,Display_cin,Display_Cout);
process begin
CLK<='0';wait for 5ns;
CLK<='1';wait for 5ns;
end process;
process begin
RST<='1';wait for 2ns;
RST<='0';wait;
end process;
process begin
Empty_Latas<='1';wait for 10ns;
Empty_Latas<='0';wait;
end process;
process begin
cin<="010";wait for 15ns;
cin<="100";wait;
end process;
end Behavioral;
