library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_tb is
end entity;

architecture behavior of fifo_tb is
    -- Component Declaration
    component fifo
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

    -- Testbench Signals
    signal clk    : std_logic := '0';
    signal data_in : std_logic_vector(7 downto 0);
    signal wrreq  : std_logic := '0';
    signal rdreq  : std_logic := '0';
    signal empty  : std_logic;
    signal full   : std_logic;
    signal data_out : std_logic_vector(7 downto 0);
    signal usedw  : std_logic_vector(8 downto 0);

begin
    -- Instantiate FIFO
    uut : fifo
        port map (
            clock   => clk,
            data    => data_in,
            rdreq   => rdreq,
            wrreq   => wrreq,
            empty   => empty,
            full    => full,
            q       => data_out,
            usedw   => usedw
        );

    -- Clock Generation
    clock_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Testbench Stimulus
    stim_proc : process
    begin
        -- Write data to FIFO
        for i in 0 to 255 loop
            data_in <= std_logic_vector(to_unsigned(i, 8));
            wrreq <= '1';
            wait for 20 ns;
            wrreq <= '0';
            wait for 20 ns;
        end loop;

        -- Read data from FIFO
        rdreq <= '1';
        for i in 0 to 255 loop
            wait for 20 ns;
            assert data_out = std_logic_vector(to_unsigned(i, 8))
            report "Data mismatch at FIFO index " & integer'image(i)
            severity error;
        end loop;
        rdreq <= '0';

        wait;
    end process;
end architecture;
