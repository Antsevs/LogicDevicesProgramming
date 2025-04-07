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

-- DATE "03/26/2025 21:19:15"

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

ENTITY 	threedigbcdcounter IS
    PORT (
	input_clock : IN std_logic;
	reset : IN std_logic;
	count_enable : IN std_logic;
	output_enable : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END threedigbcdcounter;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- output_enable	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_clock	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- count_enable	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF threedigbcdcounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_count_enable : std_logic;
SIGNAL ww_output_enable : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \output_enable~input_o\ : std_logic;
SIGNAL \input_clock~input_o\ : std_logic;
SIGNAL \input_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \bcdVal[0]~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count_enable~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \clk_spread~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \clk_spread~15_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \clk_spread~14_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \clk_spread~13_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \clk_spread~12_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \clk_spread~11_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \clk_spread~10_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \clk_spread~21_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \clk_spread~20_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \clk_spread~19_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \clk_spread~18_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \clk_spread~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \bcdVal[3]~0_combout\ : std_logic;
SIGNAL \bcdVal~3_combout\ : std_logic;
SIGNAL \bcdVal~1_combout\ : std_logic;
SIGNAL \bcdVal[2]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \hex0~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \hex0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hex0~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \hex0~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \hex0~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \hex0~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \hex0~6_combout\ : std_logic;
SIGNAL \bcdVal[4]~13_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \bcdVal[11]~4_combout\ : std_logic;
SIGNAL \bcdVal[6]~6_combout\ : std_logic;
SIGNAL \bcdVal~7_combout\ : std_logic;
SIGNAL \bcdVal~5_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \hex1~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \hex1~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \hex1~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \hex1~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \hex1~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \hex1~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \hex1~6_combout\ : std_logic;
SIGNAL \bcdVal[8]~14_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \bcdVal[11]~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bcdVal[10]~10_combout\ : std_logic;
SIGNAL \bcdVal~9_combout\ : std_logic;
SIGNAL \bcdVal~11_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \hex2~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \hex2~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \hex2~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \hex2~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \hex2~4_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \hex2~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \hex2~6_combout\ : std_logic;
SIGNAL bcdVal : std_logic_vector(11 DOWNTO 0);
SIGNAL clk_spread : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_clock <= input_clock;
ww_reset <= reset;
ww_count_enable <= count_enable;
ww_output_enable <= output_enable;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\input_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_clock~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X58_Y54_N16
\hex0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\hex0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\hex0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~2_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\hex0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\hex0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~4_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\hex0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~5_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\hex0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0~6_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~1_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~2_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~3_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\hex1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~4_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\hex1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~5_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\hex1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1~6_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\hex2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\hex2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~1_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\hex2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~2_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\hex2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~3_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\hex2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~4_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\hex2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~5_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\hex2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2~6_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOIBUF_X51_Y54_N1
\output_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_output_enable,
	o => \output_enable~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\input_clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_clock,
	o => \input_clock~input_o\);

-- Location: CLKCTRL_G19
\input_clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y51_N0
\bcdVal[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[0]~12_combout\ = !bcdVal(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(0),
	combout => \bcdVal[0]~12_combout\);

-- Location: IOIBUF_X51_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\count_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_enable,
	o => \count_enable~input_o\);

-- Location: LCCOMB_X56_Y52_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = clk_spread(0) $ (VCC)
-- \Add3~1\ = CARRY(clk_spread(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: FF_X56_Y52_N7
\clk_spread[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(0));

-- Location: LCCOMB_X56_Y52_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (clk_spread(1) & (!\Add3~1\)) # (!clk_spread(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!clk_spread(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X56_Y52_N9
\clk_spread[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(1));

-- Location: LCCOMB_X56_Y52_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (clk_spread(2) & (\Add3~3\ $ (GND))) # (!clk_spread(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((clk_spread(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X56_Y52_N11
\clk_spread[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(2));

-- Location: LCCOMB_X56_Y52_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (clk_spread(3) & (!\Add3~5\)) # (!clk_spread(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!clk_spread(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: FF_X56_Y52_N13
\clk_spread[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(3));

-- Location: LCCOMB_X56_Y52_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (clk_spread(4) & (\Add3~7\ $ (GND))) # (!clk_spread(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((clk_spread(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X56_Y52_N15
\clk_spread[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(4));

-- Location: LCCOMB_X56_Y52_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (clk_spread(5) & (!\Add3~9\)) # (!clk_spread(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!clk_spread(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X56_Y52_N17
\clk_spread[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(5));

-- Location: LCCOMB_X56_Y52_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_spread(3) & (clk_spread(5) & (clk_spread(4) & clk_spread(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(3),
	datab => clk_spread(5),
	datac => clk_spread(4),
	datad => clk_spread(2),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X56_Y52_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (clk_spread(6) & (\Add3~11\ $ (GND))) # (!clk_spread(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((clk_spread(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X56_Y52_N19
\clk_spread[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(6));

-- Location: LCCOMB_X56_Y52_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (clk_spread(7) & (!\Add3~13\)) # (!clk_spread(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!clk_spread(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X57_Y51_N30
\clk_spread~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~16_combout\ = (\Add3~14_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~14_combout\,
	combout => \clk_spread~16_combout\);

-- Location: FF_X57_Y51_N31
\clk_spread[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(7));

-- Location: LCCOMB_X56_Y52_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (clk_spread(8) & (\Add3~15\ $ (GND))) # (!clk_spread(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((clk_spread(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X56_Y52_N23
\clk_spread[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(8));

-- Location: LCCOMB_X56_Y52_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (clk_spread(9) & (!\Add3~17\)) # (!clk_spread(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!clk_spread(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X56_Y52_N25
\clk_spread[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(9));

-- Location: LCCOMB_X56_Y52_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_spread(8) & (clk_spread(6) & (!clk_spread(7) & !clk_spread(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(8),
	datab => clk_spread(6),
	datac => clk_spread(7),
	datad => clk_spread(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X56_Y52_N4
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clk_spread(1) & (\Equal0~6_combout\ & (clk_spread(0) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(1),
	datab => \Equal0~6_combout\,
	datac => clk_spread(0),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X56_Y52_N26
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (clk_spread(10) & (\Add3~19\ $ (GND))) # (!clk_spread(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((clk_spread(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X56_Y52_N27
\clk_spread[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(10));

-- Location: LCCOMB_X56_Y52_N28
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (clk_spread(11) & (!\Add3~21\)) # (!clk_spread(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!clk_spread(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X56_Y52_N29
\clk_spread[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(11));

-- Location: LCCOMB_X56_Y52_N30
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (clk_spread(12) & (\Add3~23\ $ (GND))) # (!clk_spread(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((clk_spread(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X57_Y51_N12
\clk_spread~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~15_combout\ = (\Add3~24_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~24_combout\,
	combout => \clk_spread~15_combout\);

-- Location: FF_X57_Y51_N13
\clk_spread[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(12));

-- Location: LCCOMB_X56_Y51_N0
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (clk_spread(13) & (!\Add3~25\)) # (!clk_spread(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!clk_spread(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X57_Y51_N22
\clk_spread~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~14_combout\ = (\Add3~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~14_combout\);

-- Location: FF_X57_Y51_N23
\clk_spread[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(13));

-- Location: LCCOMB_X56_Y51_N2
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (clk_spread(14) & (\Add3~27\ $ (GND))) # (!clk_spread(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((clk_spread(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X57_Y51_N6
\clk_spread~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~13_combout\ = (\Add3~28_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~28_combout\,
	combout => \clk_spread~13_combout\);

-- Location: FF_X57_Y51_N7
\clk_spread[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(14));

-- Location: LCCOMB_X56_Y51_N4
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (clk_spread(15) & (!\Add3~29\)) # (!clk_spread(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!clk_spread(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X57_Y51_N16
\clk_spread~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~12_combout\ = (\Add3~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~30_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~12_combout\);

-- Location: FF_X57_Y51_N17
\clk_spread[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(15));

-- Location: LCCOMB_X56_Y51_N6
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (clk_spread(16) & (\Add3~31\ $ (GND))) # (!clk_spread(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((clk_spread(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X56_Y51_N7
\clk_spread[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(16));

-- Location: LCCOMB_X56_Y51_N8
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (clk_spread(17) & (!\Add3~33\)) # (!clk_spread(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!clk_spread(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X56_Y51_N26
\clk_spread~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~11_combout\ = (\Add3~34_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add3~34_combout\,
	datad => \Equal0~7_combout\,
	combout => \clk_spread~11_combout\);

-- Location: FF_X56_Y51_N27
\clk_spread[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(17));

-- Location: LCCOMB_X56_Y51_N10
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (clk_spread(18) & (\Add3~35\ $ (GND))) # (!clk_spread(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((clk_spread(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X56_Y51_N11
\clk_spread[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(18));

-- Location: LCCOMB_X56_Y51_N12
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (clk_spread(19) & (!\Add3~37\)) # (!clk_spread(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!clk_spread(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X56_Y51_N28
\clk_spread~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~10_combout\ = (\Add3~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add3~38_combout\,
	combout => \clk_spread~10_combout\);

-- Location: FF_X56_Y51_N29
\clk_spread[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(19));

-- Location: LCCOMB_X56_Y51_N14
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (clk_spread(20) & (\Add3~39\ $ (GND))) # (!clk_spread(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((clk_spread(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X56_Y51_N30
\clk_spread~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~21_combout\ = (\Add3~40_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add3~40_combout\,
	datad => \Equal0~7_combout\,
	combout => \clk_spread~21_combout\);

-- Location: FF_X56_Y51_N31
\clk_spread[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(20));

-- Location: LCCOMB_X56_Y51_N16
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (clk_spread(21) & (!\Add3~41\)) # (!clk_spread(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!clk_spread(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X57_Y51_N20
\clk_spread~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~20_combout\ = (\Add3~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~42_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~20_combout\);

-- Location: FF_X57_Y51_N21
\clk_spread[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(21));

-- Location: LCCOMB_X56_Y51_N18
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (clk_spread(22) & (\Add3~43\ $ (GND))) # (!clk_spread(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((clk_spread(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X57_Y51_N8
\clk_spread~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~19_combout\ = (\Add3~44_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~44_combout\,
	combout => \clk_spread~19_combout\);

-- Location: FF_X57_Y51_N9
\clk_spread[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(22));

-- Location: LCCOMB_X56_Y51_N20
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (clk_spread(23) & (!\Add3~45\)) # (!clk_spread(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!clk_spread(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X57_Y51_N18
\clk_spread~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~18_combout\ = (\Add3~46_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~46_combout\,
	combout => \clk_spread~18_combout\);

-- Location: FF_X57_Y51_N19
\clk_spread[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(23));

-- Location: LCCOMB_X56_Y51_N22
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (clk_spread(24) & (\Add3~47\ $ (GND))) # (!clk_spread(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((clk_spread(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X56_Y51_N23
\clk_spread[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(24));

-- Location: LCCOMB_X56_Y51_N24
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (clk_spread(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_spread(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X57_Y51_N24
\clk_spread~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~17_combout\ = (\Add3~50_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~50_combout\,
	combout => \clk_spread~17_combout\);

-- Location: FF_X57_Y51_N25
\clk_spread[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \clk_spread~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(25));

-- Location: LCCOMB_X57_Y51_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_spread(25) & (clk_spread(23) & (clk_spread(22) & !clk_spread(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(25),
	datab => clk_spread(23),
	datac => clk_spread(22),
	datad => clk_spread(24),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X57_Y51_N28
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_spread(14) & (!clk_spread(16) & (clk_spread(17) & clk_spread(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(14),
	datab => clk_spread(16),
	datac => clk_spread(17),
	datad => clk_spread(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X57_Y51_N14
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_spread(18) & (clk_spread(20) & (clk_spread(21) & clk_spread(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(18),
	datab => clk_spread(20),
	datac => clk_spread(21),
	datad => clk_spread(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X57_Y51_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_spread(12) & (!clk_spread(10) & (clk_spread(13) & !clk_spread(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(12),
	datab => clk_spread(10),
	datac => clk_spread(13),
	datad => clk_spread(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X58_Y51_N16
\bcdVal[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[3]~0_combout\ = (\count_enable~input_o\ & (\Equal0~4_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~input_o\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \bcdVal[3]~0_combout\);

-- Location: FF_X58_Y51_N1
\bcdVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[0]~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(0));

-- Location: LCCOMB_X58_Y51_N2
\bcdVal~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~3_combout\ = (bcdVal(1) & (bcdVal(3) $ (((bcdVal(2) & bcdVal(0)))))) # (!bcdVal(1) & (bcdVal(3) & ((bcdVal(2)) # (!bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(1),
	datab => bcdVal(2),
	datac => bcdVal(3),
	datad => bcdVal(0),
	combout => \bcdVal~3_combout\);

-- Location: FF_X58_Y51_N3
\bcdVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(3));

-- Location: LCCOMB_X58_Y51_N26
\bcdVal~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~1_combout\ = (bcdVal(1) & (((!bcdVal(0))))) # (!bcdVal(1) & (bcdVal(0) & ((bcdVal(2)) # (!bcdVal(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \bcdVal~1_combout\);

-- Location: FF_X58_Y51_N27
\bcdVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(1));

-- Location: LCCOMB_X58_Y51_N20
\bcdVal[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[2]~2_combout\ = bcdVal(2) $ (((bcdVal(1) & (bcdVal(0) & \bcdVal[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(1),
	datab => bcdVal(0),
	datac => bcdVal(2),
	datad => \bcdVal[3]~0_combout\,
	combout => \bcdVal[2]~2_combout\);

-- Location: FF_X58_Y51_N21
\bcdVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(2));

-- Location: LCCOMB_X58_Y51_N24
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (bcdVal(1) & (((bcdVal(3))))) # (!bcdVal(1) & (bcdVal(2) $ (((!bcdVal(3) & bcdVal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X59_Y51_N12
\hex0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~0_combout\ = (\Mux6~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux6~0_combout\,
	combout => \hex0~0_combout\);

-- Location: LCCOMB_X58_Y51_N14
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (bcdVal(2) & ((bcdVal(3)) # (bcdVal(1) $ (bcdVal(0))))) # (!bcdVal(2) & (bcdVal(3) & (bcdVal(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X59_Y51_N6
\hex0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~1_combout\ = (\Mux5~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux5~0_combout\,
	combout => \hex0~1_combout\);

-- Location: LCCOMB_X58_Y51_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (bcdVal(2) & (bcdVal(3))) # (!bcdVal(2) & (bcdVal(1) & ((bcdVal(3)) # (!bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X58_Y51_N18
\hex0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~2_combout\ = (\Mux4~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux4~0_combout\,
	combout => \hex0~2_combout\);

-- Location: LCCOMB_X58_Y51_N12
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (bcdVal(1) & ((bcdVal(3)) # ((bcdVal(2) & bcdVal(0))))) # (!bcdVal(1) & (bcdVal(2) $ (((!bcdVal(3) & bcdVal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\hex0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~3_combout\ = (\Mux3~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux3~0_combout\,
	combout => \hex0~3_combout\);

-- Location: LCCOMB_X58_Y51_N8
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (bcdVal(0)) # ((bcdVal(1) & ((bcdVal(3)))) # (!bcdVal(1) & (bcdVal(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X59_Y51_N20
\hex0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~4_combout\ = (\Mux2~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux2~0_combout\,
	combout => \hex0~4_combout\);

-- Location: LCCOMB_X58_Y51_N10
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (bcdVal(2) & ((bcdVal(3)) # ((bcdVal(1) & bcdVal(0))))) # (!bcdVal(2) & ((bcdVal(1)) # ((!bcdVal(3) & bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(3),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y51_N22
\hex0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~5_combout\ = (\Mux1~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux1~0_combout\,
	combout => \hex0~5_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bcdVal(2) & (!bcdVal(3) & ((!bcdVal(0)) # (!bcdVal(1))))) # (!bcdVal(2) & (bcdVal(3) $ ((bcdVal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(2),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y52_N0
\hex0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0~6_combout\ = (!\output_enable~input_o\) # (!\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \output_enable~input_o\,
	combout => \hex0~6_combout\);

-- Location: LCCOMB_X58_Y52_N18
\bcdVal[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[4]~13_combout\ = !bcdVal(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(4),
	combout => \bcdVal[4]~13_combout\);

-- Location: LCCOMB_X58_Y52_N2
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (bcdVal(3) & (!bcdVal(2) & (!bcdVal(1) & bcdVal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(2),
	datac => bcdVal(1),
	datad => bcdVal(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X58_Y52_N20
\bcdVal[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[11]~4_combout\ = (\count_enable~input_o\ & (\Equal1~0_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~input_o\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \bcdVal[11]~4_combout\);

-- Location: FF_X58_Y52_N19
\bcdVal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[4]~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(4));

-- Location: LCCOMB_X58_Y52_N6
\bcdVal[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[6]~6_combout\ = bcdVal(6) $ (((bcdVal(5) & (bcdVal(4) & \bcdVal[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(4),
	datac => bcdVal(6),
	datad => \bcdVal[11]~4_combout\,
	combout => \bcdVal[6]~6_combout\);

-- Location: FF_X58_Y52_N7
\bcdVal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[6]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(6));

-- Location: LCCOMB_X58_Y52_N24
\bcdVal~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~7_combout\ = (bcdVal(6) & (bcdVal(7) $ (((bcdVal(5) & bcdVal(4)))))) # (!bcdVal(6) & (bcdVal(7) & ((bcdVal(5)) # (!bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(6),
	datab => bcdVal(5),
	datac => bcdVal(7),
	datad => bcdVal(4),
	combout => \bcdVal~7_combout\);

-- Location: FF_X58_Y52_N25
\bcdVal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(7));

-- Location: LCCOMB_X58_Y52_N8
\bcdVal~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~5_combout\ = (bcdVal(5) & (((!bcdVal(4))))) # (!bcdVal(5) & (bcdVal(4) & ((bcdVal(6)) # (!bcdVal(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(6),
	datab => bcdVal(7),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \bcdVal~5_combout\);

-- Location: FF_X58_Y52_N9
\bcdVal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(5));

-- Location: LCCOMB_X59_Y52_N26
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (bcdVal(5) & (bcdVal(7))) # (!bcdVal(5) & (bcdVal(6) $ (((!bcdVal(7) & bcdVal(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(7),
	datac => bcdVal(6),
	datad => bcdVal(4),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X59_Y52_N24
\hex1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~0_combout\ = (\Mux13~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datac => \output_enable~input_o\,
	combout => \hex1~0_combout\);

-- Location: LCCOMB_X59_Y52_N10
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (bcdVal(7) & ((bcdVal(5)) # ((bcdVal(6))))) # (!bcdVal(7) & (bcdVal(6) & (bcdVal(5) $ (bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(7),
	datac => bcdVal(6),
	datad => bcdVal(4),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X59_Y52_N28
\hex1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~1_combout\ = (\Mux12~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux12~0_combout\,
	combout => \hex1~1_combout\);

-- Location: LCCOMB_X59_Y52_N18
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (bcdVal(6) & (((bcdVal(7))))) # (!bcdVal(6) & (bcdVal(5) & ((bcdVal(7)) # (!bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(7),
	datac => bcdVal(6),
	datad => bcdVal(4),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X59_Y52_N16
\hex1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~2_combout\ = (\Mux11~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux11~0_combout\,
	combout => \hex1~2_combout\);

-- Location: LCCOMB_X58_Y52_N22
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (bcdVal(5) & ((bcdVal(7)) # ((bcdVal(6) & bcdVal(4))))) # (!bcdVal(5) & (bcdVal(6) $ (((!bcdVal(7) & bcdVal(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(6),
	datab => bcdVal(7),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X58_Y52_N12
\hex1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~3_combout\ = (\Mux10~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datac => \output_enable~input_o\,
	combout => \hex1~3_combout\);

-- Location: LCCOMB_X58_Y52_N30
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (bcdVal(4)) # ((bcdVal(5) & ((bcdVal(7)))) # (!bcdVal(5) & (bcdVal(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(6),
	datab => bcdVal(7),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X59_Y52_N2
\hex1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~4_combout\ = (\Mux9~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux9~0_combout\,
	combout => \hex1~4_combout\);

-- Location: LCCOMB_X59_Y52_N12
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (bcdVal(6) & ((bcdVal(7)) # ((bcdVal(5) & bcdVal(4))))) # (!bcdVal(6) & ((bcdVal(5)) # ((!bcdVal(7) & bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(7),
	datac => bcdVal(6),
	datad => bcdVal(4),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X59_Y52_N6
\hex1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~5_combout\ = (\Mux8~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux8~0_combout\,
	combout => \hex1~5_combout\);

-- Location: LCCOMB_X59_Y52_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (bcdVal(5) & (!bcdVal(7) & ((!bcdVal(4)) # (!bcdVal(6))))) # (!bcdVal(5) & (bcdVal(7) $ ((bcdVal(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(7),
	datac => bcdVal(6),
	datad => bcdVal(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X59_Y52_N30
\hex1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1~6_combout\ = (!\output_enable~input_o\) # (!\Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \output_enable~input_o\,
	combout => \hex1~6_combout\);

-- Location: LCCOMB_X57_Y52_N20
\bcdVal[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[8]~14_combout\ = !bcdVal(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(8),
	combout => \bcdVal[8]~14_combout\);

-- Location: LCCOMB_X58_Y52_N26
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!bcdVal(6) & (bcdVal(7) & (!bcdVal(5) & bcdVal(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(6),
	datab => bcdVal(7),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X57_Y52_N16
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X57_Y52_N26
\bcdVal[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[11]~8_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & (\count_enable~input_o\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \count_enable~input_o\,
	datad => \Equal0~8_combout\,
	combout => \bcdVal[11]~8_combout\);

-- Location: FF_X57_Y52_N21
\bcdVal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[8]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(8));

-- Location: LCCOMB_X57_Y52_N28
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (bcdVal(9) & bcdVal(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(9),
	datad => bcdVal(8),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X58_Y52_N28
\bcdVal[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[10]~10_combout\ = bcdVal(10) $ (((\Equal2~0_combout\ & (\Add0~0_combout\ & \bcdVal[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add0~0_combout\,
	datac => bcdVal(10),
	datad => \bcdVal[11]~4_combout\,
	combout => \bcdVal[10]~10_combout\);

-- Location: FF_X58_Y52_N29
\bcdVal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[10]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(10));

-- Location: LCCOMB_X57_Y52_N22
\bcdVal~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~9_combout\ = (bcdVal(8) & (!bcdVal(9) & ((bcdVal(10)) # (!bcdVal(11))))) # (!bcdVal(8) & (((bcdVal(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \bcdVal~9_combout\);

-- Location: FF_X57_Y52_N23
\bcdVal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(9));

-- Location: LCCOMB_X57_Y52_N12
\bcdVal~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~11_combout\ = (bcdVal(9) & (bcdVal(11) $ (((bcdVal(8) & bcdVal(10)))))) # (!bcdVal(9) & (bcdVal(11) & ((bcdVal(10)) # (!bcdVal(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(9),
	datab => bcdVal(8),
	datac => bcdVal(11),
	datad => bcdVal(10),
	combout => \bcdVal~11_combout\);

-- Location: FF_X57_Y52_N13
\bcdVal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(11));

-- Location: LCCOMB_X57_Y52_N14
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (bcdVal(9) & (bcdVal(11))) # (!bcdVal(9) & (bcdVal(10) $ (((!bcdVal(11) & bcdVal(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X58_Y52_N10
\hex2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~0_combout\ = (\Mux20~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux20~0_combout\,
	combout => \hex2~0_combout\);

-- Location: LCCOMB_X57_Y52_N0
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (bcdVal(11) & (((bcdVal(9)) # (bcdVal(10))))) # (!bcdVal(11) & (bcdVal(10) & (bcdVal(8) $ (bcdVal(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X59_Y52_N20
\hex2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~1_combout\ = (\Mux19~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux19~0_combout\,
	combout => \hex2~1_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (bcdVal(10) & (bcdVal(11))) # (!bcdVal(10) & (bcdVal(9) & ((bcdVal(11)) # (!bcdVal(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X59_Y52_N14
\hex2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~2_combout\ = (\Mux18~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux18~0_combout\,
	combout => \hex2~2_combout\);

-- Location: LCCOMB_X57_Y52_N24
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (bcdVal(9) & ((bcdVal(11)) # ((bcdVal(8) & bcdVal(10))))) # (!bcdVal(9) & (bcdVal(10) $ (((!bcdVal(11) & bcdVal(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X58_Y52_N16
\hex2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~3_combout\ = (\Mux17~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux17~0_combout\,
	combout => \hex2~3_combout\);

-- Location: LCCOMB_X57_Y52_N6
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (bcdVal(8)) # ((bcdVal(9) & (bcdVal(11))) # (!bcdVal(9) & ((bcdVal(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X57_Y52_N8
\hex2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~4_combout\ = (\Mux16~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux16~0_combout\,
	combout => \hex2~4_combout\);

-- Location: LCCOMB_X57_Y52_N10
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (bcdVal(8) & ((bcdVal(9)) # (bcdVal(11) $ (!bcdVal(10))))) # (!bcdVal(8) & ((bcdVal(10) & (bcdVal(11))) # (!bcdVal(10) & ((bcdVal(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X59_Y52_N8
\hex2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~5_combout\ = (\Mux15~0_combout\) # (!\output_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_enable~input_o\,
	datad => \Mux15~0_combout\,
	combout => \hex2~5_combout\);

-- Location: LCCOMB_X57_Y52_N4
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (bcdVal(9) & (!bcdVal(11) & ((!bcdVal(10)) # (!bcdVal(8))))) # (!bcdVal(9) & (bcdVal(11) $ (((bcdVal(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X57_Y52_N30
\hex2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2~6_combout\ = (!\output_enable~input_o\) # (!\Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \output_enable~input_o\,
	combout => \hex2~6_combout\);

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

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;
END structure;


