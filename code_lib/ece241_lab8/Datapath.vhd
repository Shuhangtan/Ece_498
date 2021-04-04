-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- simple datapath that uses a 4 x 4 register file
-- and a quad 2:1 MUX for inserting external data
--
-- (c)2018 Dr. D. Capson    Dept. of ECE
--                          University of Victoria
--
-----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPath is 
  port(
      externalDataIn  :  in std_logic_vector (3 downto 0);  -- input external data from switches
      externalDataOut :  out std_logic_vector (3 downto 0); -- observe output from reg file on LEDs
      clk             :  in std_logic;                      -- clock input
      reset           :  in std_logic;                      -- forces all registers to 0000 (when '1)
      write_enable    :  in std_logic;                      -- enable the registers to be written to (when '1')
      D               :  in std_logic_vector (1 downto 0);  -- choose the destination register (a register to write to)
      S               :  in std_logic_vector (1 downto 0);  -- choose the source register (a register to read from)
      DS              :  in std_logic                       -- choose external data (from switches)
   );
end DataPath;



architecture struc of DataPath is

-- define the components we need to build the datapath

component RegFile4x4 is 
   port(
      DataIn       :  in  std_logic_vector (3 downto 0); 
      DataOut      :  out std_logic_vector (3 downto 0);
      clk          :  in std_logic;                      -- clock input
      reset        :  in std_logic;                      -- forces all registers to 0000
      write_enable :  in std_logic;                      -- enable writing to a register (when write_enable = 1)
      write_select :  in std_logic_vector (1 downto 0);  -- select register to write to
      read_select  :  in std_logic_vector (1 downto 0)   -- select register to read from
   );
end component;


component quad2to1mux is
   port( 
         a,b        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
         s          : IN STD_LOGIC;
         Y          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
   );
end component;


-- intermediate signals in/out of the register file
signal int_DataIn  : std_logic_vector (3 downto 0);
signal int_DataOut : std_logic_vector (3 downto 0);



begin

--  instantiate quad 2:1 MUX
mux: quad2to1mux port map(a => externalDataIn, b => int_DataOut, s => DS, Y => int_DataIn);


--  instantiate 4x4 register file
datapath0: RegFile4x4 port map(DataIn => int_DataIn, DataOut => int_DataOut, clk => clk, reset => reset,
                               write_enable => write_enable, write_select => D, read_select => S );

externalDataOut <= int_DataOut; -- send to output LEDs

end struc;