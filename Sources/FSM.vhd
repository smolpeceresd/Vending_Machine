
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM is
     Port (CLK,RST:in STD_LOGIC;
            Cin:in STD_LOGIC_VECTOR(2 downto 0);
            Empty_Latas:in STD_LOGIC;
            Activador: out STD_LOGIC;
            Display_Cin,Display_Cout:out STD_LOGIC_VECTOR(2 downto 0)
            );
end FSM;

architecture Behavioral of FSM is

type State_type is (S0,S1,S2,S3,S4,S5);
signal CurrentState,NextState:State_type;
begin
process (CLK , RST) is begin 
    if(RST='1') then
        CurrentState<= S0;
    elsif(rising_edge(CLK))then
        CurrentState<=NextState;
end if;
end process;

process (CurrentState,Cin,Empty_Latas)is begin
    
    if(Empty_Latas='1') then
    NextState<=S0;
    Display_Cin<="111";
    Display_Cout<="111";
    else
            case(CurrentState) is
            when S0=>
            Display_Cin<="000";
            Display_Cout<="000";
            Activador<='0';
                if(Cin="001")then --la moneda es 1
                    NextState<=S1;--tenemos 1 moneda
                 elsif(Cin="010") then --la moneda es 2
                    NextState<=S2;--tenemos 2e
                 elsif(Cin="100") then -- la moneda es 5
                    NextState<=S4; --tenemos 5e
                 else 
                 NextState<=CurrentState;
                 end if;
             when S1=> --ya interpretamos que tenemos 1e
             Display_Cin<="001";
             Display_Cout<="000";
             Activador<='0';
                 if(Cin="001")then --la moneda es 1
                    NextState<=S2;--tenemos 2 monedas
                 elsif(Cin="010") then --la moneda es 2
                    NextState<=S3; --tenemos 3 monedas
                 elsif(Cin="100") then-- la moneda es 5
                    NextState<=S5;-- tenemos 6 e;
                    else 
                 NextState<=CurrentState;
                 end if;
                 when S2=>
                     Display_Cin<="010";
                     Display_Cout<="000";
                     Activador<='1';
                     NextState<=S0;
                 when S3=>
                     Display_Cin<="011";
                     Display_Cout<="001";
                     Activador<='1';
                     NextState<=S0;
                 when S4=>
                     Display_Cin<="101";
                     Display_Cout<="011";
                     Activador<='1';
                     NextState<=S0;
                 when S5=>
                     Display_Cin<="110";
                     Display_Cout<="100";
                     Activador<='1';
                     NextState<=S0;
                 when others=>
                 NextState<=S0;
            end case;
     end if;
end process;
end Behavioral;
