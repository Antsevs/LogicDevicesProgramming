library ieee;
use ieee.std_logic_1164.all;


entity Lab2pBV is
port	(
			u,v,w : in STD_LOGIC_VECTOR(1 dOWNTO 0);	--Two-bit input variables u, v, w
			s1, s0: in STD_LOGIC;							--one-bit input variables s1, s0
			leds : out STD_LOGIC_VECTOR(1 DOWNTO 0)	--two-bit output variable leds
		);
end Lab2pBV;

architecture behavior of Lab2pBV is						--denotes behavioral coding style
begin
		mult : process (u, v, w, s1, s0)					--'method' is named mult and parameters (inputs) are set
		begin
			if s1 = '0' and s0 = '0' then					--each if statement checks status of s1 and s0 bits
				leds <= u;										--depending on result, send respective 2-bit input to m
			elsif s1 = '1' and s0 = '0' then
				leds <= v;
			elsif s1 = '0' and s0 = '1' then
				leds <= w;
			elsif s1 = '1' and s0 = '1' then
				leds <= w;
			end if;
		end process mult;										--end 'method'
end behavior;


