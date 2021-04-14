-----------------------------------------------------------
--
-- ECE241 Lab 8
--
-- enhanced 4 x 4 register file that can write one
-- register and read from two registers in one clock cycle 
--
-- (c)2018 Dr. D. Capson    Dept. of ECE
--                          University of Victoria
--
-----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegFile4x4 is 
   port(
      DataIn         :  in std_logic_vector (3 downto 0); 
      DataOutA       :  out std_logic_vector (3 downto 0);
      DataOutB       :  out std_logic_vector (3 downto 0);
      clk            :  in std_logic;                      -- Clock input
      reset          :  in std_logic;                      -- forces all registers to 0000
      write_enable   :  in std_logic;                      -- enable a register to be written to (when '1')
      write_select   :  in std_logic_vector (1 downto 0);  -- select register to write to
      read_select_A  :  in std_logic_vector (1 downto 0);  -- select 1st register to read from
      read_select_B  :  in std_logic_vector (1 downto 0)   -- select 2nd register to read from
   );
end RegFile4x4;


architecture struc of RegFile4x4 is

-- define the components we need to build the 4x4 register file

component decoder2to4 is
port (
      s : in std_logic_vector (1 downto 0);
      en: in std_logic;
      Y : out std_logic_vector (3 downto 0)
     );
end component;        

component quad4to1mux is 
      PORT ( a,b,c,d  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0) ;
             s        : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) ;
             y        : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		 );
end component;        

component reg4 is  
   port(D     :  in std_logic_vector (3 downto 0);   -- D input
        Q     :  out std_logic_vector (3 downto 0);  -- Q output
        CLK   :  in std_logic;     -- clock input
        RESET :  in std_logic;     -- forces register to 0000
        LE    :  in std_logic      -- latch enable - enables register to store data from input
       );
end component;


-- intermediate signal for latch enable going to each of the 4 registers
signal latch_enable : std_logic_vector (3 downto 0);


-- intermediate signal for data out from each register
signal Data0 : std_logic_vector (3 downto 0);
signal Data1 : std_logic_vector (3 downto 0);
signal Data2 : std_logic_vector (3 downto 0);
signal Data3 : std_logic_vector (3 downto 0);


begin

--  instantiate one 2 to 4 decoder
decoder: decoder2to4 port map(s => write_select, en => write_enable, Y => latch_enable );


--  instantiate two quad 4:1 MUX's
muxA: quad4to1mux port map(a => Data0, b => Data1, c => Data2, d => Data3,  s => read_select_A, y => DataOutA);
muxB: quad4to1mux port map(a => Data0, b => Data1, c => Data2, d => Data3,  s => read_select_B, y => DataOutB);


--  instantiate four 4-bit registers
reg0: reg4 port map(D => DataIn, Q => Data0, CLK => CLK, RESET => reset, LE => latch_enable(0) );
reg1: reg4 port map(D => DataIn, Q => Data1, CLK => CLK, RESET => reset, LE => latch_enable(1) );
reg2: reg4 port map(D => DataIn, Q => Data2, CLK => CLK, RESET => reset, LE => latch_enable(2) );
reg3: reg4 port map(D => DataIn, Q => Data3, CLK => CLK, RESET => reset, LE => latch_enable(3) );


end struc;