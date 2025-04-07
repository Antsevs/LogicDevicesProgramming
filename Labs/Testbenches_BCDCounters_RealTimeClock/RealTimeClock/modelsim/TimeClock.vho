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

-- DATE "03/27/2025 12:54:07"

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

ENTITY 	realtimeclock IS
    PORT (
	input_clock : IN std_logic;
	reset : IN std_logic;
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END realtimeclock;

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
-- hex3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- input_clock	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF realtimeclock IS
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
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \input_clock~input_o\ : std_logic;
SIGNAL \input_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \bcdVal[0]~17_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \clk_spread~15_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \clk_spread~14_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \clk_spread~13_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \clk_spread~12_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \clk_spread~11_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \clk_spread~10_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \clk_spread~21_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \clk_spread~20_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \clk_spread~19_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \clk_spread~18_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \clk_spread~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \clk_spread~16_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \bcdVal[2]~1_combout\ : std_logic;
SIGNAL \bcdVal~0_combout\ : std_logic;
SIGNAL \bcdVal~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \bcdVal[4]~18_combout\ : std_logic;
SIGNAL \bcdVal[15]~3_combout\ : std_logic;
SIGNAL \bcdVal~4_combout\ : std_logic;
SIGNAL \bcdVal~5_combout\ : std_logic;
SIGNAL \bcdVal[7]~6_combout\ : std_logic;
SIGNAL \bcdVal[7]~7_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \bcdVal[8]~19_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \bcdVal[11]~8_combout\ : std_logic;
SIGNAL \bcdVal[10]~10_combout\ : std_logic;
SIGNAL \bcdVal~9_combout\ : std_logic;
SIGNAL \bcdVal~11_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \bcdVal[12]~20_combout\ : std_logic;
SIGNAL \bcdVal[15]~12_combout\ : std_logic;
SIGNAL \bcdVal~14_combout\ : std_logic;
SIGNAL \bcdVal~13_combout\ : std_logic;
SIGNAL \bcdVal[15]~15_combout\ : std_logic;
SIGNAL \bcdVal[15]~16_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL bcdVal : std_logic_vector(15 DOWNTO 0);
SIGNAL clk_spread : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
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
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\input_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_clock~input_o\);
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X62_Y54_N30
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

-- Location: IOOBUF_X74_Y54_N2
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOOBUF_X69_Y54_N23
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X60_Y54_N9
\hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
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
	i => \ALT_INV_Mux9~0_combout\,
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
	i => \Mux8~0_combout\,
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
	i => \Mux7~0_combout\,
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
	i => \Mux20~0_combout\,
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
	i => \Mux19~0_combout\,
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
	i => \Mux18~0_combout\,
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
	i => \Mux17~0_combout\,
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
	i => \Mux16~0_combout\,
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
	i => \Mux15~0_combout\,
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
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\hex3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\hex3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\hex3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\hex3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\hex3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux23~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\hex3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\hex3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

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

-- Location: LCCOMB_X71_Y50_N8
\bcdVal[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[0]~17_combout\ = !bcdVal(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(0),
	combout => \bcdVal[0]~17_combout\);

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

-- Location: LCCOMB_X70_Y51_N6
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = clk_spread(0) $ (VCC)
-- \Add4~1\ = CARRY(clk_spread(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: FF_X70_Y51_N7
\clk_spread[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(0));

-- Location: LCCOMB_X70_Y51_N8
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (clk_spread(1) & (!\Add4~1\)) # (!clk_spread(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!clk_spread(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X70_Y51_N9
\clk_spread[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(1));

-- Location: LCCOMB_X70_Y51_N22
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (clk_spread(8) & (\Add4~15\ $ (GND))) # (!clk_spread(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((clk_spread(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X70_Y51_N24
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (clk_spread(9) & (!\Add4~17\)) # (!clk_spread(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!clk_spread(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X70_Y51_N25
\clk_spread[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(9));

-- Location: LCCOMB_X70_Y51_N26
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (clk_spread(10) & (\Add4~19\ $ (GND))) # (!clk_spread(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((clk_spread(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X70_Y51_N27
\clk_spread[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(10));

-- Location: LCCOMB_X70_Y51_N28
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (clk_spread(11) & (!\Add4~21\)) # (!clk_spread(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!clk_spread(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: FF_X70_Y51_N29
\clk_spread[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(11));

-- Location: LCCOMB_X70_Y51_N30
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (clk_spread(12) & (\Add4~23\ $ (GND))) # (!clk_spread(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((clk_spread(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X71_Y50_N4
\clk_spread~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~15_combout\ = (\Add4~24_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~24_combout\,
	combout => \clk_spread~15_combout\);

-- Location: FF_X71_Y50_N5
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

-- Location: LCCOMB_X70_Y50_N0
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (clk_spread(13) & (!\Add4~25\)) # (!clk_spread(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!clk_spread(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X70_Y50_N30
\clk_spread~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~14_combout\ = (\Add4~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add4~26_combout\,
	combout => \clk_spread~14_combout\);

-- Location: FF_X70_Y50_N31
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

-- Location: LCCOMB_X70_Y50_N2
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (clk_spread(14) & (\Add4~27\ $ (GND))) # (!clk_spread(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((clk_spread(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X71_Y50_N20
\clk_spread~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~13_combout\ = (\Add4~28_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~28_combout\,
	combout => \clk_spread~13_combout\);

-- Location: FF_X71_Y50_N21
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

-- Location: LCCOMB_X70_Y50_N4
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (clk_spread(15) & (!\Add4~29\)) # (!clk_spread(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!clk_spread(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X71_Y50_N6
\clk_spread~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~12_combout\ = (\Add4~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add4~30_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~12_combout\);

-- Location: FF_X71_Y50_N7
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

-- Location: LCCOMB_X70_Y50_N6
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (clk_spread(16) & (\Add4~31\ $ (GND))) # (!clk_spread(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((clk_spread(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X70_Y50_N7
\clk_spread[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(16));

-- Location: LCCOMB_X70_Y50_N8
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (clk_spread(17) & (!\Add4~33\)) # (!clk_spread(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!clk_spread(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X70_Y50_N28
\clk_spread~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~11_combout\ = (\Add4~34_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add4~34_combout\,
	combout => \clk_spread~11_combout\);

-- Location: FF_X70_Y50_N29
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

-- Location: LCCOMB_X71_Y50_N22
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_spread(15) & (clk_spread(14) & (!clk_spread(16) & clk_spread(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(15),
	datab => clk_spread(14),
	datac => clk_spread(16),
	datad => clk_spread(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X70_Y50_N10
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (clk_spread(18) & (\Add4~35\ $ (GND))) # (!clk_spread(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((clk_spread(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X70_Y50_N11
\clk_spread[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(18));

-- Location: LCCOMB_X70_Y50_N12
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (clk_spread(19) & (!\Add4~37\)) # (!clk_spread(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!clk_spread(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X70_Y50_N26
\clk_spread~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~10_combout\ = (\Add4~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add4~38_combout\,
	combout => \clk_spread~10_combout\);

-- Location: FF_X70_Y50_N27
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

-- Location: LCCOMB_X70_Y50_N14
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (clk_spread(20) & (\Add4~39\ $ (GND))) # (!clk_spread(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((clk_spread(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X71_Y50_N30
\clk_spread~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~21_combout\ = (\Add4~40_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~40_combout\,
	combout => \clk_spread~21_combout\);

-- Location: FF_X71_Y50_N31
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

-- Location: LCCOMB_X70_Y50_N16
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (clk_spread(21) & (!\Add4~41\)) # (!clk_spread(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!clk_spread(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X71_Y50_N28
\clk_spread~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~20_combout\ = (\Add4~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add4~42_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~20_combout\);

-- Location: FF_X71_Y50_N29
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

-- Location: LCCOMB_X71_Y50_N16
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_spread(20) & (clk_spread(21) & (clk_spread(19) & !clk_spread(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(20),
	datab => clk_spread(21),
	datac => clk_spread(19),
	datad => clk_spread(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X70_Y50_N18
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (clk_spread(22) & (\Add4~43\ $ (GND))) # (!clk_spread(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((clk_spread(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X69_Y50_N10
\clk_spread~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~19_combout\ = (\Add4~44_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~44_combout\,
	combout => \clk_spread~19_combout\);

-- Location: FF_X69_Y50_N11
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

-- Location: LCCOMB_X70_Y50_N20
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (clk_spread(23) & (!\Add4~45\)) # (!clk_spread(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!clk_spread(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X69_Y50_N16
\clk_spread~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~18_combout\ = (\Add4~46_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add4~46_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_spread~18_combout\);

-- Location: FF_X69_Y50_N17
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

-- Location: LCCOMB_X70_Y50_N22
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (clk_spread(24) & (\Add4~47\ $ (GND))) # (!clk_spread(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((clk_spread(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X70_Y50_N23
\clk_spread[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(24));

-- Location: LCCOMB_X70_Y50_N24
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = \Add4~49\ $ (clk_spread(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_spread(25),
	cin => \Add4~49\,
	combout => \Add4~50_combout\);

-- Location: LCCOMB_X69_Y50_N14
\clk_spread~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~17_combout\ = (\Add4~50_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~50_combout\,
	combout => \clk_spread~17_combout\);

-- Location: FF_X69_Y50_N15
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

-- Location: LCCOMB_X69_Y50_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_spread(22) & (clk_spread(23) & (clk_spread(25) & !clk_spread(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(22),
	datab => clk_spread(23),
	datac => clk_spread(25),
	datad => clk_spread(24),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X71_Y50_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_spread(11) & (clk_spread(12) & (!clk_spread(10) & clk_spread(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(11),
	datab => clk_spread(12),
	datac => clk_spread(10),
	datad => clk_spread(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X71_Y50_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X70_Y51_N10
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (clk_spread(2) & (\Add4~3\ $ (GND))) # (!clk_spread(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((clk_spread(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X70_Y51_N11
\clk_spread[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(2));

-- Location: LCCOMB_X70_Y51_N12
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (clk_spread(3) & (!\Add4~5\)) # (!clk_spread(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!clk_spread(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X70_Y51_N13
\clk_spread[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(3));

-- Location: LCCOMB_X70_Y51_N14
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (clk_spread(4) & (\Add4~7\ $ (GND))) # (!clk_spread(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((clk_spread(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X70_Y51_N15
\clk_spread[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(4));

-- Location: LCCOMB_X70_Y51_N16
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (clk_spread(5) & (!\Add4~9\)) # (!clk_spread(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!clk_spread(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X70_Y51_N17
\clk_spread[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(5));

-- Location: LCCOMB_X70_Y51_N18
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (clk_spread(6) & (\Add4~11\ $ (GND))) # (!clk_spread(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((clk_spread(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_spread(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X70_Y51_N19
\clk_spread[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(6));

-- Location: LCCOMB_X70_Y51_N20
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (clk_spread(7) & (!\Add4~13\)) # (!clk_spread(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!clk_spread(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X71_Y51_N0
\clk_spread~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_spread~16_combout\ = (\Add4~14_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add4~14_combout\,
	combout => \clk_spread~16_combout\);

-- Location: FF_X70_Y51_N1
\clk_spread[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	asdata => \clk_spread~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(7));

-- Location: FF_X70_Y51_N23
\clk_spread[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \Add4~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_spread(8));

-- Location: LCCOMB_X70_Y51_N0
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

-- Location: LCCOMB_X70_Y51_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_spread(2) & (clk_spread(5) & (clk_spread(4) & clk_spread(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(2),
	datab => clk_spread(5),
	datac => clk_spread(4),
	datad => clk_spread(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X70_Y51_N4
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clk_spread(1) & (\Equal0~5_combout\ & (clk_spread(0) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_spread(1),
	datab => \Equal0~5_combout\,
	datac => clk_spread(0),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X71_Y50_N2
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

-- Location: FF_X71_Y50_N9
\bcdVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[0]~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(0));

-- Location: LCCOMB_X71_Y50_N12
\bcdVal[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[2]~1_combout\ = bcdVal(2) $ (((bcdVal(1) & (bcdVal(0) & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(1),
	datab => bcdVal(0),
	datac => bcdVal(2),
	datad => \Equal0~8_combout\,
	combout => \bcdVal[2]~1_combout\);

-- Location: FF_X71_Y50_N13
\bcdVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(2));

-- Location: LCCOMB_X71_Y50_N26
\bcdVal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~0_combout\ = (bcdVal(0) & (!bcdVal(1) & ((bcdVal(2)) # (!bcdVal(3))))) # (!bcdVal(0) & (((bcdVal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(0),
	datac => bcdVal(1),
	datad => bcdVal(3),
	combout => \bcdVal~0_combout\);

-- Location: FF_X71_Y50_N27
\bcdVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(1));

-- Location: LCCOMB_X71_Y50_N18
\bcdVal~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~2_combout\ = (bcdVal(1) & (bcdVal(3) $ (((bcdVal(0) & bcdVal(2)))))) # (!bcdVal(1) & (bcdVal(3) & ((bcdVal(2)) # (!bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(1),
	datab => bcdVal(0),
	datac => bcdVal(3),
	datad => bcdVal(2),
	combout => \bcdVal~2_combout\);

-- Location: FF_X71_Y50_N19
\bcdVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(3));

-- Location: LCCOMB_X69_Y50_N24
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (bcdVal(1) & (bcdVal(3))) # (!bcdVal(1) & (bcdVal(2) $ (((!bcdVal(3) & bcdVal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X69_Y50_N30
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (bcdVal(3) & ((bcdVal(1)) # ((bcdVal(2))))) # (!bcdVal(3) & (bcdVal(2) & (bcdVal(1) $ (bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X69_Y50_N0
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (bcdVal(2) & (bcdVal(3))) # (!bcdVal(2) & (bcdVal(1) & ((bcdVal(3)) # (!bcdVal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X69_Y50_N18
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (bcdVal(1) & ((bcdVal(3)) # ((bcdVal(0) & bcdVal(2))))) # (!bcdVal(1) & (bcdVal(2) $ (((!bcdVal(3) & bcdVal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X69_Y50_N20
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (bcdVal(0)) # ((bcdVal(1) & (bcdVal(3))) # (!bcdVal(1) & ((bcdVal(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X69_Y50_N6
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (bcdVal(0) & ((bcdVal(1)) # (bcdVal(3) $ (!bcdVal(2))))) # (!bcdVal(0) & ((bcdVal(2) & (bcdVal(3))) # (!bcdVal(2) & ((bcdVal(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X69_Y50_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bcdVal(1) & (!bcdVal(3) & ((!bcdVal(2)) # (!bcdVal(0))))) # (!bcdVal(1) & (bcdVal(3) $ (((bcdVal(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(3),
	datab => bcdVal(1),
	datac => bcdVal(0),
	datad => bcdVal(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X71_Y50_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!bcdVal(2) & (bcdVal(0) & (!bcdVal(1) & bcdVal(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(2),
	datab => bcdVal(0),
	datac => bcdVal(1),
	datad => bcdVal(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X67_Y50_N24
\bcdVal[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[4]~18_combout\ = !bcdVal(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(4),
	combout => \bcdVal[4]~18_combout\);

-- Location: LCCOMB_X71_Y50_N14
\bcdVal[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[15]~3_combout\ = (\Equal1~0_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \bcdVal[15]~3_combout\);

-- Location: FF_X67_Y50_N25
\bcdVal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[4]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(4));

-- Location: LCCOMB_X67_Y50_N30
\bcdVal~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~4_combout\ = (bcdVal(5) & (((!bcdVal(4))))) # (!bcdVal(5) & (bcdVal(4) & ((bcdVal(7)) # (!bcdVal(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \bcdVal~4_combout\);

-- Location: FF_X67_Y50_N31
\bcdVal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(5));

-- Location: LCCOMB_X67_Y50_N28
\bcdVal~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~5_combout\ = (bcdVal(4) & ((bcdVal(6) & (bcdVal(7) & !bcdVal(5))) # (!bcdVal(6) & ((bcdVal(5)))))) # (!bcdVal(4) & (((bcdVal(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(4),
	datac => bcdVal(6),
	datad => bcdVal(5),
	combout => \bcdVal~5_combout\);

-- Location: FF_X67_Y50_N29
\bcdVal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(6));

-- Location: LCCOMB_X67_Y50_N18
\bcdVal[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[7]~6_combout\ = (bcdVal(6) & (bcdVal(5) & bcdVal(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \bcdVal[7]~6_combout\);

-- Location: LCCOMB_X67_Y50_N6
\bcdVal[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[7]~7_combout\ = bcdVal(7) $ (((\Equal1~0_combout\ & (\bcdVal[7]~6_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \bcdVal[7]~6_combout\,
	datac => bcdVal(7),
	datad => \Equal0~8_combout\,
	combout => \bcdVal[7]~7_combout\);

-- Location: FF_X67_Y50_N7
\bcdVal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[7]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(7));

-- Location: LCCOMB_X67_Y50_N16
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (bcdVal(7)) # (bcdVal(6) $ (((!bcdVal(5) & bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X67_Y50_N10
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (bcdVal(7)) # ((bcdVal(6) & ((bcdVal(5)) # (bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X67_Y50_N12
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (bcdVal(7)) # ((bcdVal(5) & ((bcdVal(6)) # (!bcdVal(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(4),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X66_Y50_N0
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!bcdVal(7) & (!bcdVal(4) & !bcdVal(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(4),
	datad => bcdVal(6),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (bcdVal(7)) # ((bcdVal(5)) # ((bcdVal(4) & !bcdVal(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(7),
	datab => bcdVal(4),
	datac => bcdVal(5),
	datad => bcdVal(6),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (bcdVal(7)) # (bcdVal(6) $ (!bcdVal(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcdVal(6),
	datac => bcdVal(5),
	datad => bcdVal(7),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X74_Y50_N16
\bcdVal[8]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[8]~19_combout\ = !bcdVal(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(8),
	combout => \bcdVal[8]~19_combout\);

-- Location: LCCOMB_X67_Y50_N4
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!bcdVal(5) & (bcdVal(4) & (bcdVal(6) & !bcdVal(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(5),
	datab => bcdVal(4),
	datac => bcdVal(6),
	datad => bcdVal(7),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X74_Y50_N20
\bcdVal[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[11]~8_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \bcdVal[11]~8_combout\);

-- Location: FF_X74_Y50_N17
\bcdVal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[8]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(8));

-- Location: LCCOMB_X74_Y50_N0
\bcdVal[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[10]~10_combout\ = bcdVal(10) $ (((bcdVal(9) & (bcdVal(8) & \bcdVal[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(9),
	datab => bcdVal(8),
	datac => bcdVal(10),
	datad => \bcdVal[11]~8_combout\,
	combout => \bcdVal[10]~10_combout\);

-- Location: FF_X74_Y50_N1
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

-- Location: LCCOMB_X74_Y50_N22
\bcdVal~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~9_combout\ = (bcdVal(9) & (((!bcdVal(8))))) # (!bcdVal(9) & (bcdVal(8) & ((bcdVal(10)) # (!bcdVal(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(10),
	datac => bcdVal(9),
	datad => bcdVal(8),
	combout => \bcdVal~9_combout\);

-- Location: FF_X74_Y50_N23
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

-- Location: LCCOMB_X74_Y50_N26
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

-- Location: FF_X74_Y50_N27
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

-- Location: LCCOMB_X74_Y50_N24
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

-- Location: LCCOMB_X74_Y50_N6
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

-- Location: LCCOMB_X74_Y50_N4
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

-- Location: LCCOMB_X74_Y50_N14
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

-- Location: LCCOMB_X74_Y50_N28
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

-- Location: LCCOMB_X74_Y50_N18
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

-- Location: LCCOMB_X74_Y50_N8
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

-- Location: LCCOMB_X74_Y50_N10
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (bcdVal(11) & (bcdVal(8) & (!bcdVal(9) & !bcdVal(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(11),
	datab => bcdVal(8),
	datac => bcdVal(9),
	datad => bcdVal(10),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X72_Y50_N28
\bcdVal[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[12]~20_combout\ = !bcdVal(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcdVal(12),
	combout => \bcdVal[12]~20_combout\);

-- Location: LCCOMB_X72_Y50_N10
\bcdVal[15]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[15]~12_combout\ = (\Equal2~0_combout\ & (\Equal1~0_combout\ & (\Equal3~0_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \bcdVal[15]~12_combout\);

-- Location: FF_X72_Y50_N29
\bcdVal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[12]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(12));

-- Location: LCCOMB_X72_Y50_N4
\bcdVal~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~14_combout\ = (bcdVal(13) & ((bcdVal(14) $ (bcdVal(12))))) # (!bcdVal(13) & (bcdVal(14) & ((bcdVal(15)) # (!bcdVal(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \bcdVal~14_combout\);

-- Location: FF_X72_Y50_N5
\bcdVal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(14));

-- Location: LCCOMB_X72_Y50_N18
\bcdVal~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal~13_combout\ = (bcdVal(13) & (((!bcdVal(12))))) # (!bcdVal(13) & (bcdVal(12) & ((bcdVal(15)) # (!bcdVal(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(14),
	datac => bcdVal(13),
	datad => bcdVal(12),
	combout => \bcdVal~13_combout\);

-- Location: FF_X72_Y50_N19
\bcdVal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \bcdVal[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(13));

-- Location: LCCOMB_X72_Y50_N12
\bcdVal[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[15]~15_combout\ = (bcdVal(13) & (bcdVal(14) & bcdVal(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \bcdVal[15]~15_combout\);

-- Location: LCCOMB_X74_Y50_N30
\bcdVal[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcdVal[15]~16_combout\ = bcdVal(15) $ (((\Equal3~0_combout\ & (\bcdVal[15]~15_combout\ & \bcdVal[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \bcdVal[15]~15_combout\,
	datac => bcdVal(15),
	datad => \bcdVal[11]~8_combout\,
	combout => \bcdVal[15]~16_combout\);

-- Location: FF_X74_Y50_N31
\bcdVal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_clock~inputclkctrl_outclk\,
	d => \bcdVal[15]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcdVal(15));

-- Location: LCCOMB_X72_Y50_N26
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (bcdVal(15)) # (bcdVal(14) $ (((!bcdVal(13) & bcdVal(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X72_Y50_N24
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (bcdVal(15)) # ((bcdVal(14) & ((bcdVal(13)) # (bcdVal(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X72_Y50_N22
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (bcdVal(15)) # ((bcdVal(13) & ((bcdVal(14)) # (!bcdVal(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X72_Y50_N20
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!bcdVal(15) & (!bcdVal(12) & !bcdVal(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(12),
	datac => bcdVal(14),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X72_Y50_N30
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (bcdVal(15)) # ((bcdVal(13)) # ((!bcdVal(14) & bcdVal(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	datad => bcdVal(12),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X72_Y50_N8
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (bcdVal(15)) # (bcdVal(13) $ (!bcdVal(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcdVal(15),
	datab => bcdVal(13),
	datac => bcdVal(14),
	combout => \Mux21~0_combout\);

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

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;
END structure;


