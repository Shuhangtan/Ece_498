----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2021 09:08:29 PM
-- Design Name: 
-- Module Name: adder_subtractor - Behavioral
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

entity adder_subtractor is
    Port ( A_in  : in unsigned(15 downto 0);
           B_in  : in unsigned(15 downto 0);
           f_in  : in STD_LOGIC;--0 means add, 1 means subtract
           clk   : in STD_LOGIC;
           S_out : out unsigned(15 downto 0));
end adder_subtractor;

architecture Behavioral of adder_subtractor is

signal A_r, B_r, S_r: unsigned(15 downto 0):=(others => '0');
signal f_r: std_logic;

begin
  with f_r select
    S_r <= (A_r + B_r) when '0',
           (A_r - B_r) when others;
           
  process(clk)
  begin 
    if( rising_edge( clk)) then
      A_r <= A_in;
      B_r <= B_in;
      f_r <= f_in;
      S_out <= S_r;
    end if;       
  end process;

end Behavioral;
