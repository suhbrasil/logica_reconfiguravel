library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cronometro is
	PORT (
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
		seg_centesimo_unidade : out unsigned(6 downto 0);
		led17 : out std_logic;
		led16 : out std_logic;
		ledg0 : out std_logic;
		ledg1 : out std_logic
	);
end entity;

architecture a_cronometro of cronometro is

component cont4 is
	port (
		RST: in std_logic;
	   CLK: in std_logic;
		Q: out unsigned(3 downto 0);
		EN: in std_logic;
		CLR: in std_logic
	);
end component;

component bcd_7seg is
	port (
        BCD : in unsigned (3 downto 0); 
        SEG : out unsigned (6 downto 0) 
    );
end component;
	 
--signal
signal sig_q_segundo_dezena : unsigned(3 downto 0);
signal sig_q_segundo_unidade : unsigned(3 downto 0);
signal sig_q_centesimo_dezena : unsigned(3 downto 0);
signal sig_q_centesimo_unidade : unsigned(3 downto 0);
signal and0 : std_logic;
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;
signal and4 : std_logic;
signal and5 : std_logic;
signal clr_segundo_dezena : std_logic;
signal clr_centesimo_dezena : std_logic;
signal reset : std_logic;
  
signal clk_div : std_logic := '0';
signal counter : integer range 0 to 249999 := 0; 

signal key_enable : std_logic;
  
begin

process(clk_50mhz)
  begin
    if rising_edge(clk_50mhz) then
      if counter = 249999 then 
        clk_div <= not clk_div;  
        counter <= 0;           
      else
        counter <= counter + 1;  
      end if;
    end if;
end process;

process(en)
  begin
    if rising_edge(en) then
	  key_enable <= not key_enable;
    end if;
end process;

segundo_dezena: cont4 port map (
	RST => reset,
	CLK => clk_div,
	Q => sig_q_segundo_dezena,
	EN => and0,
	CLR => clr_segundo_dezena
);

segundo_unidade: cont4 port map (
	RST => reset,
	CLK => clk_div,
	Q => sig_q_segundo_unidade,
	EN => and1,
	CLR => and2
);

centesimo_dezena: cont4 port map (
	RST => reset,
	CLK => clk_div,
	Q => sig_q_centesimo_dezena,
	EN => and3,
	CLR => clr_centesimo_dezena
);

centesimo_unidade: cont4 port map (
	RST => reset,
	CLK => clk_div,
	Q => sig_q_centesimo_unidade,
	EN => key_enable,
	CLR => and5
);

bcd_segundo_dezena: bcd_7seg port map (
   BCD => sig_q_segundo_dezena,
   SEG => seg_segundo_dezena
);

bcd_segundo_unidade: bcd_7seg port map (
   BCD => sig_q_segundo_unidade,
   SEG => seg_segundo_unidade
);

bcd_centesimo_dezena: bcd_7seg port map (
   BCD => sig_q_centesimo_dezena,
   SEG => seg_centesimo_dezena
);

bcd_centesimo_unidade: bcd_7seg port map (
   BCD => sig_q_centesimo_unidade,
   SEG => seg_centesimo_unidade
);

q_segundo_dezena <= sig_q_segundo_dezena;
q_segundo_unidade <= sig_q_segundo_unidade;
q_centesimo_dezena <= sig_q_centesimo_dezena;
q_centesimo_unidade <= sig_q_centesimo_unidade;

reset <= not rst and not key_enable;
led17 <= key_enable;
led16 <= rst;
and0 <= key_enable and and2;
and1 <= key_enable and and4 and and5;
and2 <= and1 and (sig_q_segundo_unidade(0) and not sig_q_segundo_unidade(1) and not sig_q_segundo_unidade(2) and sig_q_segundo_unidade(3));
and3 <= key_enable and and5;
and4 <= sig_q_centesimo_dezena(0) and not sig_q_centesimo_dezena(1) and not sig_q_centesimo_dezena(2) and sig_q_centesimo_dezena(3);
and5 <= sig_q_centesimo_unidade(0) and not sig_q_centesimo_unidade(1) and not sig_q_centesimo_unidade(2) and sig_q_centesimo_unidade(3);
clr_segundo_dezena <= (not sig_q_segundo_dezena(3) and sig_q_segundo_dezena(2) and not sig_q_segundo_dezena(1) and sig_q_segundo_dezena(0)) and and0;
clr_centesimo_dezena <= and4 and and3;

end architecture;