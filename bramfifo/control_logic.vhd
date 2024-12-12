library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_logic is
    port(
        clk       : in std_logic;
        rst       : in std_logic; -- Reset
        cnt       : in integer;   -- FIFO count
        wr_enable : out std_logic; -- Write enable for FIFO
        rd_enable : out std_logic  -- Read enable for FIFO
    );
end entity;

architecture rtl of control_logic is
    -- Define state type for the state machine
    type state_type is (RESET, WR_FIFO, WR_WAIT, RD_FIFO, RD_WAIT);

    -- Register to hold the current state
    signal state : state_type;

    -- Internal signals for outputs
    signal wr_en : std_logic := '0';
    signal rd_en : std_logic := '0';

begin
    -- State transition process
    process(clk, rst)
    begin
        if rst = '1' then
            state <= RESET;
        elsif rising_edge(clk) then
            case state is
                -- Reset state transitions to WR_FIFO
                when RESET =>
                    wr_en <= '0';
                    rd_en <= '0';
                    state <= WR_FIFO;

                -- WR_FIFO: Write to FIFO until it is 75% full
                when WR_FIFO =>
                    wr_en <= '1'; -- Enable writing to FIFO
                    rd_en <= '0';
                    if cnt >= 384 then -- FIFO 75% cheio
                        state <= WR_WAIT;
                    end if;

                -- WR_WAIT: Wait until FIFO is less than or equal to 50% full
                when WR_WAIT =>
                    wr_en <= '0';
                    rd_en <= '1';
							state <= RD_FIFO; -- Transita para leitura

                -- RD_FIFO: Read from FIFO until it is empty
                when RD_FIFO =>
                    wr_en <= '0';
                    rd_en <= '1'; -- Enable reading from FIFO
                    if cnt = 0 then -- FIFO vazio
                        state <= RD_WAIT;
                    end if;

                -- RD_WAIT: Wait until FIFO is not empty
                when RD_WAIT =>
                    wr_en <= '1';
                    rd_en <= '0';
                     state <= WR_FIFO; -- Transita de volta para escrita

                -- Default case to handle unexpected states
                when others =>
                    wr_en <= '0';
                    rd_en <= '0';
                    state <= RESET;
            end case;
        end if;
    end process;

    -- Assign internal signals to outputs
    wr_enable <= wr_en;
    rd_enable <= rd_en;

end rtl;
