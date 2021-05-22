

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BS_TB is
--  Port ( );
end BS_TB;

architecture Behavioral of BS_TB is

component barrel_shifter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in : in unsigned (15 downto 0);
           d_out : out unsigned (15 downto 0));
end component;

signal clk, rst: STD_LOGIC;

begin


end Behavioral;
