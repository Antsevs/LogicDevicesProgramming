library ieee;
use ieee.std_logic_1164.all;

entity parity_checker_9_bit is
port 	(
			i: in std_logic_vector(8 downto 0); -- 9 inputs
			sum_even: out std_logic;				--even sum output
			sum_odd: out std_logic					--odd sum output
		);
end parity_checker_9_bit;

architecture loop_arch of parity_checker_9_bit is
begin

p0: process(i)
	variable odd : std_logic;	--local immediate value for odd
	begin
			odd := '0';				--initialize odd as binary value 0
			for index in 8 downto 0 loop	--check each input, iterate with index
			odd := odd xor i(index);		--odd stores previous index odd or even (odd off), checks against next index, if both, even , otherwise, odd
			end loop;
			sum_odd <= odd;					--if odd 1, odd, if odd 0, even
			sum_even <= not odd;				--opposite of odd value
end process p0;

end loop_arch;
