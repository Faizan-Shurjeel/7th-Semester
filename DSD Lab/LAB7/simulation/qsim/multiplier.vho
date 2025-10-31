-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "10/31/2025 12:57:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sbtn : IN std_logic;
	numb : OUT std_logic_vector(6 DOWNTO 0);
	PROUT : OUT std_logic_vector(9 DOWNTO 0)
	);
END multiplier;

-- Design Ports Information
-- numb[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numb[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROUT[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sbtn	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sbtn : std_logic;
SIGNAL ww_numb : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PROUT : std_logic_vector(9 DOWNTO 0);
SIGNAL \state.WORKi~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \numb[0]~output_o\ : std_logic;
SIGNAL \numb[1]~output_o\ : std_logic;
SIGNAL \numb[2]~output_o\ : std_logic;
SIGNAL \numb[3]~output_o\ : std_logic;
SIGNAL \numb[4]~output_o\ : std_logic;
SIGNAL \numb[5]~output_o\ : std_logic;
SIGNAL \numb[6]~output_o\ : std_logic;
SIGNAL \PROUT[0]~output_o\ : std_logic;
SIGNAL \PROUT[1]~output_o\ : std_logic;
SIGNAL \PROUT[2]~output_o\ : std_logic;
SIGNAL \PROUT[3]~output_o\ : std_logic;
SIGNAL \PROUT[4]~output_o\ : std_logic;
SIGNAL \PROUT[5]~output_o\ : std_logic;
SIGNAL \PROUT[6]~output_o\ : std_logic;
SIGNAL \PROUT[7]~output_o\ : std_logic;
SIGNAL \PROUT[8]~output_o\ : std_logic;
SIGNAL \PROUT[9]~output_o\ : std_logic;
SIGNAL \sbtn~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state.START~6_combout\ : std_logic;
SIGNAL \state.START~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \next_state.START~feeder_combout\ : std_logic;
SIGNAL \next_state.START~q\ : std_logic;
SIGNAL \state.START~3_combout\ : std_logic;
SIGNAL \state.START~0_combout\ : std_logic;
SIGNAL \state.START~_emulated_q\ : std_logic;
SIGNAL \state.START~2_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state.SUBT~q\ : std_logic;
SIGNAL \state.SUBT~feeder_combout\ : std_logic;
SIGNAL \state.WORKi~0_combout\ : std_logic;
SIGNAL \state.WORKi~0clkctrl_outclk\ : std_logic;
SIGNAL \state.SUBT~q\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state.ADDI~q\ : std_logic;
SIGNAL \state.ADDI~feeder_combout\ : std_logic;
SIGNAL \state.ADDI~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \state.IDLE~1_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state.IDLE~q\ : std_logic;
SIGNAL \state.IDLE~3_combout\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~_emulated_q\ : std_logic;
SIGNAL \state.IDLE~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \next_state.WORKi~q\ : std_logic;
SIGNAL \state.WORKi~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \AC[1]~feeder_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_state.DECR~q\ : std_logic;
SIGNAL \state.DECR~q\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state.DONE~q\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \numb~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \PROUT[0]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[0]~reg0_q\ : std_logic;
SIGNAL \PROUT[1]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[1]~reg0_q\ : std_logic;
SIGNAL \PROUT[2]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[2]~reg0_q\ : std_logic;
SIGNAL \PROUT[3]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[3]~reg0_q\ : std_logic;
SIGNAL \PROUT[4]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[4]~reg0_q\ : std_logic;
SIGNAL \PROUT[5]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[5]~reg0_q\ : std_logic;
SIGNAL \PROUT[6]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[6]~reg0_q\ : std_logic;
SIGNAL \PROUT[7]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[7]~reg0_q\ : std_logic;
SIGNAL \PROUT[8]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[8]~reg0_q\ : std_logic;
SIGNAL \PROUT[9]~reg0feeder_combout\ : std_logic;
SIGNAL \PROUT[9]~reg0_q\ : std_logic;
SIGNAL Prod : std_logic_vector(9 DOWNTO 0);
SIGNAL N : std_logic_vector(2 DOWNTO 0);
SIGNAL AC : std_logic_vector(1 DOWNTO 0);
SIGNAL PH : std_logic_vector(5 DOWNTO 0);
SIGNAL A : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_state.START~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.WORKi~0clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sbtn <= sbtn;
numb <= ww_numb;
PROUT <= ww_PROUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\state.WORKi~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.WORKi~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.START~0_combout\ <= NOT \state.START~0_combout\;
\ALT_INV_state.IDLE~0_combout\ <= NOT \state.IDLE~0_combout\;
\ALT_INV_state.WORKi~0clkctrl_outclk\ <= NOT \state.WORKi~0clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N23
\numb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.START~2_combout\,
	devoe => ww_devoe,
	o => \numb[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\numb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numb~0_combout\,
	devoe => ww_devoe,
	o => \numb[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\numb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.WORKi~q\,
	devoe => ww_devoe,
	o => \numb[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\numb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.ADDI~q\,
	devoe => ww_devoe,
	o => \numb[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\numb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.SUBT~q\,
	devoe => ww_devoe,
	o => \numb[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\numb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.DECR~q\,
	devoe => ww_devoe,
	o => \numb[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\numb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.DONE~q\,
	devoe => ww_devoe,
	o => \numb[6]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\PROUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\PROUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\PROUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\PROUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\PROUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\PROUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\PROUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\PROUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\PROUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[8]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\PROUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROUT[9]~reg0_q\,
	devoe => ww_devoe,
	o => \PROUT[9]~output_o\);

-- Location: IOIBUF_X60_Y73_N1
\sbtn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sbtn,
	o => \sbtn~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X55_Y71_N28
\state.START~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.START~6_combout\ = (\rst~input_o\ & \sbtn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \sbtn~input_o\,
	combout => \state.START~6_combout\);

-- Location: LCCOMB_X55_Y71_N6
\state.START~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.START~1_combout\ = (!\state.START~6_combout\ & ((\state.START~1_combout\) # (!\sbtn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sbtn~input_o\,
	datab => \state.START~6_combout\,
	datad => \state.START~1_combout\,
	combout => \state.START~1_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y71_N28
\next_state.START~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \next_state.START~feeder_combout\);

-- Location: FF_X56_Y71_N29
\next_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.START~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.START~q\);

-- Location: LCCOMB_X55_Y71_N12
\state.START~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.START~3_combout\ = \state.START~1_combout\ $ (!\next_state.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START~1_combout\,
	datad => \next_state.START~q\,
	combout => \state.START~3_combout\);

-- Location: LCCOMB_X55_Y71_N30
\state.START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.START~0_combout\ = (\state.START~6_combout\) # (!\sbtn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.START~6_combout\,
	datad => \sbtn~input_o\,
	combout => \state.START~0_combout\);

-- Location: FF_X55_Y71_N13
\state.START~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.START~3_combout\,
	clrn => \ALT_INV_state.START~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START~_emulated_q\);

-- Location: LCCOMB_X55_Y71_N22
\state.START~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.START~2_combout\ = (!\state.START~6_combout\ & ((\state.START~1_combout\ $ (\state.START~_emulated_q\)) # (!\sbtn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START~1_combout\,
	datab => \state.START~6_combout\,
	datac => \sbtn~input_o\,
	datad => \state.START~_emulated_q\,
	combout => \state.START~2_combout\);

-- Location: LCCOMB_X56_Y71_N18
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (!\state.DECR~q\ & (\WideOr3~0_combout\ & (!\state.DONE~q\ & !\state.START~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DECR~q\,
	datab => \WideOr3~0_combout\,
	datac => \state.DONE~q\,
	datad => \state.START~2_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X56_Y71_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.WORKi~q\ & ((A(1)) # ((A(0) & !\WideOr3~combout\)))) # (!\state.WORKi~q\ & (((A(0) & !\WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WORKi~q\,
	datab => A(1),
	datac => A(0),
	datad => \WideOr3~combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X56_Y71_N23
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: FF_X54_Y71_N27
\AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => A(0),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(0));

-- Location: LCCOMB_X54_Y71_N30
\next_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = (\state.WORKi~q\ & (AC(1) & !AC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WORKi~q\,
	datac => AC(1),
	datad => AC(0),
	combout => \next_state~11_combout\);

-- Location: FF_X54_Y71_N31
\next_state.SUBT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.SUBT~q\);

-- Location: LCCOMB_X56_Y71_N30
\state.SUBT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.SUBT~feeder_combout\ = \next_state.SUBT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.SUBT~q\,
	combout => \state.SUBT~feeder_combout\);

-- Location: LCCOMB_X55_Y71_N4
\state.WORKi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.WORKi~0_combout\ = (\rst~input_o\) # (!\sbtn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \sbtn~input_o\,
	combout => \state.WORKi~0_combout\);

-- Location: CLKCTRL_G12
\state.WORKi~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.WORKi~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.WORKi~0clkctrl_outclk\);

-- Location: FF_X56_Y71_N31
\state.SUBT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.SUBT~feeder_combout\,
	clrn => \ALT_INV_state.WORKi~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SUBT~q\);

-- Location: LCCOMB_X54_Y71_N16
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (\state.WORKi~q\ & (!AC(1) & AC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WORKi~q\,
	datac => AC(1),
	datad => AC(0),
	combout => \next_state~10_combout\);

-- Location: FF_X54_Y71_N17
\next_state.ADDI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.ADDI~q\);

-- Location: LCCOMB_X56_Y71_N24
\state.ADDI~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.ADDI~feeder_combout\ = \next_state.ADDI~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.ADDI~q\,
	combout => \state.ADDI~feeder_combout\);

-- Location: FF_X56_Y71_N25
\state.ADDI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.ADDI~feeder_combout\,
	clrn => \ALT_INV_state.WORKi~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ADDI~q\);

-- Location: LCCOMB_X56_Y71_N8
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\state.SUBT~q\ & !\state.ADDI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SUBT~q\,
	datad => \state.ADDI~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y71_N20
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr3~0_combout\ & (!\state.WORKi~q\ & (!\state.DONE~q\ & !\state.START~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \state.WORKi~q\,
	datac => \state.DONE~q\,
	datad => \state.START~2_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X54_Y71_N28
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (N(0) & (!\state.DECR~q\)) # (!N(0) & ((\WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.DECR~q\,
	datac => N(0),
	datad => \WideOr4~combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X54_Y71_N29
\N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(0));

-- Location: LCCOMB_X54_Y71_N2
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (N(1) & (((\state.DECR~q\ & N(0))) # (!\WideOr4~combout\))) # (!N(1) & (\state.DECR~q\ & (!N(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DECR~q\,
	datab => N(0),
	datac => N(1),
	datad => \WideOr4~combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X54_Y71_N3
\N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(1));

-- Location: LCCOMB_X54_Y71_N14
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (!N(1) & !N(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => N(1),
	datad => N(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X54_Y71_N22
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (N(2) & (((!\Add2~0_combout\)) # (!\state.DECR~q\))) # (!N(2) & (\WideOr4~combout\ & ((\Add2~0_combout\) # (!\state.DECR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DECR~q\,
	datab => \Add2~0_combout\,
	datac => N(2),
	datad => \WideOr4~combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X54_Y71_N23
\N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(2));

-- Location: LCCOMB_X55_Y71_N0
\state.IDLE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~1_combout\ = (\sbtn~input_o\ & ((\state.START~6_combout\) # (\state.IDLE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sbtn~input_o\,
	datab => \state.START~6_combout\,
	datad => \state.IDLE~1_combout\,
	combout => \state.IDLE~1_combout\);

-- Location: LCCOMB_X56_Y71_N6
\next_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (\state.START~2_combout\) # (\state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.START~2_combout\,
	datac => \state.DONE~q\,
	combout => \next_state~12_combout\);

-- Location: FF_X56_Y71_N7
\next_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.IDLE~q\);

-- Location: LCCOMB_X55_Y71_N14
\state.IDLE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~3_combout\ = \state.IDLE~1_combout\ $ (\next_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~1_combout\,
	datad => \next_state.IDLE~q\,
	combout => \state.IDLE~3_combout\);

-- Location: LCCOMB_X55_Y71_N18
\state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = (\state.START~6_combout\) # (!\sbtn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.START~6_combout\,
	datad => \sbtn~input_o\,
	combout => \state.IDLE~0_combout\);

-- Location: FF_X55_Y71_N15
\state.IDLE~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.IDLE~3_combout\,
	clrn => \ALT_INV_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~_emulated_q\);

-- Location: LCCOMB_X55_Y71_N24
\state.IDLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~2_combout\ = (\sbtn~input_o\ & ((\state.START~6_combout\) # (\state.IDLE~1_combout\ $ (\state.IDLE~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sbtn~input_o\,
	datab => \state.IDLE~1_combout\,
	datac => \state.IDLE~_emulated_q\,
	datad => \state.START~6_combout\,
	combout => \state.IDLE~2_combout\);

-- Location: LCCOMB_X54_Y71_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.IDLE~2_combout\) # ((\state.DECR~q\ & ((N(2)) # (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => N(2),
	datab => \state.DECR~q\,
	datac => \Add2~0_combout\,
	datad => \state.IDLE~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X54_Y71_N9
\next_state.WORKi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WORKi~q\);

-- Location: FF_X54_Y71_N15
\state.WORKi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_state.WORKi~q\,
	clrn => \ALT_INV_state.WORKi~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WORKi~q\);

-- Location: LCCOMB_X54_Y71_N26
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\state.DONE~q\ & (!\state.DECR~q\ & !\state.START~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \state.DECR~q\,
	datad => \state.START~2_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y71_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.WORKi~q\) # ((A(4) & ((!\WideOr3~0_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \state.WORKi~q\,
	datac => A(4),
	datad => \WideOr3~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X54_Y71_N7
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X55_Y71_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (A(4)) # (!\state.WORKi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A(4),
	datad => \state.WORKi~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X56_Y71_N9
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X56_Y71_N14
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (A(3)) # (!\state.WORKi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datad => \state.WORKi~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X56_Y71_N15
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X56_Y71_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.WORKi~q\ & ((A(2)) # ((A(1) & !\WideOr3~combout\)))) # (!\state.WORKi~q\ & (((A(1) & !\WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WORKi~q\,
	datab => A(2),
	datac => A(1),
	datad => \WideOr3~combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X56_Y71_N17
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X54_Y71_N0
\AC[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AC[1]~feeder_combout\ = A(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A(1),
	combout => \AC[1]~feeder_combout\);

-- Location: FF_X54_Y71_N1
\AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AC[1]~feeder_combout\,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(1));

-- Location: LCCOMB_X54_Y71_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\state.WORKi~q\ & (AC(1) $ (!AC(0))))) # (!\WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(1),
	datab => AC(0),
	datac => \state.WORKi~q\,
	datad => \WideOr3~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X54_Y71_N5
\next_state.DECR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.DECR~q\);

-- Location: FF_X54_Y71_N25
\state.DECR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_state.DECR~q\,
	clrn => \ALT_INV_state.WORKi~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DECR~q\);

-- Location: LCCOMB_X54_Y71_N10
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\state.DECR~q\ & (!N(1) & (!N(2) & !N(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DECR~q\,
	datab => N(1),
	datac => N(2),
	datad => N(0),
	combout => \next_state~9_combout\);

-- Location: FF_X54_Y71_N11
\next_state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.DONE~q\);

-- Location: FF_X54_Y71_N21
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_state.DONE~q\,
	clrn => \ALT_INV_state.WORKi~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X54_Y71_N24
\numb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \numb~0_combout\ = (\state.DONE~q\) # (\state.IDLE~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datad => \state.IDLE~2_combout\,
	combout => \numb~0_combout\);

-- Location: FF_X52_Y71_N13
\PH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(9),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(5));

-- Location: FF_X52_Y71_N11
\PH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(8),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(4));

-- Location: FF_X52_Y71_N9
\PH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(7),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(3));

-- Location: FF_X52_Y71_N7
\PH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(6),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(2));

-- Location: FF_X52_Y71_N5
\PH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(5),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(1));

-- Location: LCCOMB_X52_Y71_N18
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = PH(1) $ (VCC)
-- \Add1~1\ = CARRY(PH(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PH(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X52_Y71_N20
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (PH(2) & (\Add1~1\ & VCC)) # (!PH(2) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!PH(2) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PH(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X52_Y71_N22
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (PH(3) & ((GND) # (!\Add1~3\))) # (!PH(3) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((PH(3)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PH(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X52_Y71_N24
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (PH(4) & (\Add1~5\ & VCC)) # (!PH(4) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!PH(4) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PH(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X52_Y71_N26
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \Add1~7\ $ (PH(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PH(5),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X52_Y71_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = PH(1) $ (VCC)
-- \Add0~1\ = CARRY(PH(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PH(1),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y71_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (PH(2) & (!\Add0~1\)) # (!PH(2) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!PH(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PH(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y71_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (PH(3) & (\Add0~3\ $ (GND))) # (!PH(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((PH(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PH(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X52_Y71_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (PH(4) & (!\Add0~5\)) # (!PH(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!PH(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PH(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X52_Y71_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!PH(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PH(5),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X52_Y71_N0
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.ADDI~q\ & ((\Add0~8_combout\) # ((\state.SUBT~q\ & \Add1~8_combout\)))) # (!\state.ADDI~q\ & (\state.SUBT~q\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADDI~q\,
	datab => \state.SUBT~q\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X52_Y71_N30
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((Prod(9) & ((\state.WORKi~q\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WORKi~q\,
	datab => \WideOr2~0_combout\,
	datac => Prod(9),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X52_Y71_N31
\Prod[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(9));

-- Location: LCCOMB_X56_Y71_N4
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (!\state.ADDI~q\ & (!\state.SUBT~q\ & \state.WORKi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ADDI~q\,
	datac => \state.SUBT~q\,
	datad => \state.WORKi~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X52_Y71_N2
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.SUBT~q\ & (\Add1~6_combout\)) # (!\state.SUBT~q\ & (((\state.ADDI~q\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SUBT~q\,
	datab => \Add1~6_combout\,
	datac => \state.ADDI~q\,
	datad => \Add0~6_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X53_Y71_N12
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((Prod(9) & \Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Prod(9),
	datac => \Selector12~1_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X53_Y71_N13
\Prod[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(8));

-- Location: LCCOMB_X52_Y71_N14
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.SUBT~q\ & (((\Add1~4_combout\)))) # (!\state.SUBT~q\ & (\state.ADDI~q\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADDI~q\,
	datab => \state.SUBT~q\,
	datac => \Add1~4_combout\,
	datad => \Add0~4_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X53_Y71_N10
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((Prod(8) & \Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prod(8),
	datac => \Selector12~1_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X53_Y71_N11
\Prod[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(7));

-- Location: LCCOMB_X52_Y71_N28
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.SUBT~q\ & (((\Add1~2_combout\)))) # (!\state.SUBT~q\ & (\state.ADDI~q\ & (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADDI~q\,
	datab => \state.SUBT~q\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X53_Y71_N8
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((Prod(7) & \Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prod(7),
	datac => \Selector12~1_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X53_Y71_N9
\Prod[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(6));

-- Location: LCCOMB_X52_Y71_N16
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.SUBT~q\ & (((\Add1~0_combout\)))) # (!\state.SUBT~q\ & (\state.ADDI~q\ & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADDI~q\,
	datab => \Add1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \state.SUBT~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X53_Y71_N14
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector12~0_combout\) # ((Prod(6) & \Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Prod(6),
	datac => \Selector12~0_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X53_Y71_N15
\Prod[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~2_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(5));

-- Location: FF_X54_Y71_N13
\PH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => Prod(4),
	sload => VCC,
	ena => \state.WORKi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PH(0));

-- Location: LCCOMB_X54_Y71_N12
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (Prod(5) & ((\state.WORKi~q\) # ((PH(0) & !\WideOr3~0_combout\)))) # (!Prod(5) & (((PH(0) & !\WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prod(5),
	datab => \state.WORKi~q\,
	datac => PH(0),
	datad => \WideOr3~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X54_Y71_N18
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((!\WideOr2~0_combout\ & Prod(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => Prod(4),
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X54_Y71_N19
\Prod[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(4));

-- Location: LCCOMB_X56_Y71_N10
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.WORKi~q\ & ((Prod(4)) # ((Prod(3) & !\WideOr3~combout\)))) # (!\state.WORKi~q\ & (((Prod(3) & !\WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WORKi~q\,
	datab => Prod(4),
	datac => Prod(3),
	datad => \WideOr3~combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X56_Y71_N11
\Prod[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(3));

-- Location: LCCOMB_X56_Y71_N20
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (Prod(3) & ((\state.WORKi~q\) # ((!\WideOr3~combout\ & Prod(2))))) # (!Prod(3) & (!\WideOr3~combout\ & (Prod(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prod(3),
	datab => \WideOr3~combout\,
	datac => Prod(2),
	datad => \state.WORKi~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X56_Y71_N21
\Prod[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(2));

-- Location: LCCOMB_X56_Y71_N26
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.WORKi~q\ & ((Prod(2)) # ((Prod(1) & !\WideOr3~combout\)))) # (!\state.WORKi~q\ & (((Prod(1) & !\WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WORKi~q\,
	datab => Prod(2),
	datac => Prod(1),
	datad => \WideOr3~combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X56_Y71_N27
\Prod[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(1));

-- Location: LCCOMB_X56_Y71_N12
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (Prod(1) & ((\state.WORKi~q\) # ((!\WideOr3~combout\ & Prod(0))))) # (!Prod(1) & (!\WideOr3~combout\ & (Prod(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prod(1),
	datab => \WideOr3~combout\,
	datac => Prod(0),
	datad => \state.WORKi~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X56_Y71_N13
\Prod[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prod(0));

-- Location: LCCOMB_X53_Y71_N0
\PROUT[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[0]~reg0feeder_combout\ = Prod(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(0),
	combout => \PROUT[0]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N1
\PROUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[0]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[0]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N6
\PROUT[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[1]~reg0feeder_combout\ = Prod(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Prod(1),
	combout => \PROUT[1]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N7
\PROUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[1]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[1]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N20
\PROUT[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[2]~reg0feeder_combout\ = Prod(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(2),
	combout => \PROUT[2]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N21
\PROUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[2]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[2]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N2
\PROUT[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[3]~reg0feeder_combout\ = Prod(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Prod(3),
	combout => \PROUT[3]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N3
\PROUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[3]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[3]~reg0_q\);

-- Location: LCCOMB_X57_Y71_N4
\PROUT[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[4]~reg0feeder_combout\ = Prod(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(4),
	combout => \PROUT[4]~reg0feeder_combout\);

-- Location: FF_X57_Y71_N5
\PROUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[4]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[4]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N4
\PROUT[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[5]~reg0feeder_combout\ = Prod(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Prod(5),
	combout => \PROUT[5]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N5
\PROUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[5]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[5]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N22
\PROUT[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[6]~reg0feeder_combout\ = Prod(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Prod(6),
	combout => \PROUT[6]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N23
\PROUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[6]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[6]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N24
\PROUT[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[7]~reg0feeder_combout\ = Prod(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(7),
	combout => \PROUT[7]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N25
\PROUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[7]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[7]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N26
\PROUT[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[8]~reg0feeder_combout\ = Prod(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(8),
	combout => \PROUT[8]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N27
\PROUT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[8]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[8]~reg0_q\);

-- Location: LCCOMB_X53_Y71_N28
\PROUT[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROUT[9]~reg0feeder_combout\ = Prod(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Prod(9),
	combout => \PROUT[9]~reg0feeder_combout\);

-- Location: FF_X53_Y71_N29
\PROUT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROUT[9]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROUT[9]~reg0_q\);

ww_numb(0) <= \numb[0]~output_o\;

ww_numb(1) <= \numb[1]~output_o\;

ww_numb(2) <= \numb[2]~output_o\;

ww_numb(3) <= \numb[3]~output_o\;

ww_numb(4) <= \numb[4]~output_o\;

ww_numb(5) <= \numb[5]~output_o\;

ww_numb(6) <= \numb[6]~output_o\;

ww_PROUT(0) <= \PROUT[0]~output_o\;

ww_PROUT(1) <= \PROUT[1]~output_o\;

ww_PROUT(2) <= \PROUT[2]~output_o\;

ww_PROUT(3) <= \PROUT[3]~output_o\;

ww_PROUT(4) <= \PROUT[4]~output_o\;

ww_PROUT(5) <= \PROUT[5]~output_o\;

ww_PROUT(6) <= \PROUT[6]~output_o\;

ww_PROUT(7) <= \PROUT[7]~output_o\;

ww_PROUT(8) <= \PROUT[8]~output_o\;

ww_PROUT(9) <= \PROUT[9]~output_o\;
END structure;


