----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 09:04:26 PM
-- Design Name: 
-- Module Name: NAND_2_TB - Behavioral
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

entity NAND_2_TB is
--  Port ( );
end NAND_2_TB;

architecture Behavioral of NAND_2_TB is
    
    -- Component definition of the uut
    component NAND_2 is 
    Port (input_1  : in STD_LOGIC;
          input_2  : in STD_LOGIC;
          clk      : in STD_LOGIC;
          out_NAND : out STD_LOGIC);
    end component;
    
    -- Clock
    signal clk: STD_LOGIC;
    
    -- Data signal
    signal input_1, input_2, out_NAND: STD_LOGIC;
    
    -- Clock period definition
    constant clk_period: time:= 10 ns; 
begin
  -- Initialize uut
  uut_01:
  NAND_2
    Port map (input_1  => input_1,
              input_2  => input_2,
              clk      => clk,
              out_NAND => out_NAND);
             
  -- Clock process
  clk_process: process
  begin
    clk <= '1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2;
  end process;
  
  -- Simulation process
  sim_process: process
  begin
    -- Initial state
    input_1 <= '1';
    input_2 <= '1';
    wait for 1.5*clk_period;
    
    -- Test cycles
    input_1 <= '1';
    input_2 <= '0';
    wait for clk_period;
    
    input_1 <= '0';
    input_2 <= '1';
    wait for clk_period;
    
    input_1 <= '0';
    input_2 <= '0';
    wait for clk_period;
    
    input_1 <= '1';
    input_2 <= '1';
    wait for clk_period;
    
    -- End of simulation
    wait; -- forever
    end process;  
  
end Behavioral;
