library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADDER_SUBTRACTOR is
  Port( CLK   :  in STD_LOGIC;
        F_IN  :  in STD_LOGIC;
        A_IN  :  in UNSIGNED( 15 downto 0);
        B_IN  :  in UNSIGNED( 15 downto 0);
        S_OUT : out UNSIGNED( 15 downto 0)
      );
end ADDER_SUBTRACTOR;

architecture Behavioral of ADDER_SUBTRACTOR is
  signal A_r, B_r : UNSIGNED( 15 downto 0);
  signal S_c : UNSIGNED( 15 downto 0);
  signal F_r : STD_LOGIC;
begin

  with F_r select
    S_c <= (A_r + B_r) when '0',
           (A_r - B_r) when others;

  process( CLK)
  begin
    if( rising_edge( CLK)) then
      A_r <= A_IN;
      B_r <= B_IN;
      F_r <= F_IN;
      S_OUT <= S_c;
    end if;
  end process;

end Behavioral;