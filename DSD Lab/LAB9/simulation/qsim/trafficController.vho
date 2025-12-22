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

-- DATE "12/19/2025 16:14:29"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	trafficController IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	btn : IN std_logic;
	red : BUFFER std_logic;
	yellow : BUFFER std_logic;
	green : BUFFER std_logic;
	state_out : BUFFER std_logic_vector(2 DOWNTO 0);
	PDLED : BUFFER std_logic
	);
END trafficController;

-- Design Ports Information
-- red	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PDLED	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trafficController IS
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
SIGNAL ww_btn : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_state_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PDLED : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state.YR~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.PD~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.GR~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.YYR~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.RR~q\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \state.YYR~DUPLICATE_q\ : std_logic;
SIGNAL \yellow~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_state.PD~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(29 DOWNTO 0);
SIGNAL \ALT_INV_state.GR~q\ : std_logic;
SIGNAL \ALT_INV_state.YYR~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.YYR~q\ : std_logic;
SIGNAL \ALT_INV_state.YR~q\ : std_logic;
SIGNAL \ALT_INV_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.RR~q\ : std_logic;
SIGNAL \ALT_INV_btn~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_btn <= btn;
red <= ww_red;
yellow <= ww_yellow;
green <= ww_green;
state_out <= ww_state_out;
PDLED <= ww_PDLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_state.PD~q\ <= NOT \state.PD~q\;
ALT_INV_counter(12) <= NOT counter(12);
\ALT_INV_state.GR~q\ <= NOT \state.GR~q\;
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(6) <= NOT counter(6);
\ALT_INV_state.YYR~DUPLICATE_q\ <= NOT \state.YYR~DUPLICATE_q\;
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(22) <= NOT counter(22);
\ALT_INV_state.YYR~q\ <= NOT \state.YYR~q\;
\ALT_INV_state.YR~q\ <= NOT \state.YR~q\;
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_counter[27]~DUPLICATE_q\ <= NOT \counter[27]~DUPLICATE_q\;
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(29) <= NOT counter(29);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(28) <= NOT counter(28);
\ALT_INV_state.RR~q\ <= NOT \state.RR~q\;
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(3) <= NOT counter(3);
\ALT_INV_btn~input_o\ <= NOT \btn~input_o\;
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(20) <= NOT counter(20);

-- Location: IOOBUF_X62_Y0_N36
\red~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~0_combout\,
	devoe => ww_devoe,
	o => ww_red);

-- Location: IOOBUF_X64_Y0_N36
\yellow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \yellow~0_combout\,
	devoe => ww_devoe,
	o => ww_yellow);

-- Location: IOOBUF_X62_Y0_N2
\green~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.GR~q\,
	devoe => ww_devoe,
	o => ww_green);

-- Location: IOOBUF_X64_Y0_N2
\state_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \yellow~0_combout\,
	devoe => ww_devoe,
	o => ww_state_out(0));

-- Location: IOOBUF_X62_Y0_N19
\state_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_state_out(1));

-- Location: IOOBUF_X60_Y0_N19
\state_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.PD~q\,
	devoe => ww_devoe,
	o => ww_state_out(2));

-- Location: IOOBUF_X60_Y0_N53
\PDLED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.PD~q\,
	devoe => ww_devoe,
	o => ww_PDLED);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X62_Y1_N50
\counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y2_N48
\counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = ( !counter(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter(0),
	combout => \counter[0]~0_combout\);

-- Location: FF_X62_Y2_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X62_Y2_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(0) ) + ( counter(1) ) + ( !VCC ))
-- \Add0~114\ = CARRY(( counter(0) ) + ( counter(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(1),
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X62_Y2_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X62_Y2_N33
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X62_Y2_N34
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X62_Y2_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(3),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X62_Y2_N38
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X62_Y2_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X62_Y2_N40
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X62_Y2_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X62_Y2_N43
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X62_Y2_N45
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X62_Y2_N47
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X62_Y2_N48
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(7),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X62_Y2_N50
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X62_Y2_N51
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X62_Y2_N52
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X62_Y2_N54
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X62_Y2_N56
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X62_Y2_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X62_Y2_N59
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X62_Y1_N0
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X62_Y1_N2
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X62_Y1_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X62_Y1_N5
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X62_Y1_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(13),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X62_Y1_N7
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X62_Y1_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(14),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X62_Y1_N11
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X62_Y1_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(15),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X62_Y1_N14
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X62_Y1_N15
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X62_Y1_N17
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X62_Y1_N18
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(17),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X62_Y1_N20
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X62_Y1_N21
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(18),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X62_Y1_N23
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X62_Y1_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(19),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X62_Y1_N26
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X62_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(20),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X62_Y1_N29
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X62_Y1_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(21),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X62_Y1_N31
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X62_Y1_N33
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(22),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X62_Y1_N35
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X62_Y1_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X62_Y1_N38
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X62_Y1_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~14\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(24),
	cin => \Add0~26\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X62_Y1_N41
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X62_Y1_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~2\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(25),
	cin => \Add0~14\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X62_Y1_N43
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LABCELL_X62_Y1_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~18\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(26),
	cin => \Add0~2\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X62_Y1_N47
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LABCELL_X62_Y1_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~6\ = CARRY(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[27]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X62_Y1_N49
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: IOIBUF_X62_Y0_N52
\btn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LABCELL_X62_Y2_N12
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.RR~q\ & ( (!counter(25) & \state.YR~q\) ) ) # ( !\state.RR~q\ & ( (!counter(25) & ((\state.YR~q\))) # (counter(25) & (!\btn~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011101110001000101110111000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn~input_o\,
	datab => ALT_INV_counter(25),
	datad => \ALT_INV_state.YR~q\,
	dataf => \ALT_INV_state.RR~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X62_Y2_N14
\state.YR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YR~q\);

-- Location: LABCELL_X62_Y2_N24
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.PD~q\ & ( \state.RR~q\ & ( (!counter(27)) # (((!counter(25) & \state.YR~q\)) # (\btn~input_o\)) ) ) ) # ( !\state.PD~q\ & ( \state.RR~q\ & ( (counter(25) & (\btn~input_o\ & \state.YR~q\)) ) ) ) # ( \state.PD~q\ & ( 
-- !\state.RR~q\ & ( (!counter(27)) # ((!counter(25)) # (\btn~input_o\)) ) ) ) # ( !\state.PD~q\ & ( !\state.RR~q\ & ( (counter(25) & \btn~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111011111110111100000000000000111010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(27),
	datab => ALT_INV_counter(25),
	datac => \ALT_INV_btn~input_o\,
	datad => \ALT_INV_state.YR~q\,
	datae => \ALT_INV_state.PD~q\,
	dataf => \ALT_INV_state.RR~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X62_Y2_N26
\state.PD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.PD~q\);

-- Location: LABCELL_X62_Y1_N51
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(28) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~22\ = CARRY(( counter(28) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(28),
	cin => \Add0~6\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X62_Y1_N52
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LABCELL_X62_Y1_N54
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(29),
	cin => \Add0~22\,
	sumout => \Add0~9_sumout\);

-- Location: FF_X62_Y1_N56
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LABCELL_X62_Y2_N15
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( counter(29) & ( (!\btn~input_o\ & (counter(25) & \state.YR~q\)) ) ) # ( !counter(29) & ( ((!\btn~input_o\ & (counter(25) & \state.YR~q\))) # (\state.GR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn~input_o\,
	datab => ALT_INV_counter(25),
	datac => \ALT_INV_state.YR~q\,
	datad => \ALT_INV_state.GR~q\,
	dataf => ALT_INV_counter(29),
	combout => \Selector2~0_combout\);

-- Location: FF_X62_Y2_N17
\state.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GR~q\);

-- Location: LABCELL_X62_Y2_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.GR~q\ & ( ((!counter(25) & \state.YYR~q\)) # (counter(29)) ) ) # ( !\state.GR~q\ & ( (!counter(25) & \state.YYR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(25),
	datac => ALT_INV_counter(29),
	datad => \ALT_INV_state.YYR~q\,
	dataf => \ALT_INV_state.GR~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X62_Y2_N19
\state.YYR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YYR~q\);

-- Location: LABCELL_X62_Y2_N6
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.RR~q\ & ( \state.YYR~q\ & ( (!counter(25) & ((!counter(27)) # ((!\state.PD~q\) # (\btn~input_o\)))) ) ) ) # ( \state.RR~q\ & ( !\state.YYR~q\ & ( (!counter(27)) # ((!\state.PD~q\) # (\btn~input_o\)) ) ) ) # ( !\state.RR~q\ 
-- & ( !\state.YYR~q\ & ( (counter(25) & ((!counter(27)) # ((!\state.PD~q\) # (\btn~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110011111110101111111100000000000000001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(27),
	datab => ALT_INV_counter(25),
	datac => \ALT_INV_state.PD~q\,
	datad => \ALT_INV_btn~input_o\,
	datae => \ALT_INV_state.RR~q\,
	dataf => \ALT_INV_state.YYR~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X62_Y2_N8
\state.RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RR~q\);

-- Location: LABCELL_X62_Y2_N3
\red~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~0_combout\ = ( \state.PD~q\ ) # ( !\state.PD~q\ & ( !\state.RR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.RR~q\,
	dataf => \ALT_INV_state.PD~q\,
	combout => \red~0_combout\);

-- Location: FF_X62_Y2_N20
\state.YYR~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YYR~DUPLICATE_q\);

-- Location: LABCELL_X62_Y2_N0
\yellow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \yellow~0_combout\ = (\state.YYR~DUPLICATE_q\) # (\state.YR~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.YR~q\,
	datac => \ALT_INV_state.YYR~DUPLICATE_q\,
	combout => \yellow~0_combout\);

-- Location: LABCELL_X62_Y2_N21
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \state.YYR~DUPLICATE_q\ ) # ( !\state.YYR~DUPLICATE_q\ & ( \state.GR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.GR~q\,
	dataf => \ALT_INV_state.YYR~DUPLICATE_q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X71_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


