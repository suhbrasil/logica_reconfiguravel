LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; -- Include this package for `to_unsigned`

ENTITY bram_tb IS
END bram_tb;

ARCHITECTURE behavior OF bram_tb IS
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT bram
    PORT(
        address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        clock   : IN STD_LOGIC;
        q       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
    END COMPONENT;

    -- Signals to connect to the UUT
    SIGNAL address : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
    SIGNAL clock   : STD_LOGIC := '0';
    SIGNAL q       : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: bram PORT MAP (
        address => address,
        clock   => clock,
        q       => q
    );

    -- Clock generation
    clock_process : PROCESS
    BEGIN
        clock <= '0';
        WAIT FOR 10 ns;
        clock <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Read data at various addresses
        FOR i IN 0 TO 1023 LOOP
            address <= std_logic_vector(to_unsigned(i, 10)); -- Use `to_unsigned` to convert integer to std_logic_vector
            WAIT FOR 20 ns;
        END LOOP;
        WAIT;
    END PROCESS;

END behavior;
