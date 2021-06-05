library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BS_TB is
--  Port ( );
end BS_TB;

architecture Behavioral of BS_TB is

component shifter2 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           shift_by : in STD_LOGIC_VECTOR(3 downto 0);
           d_in : in STD_LOGIC_VECTOR (16 downto 0);
           d_out : out STD_LOGIC_VECTOR (16 downto 0));
end component;

signal clk, rst: STD_LOGIC;
signal shift_by : STD_LOGIC_VECTOR(3 downto 0);
signal d_in, d_out: STD_LOGIC_VECTOR (16 downto 0);

constant clk_period : time := 10 ns;

begin
    uut_01:
    shifter2 
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
    d_in <= "00000000000000000";
    rst <= '0';
    wait for 10*clk_period;
    
    shift_by <= "1010";
    d_in <= "01011010011111110";
    rst <= '1';
    wait for 1.5*clk_period;
  
    rst <= '0';
    wait for clk_period;
    
    d_in <= "00100110011001100";
    wait for clk_period;   
    
    d_in <= "11000110101001100";
    wait for clk_period;
    
    shift_by <= "0110";
    wait for clk_period;
    
    d_in <= "01110110101001100";
    wait for clk_period;
    
    d_in <= "11010111101001100";
    wait for clk_period;
    
    d_in <= "00000000000000000";
    wait;
  end process;

end Behavioral;
