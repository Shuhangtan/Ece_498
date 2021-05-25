----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2021 10:40:54 AM
-- Design Name: 
-- Module Name: A_S_TOP_LEVEL - Behavioral
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

entity A_S_TOP_LEVEL is
    Port ( A_IN  : in std_logic_vector(15 downto 0);
           B_IN  : in std_logic_vector(15 downto 0);
           CLK   : in STD_LOGIC;
           RST   : in STD_LOGIC;
           C_OUT : out STD_LOGIC;
           S_OUT : out std_logic_vector(15 downto 0));
end A_S_TOP_LEVEL;

architecture Structural of A_S_TOP_LEVEL is

  component adder is
    Port ( a_in  : in unsigned(15 downto 0);
           b_in  : in unsigned(15 downto 0);
           clk   : in STD_LOGIC;
           rst   : in STD_LOGIC;
           s_out : out unsigned(15 downto 0);
           c_out : out STD_LOGIC);
    end component;

begin
  d1: entity work.adder
        port map (  a_in => unsigned(A_IN),
                    b_in => unsigned(B_IN),
                    clk => CLK,
                    rst => RST,
                    std_logic_vector(s_out) => S_OUT,
                    c_out => C_OUT);

end Structural;
