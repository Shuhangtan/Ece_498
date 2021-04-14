
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OR_2 is
    Port ( clk       :  in STD_LOGIC;
           input_1   :  in STD_LOGIC;
           input_2   :  in STD_LOGIC;
           OR_output : out STD_LOGIC);
end OR_2;

architecture Behavioral of OR_2 is
  signal input_1_r, input_2_r, OR_output_c : STD_LOGIC;
begin

  OR_output_c <= input_1_r OR input_2_r;
  
  process( clk)
  begin 
    if( rising_edge( clk)) then
      input_1_r <= input_1;
      input_2_r <= input_2;
      OR_output <= OR_output_c;
    end if;       
  end process;  

end Behavioral;
