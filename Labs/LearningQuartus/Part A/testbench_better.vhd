library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_better is
end testbench_better;

architecture behavior of testbench_better is

	--declate signals to assign values to, and observe
	signal a_tb, b_tb, c_tb, x_tb, y_tb : std_logic;
	
	begin
	
	--create instance of the circuit to be tested (unit under test)
	UUT : entity work.combfcnVDHL port map (
	a => a_tb,
	b => b_tb,
	c => c_tb,
	x => x_tb,
	y => y_tb
	);
	
	--define a process to apply input stimulus and test outputs
	tb : process
	constant period : time := 20ns;
	constant n : integer := 3; --number of inputs to the circuit
	
	variable x_tb_out, y_tb_out, x_tb_exp, y_tb_exp : std_logic; --
	
	begin
	--apply every possible input combination, using a for loop
	for i in 0 to 2**n-1 loop
	
		(a_tb, b_tb, c_tb) <= to_unsigned(i, n);	--this statement sets all inputs at once
		--(^typecasting is taking one data type and turning it into another)
		--to_unsigned(integer value, bit length)
		
		wait for period; --allow the inputs to generate before 
		
		--generate the EXPECTED outputs from the testbench. This is based on the logic
		--of how we expect the circuit to work.
		
		x_tb_exp := (not a_tb and not b_tb and c_tb) or 
						(not a_tb and b_tb and not c_tb) or
						(a_tb and not b_tb and not c_tb) or 
						(a_tb and b_tb and c_tb);
						
		y_tb_exp := (not a_tb and not b_tb and not c_tb) or 
						(a_tb and not b_tb and c_tb) or
						(a_tb and b_tb and not c_tb);
						
		--now assigning actual output for x and y from test bench
		
		x_tb_out := x_tb;
		y_tb_out := y_tb;
		
		--observe the outputs by comparing, and report
		--compare what we expect to what actually happened
		assert (x_tb_exp = x_tb_out)
		report "Test failed for Output X, input " & integer'image(i) severity error;
		
		assert (y_tb_exp = y_tb_out)
		report "Test failed for Output Y, input " & integer'image(i) severity error;
		
		end loop;
		
		wait;
		
		end process;
		
end behavior;
		
		
