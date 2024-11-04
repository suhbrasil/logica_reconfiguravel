Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity lab3 is
    PORT(
        RST: in std_logic;
        CLK: in std_logic;
        Q_FOR, Q_WHILE, Q_CASE, Q_IF, Q_SUM: out unsigned(2 downto 0);  -- Saídas para cada contador
        Q_IN: in unsigned(3 downto 0);
        EN: in std_logic;
        CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0)
    );
end entity;

Architecture X of lab3 is

    signal tot_4_for, tot_4_while, tot_4_case, tot_4_if, tot_4_sum: unsigned(2 downto 0);

begin
    Process (CLK, RST)
        variable temp_tot_4: unsigned(2 downto 0); -- Variável temporária para a soma
		  variable w: integer range 0 to 4;

    begin
        if RST = '1' then
            tot_4_for <= "000";
            tot_4_while <= "000";
            tot_4_case <= "000";
            tot_4_if <= "000";
            tot_4_sum <= "000";

        Elsif CLK' event and CLK = '1' then
            if CLR = '1' then
                tot_4_for <= "000";
                tot_4_while <= "000";
                tot_4_case <= "000";
                tot_4_if <= "000";
                tot_4_sum <= "000";
				
				else
					if EN = '1' then
						 -- Método FOR
						 temp_tot_4 := "000";
						 for i in 0 to Q_IN'length - 1 loop
							  temp_tot_4 := temp_tot_4 + to_unsigned(to_integer(Q_IN(i downto i)), temp_tot_4'length);
						 end loop;
						 tot_4_for <= temp_tot_4;

						 -- Método WHILE
						 temp_tot_4 := "000";
						 w := 0;
						 while w < Q_IN'length loop
							  temp_tot_4 := temp_tot_4 + to_unsigned(to_integer(Q_IN(w downto w)), temp_tot_4'length);
							  w := w + 1;
						 end loop;
						 tot_4_while <= temp_tot_4;

						 -- Método CASE/WHEN
						 case Q_IN is
							  when "0000" => tot_4_case <= "000";
							  when "0001" | "0010" | "0100" | "1000" => tot_4_case <= "001";
							  when "0011" | "0101" | "0110" | "1001" | "1010" | "1100" => tot_4_case <= "010";
							  when "0111" | "1011" | "1101" | "1110" => tot_4_case <= "011";
							  when "1111" => tot_4_case <= "100";
							  when others => tot_4_case <= "000";
						 end case;

						 -- Método IF-THEN
						 if Q_IN = "0000" then
							  tot_4_if <= "000";
						 elsif Q_IN = "0001" or Q_IN = "0010" or Q_IN = "0100" or Q_IN = "1000" then
							  tot_4_if <= "001";
						 elsif Q_IN = "0011" or Q_IN = "0101" or Q_IN = "0110" or Q_IN = "1001" or Q_IN = "1010" or Q_IN = "1100" then
							  tot_4_if <= "010";
						 elsif Q_IN = "0111" or Q_IN = "1011" or Q_IN = "1101" or Q_IN = "1110" then
							  tot_4_if <= "011";
						 elsif Q_IN = "1111" then
							  tot_4_if <= "100";
						 else
							  tot_4_if <= "000";
						 end if;

						 -- Soma Direta
						 tot_4_sum <= to_unsigned(to_integer(Q_IN(0 downto 0)) + to_integer(Q_IN(1 downto 1)) + to_integer(Q_IN(2 downto 2)) + to_integer(Q_IN(3 downto 3)), 3);
					end if;
				end if;
        end if;
    end process;

    -- Atribuição das saídas
    Q_FOR <= tot_4_for;
    Q_WHILE <= tot_4_while;
    Q_CASE <= tot_4_case;
    Q_IF <= tot_4_if;
    Q_SUM <= tot_4_sum;
end architecture;
	