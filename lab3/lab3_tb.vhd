Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity lab3_tb is
end entity;

Architecture X1 of lab3_tb is
-- região declarativa

--Component 
component lab3 is
   PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(2 downto 0);
		  Q_IN: in unsigned(3 downto 0);
		  ID: out integer range 0 to 4;
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0));
end component;

Signal clk, rst : std_logic;
Signal EN, CLR, LD : std_logic;
signal LOAD , Q_IN: unsigned (3 downto 0);
signal ID: integer range 0 to 4;
signal Q: unsigned(2 downto 0);

begin

-- gerar uma instância do DUT (device under test)
	DUT: lab3 port map(
       RST  => rst , 
       CLK  => clk ,
		 Q    => Q ,
		 ID => ID,
		 Q_IN => Q_IN,
       EN   => EN  ,
       CLR  => CLR ,
       LD   => LD  ,
       LOAD => LOAD
	);
	
	-- região "ativa"
	EN   <= '1';
	CLR  <= '0';
	LD   <= '0';
	LOAD <= "1010";  -- x"0"

-- gerar o clock
clk_gen: Process	
begin
	clk <= '0';
   wait for 10 ns;
	clk <= '1';
   wait for 10 ns;
end process;
	
-- gerar o rst
rst_gen: Process 
begin
	rst <= '1';
   wait for 15 ns;
	rst <= '0';
   wait;
end process;

Process
begin
	Q_IN <= "0111";
	wait for 110 ns;
	Q_IN <= "0000";
	wait for 100 ns;
	Q_IN <= "0001";
	wait for 100 ns;
	Q_IN <= "1111";
	wait for 100 ns;
	Q_IN <= "1010";
	wait;
end process;

	
End architecture;


