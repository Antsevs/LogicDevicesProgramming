-------------MAIN BLOCK-------------
------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter5bitVHD is
port	(
		clk	:	in std_logic;
		rst_bar	:	in std_logic;
		output:	out std_logic_vector(4 downto 0)
		);
end counter5bitVHD;

architecture behavior of counter5bitVHD is

signal Q : integer range 0 to 31 := 0;

begin

process(clk, rst_bar)

begin

	if falling_edge(clk) and rst_bar = '1' then
		if Q = 31 then
			Q <= 0;
		else
			Q <= Q + 1;	
		end if;
	end if;
	
	if rst_bar = '0' then
		Q <= 0;
	end if;
	
end process;

output <= std_logic_vector(to_unsigned(Q, 5));


end behavior;
------------------------------------
-------------MAIN BLOCK-------------
