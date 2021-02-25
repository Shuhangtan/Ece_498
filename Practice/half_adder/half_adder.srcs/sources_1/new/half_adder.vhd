----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2021 08:53:43 PM
-- Design Name: 
-- Module Name: half_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder is
    Port ( clk : in STD_LOGIC;
           in_x : in STD_LOGIC;
           in_y : in STD_LOGIC;
           out_s : out STD_LOGIC;
           out_c : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
  signal in_x_r, in_y_r, out_s_r, out_c_r: std_logic;
begin
  out_s_r <= in_x_r XOR in_y_r;
  out_c_r <= in_x_r AND in_y_r;
  
   process (clk)
    begin
        if (rising_edge(clk)) then
            in_x_r <= in_x;
            in_y_r <= in_y;
            out_c <= out_c_r;
            out_s <= out_s_r;
        end if;
    end process;

end Behavioral;
