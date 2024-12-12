LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY reg32_sc IS
PORT ( clock, resetn : IN STD_LOGIC;
   WE : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
);
END reg32_sc;

ARCHITECTURE Behavior OF reg32_sc IS

signal Q_aux : STD_LOGIC_VECTOR (31 downto 0);

BEGIN
PROCESS(resetn, clock, Q_aux)

BEGIN
	
--	IF resetn = '1' THEN
	IF resetn = '0' THEN
		Q_aux <= x"00000000";
	elsif clock'EVENT AND clock = '1' then
		if Q_aux(0) = '1' then 
			Q_aux(0) <= '0';
		end if;
		if Q_aux(1) = '1' then 
			Q_aux(1) <= '0';
		end if;
		if WE = '1' then
			Q_aux <= D;
		end if;	
	end if;
	Q <= Q_aux;
END PROCESS;
END Behavior;