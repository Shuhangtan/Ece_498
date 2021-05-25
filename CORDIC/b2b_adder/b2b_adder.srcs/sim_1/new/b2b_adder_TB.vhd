----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2021 10:26:22 PM
-- Design Name: 
-- Module Name: four_bit_adder_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity b2b_adder_TB is
--  Port ( );
end b2b_adder_TB;

architecture Behavioral of b2b_adder_TB is
-- Component declaration for the Unit Under Test (UUT)
  component A_S_TOP_LEVEL is
    Port ( A_IN  : in std_logic_vector(15 downto 0);
           B_IN  : in std_logic_vector(15 downto 0);
           CLK   : in STD_LOGIC;
           RST   : in STD_LOGIC;
           C_OUT : out STD_LOGIC;
           S_OUT : out std_logic_vector(15 downto 0));
  end component;

  -- Clock & Reset
  signal clk, rst : STD_LOGIC;

  -- Data
  signal A_in, B_in, S_out : std_logic_vector(15 downto 0);
  signal C_out: STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 20 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  A_S_TOP_LEVEL
    Port Map ( A_in => A_in,
               B_in => B_in,
               clk => clk,
               rst => RST,
               S_out => S_out,
               C_out => C_out);

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
    -- Big-Bang state
    rst <= '1';
    A_in <= "0000000000000000";
    B_in <= "0000000000000000";
    wait for clk_period*19.5;
    
    -- Test cases
    rst <= '0';
    A_in <= "0010010110000001"; --0.586*2^14
    B_in <= "0101101001111111"; --1.414*2^14
    wait for clk_period;
    
    A_in <= "0100011001100110"; --1.1*2^14
    B_in <= "0010011001100110"; --0.6*2^14
    wait for clk_period;
    
    A_in <= "0101000111101100"; --1.28*2^14
    B_in <= "0001011001100110"; --0.35*2^14
    wait for clk_period;
    
    A_in <= "0000000000000000";
    B_in <= "0000000000000000";
    wait;
  end process;

end Behavioral;

