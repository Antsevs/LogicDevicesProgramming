library ieee;
use ieee.std_logic_1164.all;

entity tally is
	port 
		(
			scoresA, scoresB : in std_logic_vector (2 downto 0);
         display_winner : out std_logic_vector (6 downto 0)
			);
end tally;

architecture loopy of tally is 

signal winner : std_logic_vector(1 downto 0); --signal which holds the winner determination

	begin
	
	who_won : process (scoresA, scoresB)
		
		-----------THIS SEGMENT TAKES INPUTS AND DETERMINES NUMBER OF VOTES FOR EACH CONTESTANT----------------------
		variable a, b : integer range 0 to 3;
		begin
	
		a := 0; --these are mathematical 0s not bit 0s, so no quotations
		b := 0;
		
		for i in 0 to scoresA'length -1 loop--this sets the loop such that it iterates up to the number of index in vector scoresA -1 (0 to 2)
			if scoresA(i) = '1' and scoresB(i) = '1' then
				a := a + 1;
				b := b + 1;
			elsif scoresA(i) = '0' and scoresB(i) = '1' then
				b := B + 1;
			elsif scoresA(i) = '1' and scoresB(i) = '0' then
				a := a + 1;
			end if;
		end loop;

		---------------COMPARITOR WHICH DETERMINES WHICH CONTESTANT WON------------------
		if a > b then
			winner <= "01";
		elsif a < b then
			winner <= "10";
		elsif a = 0 and b = 0 then
			winner <= "00";
		elsif a = b then
			winner <= "11";
		end if;
	
		case (winner) is
			when "01" => display_winner <= "0001000"; --A winner
			when "10" => display_winner <= "0000011"; --B winner
			when "11" => display_winner <= "0111111"; --tie
			when "00" => display_winner <= "1000000"; --neither earned votes (no decision)
		end case;
	end process;

end loopy;

