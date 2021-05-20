----------------------------------------------------------------------------------
-- 16 bit barrel shifter

-- Reference:
-- https://vlsicoding.blogspot.com/2013/10/design-8-bit-barrel-shifter-in-vhdl.html
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity barrel_shifter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in : in unsigned (15 downto 0);
           d_out : out unsigned (15 downto 0));
end barrel_shifter;

architecture Behavioral of barrel_shifter is
begin

-- Register process
p1:process (rst, clk)
  begin 
    if
    end if;       
  end process;

end Behavioral;
