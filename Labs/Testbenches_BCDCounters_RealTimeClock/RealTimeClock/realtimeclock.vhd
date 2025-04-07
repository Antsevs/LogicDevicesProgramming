library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity realtimeclock is
port (
		input_clock, reset : in std_logic;
		hex0, hex1, hex2, hex3 : out std_logic_vector(6 downto 0)
		);
end realtimeclock;

architecture behavior of realtimeclock is

signal clk_spread : integer range 0 to 49999999 := 0;	-- 50MHz means 50 million cycles per second
signal bcdVal : unsigned(15 downto 0) := "0000000000000000"; -- 12-bit BCD value

begin

	process(input_clock, reset)
	begin
		if reset = '1' then
			clk_spread <= 0;
			bcdVal <= "0000000000000000";
		elsif rising_edge(input_clock) then
			if clk_spread = 49999999 then	--once clock reaches 1 second, reset clock and increment BCD
				clk_spread <= 0;
				if bcdVal(3 downto 0) = "1001" then  --ones seconds stops at 9
					bcdVal(3 downto 0) <= "0000";
					if bcdVal(7 downto 4) = "0101" then  --tens seconds stops at 6
						bcdVal(7 downto 4) <= "0000";
						if bcdVal(11 downto 8) = "1001" then  --ones minutes stops at 9
							bcdVal(11 downto 8) <= "0000";
							if bcdVal(15 downto 12) = "0101" then  --tens minutes stops at 6
								bcdVal(15 downto 12) <= "0000";  --reset minutes after 59
							else
								bcdVal(15 downto 12) <= bcdVal(15 downto 12) + "0001";  --increment tens of minutes
							end if;
						else
							bcdVal(11 downto 8) <= bcdVal(11 downto 8) + "0001";  --increment ones of minutes
						end if;
					else
						bcdVal(7 downto 4) <= bcdVal(7 downto 4) + 1;  --increment tens of seconds
					end if;
				else
					bcdVal(3 downto 0) <= bcdVal(3 downto 0) + 1;  --increment ones of seconds
				end if;
			else
				clk_spread <= clk_spread + 1;
			end if;
		end if;
	end process;
	
	--hex display conversions
	with to_integer(bcdVal(3 downto 0)) select 	--ones seconds
		hex0 <= "1000000" when 0, 
					"1111001" when 1, 
					"0100100" when 2, 
					"0110000" when 3, 
					"0011001" when 4, 
					"0010010" when 5, 
					"0000010" when 6, 
					"1111000" when 7, 
					"0000000" when 8, 
					"0010000" when 9, 
					"1111111" when others;
					 
	with to_integer(bcdVal(7 downto 4)) select	--tens seconds
		hex1 <= "1000000" when 0, 
					"1111001" when 1, 
					"0100100" when 2, 
					"0110000" when 3, 
					"0011001" when 4, 
					"0010010" when 5, 
					"1111111" when others;
					 
	with to_integer(bcdVal(11 downto 8)) select	--ones minutes
		hex2 <= "1000000" when 0, 
					"1111001" when 1, 
					"0100100" when 2, 
					"0110000" when 3, 
					"0011001" when 4, 
					"0010010" when 5, 
					"0000010" when 6, 
					"1111000" when 7, 
					"0000000" when 8, 
					"0010000" when 9, 
					"1111111" when others;
					 
	with to_integer(bcdVal(15 downto 12)) select	--tens minutes
		hex3 <= "1000000" when 0, 
					"1111001" when 1, 
					"0100100" when 2, 
					"0110000" when 3, 
					"0011001" when 4, 
					"0010010" when 5, 
					"1111111" when others;

end behavior;

