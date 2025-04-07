-------------------------------------------------------------------------
-----------The Four Bit Rpple Carry Full Adder Main Block----------------

library ieee;
use ieee.std_logic_1164.all;

entity fourbitfulladder is
port	(
			in_A, in_B : in STD_LOGIC_VECTOR(3 downto 0);	--each input is 4 bits, one bit for each adder
			in_c_in : in STD_LOGIC;								 	--the single Cin for the first adder only
			out_sum : out STD_LOGIC_VECTOR(3 downto 0);	 	--4 bit vector for each of the four sum (S) from adders
			out_carry : out STD_LOGIC								--final carry value from fourth adder
		);
end fourbitfulladder;

architecture structure of fourbitfulladder is

component fulladder is
	port	(
				A, B, Ci : in std_logic;		--adder inputs
				Co, S : out std_logic			--adder outputs
			);
end component;

signal tempcarry : std_logic_vector(2 DOWNTO 0); --vector which holds carried value between adders

begin

	adder0 : fulladder port map(A => in_A(0), B => in_B(0), Ci => in_c_in, Co => tempcarry(0), S => out_sum(0));	--port map statements for each adder
	adder1 : fulladder port map(A => in_A(1), B => in_B(1), Ci => tempcarry(0), Co => tempcarry(1), S => out_sum(1));
	adder2 : fulladder port map(A => in_A(2), B => in_B(2), Ci => tempcarry(1), Co => tempcarry(2), S => out_sum(2));
	adder3 : fulladder port map(A => in_A(3), B => in_B(3), Ci => tempcarry(2), Co => out_carry, S => out_sum(3));
	
end structure;

-----------The Four Bit Rpple Carry Full Adder Main Block----------------
-------------------------------------------------------------------------
----------------------------Full Adder Block-----------------------------

library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
port	(
			A, B, Ci : in std_logic;		--adder inputs
			Co, S : out std_logic			--adder outputs
		);
end fulladder;

architecture dataflow of fulladder is

begin

		Co <= (B and A) or (Ci and A) or (Ci and B);		--carry output logic
		S <= (not Ci and not B and A) or (not Ci and B and not A) or (Ci and not B and not A) or (Ci and B and A);	--sum output logic

end dataflow;

----------------------------Full Adder Block-----------------------------
-------------------------------------------------------------------------
