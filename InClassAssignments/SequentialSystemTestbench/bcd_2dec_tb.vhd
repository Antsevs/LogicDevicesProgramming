library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bcd_2dec_tb is
end bcd_2dec_tb;

architecture tb_architecture of bcd_2dec_tb is
	
	
	signal clk_tb : std_logic;
	signal rst_bar_tb : std_logic;
	signal up_bar_tb : std_logic;
	signal cnt_en1_bar_tb : std_logic;
	signal cnt_en2_bar_tb : std_logic;
	
	
	signal qbcd0_tb : std_logic_vector(3 downto 0);
	signal qbcd1_tb : std_logic_vector(3 downto 0);
	
	constant period : time := 100 ns;
	
	procedure clk_gen (signal clk_tb : out std_logic; constant n : in integer) is
		constant period : time := 100 ns;
			begin
				for i in 1 to n loop
					clk_tb <= '0';
					wait for period/2;
					clk_tb <= '1';
					wait for period/2;
				end loop;
			end procedure;
			
	begin
			UUT : entity work.bcd_2dec
				port map (
						clk => clk_tb,
						rst_bar => rst_bar_tb,
						up_bar => up_bar_tb,
						cnt_en1_bar => cnt_en1_bar_tb,
						cnt_en2_bar => cnt_en2_bar_tb,
						qbcd0 => qbcd0_tb,
						qbcd1 => qbcd1_tb
				);

	rst_bar_tb <= '0', '1' after (3 * period)/4;
	
	stim_mon : process

	begin
		up_bar_tb <= '0'; 
		cnt_en1_bar_tb <= '1'; 
		cnt_en2_bar_tb <= '0';
		clk_gen(clk_tb,1);
		
		assert qbcd1_tb = "0000" and qbcd0_tb = "0000" 
		report "counter did not reset"
		severity error;
		
		cnt_en1_bar_tb <= '0'; 
		
		clk_gen(clk_tb, 29); 
		assert qbcd1_tb = "0010" and qbcd0_tb = "1001"
		report "counter failed to count up to ???"
		severity error;
		
		clk_gen(clk_tb, 8);
		assert qbcd1_tb = "0000" and qbcd0_tb = "0101"
		report "counter failed count to roll over on count up"
		severity error;
				
		up_bar_tb <= '1'; 
		clk_gen(clk_tb, 4); 
		assert qbcd1_tb = "0000" and qbcd0_tb = "0001"
		report "counter failed count to count down to ???"
		severity error;
				
		clk_gen(clk_tb, 3); 
		assert qbcd1_tb = "0011" and qbcd0_tb = "0000"
		report "counter failed count to underflow"
		severity error;
		
		wait;
		
	end process;
end tb_architecture;