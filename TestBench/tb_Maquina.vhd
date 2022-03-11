library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Maquina is end tb_Maquina;

architecture Structural of tb_Maquina is
component Maquina_Expendedora is
     Port (CLK,RST: in STD_LOGIC;
            RST_cont:in STD_LOGIC;
            COIN_IN:in STD_LOGIC_VECTOR(2 downto 0);
            COIN_OUT: out STD_LOGIC_VECTOR(6 downto 0);
            LED_LATA:out STD_LOGIC;
            LED_EMPTY:out STD_LOGIC
            );
end component;
Signal CLK,RST,RSTC,LED_LATA,LED_EMPTY:STD_LOGIC;
Signal C_in:STD_LOGIC_VECTOR(2 downto 0);
Signal C_out:STD_LOGIC_VECTOR(6 downto 0);
begin

DUT :Maquina_Expendedora port map(CLK,RST,RSTC,C_in,C_out,LED_LATA,LED_EMPTY);

process begin
    CLK<='1';wait for 5ns;
    CLK<='0';wait for 5ns;
end process;

process begin
    RST<='1';wait for 2ns;
    RST<='0';wait;
end process;

process begin
    C_in<="100";wait for 60ns;
    C_in<="000";wait;


end process;

process begin
RSTC<='1';wait for 2ns;
RSTC<='0';wait for 72ns;
RSTC<='1';wait for 2ns;
RSTC<='0';wait;
end process;

end Structural;
