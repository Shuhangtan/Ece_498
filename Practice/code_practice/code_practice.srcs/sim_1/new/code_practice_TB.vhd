----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2021 01:40:29 PM
-- Design Name: 
-- Module Name: code_practice_TB - Behavioral
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

entity code_practice_TB is
--  Port ( );
end code_practice_TB;

architecture Behavioral of code_practice_TB is
-- Component declaration for the Unit Under Test (UUT)
  component code_practice is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           --c : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  -- Clock
  --signal clk : STD_LOGIC;

  -- Data
  signal a, b, z : STD_LOGIC_VECTOR (7 downto 0);

  -- Clock period definition
  --constant clk_period : time := 5 ns;
begin
    a <= "00000000";
    b <= "01010101";
    wait for 10 ns;
    
    a <= "10000000";
    wait for 10 ns;
    
    a <= "01100000";
    wait for 10 ns;
    
    a <= "00001111";
    wait;

end Behavioral;
