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
--signal cos_r, sin_r: STD_LOGIC_VECTOR(16 downto 0):=(others => '0');

procedure cordic_rolling (angle           : in std_logic_vector(15 downto 0); -- 0 to 2*pi
                          signal cos, sin : out std_logic_vector (16 downto 0))is 
    -- A copy of the input angle
    variable ang: unsigned(15 downto 0):=(others => '0');
    
    -- Storing the quadrant of the input angle
	variable quad: unsigned(1 downto 0):=(others => '0');

	-- CORDIC calculation: x, y, and z(angle)
	variable xi, xi2: signed(19 downto 0):=(18 => '1', others => '0');
	variable yi, yi2: signed(19 downto 0):=(others => '0');
	variable zi, zi2: signed(19 downto 0):=(others => '0'); -- 0 to 90 degrees

	--Lookup table of the rotation angles 
	type z_array is array(0 to 15) of signed(19 downto 0);
	constant inc_angle: z_array := (
		"01000000000000000000", -- 45(atan(2^0))
		"00100101110010000001", -- atan(2^-1)
		"00010011111101100111", -- atan(2^-2)
		"00001010001000100010", -- atan(2^-3)
		"00000101000101100010", -- atan(2^-4)
		"00000010100010111011", -- atan(2^-5)
		"00000001010001011111", -- atan(2^-6)
		"00000000101000110000", -- atan(2^-7)
		"00000000010100011000", -- atan(2^-8)
		"00000000001010001100", -- atan(2^-9)
		"00000000000101000110", -- atan(2^-10)
		"00000000000010100011", -- atan(2^-11)
		"00000000000001010001", -- atan(2^-12)
		"00000000000000101001", -- atan(2^-13)
		"00000000000000010100", -- atan(2^-14)
		"00000000000000001010"  -- atan(2^-15)
		);
		
	variable x_40_bit, y_40_bit: unsigned(39 downto 0);
	variable x_16_bit, y_16_bit: unsigned(15 downto 0);
	variable co, si: STD_LOGIC_VECTOR(16 downto 0);

	constant scaling_factor: signed(19 downto 0):=("00100110110111010100"); -- +0.6072*2^18
	
begin
    ang := unsigned(angle);
    
    quad := ang(15 downto 14);
	zi := signed('0' & ang(13 downto 0) & "00000");
		
	for i in 0 to 15 loop
	  if (zi(19) = '1') then
		xi2 := xi + shift_right(yi, i);
		yi2 := yi - shift_right(xi, i);
		zi2 := zi + inc_angle(i);
	  else
		xi2 := xi - shift_right(yi, i);
		yi2 := yi + shift_right(xi, i);
	    zi2 := zi - inc_angle(i);
	  end if;
	  xi := xi2;
	  yi := yi2;
	  zi := zi2;
	end loop;
		
	x_40_bit := unsigned(abs(xi) * scaling_factor);
	y_40_bit := unsigned(abs(yi) * scaling_factor);
  
	x_16_bit := x_40_bit(36 downto 21);
	y_16_bit := y_40_bit(36 downto 21);
		
	case quad is
	  when "00" => -- First quadrant, no rotation
		co:= std_logic_vector('0' & x_16_bit);
		si:= std_logic_vector('0' & y_16_bit);
	  when "01" => -- Second quadrant, rotate 90 degrees counterclockwise
		co:= std_logic_vector('1' & y_16_bit);
		si:= std_logic_vector('0' & x_16_bit);
	  when "10" => -- Third quadrant, rotate 180 degrees counterclockwise
		co:= std_logic_vector('1' & x_16_bit);
		si:= std_logic_vector('1' & y_16_bit);
	  when others => -- Fourth quadrant, rotate 270 degrees counterclockwise
		co:= std_logic_vector('0' & y_16_bit);
		si:= std_logic_vector('1' & x_16_bit);
	end case;
	cos <= co;
	sin <= si;
end procedure;

begin

reg:process (rst, clk)
	begin
	  if rising_edge(clk) then
	    if (rst = '1') then
	      cos <= "00000000000000000" ;
          sin <= "00000000000000000" ;
	      angle_r <= "0000000000000000" ;
	    else
		  angle_r <= angle;
		  cordic_rolling(angle_r,cos, sin);
		end if;
	  end if; 	
	end process reg;


end Behavioral;