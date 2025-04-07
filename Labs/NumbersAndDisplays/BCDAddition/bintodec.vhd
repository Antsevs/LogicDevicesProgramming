library ieee;
use ieee.std_logic_1164.all;

entity bintodec is
port (
			a, b, c, d : in std_logic;
			hex0, hex1 : out std_logic_vector (0 to 6)
		);
end bintodec;

architecture dataflow of bintodec is
begin

hex1(0) <= (a and c) or (a and b); --logic statements for each hex segment in hex 0
hex1(1) <= '0';
hex1(2) <= '0';
hex1(3) <= (a and c) or (a and b);
hex1(4) <= (a and c) or (a and b);
hex1(5) <= (a and c) or (a and b);
hex1(6) <= '1';

hex0(0) <= (not a and not b and not c and d) or (not a and b and not c and not d) or (a and not b and c and d) or (a and b and c and not d); --logic statements for each hex segment in hex 1
hex0(1) <= (not a and b and not c and d) or (not a and b and c and not d) or (a and b and c and d);
hex0(2) <= (not a and not b and c and not d) or (a and b and not c and not d);
hex0(3) <= (not a and not b and not c and d) or (not a and b and not c and not d) or (not a and b and c and d) or (a and not b and c and d) or (a and b and c and not d);
hex0(4) <= (d) or (not a and b and not c) or (a and b and c);
hex0(5) <= (not a and not b and d) or (not a and not b and c) or (not a and c and d) or (not b and c and d) or (a and b and not c);
hex0(6) <= (not a and not b and not c) or (not a and b and c and d) or (a and not b and c);

end dataflow;
