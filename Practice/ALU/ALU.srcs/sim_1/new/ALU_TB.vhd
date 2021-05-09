----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2021 11:48:03 AM
-- Design Name: 
-- Module Name: ALU_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_TB is
--  Port ( );
end ALU_TB;

architecture Behavioral of ALU_TB is
  -- Component declaration for the Unit Under Test (UUT)
  component alu is
    Port ( A, B           : in 	signed(15 DOWNTO 0);  
            f             : in 	STD_LOGIC_VECTOR(2 DOWNTO 0);  
            ALU_result    : out	signed(15 DOWNTO 0));
  end component;
  
  -- Data
  signal A, B, ALU_result: signed (15 downto 0);
  signal f: STD_LOGIC_VECTOR(2 DOWNTO 0);

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin

-- Instantiate the Unit Under Test (UUT)
  uut_01:
  alu
    Port Map ( A => A,
               B => B,
               f => f,
               ALU_result => ALU_result);

-- Stimuli process
  stimuli_process: process
  begin
    A <= "0010010110000001"; --0.586*2^14
    B <= "0101101001111111"; --1.414*2^14
    f <= "000";
    wait for clk_period;
    
    f <= "010";
    wait for clk_period;
    
    f <= "011";
    wait for clk_period;    
    
    A <= "0100011001100110"; --1.1*2^14
    B <= "0010011001100110"; --0.6*2^14
    f <= "000";
    wait for clk_period;
    
    f <= "010";
    wait for clk_period;
    
    f <= "011";
    wait for clk_period; 
    
    A <= "0000000000000000";
    B <= "0000000000000000";
    wait;
  end process;

end Behavioral;
