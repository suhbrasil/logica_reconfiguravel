library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_logic is
    port(
        clk_50mhz    : in std_logic;
        rst          : in std_logic;
        wr_enable    : out std_logic; -- Indica escrita ativa
        rd_enable    : out std_logic; -- Indica leitura ativa
        rd_wait_state: out std_logic;
        wr_fifo_state: out std_logic;
        wr_wait_state: out std_logic;
        rd_fifo_state: out std_logic;

        -- LEDs para estados
        led          : out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of control_logic is
    -- Tipos e sinais
    type state_type is (RESET, WR_FIFO, WR_WAIT, RD_FIFO, RD_WAIT);
    signal state : state_type := RESET;

    -- FIFO Signals
    signal fifo_data_in  : std_logic_vector(7 downto 0);
    signal fifo_data_out : std_logic_vector(7 downto 0);
    signal fifo_wrreq    : std_logic;
    signal fifo_rdreq    : std_logic;
    signal fifo_empty    : std_logic;
    signal fifo_full     : std_logic;
    signal fifo_usedw    : std_logic_vector(8 downto 0);

    -- BRAM Signals
    signal bram1_data_out : std_logic_vector(7 downto 0);
    signal bram1_addr     : std_logic_vector(9 downto 0) := (others => '0');

    signal bram2_data_in  : std_logic_vector(7 downto 0);
    signal bram2_addr     : std_logic_vector(9 downto 0) := (others => '0');
    signal bram2_wren     : std_logic;

    -- Clock Divider
    signal counter : integer range 0 to 249999 := 0;
    signal clk_div : std_logic := '0';

    -- Estados de saída
    signal rd_wait_state_s : std_logic;
    signal wr_fifo_state_s : std_logic;
    signal wr_wait_state_s : std_logic;
    signal rd_fifo_state_s : std_logic;

    -- Contador de FIFO
    signal cnt : integer := 0;

begin
    -- Atualizar contador de ocupação do FIFO
    process(fifo_usedw)
    begin
        cnt <= to_integer(unsigned(fifo_usedw));
    end process;

    -- Instância da BRAM1
    bram1_inst: entity work.bram
        port map (
            address => bram1_addr,
            clock   => clk_div,
            data    => (others => '0'), -- Apenas leitura
            q       => bram1_data_out,
            wren    => '0' -- Apenas leitura
        );

    -- Instância da FIFO
    fifo_inst: entity work.fifo
        port map (
            clock   => clk_div,
            data    => fifo_data_in,
            rdreq   => fifo_rdreq,
            wrreq   => fifo_wrreq,
            empty   => fifo_empty,
            full    => fifo_full,
            q       => fifo_data_out,
            usedw   => fifo_usedw
        );

    -- Instância da BRAM2
    bram2_inst: entity work.bram
        port map (
            address => bram2_addr,
            clock   => clk_div,
            data    => bram2_data_in,
            q       => open, -- Apenas escrita
            wren    => bram2_wren
        );

    -- Estado de controle
    process(clk_50mhz, rst)
    begin
        if rst = '1' then
            state <= RESET;
        elsif rising_edge(clk_50mhz) then
            if counter = 249999 then
                clk_div <= not clk_div;
                counter <= 0;
            else
                counter <= counter + 1;
            end if;

            case state is
                when RESET =>
                    fifo_wrreq <= '0';
                    fifo_rdreq <= '0';
                    bram2_wren <= '0';
                    state <= WR_FIFO;
						  rd_wait_state_s <= '0';
						  wr_fifo_state_s <= '0';
						  wr_wait_state_s <= '0';
						  rd_fifo_state_s <= '0';



                when WR_FIFO =>
                    fifo_wrreq <= '1';
                    fifo_rdreq <= '0';
                    bram2_wren <= '0';
                    fifo_data_in <= bram1_data_out;
                    bram1_addr <= std_logic_vector(to_unsigned(cnt, 10)); -- Atualiza endereço BRAM1
                    if cnt >= 384 then -- 75% cheio
                        state <= WR_WAIT;
                    end if;
						  rd_wait_state_s <= '0';
						  wr_fifo_state_s <= '1';
						  wr_wait_state_s <= '0';
						  rd_fifo_state_s <= '0';

                when WR_WAIT =>
                    fifo_wrreq <= '0';
                    fifo_rdreq <= '1';
                    bram2_wren <= '0';
                    if cnt <= 256 then -- 50% ou menos
                        state <= RD_FIFO;
                    end if;
						  rd_wait_state_s <= '0';
						  wr_fifo_state_s <= '0';
						  wr_wait_state_s <= '1';
						  rd_fifo_state_s <= '0';

                when RD_FIFO =>
                    fifo_wrreq <= '0';
                    fifo_rdreq <= '1';
                    bram2_wren <= '1';
                    bram2_data_in <= fifo_data_out;
                    bram2_addr <= std_logic_vector(to_unsigned(cnt, 10)); -- Atualiza endereço BRAM2
                    if fifo_empty = '1' then
                        state <= RD_WAIT;
                    end if;
						  rd_wait_state_s <= '0';
						  wr_fifo_state_s <= '0';
						  wr_wait_state_s <= '0';
						  rd_fifo_state_s <= '1';

                when RD_WAIT =>
                    fifo_wrreq <= '1';
                    fifo_rdreq <= '0';
                    bram2_wren <= '0';
                    if cnt > 0 then
                        state <= WR_FIFO;
                    end if;
						  rd_wait_state_s <= '1';
						  wr_fifo_state_s <= '0';
						  wr_wait_state_s <= '0';
						  rd_fifo_state_s <= '0';

                when others =>
                    state <= RESET;
            end case;
        end if;
    end process;


    -- Saídas de controle
    wr_enable <= fifo_wrreq;
    rd_enable <= fifo_rdreq;
    rd_wait_state <= rd_wait_state_s;
    wr_fifo_state <= wr_fifo_state_s;
    wr_wait_state <= wr_wait_state_s;
    rd_fifo_state <= rd_fifo_state_s;

end rtl;
