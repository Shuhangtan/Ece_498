----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2021 10:04:47 PM
-- Design Name: 
-- Module Name: ring_counter - Behavioral
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
-- Reference: https://www.fpga4student.com/2016/11/programmable-n-bit-switch-tail-ring.html

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ring_counter is
    generic ( N : integer:=4 );
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q_out : out STD_LOGIC_VECTOR (N-1 downto 0));
end ring_counter;

architecture Structral of ring_counter is
signal Q_bar: std_logic;
signal sequence: STD_LOGIC_VECTOR (N-1 downto 0):=(others => '0');
begin
  N_BIT_Ring_counter : for i in 0 to N-1 generate
    begin
        F0 : if ( i = 0 ) generate   -- First DFF
            begin U1 : entity work.my_D_FF port map       
            (Q     => sequence(0),
             CLK   => CLK,
             RESET => RESET,
             D     => Q_bar);
        end generate F0;
        F1 : if ( i /= 0 ) generate  -- The rest of DFFs
            begin U2 : entity work.my_D_FF port map   
            (Q     => sequence(i),
             CLK   => CLK,
             RESET => RESET,
             D     => sequence(i-1));
        end generate F1;
    end generate N_BIT_Ring_counter; 
  Q_bar <= Not sequence(N-1);
  Q_out <= sequence;
end Structral;
