library ieee;
use ieee.std_logic_1164.all;

entity testbench_simple is
end testbench_simple;

architecture behavior of testbench_simple is

 --declare signals to assign values to, and observe
 signal a_tb, b_tb, c_tb, x_tb, y_tb : std_logic;

begin 

 --create an instance of the circuit to be tested
 UUT : entity work.combfcnVDHL port map (
 a => a_tb,
 b => b_tb,
 c => c_tb,
 x => x_tb,
 y => y_tb
 );

 --define a process to apply input stimulus and test outputs
 tb : process
 constant period : time := 20 ns;

 begin
 --apply every possible input combination, wait for outputs, and check the result

 a_tb <= '0';
 b_tb <= '0';
 c_tb <= '0';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '0') and (y_tb = '1'))
 report "Test failed for input combination 000" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '0';
 b_tb <= '0';
 c_tb <= '1';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '1') and (y_tb = '0'))
 report "Test failed for input combination 001" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '0';
 b_tb <= '1';
 c_tb <= '0';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '1') and (y_tb = '0'))
 report "Test failed for input combination 010" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '0';
 b_tb <= '1';
 c_tb <= '1';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '0') and (y_tb = '0'))
 report "Test failed for input combination 011" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '1';
 b_tb <= '0';
 c_tb <= '0';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '1') and (y_tb = '0'))
 report "Test failed for input combination 100" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '1';
 b_tb <= '0';
 c_tb <= '1';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '0') and (y_tb = '1'))
 report "Test failed for input combination 101" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '1';
 b_tb <= '1';
 c_tb <= '0';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '0') and (y_tb = '1'))
 report "Test failed for input combination 110" severity error; 

 --apply every possible input combination, wait for outputs, and check the result
 a_tb <= '1';
 b_tb <= '1';
 c_tb <= '1';

 --wait for the outputs to be generated
 wait for period;

 --check the outputs
 assert ((x_tb = '1') and (y_tb = '0'))
 report "Test failed for input combination 111" severity error; 

 --indefintiely suspend the process
 wait;
 end process;
end behavior;