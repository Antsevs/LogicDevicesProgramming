library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity what_am_i is
port(
	clk : in std_logic;
	rst_bar : in std_logic; 
	dir_bar : in std_logic; 
	cnt_en1_bar : in std_logic; 
	cnt_en2_bar : in std_logic; 
	qbcd0 : out std_logic_vector(3 downto 0); 
	qbcd1 : out std_logic_vector(3 downto 0) 
);
end what_am_i;

architecture behavioral of what_am_i is
begin
	process (clk)
	variable var1 : integer range 0 to 9 ;
	variable var2 : integer range 0 to 3;
	begin
		if rising_edge(clk) then
			if rst_bar = '0' then
				var1 := 0;
				var2 := 0;
			elsif
				cnt_en1_bar = '0' and cnt_en2_bar = '0' then
		if dir_bar = '0' then
			if var2 = 3 and var1 = 1 then
				var2 := 0;
				var1 := 0;
			elsif var1 = 9 then
				var1 := 0;
				var2 := var2 + 1;
			else
				var1 := var1 + 1;
			end if;
				elsif dir_bar = '1' then
		if var2 = 0 and var1 = 0 then
			var2 := 3;
			var1 := 1;
		elsif var1 = 0 then
			var1 := 9;
			var2 := var2 - 1;
		else
			var1 := var1 - 1;
		end if;
		end if;
		end if;
		end if;
qbcd0 <= std_logic_vector(to_unsigned(var1, 4));
qbcd1 <= std_logic_vector(to_unsigned(var2, 4));
end process;
end behavioral;
