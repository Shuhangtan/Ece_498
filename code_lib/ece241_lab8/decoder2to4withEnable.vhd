-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- 2:4 binary decoder with an "enable" input
--  enabled when en=1
--  (behavioural code)
--
-- (c)2018 Dr. D. Capson   Dept. of ECE
--                         University of Victoria
--
-----------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder2to4 is
port (
      s : in std_logic_vector (1 downto 0);
      en: in std_logic;
      Y : out std_logic_vector (3 downto 0)
     );
end Decoder2to4;

architecture behavioural of Decoder2to4 is

begin

  Y <= "0000" when en='0' else
       "0001" when en='1' AND s="00" else
       "0010" when en='1' AND s="01" else
       "0100" when en='1' AND s="10" else
       "1000" when en='1' AND s="11";

end behavioural;
