-- This file is for practicing VHDL programming 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity code_practice is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           --c : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (7 downto 0));
end code_practice;

architecture Behavioral of code_practice is

begin
    z <= a when (a and "11110000") /= "00000000" else b;
end Behavioral;
