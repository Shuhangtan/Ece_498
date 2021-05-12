library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity A_S_TOP_LEVEL is
  Port( CLK   :  in STD_LOGIC;
        F_IN  :  in STD_LOGIC;
        A_IN  :  in STD_LOGIC_VECTOR( 15 downto 0);
        B_IN  :  in STD_LOGIC_VECTOR( 15 downto 0);
        S_OUT : out STD_LOGIC_VECTOR( 15 downto 0)
      );
end A_S_TOP_LEVEL;

architecture Structural of A_S_TOP_LEVEL is
  signal A_IN_unsigned, B_IN_unsigned : UNSIGNED( 15 downto 0);
  signal S_OUT_unsigned : UNSIGNED( 15 downto 0);

  component ADDER_SUBTRACTOR is
    Port( CLK   :  in STD_LOGIC;
          F_IN  :  in STD_LOGIC;
          A_IN  :  in UNSIGNED( 15 downto 0);
          B_IN  :  in UNSIGNED( 15 downto 0);
          S_OUT : out UNSIGNED( 15 downto 0)
        );
  end component;

begin

  U1 : ADDER_SUBTRACTOR 
    Port Map ( CLK   => CLK,
               F_IN  => F_IN,
               A_IN  => A_IN_unsigned,
               B_IN  => B_IN_unsigned,
               S_OUT => S_OUT_unsigned);

  A_IN_unsigned <= UNSIGNED( A_IN);
  B_IN_unsigned <= UNSIGNED( B_IN);
  S_OUT <= STD_LOGIC_VECTOR( S_OUT_unsigned);
end Structural;

