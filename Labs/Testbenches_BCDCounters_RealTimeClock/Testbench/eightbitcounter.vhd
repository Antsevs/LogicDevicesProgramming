-------------MAIN BLOCK-------------
------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eightbitcounter is
port (
    enable, clock, clear_bar : in STD_LOGIC;
    q_out : out STD_LOGIC_VECTOR(7 downto 0);
    hex1, hex0: out STD_LOGIC_VECTOR(6 downto 0)
);
end eightbitcounter;

architecture structure of eightbitcounter is

component tFlipFlop is
port (
    t, clk, clr_bar : in std_logic;
    q : out std_logic
);
end component;

signal q_link : std_logic_vector(7 downto 0);
signal t_link : std_logic_vector(7 downto 0);

begin

    -- First Flip-Flop directly toggles on enable
    t1 : tFlipFlop port map (t => enable, clk => clock, clr_bar => clear_bar, q => q_link(0));
    
    -- enables are conditional for remaining flip flops
    t_link(0) <= enable and q_link(0);
    t2 : tFlipFlop port map (t => t_link(0), clk => clock, clr_bar => clear_bar, q => q_link(1));

    t_link(1) <= t_link(0) and q_link(1);
    t3 : tFlipFlop port map (t => t_link(1), clk => clock, clr_bar => clear_bar, q => q_link(2));

    t_link(2) <= t_link(1) and q_link(2);
    t4 : tFlipFlop port map (t => t_link(2), clk => clock, clr_bar => clear_bar, q => q_link(3));

    t_link(3) <= t_link(2) and q_link(3);
    t5 : tFlipFlop port map (t => t_link(3), clk => clock, clr_bar => clear_bar, q => q_link(4));

    t_link(4) <= t_link(3) and q_link(4);
    t6 : tFlipFlop port map (t => t_link(4), clk => clock, clr_bar => clear_bar, q => q_link(5));

    t_link(5) <= t_link(4) and q_link(5);
    t7 : tFlipFlop port map (t => t_link(5), clk => clock, clr_bar => clear_bar, q => q_link(6));

    t_link(6) <= t_link(5) and q_link(6);
    t8 : tFlipFlop port map (t => t_link(6), clk => clock, clr_bar => clear_bar, q => q_link(7));

    -- Assign outputs
    q_out <= q_link;
	 
	 --Hexadecimal Hex Display Select Statements
	 with q_link(3 downto 0) select
		hex0 <= "1000000" when "0000", 
                "1111001" when "0001", 
                "0100100" when "0010", 
                "0110000" when "0011", 
                "0011001" when "0100", 
                "0010010" when "0101", 
                "0000010" when "0110", 
                "1111000" when "0111", 
                "0000000" when "1000", 
                "0010000" when "1001", 
                "0001000" when "1010", 
                "0000011" when "1011", 
                "1000110" when "1100", 
                "0100001" when "1101", 
                "0000110" when "1110", 
                "0001110" when "1111", 
                "1111111" when others;  
					 
	with q_link(7 downto 4) select
		hex1 <= "1000000" when "0000", 
                "1111001" when "0001", 
                "0100100" when "0010", 
                "0110000" when "0011", 
                "0011001" when "0100", 
                "0010010" when "0101", 
                "0000010" when "0110", 
                "1111000" when "0111", 
                "0000000" when "1000", 
                "0010000" when "1001", 
                "0001000" when "1010", 
                "0000011" when "1011", 
                "1000110" when "1100", 
                "0100001" when "1101", 
                "0000110" when "1110", 
                "0001110" when "1111", 
                "1111111" when others;  

end structure;
------------------------------------
-------------MAIN BLOCK-------------

-------------T-FlipFlop-------------
------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity tFlipFlop is
port (
    t, clk, clr_bar : in std_logic;
    q : out std_logic
);
end tFlipFlop;

architecture behavior of tFlipFlop is
    signal q_temp : std_logic := '0';  -- holder for q result
begin
    process(clk, clr_bar)
    begin
        if clr_bar = '0' then      -- Asynchronous reset when clear is active
            q_temp <= '0';
        elsif rising_edge(clk) then -- On the rising edge of the clock
            if t = '1' then
                q_temp <= not q_temp; -- Toggle Q when T is high
            end if;
        end if;
    end process;
    
    q <= q_temp; -- output q
end behavior;
------------------------------------
-------------T-FlipFlop-------------