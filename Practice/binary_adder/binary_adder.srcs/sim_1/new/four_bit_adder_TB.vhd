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
  component binary_adder is
    generic ( N : integer:=4 );
    Port ( A_in  : in STD_LOGIC_VECTOR(N-1 downto 0);
           B_in  : in STD_LOGIC_VECTOR(N-1 downto 0);
           S_out : out STD_LOGIC_VECTOR(N-1 downto 0);
           C_out : out STD_LOGIC);
  end component;

  -- Clock & Reset
  signal clk : STD_LOGIC;

  -- Data
  signal A, B, sum : STD_LOGIC_VECTOR (3 downto 0);
  signal carry: STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  binary_adder
    generic map (N => 4)
    Port Map ( A_in => A,
               B_in => B,
               S_out => sum,
               C_out => carry);

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
    A <= "0000";
    B <= "0101";
    wait for clk_period;
    
    A <= "0111";
    B <= "1000";
    wait for clk_period;
    
    A <= "0110";
    B <= "1101";
    wait for clk_period;
    
    A <= "1111";
    B <= "1111";
    wait for clk_period;
    
    A <= "0000";
    B <= "0101";
    wait for clk_period;
    
    A <= "0000";
    B <= "0000";
    wait;
  end process;

end Behavioral;
