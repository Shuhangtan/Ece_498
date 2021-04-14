-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- quad 4:1 MUX (behavioural code)
--
-- (c)2018 Dr. D. Capson   Dept. of ECE
--                         University of Victoria
--
-----------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY quad4to1mux is
      PORT ( 
             a,b,c,d        : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
             s              : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
             Y              : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
      );
END quad4to1mux ;


ARCHITECTURE Behaviour OF quad4to1mux IS   
BEGIN
      WITH s SELECT
            Y  <= a WHEN "00",
                  b WHEN "01",
                  c WHEN "10",
                  d WHEN OTHERS ;
END Behaviour ;
