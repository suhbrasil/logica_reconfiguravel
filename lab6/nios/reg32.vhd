LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY reg32 IS
PORT ( clock, resetn : IN STD_LOGIC;
   WE : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
END reg32;

ARCHITECTURE Behavior OF reg32 IS

COMPONENT contador8bit
  PORT ( 
			  CLK : in  STD_LOGIC;
			  OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0);
			  cmd: in STD_LOGIC_VECTOR (31 downto 0)
		);
  END COMPONENT;

BEGIN
PROCESS(resetn, clock)
BEGIN
--	IF resetn = '1' THEN
	IF resetn = '0' THEN
		Q <= x"00000000";
	elsif clock'EVENT AND clock = '1' then
		if WE = '1' then
			Q <= D;
		end if;	
	end if;
END PROCESS;
END Behavior;