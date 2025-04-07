-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/26/2025 20:18:55"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eightbitcounter IS
    PORT (
	enable : IN std_logic;
	clock : IN std_logic;
	clear_bar : IN std_logic;
	q_out : OUT std_logic_vector(7 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END eightbitcounter;

-- Design Ports Information
-- q_out[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- q_out[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- enable	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clear_bar	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF eightbitcounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear_bar : std_logic;
SIGNAL ww_q_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q_out[0]~output_o\ : std_logic;
SIGNAL \q_out[1]~output_o\ : std_logic;
SIGNAL \q_out[2]~output_o\ : std_logic;
SIGNAL \q_out[3]~output_o\ : std_logic;
SIGNAL \q_out[4]~output_o\ : std_logic;
SIGNAL \q_out[5]~output_o\ : std_logic;
SIGNAL \q_out[6]~output_o\ : std_logic;
SIGNAL \q_out[7]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \t1|q_temp~0_combout\ : std_logic;
SIGNAL \clear_bar~input_o\ : std_logic;
SIGNAL \t1|q_temp~q\ : std_logic;
SIGNAL \t2|q_temp~0_combout\ : std_logic;
SIGNAL \t2|q_temp~q\ : std_logic;
SIGNAL \t3|q_temp~0_combout\ : std_logic;
SIGNAL \t3|q_temp~q\ : std_logic;
SIGNAL \t4|q_temp~0_combout\ : std_logic;
SIGNAL \t4|q_temp~q\ : std_logic;
SIGNAL \t5|q_temp~0_combout\ : std_logic;
SIGNAL \t5|q_temp~q\ : std_logic;
SIGNAL \t6|q_temp~0_combout\ : std_logic;
SIGNAL \t6|q_temp~q\ : std_logic;
SIGNAL \t7|q_temp~0_combout\ : std_logic;
SIGNAL \t7|q_temp~q\ : std_logic;
SIGNAL \t8|q_temp~0_combout\ : std_logic;
SIGNAL \t8|q_temp~1_combout\ : std_logic;
SIGNAL \t8|q_temp~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL t_link : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enable <= enable;
ww_clock <= clock;
ww_clear_bar <= clear_bar;
q_out <= ww_q_out;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\q_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\q_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\q_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t3|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\q_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t4|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\q_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t5|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\q_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t6|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\q_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t7|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\q_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t8|q_temp~q\,
	devoe => ww_devoe,
	o => \q_out[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\hex1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\hex1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\hex1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\hex0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\hex0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\hex0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\hex0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\hex0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\hex0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\hex0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOIBUF_X49_Y54_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X50_Y53_N16
\t1|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t1|q_temp~0_combout\ = \t1|q_temp~q\ $ (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|q_temp~q\,
	datad => \enable~input_o\,
	combout => \t1|q_temp~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\clear_bar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_bar,
	o => \clear_bar~input_o\);

-- Location: FF_X50_Y53_N17
\t1|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t1|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N22
\t2|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t2|q_temp~0_combout\ = \t2|q_temp~q\ $ (((\enable~input_o\ & \t1|q_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \t2|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \t2|q_temp~0_combout\);

-- Location: FF_X50_Y53_N23
\t2|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t2|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N24
\t3|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t3|q_temp~0_combout\ = \t3|q_temp~q\ $ (((\enable~input_o\ & (\t2|q_temp~q\ & \t1|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \t2|q_temp~q\,
	datac => \t3|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \t3|q_temp~0_combout\);

-- Location: FF_X50_Y53_N25
\t3|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t3|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N28
\t_link[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- t_link(2) = (\enable~input_o\ & (\t1|q_temp~q\ & (\t2|q_temp~q\ & \t3|q_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \t1|q_temp~q\,
	datac => \t2|q_temp~q\,
	datad => \t3|q_temp~q\,
	combout => t_link(2));

-- Location: LCCOMB_X50_Y53_N26
\t4|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t4|q_temp~0_combout\ = \t4|q_temp~q\ $ (t_link(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t4|q_temp~q\,
	datad => t_link(2),
	combout => \t4|q_temp~0_combout\);

-- Location: FF_X50_Y53_N27
\t4|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t4|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N4
\t5|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t5|q_temp~0_combout\ = \t5|q_temp~q\ $ (((\t4|q_temp~q\ & t_link(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t4|q_temp~q\,
	datac => \t5|q_temp~q\,
	datad => t_link(2),
	combout => \t5|q_temp~0_combout\);

-- Location: FF_X50_Y53_N5
\t5|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t5|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t5|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N18
\t6|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t6|q_temp~0_combout\ = \t6|q_temp~q\ $ (((\t4|q_temp~q\ & (\t5|q_temp~q\ & t_link(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t6|q_temp~q\,
	datad => t_link(2),
	combout => \t6|q_temp~0_combout\);

-- Location: FF_X50_Y53_N19
\t6|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t6|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t6|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N10
\t_link[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- t_link(5) = (\t6|q_temp~q\ & (\t5|q_temp~q\ & (\t4|q_temp~q\ & t_link(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => t_link(2),
	combout => t_link(5));

-- Location: LCCOMB_X50_Y53_N12
\t7|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t7|q_temp~0_combout\ = \t7|q_temp~q\ $ (t_link(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t7|q_temp~q\,
	datad => t_link(5),
	combout => \t7|q_temp~0_combout\);

-- Location: FF_X50_Y53_N13
\t7|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t7|q_temp~0_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t7|q_temp~q\);

-- Location: LCCOMB_X50_Y53_N20
\t8|q_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t8|q_temp~0_combout\ = ((!\t6|q_temp~q\) # (!\t4|q_temp~q\)) # (!\t5|q_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t5|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t6|q_temp~q\,
	combout => \t8|q_temp~0_combout\);

-- Location: LCCOMB_X50_Y53_N6
\t8|q_temp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t8|q_temp~1_combout\ = \t8|q_temp~q\ $ (((\t7|q_temp~q\ & (t_link(2) & !\t8|q_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t7|q_temp~q\,
	datab => t_link(2),
	datac => \t8|q_temp~q\,
	datad => \t8|q_temp~0_combout\,
	combout => \t8|q_temp~1_combout\);

-- Location: FF_X50_Y53_N7
\t8|q_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \t8|q_temp~1_combout\,
	clrn => \clear_bar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t8|q_temp~q\);

-- Location: LCCOMB_X77_Y43_N20
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\t7|q_temp~q\ & (!\t6|q_temp~q\ & (\t5|q_temp~q\ $ (!\t8|q_temp~q\)))) # (!\t7|q_temp~q\ & (\t5|q_temp~q\ & (\t6|q_temp~q\ $ (!\t8|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X77_Y43_N14
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\t6|q_temp~q\ & ((\t5|q_temp~q\ & ((\t8|q_temp~q\))) # (!\t5|q_temp~q\ & (\t7|q_temp~q\)))) # (!\t6|q_temp~q\ & (\t7|q_temp~q\ & (\t5|q_temp~q\ $ (\t8|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X77_Y43_N12
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\t7|q_temp~q\ & (\t8|q_temp~q\ & ((\t6|q_temp~q\) # (!\t5|q_temp~q\)))) # (!\t7|q_temp~q\ & (\t6|q_temp~q\ & (!\t5|q_temp~q\ & !\t8|q_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X77_Y43_N30
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\t6|q_temp~q\ & ((\t5|q_temp~q\ & (\t7|q_temp~q\)) # (!\t5|q_temp~q\ & (!\t7|q_temp~q\ & \t8|q_temp~q\)))) # (!\t6|q_temp~q\ & (!\t8|q_temp~q\ & (\t5|q_temp~q\ $ (\t7|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X77_Y43_N4
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\t6|q_temp~q\ & (\t5|q_temp~q\ & ((!\t8|q_temp~q\)))) # (!\t6|q_temp~q\ & ((\t7|q_temp~q\ & ((!\t8|q_temp~q\))) # (!\t7|q_temp~q\ & (\t5|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X77_Y43_N10
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\t6|q_temp~q\ & (!\t8|q_temp~q\ & ((\t5|q_temp~q\) # (!\t7|q_temp~q\)))) # (!\t6|q_temp~q\ & (\t5|q_temp~q\ & (\t7|q_temp~q\ $ (!\t8|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X77_Y43_N16
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\t5|q_temp~q\ & ((\t8|q_temp~q\) # (\t6|q_temp~q\ $ (\t7|q_temp~q\)))) # (!\t5|q_temp~q\ & ((\t6|q_temp~q\) # (\t7|q_temp~q\ $ (\t8|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t6|q_temp~q\,
	datab => \t5|q_temp~q\,
	datac => \t7|q_temp~q\,
	datad => \t8|q_temp~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X50_Y52_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\t3|q_temp~q\ & (!\t2|q_temp~q\ & (\t4|q_temp~q\ $ (!\t1|q_temp~q\)))) # (!\t3|q_temp~q\ & (\t1|q_temp~q\ & (\t2|q_temp~q\ $ (!\t4|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X50_Y53_N8
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\t2|q_temp~q\ & ((\t1|q_temp~q\ & ((\t4|q_temp~q\))) # (!\t1|q_temp~q\ & (\t3|q_temp~q\)))) # (!\t2|q_temp~q\ & (\t3|q_temp~q\ & (\t1|q_temp~q\ $ (\t4|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t3|q_temp~q\,
	datad => \t4|q_temp~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X50_Y53_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\t3|q_temp~q\ & (\t4|q_temp~q\ & ((\t2|q_temp~q\) # (!\t1|q_temp~q\)))) # (!\t3|q_temp~q\ & (!\t1|q_temp~q\ & (\t2|q_temp~q\ & !\t4|q_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t3|q_temp~q\,
	datad => \t4|q_temp~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X50_Y52_N10
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\t2|q_temp~q\ & ((\t3|q_temp~q\ & ((\t1|q_temp~q\))) # (!\t3|q_temp~q\ & (\t4|q_temp~q\ & !\t1|q_temp~q\)))) # (!\t2|q_temp~q\ & (!\t4|q_temp~q\ & (\t3|q_temp~q\ $ (\t1|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X50_Y52_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\t2|q_temp~q\ & (((!\t4|q_temp~q\ & \t1|q_temp~q\)))) # (!\t2|q_temp~q\ & ((\t3|q_temp~q\ & (!\t4|q_temp~q\)) # (!\t3|q_temp~q\ & ((\t1|q_temp~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X50_Y52_N22
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\t3|q_temp~q\ & (\t1|q_temp~q\ & (\t2|q_temp~q\ $ (\t4|q_temp~q\)))) # (!\t3|q_temp~q\ & (!\t4|q_temp~q\ & ((\t2|q_temp~q\) # (\t1|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X50_Y52_N8
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\t1|q_temp~q\ & ((\t4|q_temp~q\) # (\t3|q_temp~q\ $ (\t2|q_temp~q\)))) # (!\t1|q_temp~q\ & ((\t2|q_temp~q\) # (\t3|q_temp~q\ $ (\t4|q_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|q_temp~q\,
	datab => \t2|q_temp~q\,
	datac => \t4|q_temp~q\,
	datad => \t1|q_temp~q\,
	combout => \Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_q_out(0) <= \q_out[0]~output_o\;

ww_q_out(1) <= \q_out[1]~output_o\;

ww_q_out(2) <= \q_out[2]~output_o\;

ww_q_out(3) <= \q_out[3]~output_o\;

ww_q_out(4) <= \q_out[4]~output_o\;

ww_q_out(5) <= \q_out[5]~output_o\;

ww_q_out(6) <= \q_out[6]~output_o\;

ww_q_out(7) <= \q_out[7]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;
END structure;


