library ieee;
use ieee.std_logic_1164.all;

entity graycodecounter is
port    (
        clk, clr : in std_logic;
        gray : out std_logic_vector(2 downto 0)
        );
end graycodecounter;

architecture moore of graycodecounter is

type state is(s0, s1, s2, s3, s4, s5, s6, s7);
signal present_state, next_state : state := s0;
--signal graycode : std_logic_vector(2 downto 0) := "000";

begin

    state_reg : process(clk)        --initialize state register
    begin
        if rising_edge(clk) then
            if clr = '0' then
                present_state <= s0;
            else
                present_state <= next_state;
            end if;
        end if;
    end process;

    combinational_logic : process(present_state)        --handle state loop and gray code result, (moore is only based on present_state)
    begin
        case present_state is
            when s0 =>
                next_state <= s1;
                gray <= "000";
            when s1 =>
                next_state <= s2;
                gray <= "001";
            when s2 =>
                next_state <= s3;
                gray <= "011";
            when s3 =>
                next_state <= s4;
                gray <= "010";
            when s4 =>
                next_state <= s5;
                gray <= "110";
            when s5 =>
                next_state <= s6;
                gray <= "111";
            when s6 =>
                next_state <= s7;
                gray <= "101";
            when s7 =>
                next_state <= s0;
                gray <= "100";
            when others =>
                next_state <= s0;
                gray <= "000";
        end case;
    end process;
end moore;
