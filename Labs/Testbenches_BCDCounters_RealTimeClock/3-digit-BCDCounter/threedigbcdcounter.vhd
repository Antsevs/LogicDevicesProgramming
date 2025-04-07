-------------MAIN BLOCK-------------
------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity threedigbcdcounter is
port	(
			input_clock, reset, count_enable, output_enable : in std_logic;
			hex0, hex1, hex2 : out std_logic_vector(6 downto 0)
		);
end threedigbcdcounter;

architecture behavior of threedigbcdcounter is

signal clk_spread : integer range 0 to 49999999 := 0;	-- 50MHz means 50 million cycles per second
signal bcdVal : unsigned(11 downto 0) := "000000000000"; -- 12-bit BCD value

begin

	process(input_clock, reset)
	begin
		if reset = '1' then
			clk_spread <= 0;
			bcdVal <= "000000000000";
		elsif rising_edge(input_clock) then
			if clk_spread = 49999999 then	--once clock reaches 1 second, reset clock and increment BCD
				clk_spread <= 0;
				if count_enable = '1' then
					if bcdVal(3 downto 0) = "1001" then  --first overflow
						bcdVal(3 downto 0) <= "0000";
						if bcdVal(7 downto 4) = "1001" then  --second overflow
							bcdVal(7 downto 4) <= "0000";
							if bcdVal(11 downto 8) = "1001" then  --third overflow
								bcdVal(11 downto 8) <= "0000";
							else
								bcdVal(11 downto 8) <= bcdVal(11 downto 8) + 1;
							end if;
						else
							bcdVal(7 downto 4) <= bcdVal(7 downto 4) + 1;
						end if;
					else
						bcdVal(3 downto 0) <= bcdVal(3 downto 0) + 1;
					end if;
				end if;
			else
				clk_spread <= clk_spread + 1;
			end if;
		end if;
	end process;
	
	process(output_enable)
	begin 
		if output_enable = '1' then
			--hex display conversions
			case to_integer(bcdVal(3 downto 0)) is
				when 0 => hex0 <= "1000000"; 
            when 1 => hex0 <= "1111001"; 
            when 2 => hex0 <= "0100100"; 
            when 3 => hex0 <= "0110000"; 
            when 4 => hex0 <= "0011001"; 
            when 5 => hex0 <= "0010010"; 
            when 6 => hex0 <= "0000010"; 
            when 7 => hex0 <= "1111000"; 
            when 8 => hex0 <= "0000000"; 
            when 9 => hex0 <= "0010000"; 
            when others => hex0 <= "1111111"; 
			end case;
        
        case to_integer(bcdVal(7 downto 4)) is
            when 0 => hex1 <= "1000000"; 
            when 1 => hex1 <= "1111001"; 
            when 2 => hex1 <= "0100100"; 
            when 3 => hex1 <= "0110000"; 
            when 4 => hex1 <= "0011001"; 
            when 5 => hex1 <= "0010010"; 
            when 6 => hex1 <= "0000010"; 
            when 7 => hex1 <= "1111000"; 
            when 8 => hex1 <= "0000000"; 
            when 9 => hex1 <= "0010000"; 
            when others => hex1 <= "1111111"; 
			end case;

        case to_integer(bcdVal(11 downto 8)) is
            when 0 => hex2 <= "1000000"; 
            when 1 => hex2 <= "1111001"; 
            when 2 => hex2 <= "0100100"; 
            when 3 => hex2 <= "0110000"; 
            when 4 => hex2 <= "0011001"; 
            when 5 => hex2 <= "0010010"; 
            when 6 => hex2 <= "0000010"; 
            when 7 => hex2 <= "1111000"; 
            when 8 => hex2 <= "0000000"; 
            when 9 => hex2 <= "0010000"; 
            when others => hex2 <= "1111111"; 
			end case;

    else
        hex0 <= "1111111";
        hex1 <= "1111111";
        hex2 <= "1111111";
    end if;
end process;


end behavior;
------------------------------------
-------------MAIN BLOCK-------------
