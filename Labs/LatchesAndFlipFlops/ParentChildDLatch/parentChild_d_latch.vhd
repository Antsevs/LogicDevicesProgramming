------------------MAIN BLOCK------------------
library ieee;
use ieee.std_logic_1164.all;

entity parentChild_d_latch is
	port (
		input_d, input_clk	:	in std_logic;
		output_q, output_not_q	:	out std_logic
	);
end parentChild_d_latch;

architecture structure of parentChild_d_latch is

component d_latch is
	port (
		d	: in std_logic;
		clock	:	in std_logic;
		q	:	out std_logic	
	);
end component;

signal qm, clk_bar, qs:	std_logic;

begin

	clk_bar <= not input_clk;			--grab inverted clock signal
	parent :	d_latch port map (d => input_d, clock => clk_bar, q => qm);	--parent latch takes inverted clock and temp stores q in qm

	child	 :	d_latch port map (d => qm, clock => input_clk, q => qs);		--child latch takes d as parent latch output (qm) then regular clock (clock bar), and stores result in signal qs
	
	output_q <= qs;			--q output gets qs
	output_not_q <= not qs;	--q not output gets not qs
	
end structure;

------------------MAIN BLOCK------------------

----------------d_latch BLOCK-----------------
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
----------------d_latch BLOCK-----------------