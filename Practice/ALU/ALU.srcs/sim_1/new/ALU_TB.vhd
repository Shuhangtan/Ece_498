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
    Port ( A, B           : in 	STD_LOGIC_VECTOR(15 DOWNTO 0);  -- inputs to the ALU
            clk           : in     STD_LOGIC;
            --f              : in 	STD_LOGIC_VECTOR(2 DOWNTO 0);  -- the ALU function
            ALU_result    : out	STD_LOGIC_VECTOR(15 DOWNTO 0));
  end component;
  
  -- Data
  signal A, B, ALU_result: STD_LOGIC_VECTOR (15 downto 0);
  signal clk: STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin

-- Instantiate the Unit Under Test (UUT)
  uut_01:
  alu
    Port Map ( A => A,
               B => B,
               clk => clk,
               ALU_result => ALU_result);

-- Clock process
  clk_process: process
  begin
    clk <= '1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2;
  end process;

-- Stimuli process
  stimuli_process: process
  begin
    A <= "0000000000000000";
    B <= "0000000000000000";
    wait for 19.5*clk_period;
    
    A <= "0100101100000010"; --0.586*2^15
    B <= "1011010011111110"; --1.414*2^15
    wait for clk_period;    
     
    A <= "1000110011001101"; --1.1*2^15
    B <= "0100110011001101"; --0.6*2^15
    wait for clk_period;
    
    A <= "0000000000000000";
    B <= "0000000000000000";
    wait;
  end process;

end Behavioral;
