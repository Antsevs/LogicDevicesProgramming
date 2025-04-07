library ieee;
use ieee.std_logic_1164.all;


entity Lab2pAV is
port	(
			x : in std_logic_vector(3 downto 0); 	--this creates the input variables as vector 3, 2, 1, 0
			y : in std_logic_vector(3 downto 0);	--this creates the input variables as vector 3, 2, 1, 0
			s : in std_logic;								--this creates the scalar input s
			m : out std_logic_vector(3 downto 0)	--this creates the input variables as vector 3, 2, 1, 0
		);
end Lab2pAV;

architecture dataflow of Lab2pAV is					--architecture specifies dataflow technique
begin
		m(0) <= (NOT s ANd x(0)) OR (s AND y(0));	--output is 4 bits, certain inputs are 4 bits, one logic representation for each bit
		m(1) <= (NOT s ANd x(1)) OR (s AND y(1));
		m(2) <= (NOT s ANd x(2)) OR (s AND y(2));
		m(3) <= (NOT s ANd x(3)) OR (s AND y(3));
end dataflow;

