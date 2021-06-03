
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_subtractor is
    Port ( a_in  : in STD_LOGIC_VECTOR(16 downto 0);
           b_in  : in STD_LOGIC_VECTOR(16 downto 0);
           f_in  : in STD_LOGIC;--0 means add, 1 means subtract
           clk   : in STD_LOGIC;
           rst   : in STD_LOGIC;
           s_out : out STD_LOGIC_VECTOR(16 downto 0));
end adder_subtractor;

architecture Behavioral of adder_subtractor is

signal A_r, B_r, S_r: signed(16 downto 0):=(others => '0');
signal f_r: std_logic;

begin
  --with f_r select
    --S_r <= (A_r + B_r) when '0',
     --      (A_r - B_r) when others;
           
  process(clk)
  begin 
    if( rising_edge( clk)) then
        if (rst = '1') then
            A_r <= "00000000000000000";
            B_r <= "00000000000000000";
            f_r <= '0';
            s_out <= "00000000000000000";
        else
            A_r <= signed(a_in);
            B_r <= signed(b_in);
            f_r <= f_in;
            
            if (f_r = '0') then
                s_out <= std_logic_vector(A_r + B_r);
            else
                s_out <= std_logic_vector(A_r - B_r);
            end if;
        end if;
    end if;       
  end process;


end Behavioral;
