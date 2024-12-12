library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_tb is
end entity;

architecture behavior of bram_tb is
    -- Component Declaration
    component bram
        port (
            address : in std_logic_vector(9 downto 0);
            clock   : in std_logic;
            data    : in std_logic_vector(7 downto 0);
            wren    : in std_logic;
            q       : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Testbench Signals
    signal clk     : std_logic := '0';
    signal addr    : std_logic_vector(9 downto 0);
    signal data_in : std_logic_vector(7 downto 0);
    signal wren    : std_logic;
    signal data_out : std_logic_vector(7 downto 0);

begin
    -- Instantiate BRAM
    uut : bram
        port map (
            address => addr,
            clock   => clk,
            data    => data_in,
            wren    => wren,
            q       => data_out
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
        -- Write data to BRAM
        for i in 0 to 1023 loop
            addr <= std_logic_vector(to_unsigned(i, 10));
            data_in <= std_logic_vector(to_unsigned(i mod 256, 8)); -- Write 0-255 repeatedly
            wren <= '1';
            wait for 20 ns;
        end loop;

        -- Read data from BRAM
        wren <= '0'; -- Disable write
        for i in 0 to 1023 loop
            addr <= std_logic_vector(to_unsigned(i, 10));
            wait for 20 ns;
            assert data_out = std_logic_vector(to_unsigned(i mod 256, 8))
            report "Data mismatch at address " & integer'image(i)
            severity error;
        end loop;

        wait;
    end process;
end architecture;
