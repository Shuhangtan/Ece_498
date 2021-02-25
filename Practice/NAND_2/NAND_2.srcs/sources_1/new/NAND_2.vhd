----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 08:53:17 PM
-- Design Name: 
-- Module Name: NAND_2 - Behavioral
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

entity NAND_2 is
    Port ( input_1  : in STD_LOGIC;
           input_2  : in STD_LOGIC;
           clk      : in STD_LOGIC;
           out_NAND : out STD_LOGIC);
end NAND_2;

architecture Behavioral of NAND_2 is
    signal input_1_r, input_2_r, out_NAND_r: STD_LOGIC;
begin
    out_NAND_r <= input_1_r NAND input_2_r;
    
    process (clk)
    begin
        if (rising_edge(clk)) then
            input_1_r <= input_1;
            input_2_r <= input_2;
            out_NAND <= out_NAND_r;
        end if;
    end process;
    
end Behavioral;
