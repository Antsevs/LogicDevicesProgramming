library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_2dec is
port(
	clk : in std_logic;
	rst_bar : in std_logic; 
	up_bar : in std_logic; 
	cnt_en1_bar : in std_logic; 
	cnt_en2_bar : in std_logic; 
	qbcd0 : out std_logic_vector(3 downto 0); 
	qbcd1 : out std_logic_vector(3 downto 0) 
);
end bcd_2dec;

architecture behavioral of bcd_2dec is
begin
	process (clk)
	variable bcd0_v : integer range 0 to 9 ;
	variable bcd1_v : integer range 0 to 3;
	begin
		if rising_edge(clk) then
			if rst_bar = '0' then
				bcd0_v := 0;
				bcd1_v := 0;
			elsif
				cnt_en1_bar = '0' and cnt_en2_bar = '0' then
		if up_bar = '1' then --changed this to a 1
			if bcd1_v = 3 and bcd0_v = 1 then
				bcd1_v := 0;
				bcd0_v := 0;
			elsif bcd0_v = 9 then
				bcd0_v := 0;
				bcd1_v := bcd1_v + 1;
			else
				bcd0_v := bcd0_v + 1;
			end if;
				elsif up_bar = '1' then
		if bcd1_v = 0 and bcd0_v = 0 then
			bcd1_v := 3;
			bcd0_v := 1;
		elsif bcd0_v = 0 then
			bcd0_v := 9;
			bcd1_v := bcd1_v - 1;
		else
			bcd0_v := bcd0_v - 1;
		end if;
		end if;
		end if;
		end if;
qbcd0 <= std_logic_vector(to_unsigned(bcd0_v, 4));
qbcd1 <= std_logic_vector(to_unsigned(bcd1_v, 4));
end process;
end behavioral;