library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bcd_7seg is
    Port (
        BCD : in unsigned (3 downto 0); 
        SEG : out unsigned (6 downto 0) 
    );
end bcd_7seg;

architecture a_bcd_7seg of bcd_7seg is
begin
    process(BCD)
    begin
        case BCD is
            when "0000" => SEG <= "1000000";
            when "0001" => SEG <= "1111001";
            when "0010" => SEG <= "0100100";
            when "0011" => SEG <= "0110000";
            when "0100" => SEG <= "0011001";
            when "0101" => SEG <= "0010010";
            when "0110" => SEG <= "0000010";
            when "0111" => SEG <= "1111000";
            when "1000" => SEG <= "0000000";
            when "1001" => SEG <= "0010000";
            when others => SEG <= "1111111"; 
        end case;
    end process;
end architecture;
