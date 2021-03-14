
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OR_2_TB is
--  Port ( );
end OR_2_TB;

architecture Behavioral of OR_2_TB is
  -- Component declaration for the Unit Under Test (UUT)
  component OR_2 is
    Port ( clk       :  in STD_LOGIC;
           input_1   :  in STD_LOGIC;
           input_2   :  in STD_LOGIC;
           OR_output : out STD_LOGIC);
  end component;

  -- Clock
  signal clk : STD_LOGIC;

  -- Data
  signal input_1, input_2, OR_output : STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 5 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  OR_2
    Port Map ( clk => clk,
               input_1 => input_1,
               input_2 => input_2,
               OR_output => OR_output);

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
    input_1 <= '0';
    input_2 <= '0';
    wait for clk_period;
    wait for clk_period/2;

    -- Test cycle
    input_1 <= '1';
    input_2 <= '0';
    wait for clk_period;

    -- Test cycle
    input_1 <= '0';
    input_2 <= '1';
    wait for clk_period;
    
    -- Test cycle
    input_1 <= '1';
    input_2 <= '1';
    wait for clk_period;
    
    -- Test cycle
    input_1 <= '0';
    input_2 <= '0';
    wait for clk_period;
    
    -- End of simulation
    wait; -- for ever
  end process;

end Behavioral;
