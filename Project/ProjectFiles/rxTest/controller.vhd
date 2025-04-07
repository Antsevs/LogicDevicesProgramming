------------Main Block------------
----------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity controller is
port	(
		clk, rst_bar, i_RX_Serial : in std_logic;	--clock, asynch. reset
		output : out std_logic_vector(7 downto 0) --LED outputs
		);
end controller;

architecture structure of controller is 
	signal step : std_logic;		--baud step
	signal data_rx : std_logic_vector(7 downto 0);	--rx data
	signal check : std_logic;		--rx validation
	
	component baudblock is	--instantiation of baud block
	port	(
			clk, rst_bar : in std_logic;
			send : out std_logic	
			);
	end component;
	
	component rx is			--instantiation of RX block
	port (
			clk, rst_bar, step, rx : in std_logic;
			data : out std_logic_vector(7 downto 0);
			q_received : out std_logic
			);
	end component;
begin
	
	baud : baudblock port map (clk => clk, rst_bar => rst_bar, send => step);
	reception : rx port map (clk => clk, rst_bar => rst_bar, step => step, rx => i_RX_Serial, data => data_rx, q_received => check);
	
	test : process(clk, rst_bar)
	begin
		if rst_bar = '0' then
			output <= (others => '0');
		elsif rising_edge(clk) then
			if check = '1' then
				output <= data_rx;
			end if;
		end if;
	end process;
	
	--test : process(clk, rst_bar)
   -- variable tester : std_logic_vector(7 downto 0) := "01010101";
--begin
    --if rst_bar = '0' then
    --    output <= (others => '0');
   -- elsif rising_edge(clk) then
   --     output <= tester;
   --     tester := tester(6 downto 0) & tester(7);  -- rotate
   -- end if;
--end process;
	
end structure;
------------Main Block------------
----------------------------------

------------Baud Block------------		--this component will handle the selected baud rate
----------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baudblock is
port	(
		clk, rst_bar : in std_logic;		--I will use logic low asynchronous reset
		send : out std_logic					--send will time bitwise data transfer in UART system
		);
end baudblock;

architecture behavior of baudblock is
	constant baud : integer := 115200;				--current selected baud rate
	constant frequency : integer := 50000000;		--clock operates at 50MHz
	signal count : integer range 0 to (frequency / baud) - 1 := 0;		--range of count should be 0 to clock cycle count - 1
	--ensure (-1) logic is applied, to accommodate for absent decimal value (vhdl restriction)
begin

	process(clk, rst_bar)
	begin
		if rst_bar = '0' then		--asynchronous logic-low reset
			send <= '0';
			count <= 0;
		elsif rising_edge(clk) then	--positive-edge triggered
			if count = (frequency / baud) - 1 then	--if count is full, reset count and send
				count <= 0;
				send <= '1';
			else
				count <= count + 1;	--if count not full, iterate count, ensure send not triggered
				send <= '0';
			end if;
		end if;
	end process;
end behavior;
------------Baud Block------------
----------------------------------

----------Receiver Block----------
----------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx is
port (
		clk, rst_bar, step, rx : in std_logic;	--clock, asynchronous logic-low reset, baud step, input reception
		data : out std_logic_vector(7 downto 0);	--8-bit data stream (received)
		q_received : out std_logic	--ensure data received
		);
end rx;

architecture mooreMealy of rx is 
	type state is(b_wait, b_start, b_data, b_stop);		--Moore states
	signal present_state :	state := b_wait;
	signal b_index : integer range 0 to 7 := 0;			--indexes of bit transmission
	signal b_receive : std_logic_vector(7 downto 0) := (others => '0');	--initializes all bits to 0
begin

	process(clk, rst_bar)	--asynchronous reset
	begin
		if rst_bar = '0' then
			present_state <= b_wait;
			data <= (others => '0');	--received data should be thrown out if reset
		elsif rising_edge(clk) then	--positive-edge triggered
			if step = '1' then
				
				-----MEALY/MOORE CASE STATEMENT-------------------
				--------------------------------------------------
				case present_state is
					when b_wait =>		--when in wait state, nothing received and check for starting bit
						q_received <= '0';
						if rx = '0' then
							present_state <= b_start;
						end if;
					when b_start =>	--if start bit detected, move to data state and ensure index reset
						present_state <= b_data;
						b_index <= 0;
					when b_data =>		--data state
						b_receive(b_index) <= rx;	--get received input bit, store in signal at index
						if b_index = 7 then
							present_state <= b_stop;
						else
							b_index <= b_index + 1;	--this may not be iterative, use for loop for iteration
						end if;
					when b_stop =>		--stop case, give data and mark as received
						data <= b_receive;
						q_received <= '1';
						present_state <= b_wait;
				end case;
				-----MEALY/MOORE CASE STATEMENT-------------------
				--------------------------------------------------
				
			end if;
		end if;
	end process;
end mooreMealy;
----------Receiver Block----------
----------------------------------