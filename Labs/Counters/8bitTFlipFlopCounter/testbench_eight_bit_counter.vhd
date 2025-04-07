library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_eight_bit_counter is
end testbench_eight_bit_counter;

architecture behavior of testbench_eight_bit_counter is
    signal enable_tb, clock_tb, clear_bar_tb: std_logic;
    signal q_out_tb : std_logic_vector(7 downto 0);
	 signal hex1_tb, hex0_tb : std_logic_vector(6 downto 0);
    constant period : time := 100 ns;

    --clock generation
    procedure clk_gen (signal clock_tb : out std_logic) is
		constant period : time := 100 ns;
			begin
				while true loop
					clock_tb <= '0';
					wait for period/2;
					clock_tb <= '1';
					wait for period/2;
				end loop;
			end procedure;

begin
    --unit under test
    UUT : entity work.eightbitcounter
	 port map (
        enable   => enable_tb,
        clock    => clock_tb,
        clear_bar => clear_bar_tb,
        q_out    => q_out_tb
    );

    --testbenching
    tb : process
    begin
        --throw reset and unthrow enable
        clear_bar_tb <= '0';
        enable_tb    <= '0';
        wait for period;  -- let reset be active for one clock period

        --unthrow reset
        clear_bar_tb <= '1';
        wait for period;

        --throw enable
        enable_tb <= '1';

        --now check counts from 0 to 63
        for i in 0 to 63 loop
            wait until rising_edge(clock_tb);  --wait for clock
            
            assert q_out_tb = std_logic_vector(to_unsigned(i, 8))
            report "Testbench failed at: " & integer'image(i) & integer'image(to_integer(unsigned(q_out_tb))) & std_logic'image(clear_bar_tb) & std_logic'image(enable_tb) severity error;
        end loop;
    end process;

end behavior;