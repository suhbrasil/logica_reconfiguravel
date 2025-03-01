library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity cont4 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(3 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic);
end entity;  
architecture a_cont4 of cont4 is
signal CONT: unsigned (3 downto 0);
begin
	process (CLK, RST)
		begin
		if RST = '1' then
		   CONT <= "0000";
		elsif CLK' event and CLK = '1' then
		   if CLR = '1'then
				CONT <= "0000";
			else
				if EN = '1' then					
					if CONT = "1100" then
						CONT <= "0000";
					else
						CONT <= CONT+1;
					end if;
				end if;
			end if;
		end if;
	end process;
	Q <= CONT;
end architecture;