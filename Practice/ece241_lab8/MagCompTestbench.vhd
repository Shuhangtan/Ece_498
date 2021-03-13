-----------------------------------------------------------
--
-- ECE241 Lab 4
--
-- A test bench to test all 256 combinations of input bit
-- patterns to the magnitude comparator
--
-- (c)2018 Dr. D. Capson   Dept. of ECE
--                         University of Victoria
--
-----------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;        --  NOTE:  we need this additional library to do the type conversions in the "for" loop below
			

--  the empty entity for the test bench

entity MagComp_testbench is
end MagComp_testbench;

architecture simulate of MagComp_testbench is

	signal input_test_pattern: std_logic_vector (10 downto 0);
    signal ALU_result     : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
begin

-- entity instantiation (uut = "unit under test")
-- the name of the entity ("MagComp" in this example) must
-- match the name of your upper level entity that you are
-- simulating.  Also the word "work" must be used as shown.
-- You should do explicit connections in the port map as follows
-- (otherwise you get a warning):
--      ( ip1 => ip1_s, ip2 => ip2_s, sum => sum_s, ca => ca_s);

uut : entity work.alu port map(A=>input_test_pattern(10 downto 7), B=>input_test_pattern(6 downto 3), f =>input_test_pattern(2 downto 0), ALU_result=>ALU_result);

-- specify a sequence of inputs for simulating our design 

process 
begin

	for i in 0 to 2047 loop  -- by default, the range 0 to 255 makes "i" an integer
	
	   input_test_pattern <= std_logic_vector(to_unsigned(i, 11));
	   wait for 1 ns;

	end loop; 

--	wait;

end process;

end simulate;