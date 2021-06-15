library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity cordic_TB is
end cordic_TB;

architecture Behavioral of cordic_TB is
-- Component declaration for the Unit Under Test (UUT)
  component cordic1 is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           angle    : in STD_LOGIC_VECTOR(15 downto 0); -- 0 to 2*pi
           cos      : out STD_LOGIC_VECTOR (16 downto 0);
           sin      : out STD_LOGIC_VECTOR (16 downto 0));
  end component;

  -- Clock & Reset
  signal clk, rst : STD_LOGIC;

  -- Data
  signal angle   : STD_LOGIC_VECTOR (15 downto 0);
  signal cos, sin: STD_LOGIC_VECTOR (16 downto 0);

  -- Clock period definition
  constant clk_period : time := 20 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  cordic1
    Port Map ( clk   => clk,
               rst   => rst,
               angle => angle,
               cos   => cos,
			   sin   => sin);

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
    angle <= "0000000000000000";
    wait for clk_period*19.5;
    
    -- Test cases
    rst <= '0';
	angle <= "0100000000000000"; -- 90 degrees
    wait for clk_period;
    
    angle <= "1100000000000000"; -- 270 degrees
    wait for clk_period;
    
    angle <= "0101110001110010"; -- 130 degrees
    wait for clk_period;
	
	angle <= "0001110001110010"; -- 40 degrees
    wait for clk_period;
    
    angle <= "0000000000000000"; -- 0 degrees
    wait;
  end process;

end Behavioral;

