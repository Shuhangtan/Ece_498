library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shifter2 is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in     : in STD_LOGIC_VECTOR (15 downto 0);
           d_out    : out STD_LOGIC_VECTOR (15 downto 0));
end shifter2;

architecture Behavioral of shifter2 is

signal d_in_r, d_out_r: unsigned(15 downto 0):=(others => '0');
signal bit_r: unsigned(3 downto 0):=(others => '0');

begin

-- Register process
p1:process (rst, clk)
  begin 
	if rising_edge(clk) then
	  if (rst = '1') then
	    d_out <= "0000000000000000" ;
	    d_in_r <= "0000000000000000" ;
	    bit_r <= "0000" ;
	  else
	    d_out <= std_logic_vector(d_out_r);
	    d_in_r <= unsigned(d_in);
	    bit_r  <= unsigned(shift_by);	
	end if;
	end if; 	   
  end process p1;
  
d_out_r <= d_in_r srl (to_integer(bit_r));

end Behavioral;
