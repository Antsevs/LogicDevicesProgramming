library ieee;
use ieee.std_logic_1164.all;

entity sequencedetector is
port	(
		clk, reset, x : in std_logic;
		y : out std_logic
		);
end sequencedetector;

architecture mealy of sequencedetector is

type state is(state_a, state_b, state_c, state_d, state_temp);
signal present_state, next_state : state;

begin

	state_reg : process(clk, reset)		--initializing register
	begin
		if rising_edge(clk) then
			if reset = '1' then				--reset to state A if reset thrown, otherwise continue
				present_state <= state_a;
			else
				present_state <= next_state;
			end if;
		end if;
	end process;
	
	combinational_logic : process(present_state, x)		--handle combinational logic (mealy is based on present_state and inputs)
	begin
		case present_state is
			when state_a =>
				y <= '0';			--instantiating y as zero at beginning of state A.
				if x = '1' then
					next_state <= state_b;		--switch states depending on correct code order
				else
					next_state <= state_a;
				end if;
			when state_b =>
				if x = '1' then
					next_state <= state_c;
				else
					next_state <= state_a;
				end if;
			when state_c =>
				if x = '1' then
					next_state <= state_c;
				else
					next_state <= state_d;
				end if;
			when state_d =>
				if x ='1' then
					next_state <= state_temp;		--go to buffer state for output throw
				else
					next_state <= state_a;
				end if;
			when state_temp =>
				y <= '1';
				next_state <= state_a;
				
			end case;
	end process;

end mealy;
		