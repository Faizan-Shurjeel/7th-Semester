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

-- DATE "12/19/2025 11:07:29"

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

ENTITY 	Lab_7_mul IS
    PORT (
	mplier : IN std_logic_vector(3 DOWNTO 0);
	mcand : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	st : IN std_logic;
	nmcand : OUT std_logic_vector(3 DOWNTO 0);
	product : OUT std_logic_vector(8 DOWNTO 0);
	final : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab_7_mul;

-- Design Ports Information
-- nmcand[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nmcand[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nmcand[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nmcand[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mcand[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mcand[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mcand[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mcand[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mplier[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mplier[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mplier[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mplier[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_7_mul IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mcand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_st : std_logic;
SIGNAL ww_nmcand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_final : std_logic_vector(7 DOWNTO 0);
SIGNAL \mcand[0]~input_o\ : std_logic;
SIGNAL \mcand[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \mcand[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \mcand[3]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \st~input_o\ : std_logic;
SIGNAL \state.s3~DUPLICATE_q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \state.s4~DUPLICATE_q\ : std_logic;
SIGNAL \state.s0~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \done[31]~0_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \ACC[5]~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ACC~1_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \ACC[4]~feeder_combout\ : std_logic;
SIGNAL \mplier[3]~input_o\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \ACC[3]~feeder_combout\ : std_logic;
SIGNAL \mplier[2]~input_o\ : std_logic;
SIGNAL \ACC[2]~feeder_combout\ : std_logic;
SIGNAL \mplier[1]~input_o\ : std_logic;
SIGNAL \ACC[1]~feeder_combout\ : std_logic;
SIGNAL \mplier[0]~input_o\ : std_logic;
SIGNAL \ACC[0]~feeder_combout\ : std_logic;
SIGNAL \ACC[0]~DUPLICATE_q\ : std_logic;
SIGNAL \product[0]~reg0_q\ : std_logic;
SIGNAL \product[1]~reg0_q\ : std_logic;
SIGNAL \product[2]~reg0_q\ : std_logic;
SIGNAL \product[3]~reg0_q\ : std_logic;
SIGNAL \product[4]~reg0_q\ : std_logic;
SIGNAL \product[5]~reg0feeder_combout\ : std_logic;
SIGNAL \product[5]~reg0_q\ : std_logic;
SIGNAL \product[6]~reg0_q\ : std_logic;
SIGNAL \product[7]~reg0_q\ : std_logic;
SIGNAL \product[8]~reg0feeder_combout\ : std_logic;
SIGNAL \product[8]~reg0_q\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \final[0]~reg0_q\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \final[1]~reg0_q\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \final[2]~reg0_q\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \final[3]~reg0_q\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \final[4]~reg0_q\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \final[5]~reg0_q\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \final[6]~reg0_q\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \final[7]~reg0_q\ : std_logic;
SIGNAL ACC : std_logic_vector(8 DOWNTO 0);
SIGNAL done : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_done : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_ACC : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.s4~q\ : std_logic;
SIGNAL \ALT_INV_state~14_combout\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_ACC[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s5~q\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \ALT_INV_state.s3~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.s4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_mcand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mcand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_st~input_o\ : std_logic;
SIGNAL \ALT_INV_mcand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_mcand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ACC[0]~DUPLICATE_q\ : std_logic;

BEGIN

ww_mplier <= mplier;
ww_mcand <= mcand;
ww_clk <= clk;
ww_st <= st;
nmcand <= ww_nmcand;
product <= ww_product;
final <= ww_final;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_done(26) <= NOT done(26);
ALT_INV_done(27) <= NOT done(27);
ALT_INV_done(28) <= NOT done(28);
ALT_INV_done(29) <= NOT done(29);
ALT_INV_done(30) <= NOT done(30);
ALT_INV_done(23) <= NOT done(23);
ALT_INV_done(24) <= NOT done(24);
ALT_INV_done(25) <= NOT done(25);
ALT_INV_done(18) <= NOT done(18);
ALT_INV_done(19) <= NOT done(19);
ALT_INV_done(20) <= NOT done(20);
ALT_INV_done(22) <= NOT done(22);
ALT_INV_done(12) <= NOT done(12);
ALT_INV_done(16) <= NOT done(16);
ALT_INV_done(11) <= NOT done(11);
ALT_INV_done(21) <= NOT done(21);
ALT_INV_done(13) <= NOT done(13);
ALT_INV_done(15) <= NOT done(15);
ALT_INV_done(1) <= NOT done(1);
ALT_INV_done(2) <= NOT done(2);
ALT_INV_done(3) <= NOT done(3);
ALT_INV_done(14) <= NOT done(14);
ALT_INV_done(4) <= NOT done(4);
ALT_INV_done(17) <= NOT done(17);
ALT_INV_ACC(1) <= NOT ACC(1);
ALT_INV_ACC(2) <= NOT ACC(2);
ALT_INV_ACC(0) <= NOT ACC(0);
ALT_INV_ACC(3) <= NOT ACC(3);
ALT_INV_ACC(4) <= NOT ACC(4);
ALT_INV_done(6) <= NOT done(6);
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_done(9) <= NOT done(9);
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
ALT_INV_done(7) <= NOT done(7);
ALT_INV_done(8) <= NOT done(8);
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
ALT_INV_done(5) <= NOT done(5);
ALT_INV_done(10) <= NOT done(10);
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
ALT_INV_done(31) <= NOT done(31);
\ALT_INV_state.s4~q\ <= NOT \state.s4~q\;
\ALT_INV_state~14_combout\ <= NOT \state~14_combout\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
ALT_INV_ACC(8) <= NOT ACC(8);
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Equal4~5_combout\ <= NOT \Equal4~5_combout\;
\ALT_INV_Equal4~6_combout\ <= NOT \Equal4~6_combout\;
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
\ALT_INV_ACC[5]~0_combout\ <= NOT \ACC[5]~0_combout\;
ALT_INV_ACC(5) <= NOT ACC(5);
\ALT_INV_state.s5~q\ <= NOT \state.s5~q\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;
ALT_INV_done(0) <= NOT done(0);
ALT_INV_ACC(6) <= NOT ACC(6);
\ALT_INV_Equal4~4_combout\ <= NOT \Equal4~4_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Equal4~3_combout\ <= NOT \Equal4~3_combout\;
ALT_INV_ACC(7) <= NOT ACC(7);
\ALT_INV_state.s3~DUPLICATE_q\ <= NOT \state.s3~DUPLICATE_q\;
\ALT_INV_state.s4~DUPLICATE_q\ <= NOT \state.s4~DUPLICATE_q\;
\ALT_INV_mcand[1]~input_o\ <= NOT \mcand[1]~input_o\;
\ALT_INV_mcand[2]~input_o\ <= NOT \mcand[2]~input_o\;
\ALT_INV_st~input_o\ <= NOT \st~input_o\;
\ALT_INV_mcand[3]~input_o\ <= NOT \mcand[3]~input_o\;
\ALT_INV_mcand[0]~input_o\ <= NOT \mcand[0]~input_o\;
\ALT_INV_ACC[0]~DUPLICATE_q\ <= NOT \ACC[0]~DUPLICATE_q\;

-- Location: IOOBUF_X72_Y0_N36
\nmcand[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mcand[0]~input_o\,
	devoe => ww_devoe,
	o => ww_nmcand(0));

-- Location: IOOBUF_X80_Y81_N36
\nmcand[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => ww_nmcand(1));

-- Location: IOOBUF_X89_Y4_N62
\nmcand[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_combout\,
	devoe => ww_devoe,
	o => ww_nmcand(2));

-- Location: IOOBUF_X89_Y4_N45
\nmcand[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => ww_nmcand(3));

-- Location: IOOBUF_X89_Y6_N5
\product[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(0));

-- Location: IOOBUF_X89_Y38_N22
\product[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(1));

-- Location: IOOBUF_X89_Y37_N22
\product[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(2));

-- Location: IOOBUF_X89_Y8_N22
\product[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(3));

-- Location: IOOBUF_X89_Y37_N56
\product[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(4));

-- Location: IOOBUF_X89_Y8_N5
\product[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(5));

-- Location: IOOBUF_X72_Y0_N53
\product[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(6));

-- Location: IOOBUF_X89_Y9_N5
\product[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(7));

-- Location: IOOBUF_X89_Y37_N5
\product[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_product(8));

-- Location: IOOBUF_X89_Y9_N22
\final[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(0));

-- Location: IOOBUF_X89_Y8_N56
\final[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(1));

-- Location: IOOBUF_X89_Y9_N39
\final[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(2));

-- Location: IOOBUF_X89_Y36_N22
\final[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(3));

-- Location: IOOBUF_X89_Y35_N45
\final[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(4));

-- Location: IOOBUF_X89_Y37_N39
\final[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(5));

-- Location: IOOBUF_X89_Y9_N56
\final[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(6));

-- Location: IOOBUF_X89_Y8_N39
\final[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_final(7));

-- Location: IOIBUF_X72_Y0_N1
\mcand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcand(0),
	o => \mcand[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\mcand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcand(1),
	o => \mcand[1]~input_o\);

-- Location: LABCELL_X81_Y21_N27
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \mcand[1]~input_o\ & ( !\mcand[0]~input_o\ ) ) # ( !\mcand[1]~input_o\ & ( \mcand[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mcand[0]~input_o\,
	dataf => \ALT_INV_mcand[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X89_Y6_N55
\mcand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcand(2),
	o => \mcand[2]~input_o\);

-- Location: LABCELL_X83_Y6_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \mcand[2]~input_o\ & ( (!\mcand[0]~input_o\ & !\mcand[1]~input_o\) ) ) # ( !\mcand[2]~input_o\ & ( (\mcand[1]~input_o\) # (\mcand[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mcand[0]~input_o\,
	datad => \ALT_INV_mcand[1]~input_o\,
	dataf => \ALT_INV_mcand[2]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X89_Y6_N38
\mcand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcand(3),
	o => \mcand[3]~input_o\);

-- Location: LABCELL_X83_Y6_N42
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( !\mcand[3]~input_o\ & ( \mcand[2]~input_o\ ) ) # ( \mcand[3]~input_o\ & ( !\mcand[2]~input_o\ & ( (!\mcand[1]~input_o\ & !\mcand[0]~input_o\) ) ) ) # ( !\mcand[3]~input_o\ & ( !\mcand[2]~input_o\ & ( (\mcand[0]~input_o\) # 
-- (\mcand[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101000001010000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mcand[1]~input_o\,
	datac => \ALT_INV_mcand[0]~input_o\,
	datae => \ALT_INV_mcand[3]~input_o\,
	dataf => \ALT_INV_mcand[2]~input_o\,
	combout => \Add0~2_combout\);

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

-- Location: IOIBUF_X89_Y35_N78
\st~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st,
	o => \st~input_o\);

-- Location: FF_X82_Y21_N13
\state.s3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y21_N30
\Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = ( !ACC(1) & ( (\state.s1~q\ & \ACC[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_ACC[0]~DUPLICATE_q\,
	dataf => ALT_INV_ACC(1),
	combout => \Selector53~0_combout\);

-- Location: FF_X82_Y21_N31
\state.s4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y21_N12
\state.s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.s0~0_combout\ = ( \state.s0~q\ & ( \state.s1~q\ ) ) # ( !\state.s0~q\ & ( \state.s1~q\ ) ) # ( \state.s0~q\ & ( !\state.s1~q\ ) ) # ( !\state.s0~q\ & ( !\state.s1~q\ & ( (((\state.s2~q\) # (\st~input_o\)) # (\state.s4~DUPLICATE_q\)) # 
-- (\state.s3~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s3~DUPLICATE_q\,
	datab => \ALT_INV_state.s4~DUPLICATE_q\,
	datac => \ALT_INV_st~input_o\,
	datad => \ALT_INV_state.s2~q\,
	datae => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \state.s0~0_combout\);

-- Location: FF_X84_Y21_N14
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: MLABCELL_X84_Y21_N3
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.s0~q\ & ( ACC(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ACC(0),
	dataf => \ALT_INV_state.s0~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X84_Y21_N2
\ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[0]~feeder_combout\,
	asdata => \Selector8~0_combout\,
	sload => \ALT_INV_state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(0));

-- Location: MLABCELL_X84_Y21_N42
\Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = ( \state.s1~q\ & ( (!\state~14_combout\) # (!ACC(1) $ (ACC(0))) ) ) # ( !\state.s1~q\ & ( !\state~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~14_combout\,
	datab => ALT_INV_ACC(1),
	datac => ALT_INV_ACC(0),
	dataf => \ALT_INV_state.s1~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X84_Y21_N44
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LABCELL_X83_Y21_N0
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( !done(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~82\ = CARRY(( !done(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(0),
	cin => GND,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: MLABCELL_X82_Y21_N45
\Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = ( \state.s2~q\ & ( !\Add1~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_Add1~81_sumout\,
	combout => \Selector48~0_combout\);

-- Location: MLABCELL_X84_Y21_N45
\done[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \done[31]~0_combout\ = ( \state.s0~q\ & ( \state.s2~q\ ) ) # ( !\state.s0~q\ & ( \st~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_st~input_o\,
	datad => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s0~q\,
	combout => \done[31]~0_combout\);

-- Location: FF_X83_Y21_N2
\done[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector48~0_combout\,
	sload => VCC,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(0));

-- Location: LABCELL_X83_Y21_N3
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( done(1) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~90\ = CARRY(( done(1) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(1),
	cin => \Add1~82\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X83_Y21_N5
\done[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	asdata => VCC,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(1));

-- Location: LABCELL_X83_Y21_N6
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( done(2) ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( done(2) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(2),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: LABCELL_X83_Y20_N48
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X83_Y21_N8
\done[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(2));

-- Location: LABCELL_X83_Y21_N9
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( done(3) ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( done(3) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(3),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X83_Y21_N11
\done[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(3));

-- Location: LABCELL_X83_Y21_N12
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( done(4) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( done(4) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(4),
	cin => \Add1~98\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X83_Y21_N14
\done[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(4));

-- Location: LABCELL_X83_Y21_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( done(5) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( done(5) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(5),
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X83_Y21_N17
\done[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(5));

-- Location: LABCELL_X83_Y21_N18
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( done(6) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( done(6) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(6),
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X83_Y21_N20
\done[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(6));

-- Location: LABCELL_X83_Y21_N21
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( done(7) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( done(7) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(7),
	cin => \Add1~110\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X83_Y21_N23
\done[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(7));

-- Location: LABCELL_X83_Y21_N24
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( done(8) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( done(8) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(8),
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X83_Y21_N26
\done[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(8));

-- Location: LABCELL_X83_Y21_N27
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( done(9) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( done(9) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(9),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X83_Y21_N29
\done[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(9));

-- Location: LABCELL_X83_Y21_N30
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( done(10) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( done(10) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(10),
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X83_Y21_N32
\done[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(10));

-- Location: LABCELL_X83_Y21_N33
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( done(11) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~58\ = CARRY(( done(11) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(11),
	cin => \Add1~126\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X83_Y21_N35
\done[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(11));

-- Location: LABCELL_X83_Y21_N36
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( done(12) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( done(12) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(12),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X83_Y21_N38
\done[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(12));

-- Location: LABCELL_X83_Y21_N39
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( done(13) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( done(13) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(13),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X83_Y21_N41
\done[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(13));

-- Location: LABCELL_X83_Y21_N42
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( done(14) ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( done(14) ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(14),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X83_Y21_N44
\done[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(14));

-- Location: LABCELL_X83_Y21_N45
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( done(15) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( done(15) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(15),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X83_Y21_N47
\done[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(15));

-- Location: LABCELL_X83_Y21_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( done(16) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( done(16) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(16),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X83_Y21_N50
\done[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(16));

-- Location: LABCELL_X83_Y21_N51
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( done(17) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~34\ = CARRY(( done(17) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(17),
	cin => \Add1~78\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X83_Y21_N53
\done[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(17));

-- Location: LABCELL_X83_Y21_N54
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( done(18) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( done(18) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(18),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X83_Y21_N56
\done[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(18));

-- Location: LABCELL_X83_Y21_N57
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( done(19) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( done(19) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(19),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X83_Y21_N59
\done[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(19));

-- Location: LABCELL_X83_Y20_N0
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( done(20) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( done(20) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(20),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X83_Y20_N2
\done[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(20));

-- Location: LABCELL_X83_Y20_N3
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( done(21) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( done(21) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(21),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X83_Y20_N5
\done[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(21));

-- Location: LABCELL_X83_Y20_N6
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( done(22) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( done(22) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(22),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X83_Y20_N8
\done[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(22));

-- Location: LABCELL_X83_Y20_N9
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( done(23) ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( done(23) ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(23),
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X83_Y20_N11
\done[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(23));

-- Location: LABCELL_X83_Y20_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( done(24) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( done(24) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(24),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X83_Y20_N14
\done[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(24));

-- Location: LABCELL_X83_Y20_N15
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( done(25) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( done(25) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(25),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X83_Y20_N17
\done[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(25));

-- Location: LABCELL_X83_Y20_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( done(26) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( done(26) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(26),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X83_Y20_N20
\done[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(26));

-- Location: LABCELL_X83_Y20_N21
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( done(27) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( done(27) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(27),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X83_Y20_N23
\done[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(27));

-- Location: LABCELL_X83_Y20_N24
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( done(28) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( done(28) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_done(28),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X83_Y20_N26
\done[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(28));

-- Location: LABCELL_X83_Y20_N27
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( done(29) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( done(29) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(29),
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X83_Y20_N29
\done[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(29));

-- Location: LABCELL_X83_Y20_N30
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( done(30) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( done(30) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_done(30),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X83_Y20_N32
\done[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.s2~q\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(30));

-- Location: LABCELL_X83_Y20_N39
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !done(30) & ( !done(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(29),
	dataf => ALT_INV_done(30),
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X84_Y21_N30
\Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = ( !done(13) & ( !done(14) & ( (!done(15) & (!done(12) & (!done(16) & !done(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(15),
	datab => ALT_INV_done(12),
	datac => ALT_INV_done(16),
	datad => ALT_INV_done(11),
	datae => ALT_INV_done(13),
	dataf => ALT_INV_done(14),
	combout => \Equal4~3_combout\);

-- Location: LABCELL_X83_Y20_N42
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( !done(27) & ( !done(24) & ( (!done(28) & (!done(25) & (!done(26) & !done(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(28),
	datab => ALT_INV_done(25),
	datac => ALT_INV_done(26),
	datad => ALT_INV_done(23),
	datae => ALT_INV_done(27),
	dataf => ALT_INV_done(24),
	combout => \Equal4~1_combout\);

-- Location: LABCELL_X83_Y20_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( !done(31) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_done(31),
	cin => \Add1~6\,
	sumout => \Add1~85_sumout\);

-- Location: LABCELL_X83_Y20_N36
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Add1~85_sumout\ & ( !\state.s2~q\ ) ) # ( !\Add1~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_Add1~85_sumout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X83_Y20_N38
\done[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	ena => \done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => done(31));

-- Location: MLABCELL_X84_Y21_N48
\Equal4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = ( !done(1) & ( done(31) & ( (!done(2) & (done(0) & (!done(3) & !done(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(2),
	datab => ALT_INV_done(0),
	datac => ALT_INV_done(3),
	datad => ALT_INV_done(4),
	datae => ALT_INV_done(1),
	dataf => ALT_INV_done(31),
	combout => \Equal4~4_combout\);

-- Location: MLABCELL_X84_Y21_N36
\Equal4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = ( !done(6) & ( !done(8) & ( (!done(10) & (!done(9) & (!done(5) & !done(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(10),
	datab => ALT_INV_done(9),
	datac => ALT_INV_done(5),
	datad => ALT_INV_done(7),
	datae => ALT_INV_done(6),
	dataf => ALT_INV_done(8),
	combout => \Equal4~5_combout\);

-- Location: MLABCELL_X84_Y21_N24
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( !done(21) & ( !done(17) & ( (!done(18) & (!done(20) & (!done(22) & !done(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_done(18),
	datab => ALT_INV_done(20),
	datac => ALT_INV_done(22),
	datad => ALT_INV_done(19),
	datae => ALT_INV_done(21),
	dataf => ALT_INV_done(17),
	combout => \Equal4~2_combout\);

-- Location: MLABCELL_X84_Y21_N21
\Equal4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = ( \Equal4~5_combout\ & ( \Equal4~2_combout\ & ( (\Equal4~0_combout\ & (\Equal4~3_combout\ & (\Equal4~1_combout\ & \Equal4~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal4~3_combout\,
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~4_combout\,
	datae => \ALT_INV_Equal4~5_combout\,
	dataf => \ALT_INV_Equal4~2_combout\,
	combout => \Equal4~6_combout\);

-- Location: MLABCELL_X84_Y21_N9
\Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = ( \state.s1~q\ & ( \state.s0~q\ & ( (\state~14_combout\ & (\state.s2~q\ & !\Equal4~6_combout\)) ) ) ) # ( !\state.s1~q\ & ( \state.s0~q\ & ( (\state~14_combout\ & (\state.s2~q\ & !\Equal4~6_combout\)) ) ) ) # ( \state.s1~q\ & ( 
-- !\state.s0~q\ & ( (\state~14_combout\ & (\state.s2~q\ & !\Equal4~6_combout\)) ) ) ) # ( !\state.s1~q\ & ( !\state.s0~q\ & ( (\state~14_combout\ & ((!\state.s2~q\ & (\st~input_o\)) # (\state.s2~q\ & ((!\Equal4~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~14_combout\,
	datab => \ALT_INV_st~input_o\,
	datac => \ALT_INV_state.s2~q\,
	datad => \ALT_INV_Equal4~6_combout\,
	datae => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_state.s0~q\,
	combout => \Selector50~0_combout\);

-- Location: FF_X84_Y21_N11
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: MLABCELL_X82_Y21_N12
\Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = ( !\ACC[0]~DUPLICATE_q\ & ( ACC(1) & ( \state.s1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.s1~q\,
	datae => \ALT_INV_ACC[0]~DUPLICATE_q\,
	dataf => ALT_INV_ACC(1),
	combout => \Selector52~0_combout\);

-- Location: FF_X82_Y21_N14
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: MLABCELL_X82_Y21_N33
\state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~14_combout\ = ( !\state.s4~DUPLICATE_q\ & ( !\state.s3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s3~q\,
	dataf => \ALT_INV_state.s4~DUPLICATE_q\,
	combout => \state~14_combout\);

-- Location: LABCELL_X81_Y21_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \mcand[0]~input_o\ ) + ( ACC(5) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \mcand[0]~input_o\ ) + ( ACC(5) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mcand[0]~input_o\,
	datac => ALT_INV_ACC(5),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X81_Y21_N33
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( ACC(6) ) + ( \mcand[1]~input_o\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( ACC(6) ) + ( \mcand[1]~input_o\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ACC(6),
	dataf => \ALT_INV_mcand[1]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X82_Y21_N32
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LABCELL_X81_Y21_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \mcand[0]~input_o\ ) + ( ACC(5) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \mcand[0]~input_o\ ) + ( ACC(5) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mcand[0]~input_o\,
	datac => ALT_INV_ACC(5),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X81_Y21_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( ACC(6) ) + ( !\mcand[0]~input_o\ $ (!\mcand[1]~input_o\) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( ACC(6) ) + ( !\mcand[0]~input_o\ $ (!\mcand[1]~input_o\) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ACC(6),
	datab => \ALT_INV_mcand[0]~input_o\,
	dataf => \ALT_INV_mcand[1]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X81_Y21_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( ACC(7) ) + ( !\mcand[2]~input_o\ $ (((!\mcand[1]~input_o\ & !\mcand[0]~input_o\))) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( ACC(7) ) + ( !\mcand[2]~input_o\ $ (((!\mcand[1]~input_o\ & !\mcand[0]~input_o\))) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100111001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mcand[1]~input_o\,
	datab => \ALT_INV_mcand[2]~input_o\,
	datac => \ALT_INV_mcand[0]~input_o\,
	datad => ALT_INV_ACC(7),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X81_Y21_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\mcand[3]~input_o\ $ (((!\mcand[1]~input_o\ & (!\mcand[2]~input_o\ & !\mcand[0]~input_o\)))) ) + ( ACC(8) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mcand[1]~input_o\,
	datab => \ALT_INV_mcand[2]~input_o\,
	datac => \ALT_INV_mcand[0]~input_o\,
	datad => \ALT_INV_mcand[3]~input_o\,
	dataf => ALT_INV_ACC(8),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\);

-- Location: MLABCELL_X84_Y21_N57
\Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = ( !\state.s2~q\ & ( (!\state.s1~q\ & (\state.s5~q\ & (\state~14_combout\ & ((!\st~input_o\) # (\state.s0~q\))))) ) ) # ( \state.s2~q\ & ( (!\state.s1~q\ & (\Equal4~6_combout\ & (\state~14_combout\ & ((!\st~input_o\) # 
-- (\state.s0~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000000000100000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_st~input_o\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Equal4~6_combout\,
	datad => \ALT_INV_state~14_combout\,
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s0~q\,
	datag => \ALT_INV_state.s5~q\,
	combout => \Selector54~0_combout\);

-- Location: FF_X84_Y21_N59
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LABCELL_X81_Y21_N57
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( ACC(8) & ( ((\state.s2~q\) # (\state.s5~q\)) # (\state.s1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s1~q\,
	datab => \ALT_INV_state.s5~q\,
	datac => \ALT_INV_state.s2~q\,
	dataf => ALT_INV_ACC(8),
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X81_Y21_N36
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \mcand[2]~input_o\ ) + ( ACC(7) ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \mcand[2]~input_o\ ) + ( ACC(7) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mcand[2]~input_o\,
	datac => ALT_INV_ACC(7),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X81_Y21_N39
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \mcand[3]~input_o\ ) + ( ACC(8) ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mcand[3]~input_o\,
	datac => ALT_INV_ACC(8),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\);

-- Location: LABCELL_X81_Y21_N12
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \Add3~13_sumout\ & ( (((\state.s3~q\ & \Add2~13_sumout\)) # (\Selector0~0_combout\)) # (\state.s4~q\) ) ) # ( !\Add3~13_sumout\ & ( ((\state.s3~q\ & \Add2~13_sumout\)) # (\Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s4~q\,
	datab => \ALT_INV_state.s3~q\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X81_Y21_N14
\ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(8));

-- Location: LABCELL_X81_Y21_N15
\ACC[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[5]~0_combout\ = ( !\state.s2~q\ & ( !\state.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \ACC[5]~0_combout\);

-- Location: LABCELL_X81_Y21_N21
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \Add2~9_sumout\ & ( \ACC[5]~0_combout\ & ( !\state~14_combout\ ) ) ) # ( \Add2~9_sumout\ & ( !\ACC[5]~0_combout\ & ( (!\state~14_combout\ & ((\Add3~9_sumout\))) # (\state~14_combout\ & (ACC(8))) ) ) ) # ( !\Add2~9_sumout\ & ( 
-- !\ACC[5]~0_combout\ & ( (!\state~14_combout\ & ((\Add3~9_sumout\))) # (\state~14_combout\ & (ACC(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~14_combout\,
	datac => ALT_INV_ACC(8),
	datad => \ALT_INV_Add3~9_sumout\,
	datae => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_ACC[5]~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X81_Y21_N54
\ACC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC~1_combout\ = ( !\state.s1~q\ & ( !\state.s5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.s5~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \ACC~1_combout\);

-- Location: FF_X81_Y21_N23
\ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	ena => \ACC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(7));

-- Location: LABCELL_X81_Y21_N51
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Add2~5_sumout\ & ( \ACC[5]~0_combout\ & ( !\state~14_combout\ ) ) ) # ( \Add2~5_sumout\ & ( !\ACC[5]~0_combout\ & ( (!\state~14_combout\ & (\Add3~5_sumout\)) # (\state~14_combout\ & ((ACC(7)))) ) ) ) # ( !\Add2~5_sumout\ & ( 
-- !\ACC[5]~0_combout\ & ( (!\state~14_combout\ & (\Add3~5_sumout\)) # (\state~14_combout\ & ((ACC(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_state~14_combout\,
	datad => ALT_INV_ACC(7),
	datae => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_ACC[5]~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X81_Y21_N53
\ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	ena => \ACC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(6));

-- Location: LABCELL_X81_Y21_N24
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \ACC[5]~0_combout\ & ( (!\state~14_combout\ & \Add2~1_sumout\) ) ) # ( !\ACC[5]~0_combout\ & ( (!\state~14_combout\ & (\Add3~1_sumout\)) # (\state~14_combout\ & ((ACC(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~14_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => ALT_INV_ACC(6),
	datad => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_ACC[5]~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X81_Y21_N26
\ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	ena => \ACC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(5));

-- Location: MLABCELL_X82_Y21_N54
\ACC[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[4]~feeder_combout\ = ACC(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ACC(5),
	combout => \ACC[4]~feeder_combout\);

-- Location: IOIBUF_X89_Y36_N4
\mplier[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mplier(3),
	o => \mplier[3]~input_o\);

-- Location: MLABCELL_X82_Y21_N51
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( \state.s2~q\ & ( \state.s0~q\ ) ) # ( \state.s2~q\ & ( !\state.s0~q\ ) ) # ( !\state.s2~q\ & ( !\state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s0~q\,
	combout => \WideOr2~0_combout\);

-- Location: FF_X82_Y21_N56
\ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[4]~feeder_combout\,
	asdata => \mplier[3]~input_o\,
	sload => \ALT_INV_state.s2~q\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(4));

-- Location: MLABCELL_X82_Y21_N57
\ACC[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[3]~feeder_combout\ = ACC(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ACC(4),
	combout => \ACC[3]~feeder_combout\);

-- Location: IOIBUF_X89_Y36_N55
\mplier[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mplier(2),
	o => \mplier[2]~input_o\);

-- Location: FF_X82_Y21_N59
\ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[3]~feeder_combout\,
	asdata => \mplier[2]~input_o\,
	sload => \ALT_INV_state.s2~q\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(3));

-- Location: MLABCELL_X82_Y21_N36
\ACC[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[2]~feeder_combout\ = ACC(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ACC(3),
	combout => \ACC[2]~feeder_combout\);

-- Location: IOIBUF_X89_Y35_N95
\mplier[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mplier(1),
	o => \mplier[1]~input_o\);

-- Location: FF_X82_Y21_N38
\ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[2]~feeder_combout\,
	asdata => \mplier[1]~input_o\,
	sload => \ALT_INV_state.s2~q\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(2));

-- Location: MLABCELL_X82_Y21_N39
\ACC[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[1]~feeder_combout\ = ACC(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ACC(2),
	combout => \ACC[1]~feeder_combout\);

-- Location: IOIBUF_X89_Y36_N38
\mplier[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mplier(0),
	o => \mplier[0]~input_o\);

-- Location: FF_X82_Y21_N41
\ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[1]~feeder_combout\,
	asdata => \mplier[0]~input_o\,
	sload => \ALT_INV_state.s2~q\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(1));

-- Location: MLABCELL_X84_Y21_N0
\ACC[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACC[0]~feeder_combout\ = ACC(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ACC(1),
	combout => \ACC[0]~feeder_combout\);

-- Location: FF_X84_Y21_N1
\ACC[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ACC[0]~feeder_combout\,
	asdata => \Selector8~0_combout\,
	sload => \ALT_INV_state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACC[0]~DUPLICATE_q\);

-- Location: FF_X84_Y21_N52
\product[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ACC[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[0]~reg0_q\);

-- Location: FF_X85_Y21_N40
\product[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(1),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[1]~reg0_q\);

-- Location: FF_X85_Y21_N46
\product[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(2),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[2]~reg0_q\);

-- Location: FF_X85_Y21_N28
\product[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(3),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[3]~reg0_q\);

-- Location: FF_X85_Y21_N58
\product[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(4),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[4]~reg0_q\);

-- Location: LABCELL_X85_Y21_N24
\product[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \product[5]~reg0feeder_combout\ = ( ACC(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ACC(5),
	combout => \product[5]~reg0feeder_combout\);

-- Location: FF_X85_Y21_N25
\product[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \product[5]~reg0feeder_combout\,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[5]~reg0_q\);

-- Location: FF_X81_Y21_N44
\product[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(6),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[6]~reg0_q\);

-- Location: FF_X85_Y21_N38
\product[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ACC(7),
	sload => VCC,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[7]~reg0_q\);

-- Location: LABCELL_X85_Y21_N51
\product[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \product[8]~reg0feeder_combout\ = ( ACC(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ACC(8),
	combout => \product[8]~reg0feeder_combout\);

-- Location: FF_X85_Y21_N53
\product[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \product[8]~reg0feeder_combout\,
	ena => \ALT_INV_state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[8]~reg0_q\);

-- Location: LABCELL_X85_Y21_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !ACC(1) ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( !ACC(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(1),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X85_Y21_N33
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \state.s0~q\ & ( \state.s5~q\ ) ) # ( !\state.s0~q\ & ( \state.s5~q\ ) ) # ( !\state.s0~q\ & ( !\state.s5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X85_Y21_N1
\final[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	asdata => ACC(1),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[0]~reg0_q\);

-- Location: LABCELL_X85_Y21_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !ACC(2) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( !ACC(2) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(2),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X85_Y21_N4
\final[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	asdata => ACC(2),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[1]~reg0_q\);

-- Location: LABCELL_X85_Y21_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( !ACC(3) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( !ACC(3) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(3),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X85_Y21_N7
\final[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	asdata => ACC(3),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[2]~reg0_q\);

-- Location: LABCELL_X85_Y21_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !ACC(4) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !ACC(4) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(4),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X85_Y21_N10
\final[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	asdata => ACC(4),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[3]~reg0_q\);

-- Location: LABCELL_X85_Y21_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( !ACC(5) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( !ACC(5) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ACC(5),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X85_Y21_N13
\final[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	asdata => ACC(5),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[4]~reg0_q\);

-- Location: LABCELL_X85_Y21_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( !ACC(6) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( !ACC(6) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(6),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X85_Y21_N17
\final[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	asdata => ACC(6),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[5]~reg0_q\);

-- Location: LABCELL_X85_Y21_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !ACC(7) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( !ACC(7) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ACC(7),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X85_Y21_N20
\final[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	asdata => ACC(7),
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[6]~reg0_q\);

-- Location: LABCELL_X85_Y21_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !ACC(8) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ACC(8),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

-- Location: FF_X85_Y21_N22
\final[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.s5~q\,
	sload => ALT_INV_ACC(8),
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \final[7]~reg0_q\);
END structure;


