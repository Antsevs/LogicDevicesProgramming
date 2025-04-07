library ieee;
use ieee.std_logic_1164.all;

entity d_latch is	
	port (
		d	: in std_logic;
		clock	:	in std_logic;
		q	:	out std_logic
	);
end d_latch;

architecture behavior of d_latch is
begin

	process(clock, d)				--engage process if clock or d changes
	begin
		if clock = '0' then		--inverted clock parameter and
			q <= d;					--q follows d if clock is 0 otherwise hold
		end if;
	end process;


end behavior;