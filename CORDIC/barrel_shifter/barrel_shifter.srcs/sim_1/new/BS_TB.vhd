

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BS_TB is
--  Port ( );
end BS_TB;

architecture Behavioral of BS_TB is

component barrel_shifter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in : in STD_LOGIC_VECTOR (15 downto 0);
           d_out : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal clk, rst: STD_LOGIC;
signal shift_by : STD_LOGIC_VECTOR(3 downto 0);
signal d_in, d_out: STD_LOGIC_VECTOR (15 downto 0);

constant clk_period : time := 10 ns;

begin
    uut_01:
    barrel_shifter 
    Port Map(  clk       => clk,
               rst       => rst,
               shift_by  => shift_by,
               d_in      => d_in,
               d_out     => d_out);
               
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
    shift_by <= "0000";
    d_in <= "0000000000000000";
    rst <= '0';
    wait for 20*clk_period;
    
    shift_by <= "1010";
    d_in <= "0101101001111111";
    rst <= '1';
    wait for clk_period;
  
    rst <= '0';
    wait for clk_period;
    
    d_in <= "0010011001100110";
    wait for clk_period;
    
    shift_by <= "0110";
    wait for clk_period;
    
    d_in <= "0111011010100110";
    wait for clk_period;
    
    d_in <= "0000000000000000";
    wait;
  end process;

end Behavioral;
