-----------------MAIN BLOCK-------------------
library ieee;
use ieee.std_logic_1164.all;

entity three_d_ff is								--three component entity declaration
	port (
		Clk, D : in std_logic;
		Qa, Qb, Qc : out std_logic				--three outputs a, b, and c
	);
end three_d_ff;

architecture structure of three_d_ff is

component d_latch is								--d_latch component
	port (
		d	: in std_logic;
		clock	:	in std_logic;
		q	:	out std_logic
	);
end component;

component positiveFlop is						--positive edge flip flop component
	port (
		Clock, d : in std_logic;
		q : out std_logic
	);
end component;

component negativeFlop is						--negative edge flip flop component
	port (
		Clock, d : in std_logic;
		q : out std_logic
	);
end component;

begin
														--port map statements
C1:	d_latch port map(d => D, clock => Clk, q => Qa);		
C2:	positiveFlop port map(d => D, Clock => Clk, q => Qb);
C3:	negativeFlop port map(d => D, Clock => Clk, q => Qc);

end structure;

-----------------MAIN BLOCK-------------------

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

----------------(+)FlipFlop-------------------
library ieee;
use ieee.std_logic_1164.all;

entity positiveFlop is
	port (
		Clock, d : in std_logic;
		q : out std_logic
	);
end positiveFlop;

architecture behavior of positiveFlop is
begin
	process										--no sensitivity list since wait until method is used
	begin
		wait until rising_edge(Clock);	--wait untl clock is rising edge
			q <= d;								--once rising edge on clock (0 to 1), q follows d
	end process;	
end behavior;
----------------(+)FlipFlop-------------------

----------------(-)FlipFlop-------------------
library ieee;
use ieee.std_logic_1164.all;

entity negativeFlop is
	port (
		Clock, d : in std_logic;
		q : out std_logic
	);
end negativeFlop;

architecture behavior of negativeFlop is
begin
	process										--no sensitivity list since wait until method is used
	begin
		wait until falling_edge(Clock);	--wait untl clock is falling edge
			q <= d;								--once falling edge on clock (0 to 1), q follows d
	end process;
end behavior;
----------------(-)FlipFlop-------------------

