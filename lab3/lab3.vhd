Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity lab3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(2 downto 0);
		  Q_IN: in unsigned(3 downto 0);
		  ID: out integer range 0 to 4;
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0));
end entity;  
Architecture X of lab3 is

signal tot_4: unsigned(2 downto 0); -- ou unsigned(3 downto 0);
signal index: integer range 0 to 4;

Begin
	Process (CLK, RST)
		Begin
		If RST = '1' then
			tot_4 <= "000";
			index <= 0;
		Elsif CLK' event and CLK = '1' then
		   If CLR = '1'then
				tot_4 <= "000";
				index <= 0;
			Else
				If EN = '1' then
					If index = 4 then
						tot_4 <= "000";
						index <= 0;
					Else
						tot_4 <= tot_4 + to_unsigned(to_integer(Q_IN(index downto index)), tot_4'length);
                  index <= index + 1;
					End if;
				End If;
			End If;
		End If;
	End process;
	Q <= tot_4;
	ID <= index;
End architecture;



		