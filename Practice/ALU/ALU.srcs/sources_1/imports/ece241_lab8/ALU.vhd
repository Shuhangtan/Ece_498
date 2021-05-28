-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- 8-function ALU
-- (combinational logic)
-- (behavioural code)
--
-- (c)2018 Dr. D. Capson    Dept. of ECE
--                          University of Victoria
--
-----------------------------------------------------------

-- Experiment of numeric_std +,-,*
-- All test cases passed

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
--USE ieee.std_logic_signed.all ;
use IEEE.NUMERIC_STD.ALL;

ENTITY alu IS
      PORT(
            A, B           : in 	STD_LOGIC_VECTOR(15 DOWNTO 0);  -- inputs to the ALU
            clk            : in     STD_LOGIC;
            --f              : in 	STD_LOGIC_VECTOR(2 DOWNTO 0);  -- the ALU function
            ALU_result     : out	STD_LOGIC_VECTOR(15 DOWNTO 0)   -- the result of the ALU operation
      );
END alu ;

ARCHITECTURE Behaviour OF alu IS

signal result_r, a_r, b_r: unsigned(15 downto 0);	
signal temp1, temp2: unsigned(31 downto 0);

BEGIN
	temp1 <= a_r * b_r;
	temp2 <= "000000000000000" & temp1(31 downto 15);
	result_r <= resize(temp2, 16); 
	--result_r <= "000000000000000" & result_r(31 downto 15);
	
	process(clk)
	begin
	   if(rising_edge(clk)) then
	       a_r <= unsigned(A);
	       b_r <= unsigned(B);
	       ALU_result <= STD_LOGIC_VECTOR(result_r);
	   end if;
	end process;
	
END Behaviour ;