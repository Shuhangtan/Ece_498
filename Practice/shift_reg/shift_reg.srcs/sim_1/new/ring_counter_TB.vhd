----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2021 10:22:33 PM
-- Design Name: 
-- Module Name: ring_counter_TB - Behavioral
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

entity ring_counter_TB is
--  Port ( );
end ring_counter_TB;

architecture Behavioral of ring_counter_TB is
-- Component declaration for the Unit Under Test (UUT)
  component ring_counter is
    --generic ( N : integer:=4 );
    Port ( reset : in STD_LOGIC;
           clk   : in STD_LOGIC;
           Q_out : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  -- Clock & Reset
  signal reset, clk : STD_LOGIC;

  -- Data
  signal Q_out : STD_LOGIC_VECTOR (3 downto 0);

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  ring_counter
    --generic map (N => 4)
    Port Map ( clk => clk,
               reset => reset,
               Q_out => Q_out);

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
    reset <= '1';
    wait for 20 ns;
    
    reset <= '0';
    wait for clk_period*10;
    
    reset <= '1';
    wait for 20 ns;
    
    reset <= '0';
    wait for clk_period*10;
    
    wait;
  end process;
end Behavioral;
