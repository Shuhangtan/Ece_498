library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_TB is
--  Port ( );
end half_adder_TB;

architecture Behavioral of half_adder_TB is

    -- Component definition of the uut
    component half_adder is
    Port (clk : in STD_LOGIC;
           in_x : in STD_LOGIC;
           in_y : in STD_LOGIC;
           out_s : out STD_LOGIC;
           out_c : out STD_LOGIC);
    end component;

    -- Clock
    signal clk: STD_LOGIC;

    -- Data signal
    signal in_x, in_y, out_s, out_c: STD_LOGIC;

    -- Clock period definition
    constant clk_period: time:= 10 ns;
begin
  -- Initialize uut
  uut_01:
  half_adder
    Port map (in_x  => in_x,
              in_y  => in_y,
              clk   => clk,
              out_s => out_s,
              out_c => out_c);

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
    in_x <= '0';
    in_y <= '0';
    wait for 1.5*clk_period;

    -- Test cycles
    in_x <= '0';
    in_y <= '1';
    wait for clk_period;

    in_x <= '1';
    in_y <= '0';
    wait for clk_period;

    in_x <= '1';
    in_y <= '1';
    wait for clk_period;

    in_x <= '0';
    in_y <= '0';
    wait for clk_period;

    -- End of simulation
    wait; -- forever
    end process;

end Behavioral;
    

