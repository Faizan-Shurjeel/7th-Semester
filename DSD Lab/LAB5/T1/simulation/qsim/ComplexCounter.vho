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

-- DATE "10/10/2025 11:27:07"

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

ENTITY 	FSM IS
    PORT (
	CLEAR : IN std_logic;
	CLK : IN std_logic;
	ENA : IN std_logic;
	M : IN std_logic;
	num : OUT std_logic_vector(3 DOWNTO 0);
	Count_Index : OUT std_logic_vector(6 DOWNTO 0)
	);
END FSM;

-- Design Ports Information
-- num[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[2]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_num : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Count_Index : std_logic_vector(6 DOWNTO 0);
SIGNAL \num[0]~output_o\ : std_logic;
SIGNAL \num[1]~output_o\ : std_logic;
SIGNAL \num[2]~output_o\ : std_logic;
SIGNAL \num[3]~output_o\ : std_logic;
SIGNAL \Count_Index[0]~output_o\ : std_logic;
SIGNAL \Count_Index[1]~output_o\ : std_logic;
SIGNAL \Count_Index[2]~output_o\ : std_logic;
SIGNAL \Count_Index[3]~output_o\ : std_logic;
SIGNAL \Count_Index[4]~output_o\ : std_logic;
SIGNAL \Count_Index[5]~output_o\ : std_logic;
SIGNAL \Count_Index[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \State.S1~0_combout\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \State.S1~q\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \State.S3~q\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.S2~q\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State.S6~q\ : std_logic;
SIGNAL \State.S7~q\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.S5~q\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.S4~q\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State.S0~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \num[0]~reg0feeder_combout\ : std_logic;
SIGNAL \num[0]~0_combout\ : std_logic;
SIGNAL \num[0]~reg0_q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \num[1]~reg0feeder_combout\ : std_logic;
SIGNAL \num[1]~reg0_q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \num[2]~reg0feeder_combout\ : std_logic;
SIGNAL \num[2]~reg0_q\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[0]~0_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[1]~1_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[2]~2_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[3]~3_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[4]~4_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[5]~5_combout\ : std_logic;
SIGNAL \sevenseg_decoder|cathodes[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_CLEAR~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLEAR <= CLEAR;
ww_CLK <= CLK;
ww_ENA <= ENA;
ww_M <= M;
num <= ww_num;
Count_Index <= ww_Count_Index;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_CLEAR~input_o\ <= NOT \CLEAR~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y40_N2
\num[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num[0]~reg0_q\,
	devoe => ww_devoe,
	o => \num[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\num[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num[1]~reg0_q\,
	devoe => ww_devoe,
	o => \num[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\num[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \num[2]~reg0_q\,
	devoe => ww_devoe,
	o => \num[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\num[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \num[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Count_Index[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \Count_Index[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Count_Index[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \Count_Index[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Count_Index[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \Count_Index[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Count_Index[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \Count_Index[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\Count_Index[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \Count_Index[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Count_Index[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \Count_Index[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Count_Index[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg_decoder|cathodes[0]~6_combout\,
	devoe => ww_devoe,
	o => \Count_Index[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X112_Y40_N30
\State.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.S1~0_combout\ = !\State.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.S0~q\,
	combout => \State.S1~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\CLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\ENA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: FF_X112_Y40_N31
\State.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State.S1~0_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S1~q\);

-- Location: LCCOMB_X112_Y40_N20
\State~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~17_combout\ = (\M~input_o\ & ((\State.S1~q\))) # (!\M~input_o\ & (\State.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datac => \State.S2~q\,
	datad => \State.S1~q\,
	combout => \State~17_combout\);

-- Location: FF_X112_Y40_N21
\State.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~17_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S3~q\);

-- Location: LCCOMB_X112_Y40_N10
\State~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~15_combout\ = (\M~input_o\ & (\State.S3~q\)) # (!\M~input_o\ & ((\State.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datac => \State.S3~q\,
	datad => \State.S1~q\,
	combout => \State~15_combout\);

-- Location: FF_X112_Y40_N11
\State.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~15_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S2~q\);

-- Location: LCCOMB_X112_Y40_N24
\State~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~16_combout\ = (\M~input_o\ & (\State.S2~q\)) # (!\M~input_o\ & ((\State.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.S2~q\,
	datac => \M~input_o\,
	datad => \State.S5~q\,
	combout => \State~16_combout\);

-- Location: FF_X112_Y40_N25
\State.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~16_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S6~q\);

-- Location: FF_X112_Y40_N15
\State.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \State.S6~q\,
	clrn => \ALT_INV_CLEAR~input_o\,
	sload => VCC,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S7~q\);

-- Location: LCCOMB_X112_Y40_N12
\State~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~13_combout\ = (\M~input_o\ & ((\State.S7~q\))) # (!\M~input_o\ & (\State.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \State.S4~q\,
	datac => \State.S7~q\,
	combout => \State~13_combout\);

-- Location: FF_X112_Y40_N13
\State.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~13_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S5~q\);

-- Location: LCCOMB_X112_Y40_N4
\State~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~12_combout\ = (\M~input_o\ & (\State.S5~q\)) # (!\M~input_o\ & ((\State.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S5~q\,
	datab => \State.S3~q\,
	datad => \M~input_o\,
	combout => \State~12_combout\);

-- Location: FF_X112_Y40_N5
\State.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~12_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S4~q\);

-- Location: LCCOMB_X112_Y40_N26
\State~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~14_combout\ = (\M~input_o\ & (!\State.S4~q\)) # (!\M~input_o\ & ((!\State.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \State.S4~q\,
	datac => \State.S7~q\,
	combout => \State~14_combout\);

-- Location: FF_X112_Y40_N27
\State.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \State~14_combout\,
	clrn => \ALT_INV_CLEAR~input_o\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S0~q\);

-- Location: LCCOMB_X112_Y40_N22
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\State.S0~q\ & (!\State.S6~q\ & (!\State.S4~q\ & !\State.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S0~q\,
	datab => \State.S6~q\,
	datac => \State.S4~q\,
	datad => \State.S2~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X111_Y40_N16
\num[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[0]~reg0feeder_combout\ = \WideOr2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr2~0_combout\,
	combout => \num[0]~reg0feeder_combout\);

-- Location: LCCOMB_X112_Y40_N8
\num[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[0]~0_combout\ = (!\CLEAR~input_o\ & \ENA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLEAR~input_o\,
	datad => \ENA~input_o\,
	combout => \num[0]~0_combout\);

-- Location: FF_X111_Y40_N17
\num[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \num[0]~reg0feeder_combout\,
	ena => \num[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[0]~reg0_q\);

-- Location: LCCOMB_X112_Y40_N28
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\State.S1~q\ & (!\State.S4~q\ & (\State.S0~q\ & !\State.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S1~q\,
	datab => \State.S4~q\,
	datac => \State.S0~q\,
	datad => \State.S5~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X111_Y40_N10
\num[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[1]~reg0feeder_combout\ = \WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr1~0_combout\,
	combout => \num[1]~reg0feeder_combout\);

-- Location: FF_X111_Y40_N11
\num[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \num[1]~reg0feeder_combout\,
	ena => \num[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[1]~reg0_q\);

-- Location: LCCOMB_X112_Y40_N18
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\State.S0~q\ & (!\State.S3~q\ & (!\State.S1~q\ & !\State.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S0~q\,
	datab => \State.S3~q\,
	datac => \State.S1~q\,
	datad => \State.S2~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X111_Y40_N0
\num[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[2]~reg0feeder_combout\ = \WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr0~0_combout\,
	combout => \num[2]~reg0feeder_combout\);

-- Location: FF_X111_Y40_N1
\num[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \num[2]~reg0feeder_combout\,
	ena => \num[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[2]~reg0_q\);

-- Location: LCCOMB_X111_Y40_N2
\sevenseg_decoder|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[0]~0_combout\ = (!\WideOr1~0_combout\ & (\WideOr2~0_combout\ $ (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[0]~0_combout\);

-- Location: LCCOMB_X111_Y40_N12
\sevenseg_decoder|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[1]~1_combout\ = (\WideOr0~0_combout\ & (\WideOr2~0_combout\ $ (\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[1]~1_combout\);

-- Location: LCCOMB_X111_Y40_N30
\sevenseg_decoder|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[2]~2_combout\ = (!\WideOr2~0_combout\ & (!\WideOr0~0_combout\ & \WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[2]~2_combout\);

-- Location: LCCOMB_X112_Y40_N0
\sevenseg_decoder|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[3]~3_combout\ = (\WideOr2~0_combout\ & (\WideOr0~0_combout\ $ (!\WideOr1~0_combout\))) # (!\WideOr2~0_combout\ & (\WideOr0~0_combout\ & !\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[3]~3_combout\);

-- Location: LCCOMB_X112_Y40_N6
\sevenseg_decoder|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[4]~4_combout\ = (\WideOr2~0_combout\) # ((\WideOr0~0_combout\ & !\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[4]~4_combout\);

-- Location: LCCOMB_X112_Y40_N16
\sevenseg_decoder|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[5]~5_combout\ = (\WideOr2~0_combout\ & ((\WideOr1~0_combout\) # (!\WideOr0~0_combout\))) # (!\WideOr2~0_combout\ & (!\WideOr0~0_combout\ & \WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[5]~5_combout\);

-- Location: LCCOMB_X112_Y40_N14
\sevenseg_decoder|cathodes[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg_decoder|cathodes[0]~6_combout\ = (\WideOr0~0_combout\ & (\WideOr2~0_combout\ & \WideOr1~0_combout\)) # (!\WideOr0~0_combout\ & ((!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr0~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \sevenseg_decoder|cathodes[0]~6_combout\);

ww_num(0) <= \num[0]~output_o\;

ww_num(1) <= \num[1]~output_o\;

ww_num(2) <= \num[2]~output_o\;

ww_num(3) <= \num[3]~output_o\;

ww_Count_Index(0) <= \Count_Index[0]~output_o\;

ww_Count_Index(1) <= \Count_Index[1]~output_o\;

ww_Count_Index(2) <= \Count_Index[2]~output_o\;

ww_Count_Index(3) <= \Count_Index[3]~output_o\;

ww_Count_Index(4) <= \Count_Index[4]~output_o\;

ww_Count_Index(5) <= \Count_Index[5]~output_o\;

ww_Count_Index(6) <= \Count_Index[6]~output_o\;
END structure;


