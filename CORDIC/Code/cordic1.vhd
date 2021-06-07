-- Created on June 6, 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic1 is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           angle    : in STD_LOGIC_VECTOR(9 downto 0); -- 511 to -512
           cos      : out STD_LOGIC_VECTOR (16 downto 0);
           sin      : out STD_LOGIC_VECTOR (16 downto 0));
end cordic1;

architecture Behavioral of cordic1 is

-- Registered signals for input and outputs
signal angle_r: signed(9 downto 0):=(others => '0');
signal cos_r, sin_r: signed(17 downto 0):=(others => '0');

begin

-- Register process
p1:process (rst, clk)
  begin 
	if rising_edge(clk) then
	  if (rst = '1') then
	    cos <= "00000000000000000" ;
      sin <= "00000000000000000" ;
	    angle_r <= "0000000000" ;
    else if (angle = "0000000000") then
      cos <= "01000000000000000" ;
      sin <= "00000000000000000" ;
	    angle_r <= "0000000000" ;
	  else
	    cos <= std_logic_vector(cos_r);
      sin <= std_logic_vector(sin_r);
	    angle_r <= signed(angle);
	  end if;
	end if; 	   
end process p1;



end Behavioral;