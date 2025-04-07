-------------MAIN BLOCK-------------
------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity onesecondcounter is
port	(
		input_clock, reset : in std_logic;
		hex0 : out std_logic_vector(6 downto 0)
		);
end onesecondcounter;

architecture behavior of onesecondcounter is

signal clk_spread : integer range 0 to 49999999 := 0;	--50MHz means 50 million times per second
signal currentNum : integer range 0 to 9 := 0;

begin

	process(input_clock, reset)
	begin
	
		if reset = '1' then
			clk_spread <= 0;
			currentNum <= 0;
		elsif rising_edge(input_clock) then
			if clk_spread = 49999999 then		--once clock reaches 1 second, reset clock, then perform logic
				clk_spread <= 0;
				if currentNum = 9 then
					currentNum <= 0;
				else
					currentNum <= currentNum + 1;
				end if;
			else
				clk_spread <= clk_spread + 1;
			end if;
		end if;
	end process;
	
	with currentNum select
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
			
end behavior;
------------------------------------
-------------MAIN BLOCK-------------
