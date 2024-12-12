library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_system is
end tb_system;

architecture behavior of tb_system is
    -- Declaração de componentes
    component bram is
        port (
            address   : in std_logic_vector(9 downto 0);
            clock     : in std_logic;
            data      : in std_logic_vector(7 downto 0);
            q         : out std_logic_vector(7 downto 0);
            wren      : in std_logic
        );
    end component;

    component fifo is
        port (
            clock   : in std_logic;
            data    : in std_logic_vector(7 downto 0);
            rdreq   : in std_logic;
            wrreq   : in std_logic;
            empty   : out std_logic;
            full    : out std_logic;
            q       : out std_logic_vector(7 downto 0);
            usedw   : out std_logic_vector(8 downto 0)
        );
    end component;

    component control_logic is
        port (
            clk        : in std_logic;
            rst        : in std_logic;
            cnt        : in integer;
            wr_enable  : out std_logic;
            rd_enable  : out std_logic
        );
    end component;

    -- Sinais para BRAMs, FIFO e controle
    signal clock       : std_logic := '0';
    signal reset       : std_logic := '1';
    signal cnt_int     : integer := 0;
    signal wr_enable   : std_logic;
    signal rd_enable   : std_logic;

    -- Sinais para a primeira BRAM
    signal bram1_data_out : std_logic_vector(7 downto 0);
    signal bram1_addr     : std_logic_vector(9 downto 0);

    -- Sinais para FIFO
    signal fifo_data_in   : std_logic_vector(7 downto 0);
    signal fifo_data_out  : std_logic_vector(7 downto 0);
    signal fifo_wrreq     : std_logic;
    signal fifo_rdreq     : std_logic;
    signal fifo_usedw     : std_logic_vector(8 downto 0);
    signal fifo_empty     : std_logic;
    signal fifo_full      : std_logic;

    -- Sinais para a segunda BRAM
    signal bram2_data_in  : std_logic_vector(7 downto 0);
    signal bram2_addr     : std_logic_vector(9 downto 0);
    signal bram2_wren     : std_logic;

    -- Constantes para controlar as velocidades de escrita/leitura
    constant WRITE_DELAY : time := 4 ns; -- Velocidade de escrita
    constant READ_DELAY  : time := 20 ns; -- Velocidade de leitura

begin
    -- Instanciação da primeira BRAM
    bram1_inst : bram
        port map (
            address   => bram1_addr,
            clock     => clock,
            data      => (others => '0'), -- Dados não são escritos na BRAM1
            q         => bram1_data_out,  -- Dados lidos da BRAM1
            wren      => '0'             -- Sempre leitura na BRAM1
        );

    -- Instanciação do FIFO
    fifo_inst : fifo
        port map (
            clock   => clock,
            data    => bram1_data_out,  -- Dados da BRAM1 para FIFO
            rdreq   => fifo_rdreq,     -- Sinal de leitura
            wrreq   => fifo_wrreq,     -- Sinal de escrita
            empty   => fifo_empty,     -- FIFO vazio
            full    => fifo_full,      -- FIFO cheio
            q       => fifo_data_out,  -- Dados para a BRAM2
            usedw   => fifo_usedw      -- Ocupação do FIFO
        );

    -- Instanciação da segunda BRAM
    bram2_inst : bram
        port map (
            address   => bram2_addr,
            clock     => clock,
            data      => fifo_data_out, -- Dados vindos do FIFO
            q         => open,          -- Dados não são lidos da BRAM2
            wren      => bram2_wren     -- Habilitação de escrita na BRAM2
        );

    -- Instanciação da lógica de controle
    control_inst : control_logic
        port map (
            clk        => clock,
            rst        => reset,
            cnt        => cnt_int,      -- FIFO ocupação como inteiro
            wr_enable  => fifo_wrreq,   -- Conectado ao FIFO
            rd_enable  => fifo_rdreq    -- Conectado ao FIFO
        );

    -- Conversão de fifo_usedw para cnt_int
    process(fifo_usedw)
    begin
        cnt_int <= to_integer(unsigned(fifo_usedw));
    end process;

    -- Geração do clock
    clock_process : process
    begin
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
    end process;

    -- Liberação do reset
    reset_process : process
    begin
        wait for 20 ns;
        reset <= '0'; -- Liberar o reset após 20 ns
        wait;
    end process;

    -- Processo de estímulo revisado
	stim_proc: process
	begin
		 -- Inicializa sinais
		 bram1_addr <= (others => '0');
		 bram2_addr <= (others => '0');
		 wait for 100 ns; -- Libera sinais após tempo suficiente

		 -- Simula leitura da BRAM1 e escrita no FIFO
		 for i in 0 to 511 loop
			  bram1_addr <= std_logic_vector(to_unsigned(i, 10)); -- Endereço BRAM1
			  wait for WRITE_DELAY;
		 end loop;

		 wait for 200 ns; -- Aguarde antes de iniciar leitura

		 -- Simula leitura do FIFO e escrita na BRAM2
		 for i in 0 to 511 loop
			  bram2_addr <= std_logic_vector(to_unsigned(i, 10)); -- Endereço BRAM2
			  bram2_wren <= '1'; -- Habilita escrita na BRAM2
			  wait for READ_DELAY;
		 end loop;
		 bram2_wren <= '0';

		 wait;
	end process;
	
	-- Monitoramento do FIFO
	fifo_monitor: process
	begin
		 wait until rising_edge(clock);
		 if fifo_full = '1' then
			  report "FIFO está cheio.";
		 elsif fifo_empty = '1' then
			  report "FIFO está vazio.";
		 end if;
	end process;



end behavior;
