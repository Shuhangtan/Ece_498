library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity a_s_TB is
--  Port ( );
end a_s_TB;

architecture Behavioral of a_s_TB is

-- Component declaration for the Unit Under Test (UUT)
  component adder_subtractor is
    Port ( a_in  : in std_logic_vector(16 downto 0);
           b_in  : in std_logic_vector(16 downto 0);
           f_in  : in STD_LOGIC;
           clk   : in STD_LOGIC;
           rst   : in STD_LOGIC;
           s_out : out std_logic_vector(16 downto 0));
    end component;

  -- Clock & Reset
  signal clk, rst : STD_LOGIC;

  -- Data
  signal A_in, B_in, S_out : std_logic_vector(16 downto 0);
  signal f_in: STD_LOGIC;

  -- Clock period definition
  constant clk_period : time := 20 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut_01:
  adder_subtractor
    Port Map ( A_in  => a_in,
               B_in  => b_in,
               clk   => clk,
               rst   => rst,
               S_out => s_out,
               f_in  => f_in);

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
    A_in <= "00000000000000000";
    B_in <= "00000000000000000";
    f_in <= '0';
    rst  <= '1';
    wait for clk_period*19.5;
    
    -- Test cases - all passed
    -- However extra care should be taken for overflow cases   
    A_in <= "01011010011111110"; --1.414*2^15 = 46334
    B_in <= "00100101100000010"; --0.586*2^15 = 19202
    rst  <= '0';
    wait for clk_period;
    
    f_in <= '1';
    wait for clk_period;
    
    A_in <= "01000110011001101"; --1.1*2^15 = 36045
    B_in <= "01100110011001101"; --1.6*2^15 = 52429
    f_in <= '0';
    wait for clk_period;
    
    f_in <= '1';
    wait for clk_period; 
    
    A_in <= "01010001111010111"; --1.28*2^15 = 41943
    B_in <= "00010110011001101"; --0.35*2^15 = 11469
    f_in <= '0';
    wait for clk_period;
    
    f_in <= '1';
    wait for clk_period;
    
    A_in <= "10010001010001110"; --(-1.73*2^15) = -56690
    B_in <= "01011110010001011"; --1.473*2^15 = 48267
    f_in <= '0';
    wait for clk_period;
    
    f_in <= '1';
    -- result: 00110011000000011
    -- (overflow, this is the truncated result)
    wait for clk_period;
    
    A_in <= "00000000000000000";
    B_in <= "00000000000000000";
    wait;
  end process;

end Behavioral;
