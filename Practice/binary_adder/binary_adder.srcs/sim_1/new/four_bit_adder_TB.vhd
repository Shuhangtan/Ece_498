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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_adder_TB is
--  Port ( );
end four_bit_adder_TB;

architecture Behavioral of four_bit_adder_TB is
-- Component declaration for the Unit Under Test (UUT)
  component Nbit_adder is
    Port ( A_in  : in STD_LOGIC_VECTOR(3 downto 0);
           B_in  : in STD_LOGIC_VECTOR(3 downto 0);
           S_out : out STD_LOGIC_VECTOR(3 downto 0);
           C_out : out STD_LOGIC);
  end component;

  -- Clock & Reset
  signal clk : STD_LOGIC;

  -- Data
  signal A_in, B_in, S_out : STD_LOGIC_VECTOR (3 downto 0);
  signal C_out: STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  Nbit_adder
    Port Map ( A_in => A_in,
               B_in => B_in,
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
    A_in <= "0000";
    B_in <= "0101";
    wait for clk_period;
    
    A_in <= "0111";
    B_in <= "1000";
    wait for clk_period;
    
    A_in <= "0110";
    B_in <= "1101";
    wait for clk_period;
    
    A_in <= "1111";
    B_in <= "1111";
    wait for clk_period;
    
    A_in <= "0000";
    B_in <= "0101";
    wait for clk_period;
    
    A_in <= "0000";
    B_in <= "0000";
    wait;
  end process;

end Behavioral;
