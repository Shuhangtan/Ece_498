----------------------------------------------------------------------------------
-- 16 bit barrel shifter
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity barrel_shifter is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in     : in STD_LOGIC_VECTOR (15 downto 0);
           d_out    : out STD_LOGIC_VECTOR (15 downto 0));
end barrel_shifter;

architecture Behavioral of barrel_shifter is

signal d_in_r, d_out_r: STD_LOGIC_VECTOR (15 downto 0):=(others => '0');
signal bit_r: STD_LOGIC_VECTOR(3 downto 0):=(others => '0');

signal a1, a2, a3, a4: STD_LOGIC_VECTOR (15 downto 0):=(others => '0');

component first_stage is
    port(a : in STD_LOGIC_VECTOR (15 downto 0);
         b : in STD_LOGIC;
         y : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component second_stage is
    port(a : in STD_LOGIC_VECTOR (15 downto 0);
         b : in STD_LOGIC;
         y : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component third_stage is
    port(a : in STD_LOGIC_VECTOR (15 downto 0);
         b : in STD_LOGIC;
         y : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component fourth_stage is
    port(a : in STD_LOGIC_VECTOR (15 downto 0);
         b : in STD_LOGIC;
         y : out STD_LOGIC_VECTOR (15 downto 0));
end component;    

begin

-- Register process
p1:process (rst, clk)
  begin 
	if rising_edge(clk) then
	  if (rst = '1') then
	    d_out <= "0000000000000000" ;
	  else
	    d_out <= d_out_r;
	  end if;
	  d_in_r <= d_in;
	  bit_r  <= shift_by;
	end if; 	   
  end process p1;
  
-- Shifter circuit
a1 <= d_in_r;
--d_out <= d_out_r;

shift_8_bit:first_stage 
    port map(a => a1, 
             b => bit_r(3),
             y => a2); 
             
shift_4_bit:second_stage 
    port map(a => a2, 
             b => bit_r(2),
             y => a3); 

shift_2_bit:third_stage 
    port map(a => a3, 
             b => bit_r(1),
             y => a4); 

shift_1_bit:fourth_stage 
    port map(a => a4, 
             b => bit_r(0),
             y => d_out_r); 
  
end Behavioral;
