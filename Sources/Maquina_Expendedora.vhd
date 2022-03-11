
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Maquina_Expendedora is
     Port (CLK,RST: in STD_LOGIC;
            RST_cont:in STD_LOGIC;
            COIN_IN:in STD_LOGIC_VECTOR(2 downto 0);
            COIN_OUT: out STD_LOGIC_VECTOR(6 downto 0);
            LED_LATA:out STD_LOGIC;
            LED_EMPTY:out STD_LOGIC
            );
end Maquina_Expendedora;

architecture Structural of Maquina_Expendedora is

component Mux2_1 is
     Port (D_cin,D_cout: in STD_LOGIC_VECTOR( 2 downto 0);
           S:in STD_LOGIC;
           Salida_Display: out STD_LOGIC_VECTOR(2 downto 0)
           );
end component;

component Decodificador7seg is
  Port (X:in STD_LOGIC_VECTOR(2 downto 0);
        D:out STD_LOGIC_VECTOR(6 downto 0)
        ); 
end component;

component FSM is
     Port (CLK,RST:in STD_LOGIC;
            Cin:in STD_LOGIC_VECTOR(2 downto 0);
            Empty_Latas:in STD_LOGIC;
            Activador: out STD_LOGIC;
            Display_Cin,Display_Cout:out STD_LOGIC_VECTOR(2 downto 0)
            );
end component;

component Selector is
  Port (CLK,Activador:in STD_LOGIC;
         LedLata_Selector_Restador:out STD_LOGIC);
end component;

component Contador is
  Port (CLK,RST,Restador:in STD_LOGIC;
         Led_empty:out STD_LOGIC);
end component;


signal SalidaD1,SalidaD2,SalidaMux:STD_LOGIC_VECTOR(2 downto 0);
Signal SalidaContador,Led_Selector,empty:STD_LOGIC;
begin

FSM1 : FSM port map(CLK,RST,COIN_IN,empty,SalidaContador,SalidaD1,SalidaD2);

SEL: Selector port map(CLK,SalidaContador,Led_Selector);

MUX2: Mux2_1 port map(SalidaD1,SalidaD2,Led_Selector,SalidaMux);

D7: Decodificador7seg port map(SalidaMux,COIN_OUT);

CONT: Contador port map(CLK,RST_cont,Led_Selector,empty);

LED_LATA<=Led_Selector;
LED_EMPTY<=empty;
end Structural;