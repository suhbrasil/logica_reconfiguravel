Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity lab3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(2 downto 0);
		  Q_IN: in unsigned(3 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0));
end entity;  
Architecture X of lab3 is

signal tot_4: unsigned(2 downto 0);

Begin
	Process (CLK, RST)
		variable temp_tot_4: unsigned(2 downto 0); -- Variável temporária para a soma
		
		Begin
		If RST = '1' then
			tot_4 <= "000";
		Elsif CLK' event and CLK = '1' then
		   If CLR = '1'then
				tot_4 <= "000";
			Else
				If EN = '1' then
					temp_tot_4 := "000";
					for i in 0 to Q_IN'length - 1 loop
						temp_tot_4 := temp_tot_4 + to_unsigned(to_integer(Q_IN(i downto i)), temp_tot_4'length);
					end loop;
					tot_4 <= temp_tot_4;
				End If;
			End If;
		End If;
	End process;
	Q <= tot_4;
End architecture;



		