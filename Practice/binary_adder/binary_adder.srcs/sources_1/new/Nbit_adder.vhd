----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2021 09:41:21 PM
-- Design Name: 
-- Module Name: Nbit_adder - Behavioral
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

entity Nbit_adder is
    Port ( A_in  : in STD_LOGIC_VECTOR(3 downto 0);
           B_in  : in STD_LOGIC_VECTOR(3 downto 0);
           S_out : out STD_LOGIC_VECTOR(3 downto 0);
           C_out : out STD_LOGIC);
end Nbit_adder;

architecture Structural of Nbit_adder is

-- component declaration
component full_adder
port (x, y, z : in std_logic; s, c : out std_logic);
end component;

--configuration specification
for all : full_adder use entity work.full_adder;

signal sum, carry: STD_LOGIC_VECTOR(3 downto 0):=(others => '0');
signal z0: STD_LOGIC:='0';

begin
  binary_adder : for i in 0 to 3 generate
    begin
        FA0 : if ( i = 0 ) generate   -- First FA
            begin U1 : entity work.full_adder port map       
            (x => A_in(0),
             y => B_in(0),
             z => z0,
             s => sum(0),
             c => carry(0));
        end generate FA0;
        FA1 : if ( i /= 0 ) generate  -- The rest of FAs
            begin U2 : entity work.full_adder port map       
            (x => A_in(i),
             y => B_in(i),
             z => carry(i-1),
             s => sum(i),
             c => carry(i));
        end generate FA1;
    end generate binary_adder;
    S_out <= sum; 
    C_out <= carry(3);
end Structural;
