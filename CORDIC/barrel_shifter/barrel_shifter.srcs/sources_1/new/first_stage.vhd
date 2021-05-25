-- First stage of a 16-bit barrel shifter
-- Performs 8-bit shift

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity first_stage is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (15 downto 0));
end first_stage;

architecture Structural of first_stage is

begin
    y(0)  <= a(8)  when (b = '1') else a(0);
    y(1)  <= a(9)  when (b = '1') else a(1);
    y(2)  <= a(10) when (b = '1') else a(2);
    y(3)  <= a(11) when (b = '1') else a(3);
    y(4)  <= a(12) when (b = '1') else a(4);
    y(5)  <= a(13) when (b = '1') else a(5);
    y(6)  <= a(14) when (b = '1') else a(6);
    y(7)  <= a(15) when (b = '1') else a(7);
    y(8)  <= '0'   when (b = '1') else a(8);
    y(9)  <= '0'   when (b = '1') else a(9);
    y(10) <= '0'   when (b = '1') else a(10);
    y(11) <= '0'   when (b = '1') else a(11);
    y(12) <= '0'   when (b = '1') else a(12);
    y(13) <= '0'   when (b = '1') else a(13);
    y(14) <= '0'   when (b = '1') else a(14);
    y(15) <= '0'   when (b = '1') else a(15);

end Structural;
