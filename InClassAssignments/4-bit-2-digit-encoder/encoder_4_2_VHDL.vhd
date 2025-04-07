library ieee;
use ieee.std_logic_1164.all;


entity encoder_4_2_VHDL is
port	(
			x_bar : in std_logic_vector(3 downto 0); 	--this creates the input variables as vector 3, 2, 1, 0
			y : out std_logic_vector(1 downto 0)		--this creates the output variables as vector 1, 0
		);
end encoder_4_2_VHDL;

architecture dataflow of encoder_4_2_VHDL is
begin
		--output y1
		y(1) <= 	(x_bar(2) and x_bar(1) and x_bar(0)) or 
					(x_bar(3) and x_bar(1) and x_bar(0));
		--output y0
		y(0) <= 	(x_bar(2) and x_bar(1) and x_bar(0)) or 
					(x_bar(3) and x_bar(2) and x_bar(0));
end dataflow;

