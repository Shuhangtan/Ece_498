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

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all ;

ENTITY alu IS
      PORT(
            A, B           : in 	STD_LOGIC_VECTOR(3 DOWNTO 0);  -- inputs to the ALU
            f              : in 	STD_LOGIC_VECTOR(2 DOWNTO 0);  -- the ALU function
            ALU_result     : out	STD_LOGIC_VECTOR(3 DOWNTO 0)   -- the result of the ALU operation
      );
END alu ;

ARCHITECTURE Behaviour OF alu IS	
BEGIN
	PROCESS (f, A, B)
	BEGIN
		CASE f IS
			WHEN "000" =>
				ALU_result <= A;        -- pass thru of A (no change)
			WHEN "001" =>
				ALU_result <= A + 1 ;   -- increment A
			WHEN "010" =>
				ALU_result <= A + B ;   -- add
			WHEN "011" =>
				ALU_result <= A - B ;   -- subtract
			WHEN "100" =>
				ALU_result <= A XOR B ; -- bit-wise XOR
			WHEN "101" =>
				ALU_result <= A OR B ;  -- bit-wise OR
			WHEN "110" =>
				ALU_result <= A AND B ; -- bit-wise AND
			WHEN OTHERS =>
				ALU_result <= not(A);   -- invert A
		END CASE ;
	END PROCESS ;
END Behaviour ;