library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopWaitVHD is
port	(
	d	: in std_logic;		
	set_bar, clr_bar	: in std_logic;	--synchronus (single parameter in process)
	clk: in std_logic;
	q  : out std_logic
);
end FlipFlopWaitVHD;

architecture behavioral of FlipFlopWaitVHD is
begin

	process
	begin
		wait until clk = '1';
		if set_bar = '0' then
			q <= '1';
		elsif clr_bar = '0' then
			q <= '0';
		else 
			q <= d;
		end if;
		
	end process;
	
end behavioral;