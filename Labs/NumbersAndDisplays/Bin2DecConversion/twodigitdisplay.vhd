library ieee;
use ieee.std_logic_1164.all;

entity twodigitdisplay is
port (
			a, b, c, d, e, f, g, h: in std_logic; --input switches
			hex0, hex1 : out std_logic_vector (0 to 6) --output hex displays
		);
end twodigitdisplay;

architecture dataflow of twodigitdisplay is

signal x : std_logic_vector(0 to 3); --signal variables referencing concantenated input
signal y : std_logic_vector(0 to 3);

begin

	x <= (a & b & c & d); --assigning input switches to concantenated variables
	y <= (e & f & g & h);
	
	with y select --hex1 select states for each switch combination
		hex1 <= 	"0000001" when "0000", 
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0000100" when "1001",
					"1111111" when others;
					
	with x select --hex0 select states for each switch combination
		hex0 <= 	"0000001" when "0000",
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0000100" when "1001",
					"1111111" when others;
					
end dataflow;