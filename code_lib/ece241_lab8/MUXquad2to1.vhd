-----------------------------------------------------------
--
-- ECE241  Lab 3
--
-- quad 2:1 MUX (behavioural example)
--
-- (c)2018 Dr. D. Capson   Dept. of ECE
--                         University of Victoria
--
-----------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY quad2to1mux IS
      PORT (
               a,b        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
               s          : IN STD_LOGIC;
               Y          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
      );
END quad2to1mux ;


ARCHITECTURE Behaviour OF quad2to1mux IS   
BEGIN
      Y <= a when s='0' else 
       b;
END Behaviour ;
