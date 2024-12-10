

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY bram IS
    PORT
    (
        address : IN STD_LOGIC_VECTOR (9 DOWNTO 0); -- 10-bit address input
        clock   : IN STD_LOGIC;                    -- Clock signal
        q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) -- 8-bit data output
    );
END bram;

ARCHITECTURE SYN OF bram IS

    -- Internal signal to connect the RAM output to the entity output
    SIGNAL sub_wire0 : STD_LOGIC_VECTOR (7 DOWNTO 0);

    -- Component instantiation for single-port RAM
    COMPONENT altsyncram
        GENERIC (
            clock_enable_input_a    : STRING := "BYPASS";
            clock_enable_output_a   : STRING := "BYPASS";
            init_file               : STRING := "bram_init.mif"; -- Use the .mif file
            intended_device_family  : STRING := "Cyclone II";
            lpm_hint                : STRING := "ENABLE_RUNTIME_MOD=NO";
            lpm_type                : STRING := "altsyncram";
            numwords_a              : NATURAL := 1024;          -- 1024 memory locations
            operation_mode          : STRING := "SINGLE_PORT";
            outdata_aclr_a          : STRING := "NONE";
            outdata_reg_a           : STRING := "UNREGISTERED";
            power_up_uninitialized  : STRING := "FALSE";
            widthad_a               : NATURAL := 10;            -- 10-bit address width
            width_a                 : NATURAL := 8;             -- 8-bit data width
            width_byteena_a         : NATURAL := 1
        );
        PORT (
            address_a : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
            clock0    : IN STD_LOGIC;
            wren_a    : IN STD_LOGIC;
            data_a    : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            q_a       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    END COMPONENT;

BEGIN
    -- Map the RAM output to the entity's output
    q <= sub_wire0;

    -- Instantiate the altsyncram component
    altsyncram_component : altsyncram
        GENERIC MAP (
            clock_enable_input_a => "BYPASS",
            clock_enable_output_a => "BYPASS",
            init_file => "C:/Users/suzib/OneDrive/Documentos/logicaReconfiguravel/logica_reconfiguravel/bramfifo/bram_init.mif", -- Ensure the file path is correct
            intended_device_family => "Cyclone II",
            lpm_hint => "ENABLE_RUNTIME_MOD=NO",
            lpm_type => "altsyncram",
            numwords_a => 1024,
            operation_mode => "SINGLE_PORT",
            outdata_aclr_a => "NONE",
            outdata_reg_a => "UNREGISTERED",
            power_up_uninitialized => "FALSE",
            widthad_a => 10,
            width_a => 8,
            width_byteena_a => 1
        )
        PORT MAP (
            address_a => address,
            clock0 => clock,
            data_a => (others => '0'),  -- No data input, as we’re simulating read-only BRAM
            wren_a => '0',             -- Write enable is disabled
            q_a => sub_wire0
        );

END SYN;

