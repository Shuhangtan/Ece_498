-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- synchronous 4-bit register using D flip flops
-- with a latch enable (LE)
--
-- (c)2018 Dr. D. Capson    Dept. of ECE
--                          University of Victoria
--
--  D flip flop with Synchronous Reset
--
-----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg4 is 
   port(D     :  in std_logic_vector (3 downto 0);   -- D input
        Q     :  out std_logic_vector (3 downto 0);  -- Q output
        CLK   :  in std_logic;     -- clock input
        RESET :  in std_logic;     -- forces register to 0000
        LE    :  in std_logic      -- latch enable - enables register to store data from input
       );
end reg4;

architecture structural of reg4 is

begin

process(CLK)

begin
  if (CLK'event and CLK= '1') then  -- positive edge clock
    if (RESET = '1') then
         Q <= "0000";
     else 
         if(LE = '1') then
             Q <= D;
         end if;
    end if;		   
end if;       

end process;

end structural;