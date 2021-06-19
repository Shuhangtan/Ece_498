-- Created on June 6, 2021
-- Reference: https://github.com/kevinpt/vhdl-extras/blob/master/rtl/extras/cordic.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           angle    : in STD_LOGIC_VECTOR(15 downto 0); -- 0 to 2*pi
           cos      : out STD_LOGIC_VECTOR (16 downto 0);
           sin      : out STD_LOGIC_VECTOR (16 downto 0));
end cordic;

architecture Behavioral of cordic is

-- Registered signals for input and outputs
signal angle_r: STD_LOGIC_VECTOR(15 downto 0):=(others => '0');
signal cos_r, sin_r: STD_LOGIC_VECTOR(16 downto 0):=(others => '0');

component cordic_rolling is
    Port ( angle_r    : in std_logic_vector(15 downto 0); -- 0 to 2*pi
           cos_r      : out std_logic_vector (16 downto 0);
           sin_r      : out std_logic_vector (16 downto 0));
end component;

begin

-- Register process
reg:process (rst, clk)
  begin 
	if rising_edge(clk) then
	  if (rst = '1') then
	    cos <= "00000000000000000" ;
        sin <= "00000000000000000" ;
	    angle_r <= "0000000000000000" ;
	  else
	    angle_r <= angle;
		cos <= cos_r;
		sin <= sin_r;			
	  end if;
	end if; 	   
end process reg;

Rolling : cordic_rolling 
    port map(angle_r => angle_r, 
             cos_r   => cos_r,
             sin_r   => sin_r); 

end Behavioral;