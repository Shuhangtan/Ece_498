----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2021 09:24:30 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
-- component declaration
component half_adder
port (x, y : in std_logic; s, c : out std_logic);
end component;

--configuration specification
for all : half_adder use entity work.half_adder;

signal HA_C, HA_S, FA_C, FA_S : std_logic;

begin
  -- component instances
  HA1 : half_adder
  port map (x => x, y => y, s => HA_S, c => HA_C);
  HA2 : half_adder
  port map (x => HA_S, y => z, s => FA_S, c => FA_C);
  
  S <= FA_S;
  C <= FA_C or HA_C;

end Behavioral;
