library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_logic_tb is
end entity;

architecture behavior of control_logic_tb is
    -- Component Declaration
    component control_logic
        port (
            clk       : in std_logic;
            rst       : in std_logic;
            cnt       : in integer;
            wr_enable : out std_logic;
            rd_enable : out std_logic
        );
    end component;

    -- Testbench Signals
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '1';
    signal cnt       : integer := 0;
    signal wr_enable : std_logic;
    signal rd_enable : std_logic;

begin
    -- Instantiate Control Logic
    uut : control_logic
        port map (
            clk       => clk,
            rst       => rst,
            cnt       => cnt,
            wr_enable => wr_enable,
            rd_enable => rd_enable
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
        -- Reset the system
        rst <= '1';
        wait for 20 ns;
        rst <= '0';

        -- Simulate increasing FIFO count
        for i in 0 to 512 loop
            cnt <= i;
            wait for 20 ns;
        end loop;

        -- Simulate decreasing FIFO count
        for i in 512 downto 0 loop
            cnt <= i;
            wait for 20 ns;
        end loop;

        wait;
    end process;
end architecture;
