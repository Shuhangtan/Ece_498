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

signal data, shift8, shift4, shift2, shift1: unsigned (15 downto 0):=(others => '0');

begin

-- Register process
p1:process (rst, clk)
  begin 
    if rst = '1' then
	  d_out <= "0000000000000000";
	elsif rising_edge(clk) then
	  d_out <= shift1;
	end if;    
  end process p1;
  
-- Shifting process
p2:process (shift_by)
  begin
    -- shift 8 bits
	if (shift_by(3) = '1') then
	  shift8 <= "00000000" & data(15 downto 8);
	else
	  shift8 <= data;
	end if;
	-- shift 4 bits
	if (shift_by(2) = '1') then
	  shift4 <= "0000" & data(15 downto 4);
	else
	  shift4 <= shift8;
	end if; 
	-- shift 2 bits
	if (shift_by(1) = '1') then
	  shift2 <= "00" & data(15 downto 2);
	else
	  shift2 <= shift4;
	end if;
	-- shift 1 bit
	if (shift_by(0) = '1') then
	  shift1 <= "0" & data(15 downto 1);
	else
	  shift1 <= shift2;
	end if;
  end process p2;

end Behavioral;
