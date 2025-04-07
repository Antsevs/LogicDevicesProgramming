------------Main Block------------
----------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity controller is
port	(
		clk, rst_bar, i_RX_Serial : in std_logic;	--clock, asynch. reset and receive
		o_TX_Serial : out std_logic	--transmit
		);
end controller;

architecture structure of controller is 
	signal step, wait_tx, start_tx : std_logic;		--baud step, tx logic signals
	signal data_tx : std_logic_vector(7 downto 0);	--tx data 
	signal data_rx : std_logic_vector(7 downto 0);	--rx data
	signal check : std_logic;								--signal received?
begin

	component baudblock is	--instantiation of baud block
	port	(
			clk, rst_bar : in std_logic;
			send : out std_logic	
			);
	end component
	
	component tx is			--instantiation of TX block
	port (
			clk, rst_bar, step, start : in std_logic;	 
			data : in std_logic_vector(7 downto 0);	
			tx, in_progress : out std_logic	
			);
	end component;
	
	component rx is			--instantiation of RX block
	port (
			clk, rst_bar, step, rx : in std_logic;
			data : out std_logic_vector(7 downto 0);
			q_received : out std_logic
			);
	end component;
	
	
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
			clk <= '0';
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

--------Transmitter Block---------
----------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx is
port (
		clk, rst_bar, step, start : in std_logic;	--clock, asynchronous logic-low reset, baud step, start bit
		data : in std_logic_vector(7 downto 0);	--8-bit data stream
		tx, in_progress : out std_logic	--transmission output, in progress checker to determine whether transmission is actively occurring
		);
end tx;

architecture moore of tx is
	type state is(b_wait, b_start, b_data, b_stop);		--Moore states
	signal present_state :	state := b_wait;
	signal b_index : integer range 0 to 7 := 0;			--indexes of bit transmission
	signal b_transmit : std_logic_vector(7 downto 0) := (others => '0')	--initializes all bits to 0
begin

	process(clk, rst_bar)	--asynchronous reset
	begin
		if rst_bar = '0' then
			present_state <= empty;	--current state is wait state
			tx <= '1';		--logic high wait
			b_index <= 0;	--starting index for bit
			in_progress <= '0';	--transmission not in progress
		elsif rising_edge(clk) then
			if step = '1' then	--if step, or tick, occurs
			
				-----MOORE CASE STATEMENT-------------------
				--------------------------------------------
				case present_state is
					when b_wait =>		--in wait state
						tx <= '1';		--still logic high, no transmission ocurring (or just starting)
						in_progress <= '0'	--no transmission in progress
						if start = '1' then	--if first (starter) bit then give data to signal, change state and throw in progress flag
							b_transmit <= data;
							present_state <= b_start;
							in_progress <= '1';
						end if;
					when b_start =>	--in start bit state
						tx <= '0';	--tranmission block started
						present_state <= data_bits;
						b_index <= 0;
					when b_data =>		--in data transmission state
						tx <= b_transmit(b_index) --give tx the current data bit to transfer
						if b_index = 7 then	--if final index arrived at, state goes to stop, otherwise increment data index
							present_state <= b_stop;
						else
							b_index <= b_index + 1;
						end if;
					when b_stop =>
						tx <= '1';	--tx back to no transmission, end block
						present_state <= b_wait;	--send back to waiting state
						in_progress <= '0';
					when others =>
						present_state <= b_wait;
				end case;
				-----MOORE CASE STATEMENT-------------------
				--------------------------------------------
				
			end if;
		end if;
end moore;
--------Transmitter Block---------
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
	signal b_receive : std_logic_vector(7 downto 0) := (others => '0')	--initializes all bits to 0
begin

	process(clk, rst_bar)	--asynchronous reset
	begin
		if rst_bar = '0' then
			present_state <= b_wait;
			data_out <= (others => 0);	--received data should be thrown out if reset
		elsif rising_edge(clk) then	--positive-edge triggered
			if step = '1' then
				
				-----MEALY/MOORE CASE STATEMENT-------------------
				--------------------------------------------------
				case present_state is
					when b_wait =>		--when in wait state, nothing received and check for starting bit
						q_received <= 0;
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
							b_index <= b_index + 1;
						end if;
					when b_stop =>		--stop case, give data and mark as received
						data <= b_receive;
						q_received <= '1'
						present_state <= b_wait;
				end case;
				-----MEALY/MOORE CASE STATEMENT-------------------
				--------------------------------------------------
				
			end if;
		end if;
end mooreMealy;
----------Receiver Block----------
----------------------------------