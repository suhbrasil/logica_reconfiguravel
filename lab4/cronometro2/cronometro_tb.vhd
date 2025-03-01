Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cronometro_tb is
end entity;

Architecture X1 of cronometro_tb is
-- região declarativa

--Component 
component cronometro is
	port (
		rst : in std_logic;
		en : in std_logic;
		clr : in std_logic;
		clk_50mhz : in std_logic;
		q_segundo_dezena : out unsigned(3 downto 0);
		q_segundo_unidade : out unsigned(3 downto 0);
		q_centesimo_dezena : out unsigned(3 downto 0);
		q_centesimo_unidade : out unsigned(3 downto 0);
		seg_segundo_dezena : out unsigned(6 downto 0);
		seg_segundo_unidade : out unsigned(6 downto 0);
		seg_centesimo_dezena : out unsigned(6 downto 0);
		seg_centesimo_unidade : out unsigned(6 downto 0)
	);
end component;

Signal clk, rst : std_logic;
Signal EN, CLR : std_logic;
signal sig_q_segundo_dezena, sig_q_segundo_unidade, sig_q_centesimo_dezena, sig_q_centesimo_unidade : unsigned(3 downto 0);
signal sig_seg_s_u, sig_seg_s_d, sig_seg_c_u, sig_seg_c_d : unsigned(6 downto 0) ;

begin
	-- região "ativa"
	--EN   <= '1';
	--CLR  <= '0';

	
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

en_gen: process
begin
	en <= '1';
	wait;
end process;

-- gerar uma instância do DUT (device under test)
DUT: cronometro
port map(
		rst => RST,
		en => EN,
		clr => CLR,
		clk_50mhz => CLK,
		q_segundo_dezena => sig_q_segundo_dezena,
		q_segundo_unidade => sig_q_segundo_unidade,
		q_centesimo_dezena => sig_q_centesimo_dezena,
		q_centesimo_unidade => sig_q_centesimo_unidade,
		seg_segundo_dezena => sig_seg_s_d,
		seg_segundo_unidade => sig_seg_s_u,
		seg_centesimo_dezena => sig_seg_c_d,
		seg_centesimo_unidade => sig_seg_c_u
	);
	
End architecture;


