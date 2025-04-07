library ieee;
use ieee.std_logic_1164.all;

entity sevensegdecoderV is
port (
			c1, c0: in STD_LOGIC;
			hex0: out STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
end sevensegdecoderV;

architecture dataflow of sevensegdecoderV is
begin
		hex0(0) <= NOT (NOT c1 AND c0);
		hex0(1) <= NOT (NOT c0);
		hex0(2) <= NOT (NOT c0);
		hex0(3) <= NOT (NOT c1);
		hex0(4) <= NOT (NOT c1);
		hex0(5) <= NOT (NOT c1 AND c0);
		hex0(6) <= NOT (NOT c1);
		
end dataflow;
