-----------------THIS IS THE MAIN STRUCTURE------------------------
library ieee;
use ieee.std_logic_1164.all;

--top level entity--
entity rotatingword IS --10-bit input to 2bit-3to1 muxs
    PORT (  
        input : IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
        HEX_0, HEX_1, HEX_2: OUT STD_LOGIC_VECTOR(6 DOWNTO 0) 
    ); 
end rotatingword; 

--3 muxs and 3 hexs
architecture structure of rotatingword is

component mux_2bit_3to1 is --mux component info
    port (
        S, U, V, W: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
end component;

component sevensegdecoder is --decoder component info-
    port (
        C : in std_logic_vector(1 DOWNTO 0);
        hex : out STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end component;

signal mux0, mux1, mux2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
begin

    M0: mux_2bit_3to1 port map (S(1) => input(9), S(0) => input(8), U => input(5 DOWNTO 4), V => input(3 DOWNTO 2), W => input(1 DOWNTO 0), M => mux0); --mux instantiation
    M1: mux_2bit_3to1 port map (S(1) => input(9), S(0) => input(8), U => input(3 DOWNTO 2), V => input(1 DOWNTO 0), W => input(5 DOWNTO 4), M => mux1);
    M2: mux_2bit_3to1 port map (S(1) => input(9), S(0) => input(8), U => input(1 DOWNTO 0), V => input(5 DOWNTO 4), W => input(3 DOWNTO 2), M => mux2);
    
    display0 : sevensegdecoder port map (C => mux0, hex => HEX_0);--instantiation decoder
    display1 : sevensegdecoder port map (C => mux1, hex => HEX_1);
    display2 : sevensegdecoder port map (C => mux2, hex => HEX_2);                                        
end structure;
-----------------THIS IS THE MAIN STRUCTURE------------------------

-----------------THIS IS THE 2-BIT 3-TO-1 MULTIPLEXER BLOCK------------------------
library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_3to1 IS 
    port (
        S, U, V, W: IN STD_LOGIC_VECTOR(1 DOWNTO 0); --2bit data inputs
        M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    ); 
end mux_2bit_3to1;

architecture Behavior OF mux_2bit_3to1 IS 
begin
    process (U, V, W, S) --determine which data is passed
    begin
        if (S(1) = '0') and (S(0) = '0') then
            M <= U;
        elsif (S(1) = '1') and (S(0) = '0') then
            M <= V;
        elsif (S(1) = '0') and (S(0) = '1') then
            M <= W;
        else
            M <= "11";
        end if;
    end process;
end Behavior;
-----------------THIS IS THE 2-BIT 3-TO-1 MULTIPLEXER BLOCK------------------------

----------------THIS IS THE SEVEN SEGMENT DECODER BLOCK-------------------
library ieee;
use ieee.std_logic_1164.all;

entity sevensegdecoder is --decoder (use part A dataflow logic)
    port (
        C: in std_logic_vector(1 DOWNTO 0);
        hex: out std_logic_vector(6 DOWNTO 0)
    );
end sevensegdecoder;

architecture dataflow of sevensegdecoder is
begin
    hex(0) <= not C(0) or C(1);
    hex(1) <= C(0);
    hex(2) <= C(0);
    hex(3) <= C(1);
    hex(4) <= C(1);
    hex(5) <= not C(0) or C(1);
    hex(6) <= C(1);
end dataflow;
----------------THIS IS THE SEVEN SEGMENT DECODER BLOCK-------------------