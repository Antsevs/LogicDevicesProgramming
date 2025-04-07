library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity paritychecker9bit_tb is
end paritychecker9bit_tb;

architecture behavior of paritychecker9bit_tb is

signal i_tb : std_logic_vector(8 downto 0);
signal sum_odd_tb, sum_even_tb : std_logic;

begin
	
	--unit under test
	UUT : entity work.parity_checker_9_bit port map (
	i => i_tb,
	sum_odd => sum_odd_tb,
	sum_even => sum_even_tb
	);
	
	--testbenching
	tb : process
	constant period : time := 20ns;	--for wait 
	constant n : integer := 9; 		--number of inputs
	
	variable odd, sum_odd_tb_out, sum_even_tb_out, sum_odd_tb_exp, sum_even_tb_exp : std_logic;	--define expected outputs and placeholders to main program outputs
	
	begin
		
		for i in 0 to 2**n-1 loop --check every combination of the 9 inputs
			i_tb <= std_logic_vector(to_unsigned(i, n));	--typecasts vector to an unsigned binary value
			wait for period;				--allow for inputs to generate
			odd := '0';						--initialize odd to binary value 0
			
			--expected outputs--
			for index in 8 downto 0 loop
				odd := odd xor i_tb(index);
			end loop;
			
			sum_odd_tb_exp := odd;
			sum_even_tb_exp := not odd;
			--expected outputs--
			
			--assign actual output for odd and even
			sum_odd_tb_out := sum_odd_tb;
			sum_even_tb_out := sum_even_tb;
			
			--observe outputs by comparing, report outcome
			assert(sum_odd_tb_exp = sum_odd_tb_out)
			report "Test failed for Odd Output, input " & integer'image(i) severity error;	--report odd failure, give index i for failure bit
			
			assert(sum_even_tb_exp = sum_even_tb_out)
			report "Test failed for Even Output. input " & integer'image(i) severity error;	--report even failure, give index i for failure bit
			
		end loop;
		
		wait;
		
		end process;
		
end behavior;
