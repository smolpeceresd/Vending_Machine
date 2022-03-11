library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador7seg is
  Port (X:in STD_LOGIC_VECTOR(2 downto 0);
        D:out STD_LOGIC_VECTOR(6 downto 0)
        ); 
end Decodificador7seg;

architecture Behavioral of Decodificador7seg is

begin
    with X select
        D<="0000001" when"000",--0
           "1001111" when"001",--1
           "0010010" when"010",--2
           "0000110" when"011",--3
           "0100100" when"101",--5
           "0100000" when"110",--6
           "1111111" when others;--todo apagado
           
end Behavioral;
