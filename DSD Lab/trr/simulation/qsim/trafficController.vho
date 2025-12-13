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

-- DATE "12/09/2025 15:18:36"

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

ENTITY 	trafficController IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic;
	red : OUT std_logic;
	yellow : OUT std_logic;
	green : OUT std_logic;
	stateC : OUT std_logic_vector(3 DOWNTO 0);
	stateN : OUT std_logic_vector(3 DOWNTO 0);
	stateP : OUT std_logic_vector(3 DOWNTO 0);
	PDLED : OUT std_logic
	);
END trafficController;

-- Design Ports Information
-- red	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateC[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateC[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateC[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateC[3]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateN[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateN[1]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateN[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateN[3]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateP[0]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateP[1]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateP[2]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateP[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PDLED	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_btn : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_stateC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_stateN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_stateP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PDLED : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \stateC[0]~output_o\ : std_logic;
SIGNAL \stateC[1]~output_o\ : std_logic;
SIGNAL \stateC[2]~output_o\ : std_logic;
SIGNAL \stateC[3]~output_o\ : std_logic;
SIGNAL \stateN[0]~output_o\ : std_logic;
SIGNAL \stateN[1]~output_o\ : std_logic;
SIGNAL \stateN[2]~output_o\ : std_logic;
SIGNAL \stateN[3]~output_o\ : std_logic;
SIGNAL \stateP[0]~output_o\ : std_logic;
SIGNAL \stateP[1]~output_o\ : std_logic;
SIGNAL \stateP[2]~output_o\ : std_logic;
SIGNAL \stateP[3]~output_o\ : std_logic;
SIGNAL \PDLED~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \next_state.GR~q\ : std_logic;
SIGNAL \state.GR~feeder_combout\ : std_logic;
SIGNAL \state.GR~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_state.YR~q\ : std_logic;
SIGNAL \state.YR~feeder_combout\ : std_logic;
SIGNAL \state.YR~q\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state.RG~q\ : std_logic;
SIGNAL \state.RG~feeder_combout\ : std_logic;
SIGNAL \state.RG~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \prevState.RR~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \next_state.RR~q\ : std_logic;
SIGNAL \state.RR~feeder_combout\ : std_logic;
SIGNAL \state.RR~q\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \red~reg0_q\ : std_logic;
SIGNAL \yellow~reg0feeder_combout\ : std_logic;
SIGNAL \yellow~reg0_q\ : std_logic;
SIGNAL \green~reg0feeder_combout\ : std_logic;
SIGNAL \green~reg0_q\ : std_logic;
SIGNAL \stateCurrent[0]~0_combout\ : std_logic;
SIGNAL \stateCurrent[1]~feeder_combout\ : std_logic;
SIGNAL \stateCurrent[2]~feeder_combout\ : std_logic;
SIGNAL \stateCurrent[3]~feeder_combout\ : std_logic;
SIGNAL \stateNext[0]~0_combout\ : std_logic;
SIGNAL \stateNext[1]~feeder_combout\ : std_logic;
SIGNAL \stateNext[2]~feeder_combout\ : std_logic;
SIGNAL \stateNext[3]~feeder_combout\ : std_logic;
SIGNAL \statePrvious[0]~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \prevState.GR~q\ : std_logic;
SIGNAL \statePrvious[2]~feeder_combout\ : std_logic;
SIGNAL \PDLED~reg0feeder_combout\ : std_logic;
SIGNAL \PDLED~reg0_q\ : std_logic;
SIGNAL stateCurrent : std_logic_vector(3 DOWNTO 0);
SIGNAL stateNext : std_logic_vector(3 DOWNTO 0);
SIGNAL statePrvious : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_btn <= btn;
red <= ww_red;
yellow <= ww_yellow;
green <= ww_green;
stateC <= ww_stateC;
stateN <= ww_stateN;
stateP <= ww_stateP;
PDLED <= ww_PDLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~reg0_q\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \yellow~reg0_q\,
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green~reg0_q\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\stateC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateCurrent(0),
	devoe => ww_devoe,
	o => \stateC[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\stateC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateCurrent(1),
	devoe => ww_devoe,
	o => \stateC[1]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\stateC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateCurrent(2),
	devoe => ww_devoe,
	o => \stateC[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\stateC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateCurrent(3),
	devoe => ww_devoe,
	o => \stateC[3]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\stateN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateNext(0),
	devoe => ww_devoe,
	o => \stateN[0]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\stateN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateNext(1),
	devoe => ww_devoe,
	o => \stateN[1]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\stateN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateNext(2),
	devoe => ww_devoe,
	o => \stateN[2]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\stateN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => stateNext(3),
	devoe => ww_devoe,
	o => \stateN[3]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\stateP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => statePrvious(0),
	devoe => ww_devoe,
	o => \stateP[0]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\stateP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stateP[1]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\stateP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => statePrvious(2),
	devoe => ww_devoe,
	o => \stateP[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\stateP[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stateP[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\PDLED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PDLED~reg0_q\,
	devoe => ww_devoe,
	o => \PDLED~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X113_Y40_N10
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (!\btn~input_o\ & (!\prevState.RR~q\ & \state.YR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datac => \prevState.RR~q\,
	datad => \state.YR~q\,
	combout => \next_state~8_combout\);

-- Location: FF_X113_Y40_N11
\next_state.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.GR~q\);

-- Location: LCCOMB_X113_Y40_N6
\state.GR~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.GR~feeder_combout\ = \next_state.GR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.GR~q\,
	combout => \state.GR~feeder_combout\);

-- Location: FF_X113_Y40_N7
\state.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.GR~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GR~q\);

-- Location: LCCOMB_X113_Y40_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.GR~q\) # ((!\btn~input_o\ & !\state.RR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datac => \state.RR~q\,
	datad => \state.GR~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X113_Y40_N25
\next_state.YR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.YR~q\);

-- Location: LCCOMB_X113_Y40_N12
\state.YR~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.YR~feeder_combout\ = \next_state.YR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.YR~q\,
	combout => \state.YR~feeder_combout\);

-- Location: FF_X113_Y40_N13
\state.YR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.YR~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YR~q\);

-- Location: LCCOMB_X114_Y40_N30
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\btn~input_o\ & !\state.GR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datac => \state.GR~q\,
	combout => \next_state~9_combout\);

-- Location: FF_X114_Y40_N31
\next_state.RG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.RG~q\);

-- Location: LCCOMB_X114_Y40_N26
\state.RG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RG~feeder_combout\ = \next_state.RG~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.RG~q\,
	combout => \state.RG~feeder_combout\);

-- Location: FF_X114_Y40_N27
\state.RG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.RG~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RG~q\);

-- Location: LCCOMB_X114_Y40_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.RR~q\ & ((\prevState.RR~q\) # ((!\state.YR~q\ & !\state.RG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.YR~q\,
	datab => \state.RG~q\,
	datac => \prevState.RR~q\,
	datad => \state.RR~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X114_Y40_N21
\prevState.RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prevState.RR~q\);

-- Location: LCCOMB_X114_Y40_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\btn~input_o\) # ((!\state.RG~q\ & ((!\state.YR~q\) # (!\prevState.RR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datab => \prevState.RR~q\,
	datac => \state.RG~q\,
	datad => \state.YR~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X114_Y40_N5
\next_state.RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.RR~q\);

-- Location: LCCOMB_X113_Y40_N14
\state.RR~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RR~feeder_combout\ = \next_state.RR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.RR~q\,
	combout => \state.RR~feeder_combout\);

-- Location: FF_X113_Y40_N15
\state.RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.RR~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RR~q\);

-- Location: LCCOMB_X113_Y40_N8
\red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\state.RG~q\) # (!\state.RR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.RR~q\,
	datad => \state.RG~q\,
	combout => \red~2_combout\);

-- Location: FF_X113_Y40_N9
\red~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \red~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red~reg0_q\);

-- Location: LCCOMB_X113_Y40_N18
\yellow~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \yellow~reg0feeder_combout\ = \state.YR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.YR~q\,
	combout => \yellow~reg0feeder_combout\);

-- Location: FF_X113_Y40_N19
\yellow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \yellow~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yellow~reg0_q\);

-- Location: LCCOMB_X113_Y40_N4
\green~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \green~reg0feeder_combout\ = \state.GR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.GR~q\,
	combout => \green~reg0feeder_combout\);

-- Location: FF_X113_Y40_N5
\green~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \green~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green~reg0_q\);

-- Location: LCCOMB_X114_Y40_N16
\stateCurrent[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateCurrent[0]~0_combout\ = !\state.RR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.RR~q\,
	combout => \stateCurrent[0]~0_combout\);

-- Location: FF_X114_Y40_N17
\stateCurrent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateCurrent[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateCurrent(0));

-- Location: LCCOMB_X114_Y40_N14
\stateCurrent[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateCurrent[1]~feeder_combout\ = \state.YR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.YR~q\,
	combout => \stateCurrent[1]~feeder_combout\);

-- Location: FF_X114_Y40_N15
\stateCurrent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateCurrent[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateCurrent(1));

-- Location: LCCOMB_X114_Y40_N24
\stateCurrent[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateCurrent[2]~feeder_combout\ = \state.GR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.GR~q\,
	combout => \stateCurrent[2]~feeder_combout\);

-- Location: FF_X114_Y40_N25
\stateCurrent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateCurrent[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateCurrent(2));

-- Location: LCCOMB_X114_Y40_N18
\stateCurrent[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateCurrent[3]~feeder_combout\ = \state.RG~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.RG~q\,
	combout => \stateCurrent[3]~feeder_combout\);

-- Location: FF_X114_Y40_N19
\stateCurrent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateCurrent[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateCurrent(3));

-- Location: LCCOMB_X114_Y40_N12
\stateNext[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateNext[0]~0_combout\ = !\next_state.RR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.RR~q\,
	combout => \stateNext[0]~0_combout\);

-- Location: FF_X114_Y40_N13
\stateNext[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNext(0));

-- Location: LCCOMB_X114_Y40_N2
\stateNext[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateNext[1]~feeder_combout\ = \next_state.YR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.YR~q\,
	combout => \stateNext[1]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\stateNext[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNext[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNext(1));

-- Location: LCCOMB_X114_Y40_N28
\stateNext[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateNext[2]~feeder_combout\ = \next_state.GR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.GR~q\,
	combout => \stateNext[2]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\stateNext[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNext[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNext(2));

-- Location: LCCOMB_X114_Y40_N10
\stateNext[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateNext[3]~feeder_combout\ = \next_state.RG~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.RG~q\,
	combout => \stateNext[3]~feeder_combout\);

-- Location: FF_X114_Y40_N11
\stateNext[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateNext[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stateNext(3));

-- Location: LCCOMB_X114_Y40_N8
\statePrvious[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \statePrvious[0]~0_combout\ = !\prevState.RR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prevState.RR~q\,
	combout => \statePrvious[0]~0_combout\);

-- Location: FF_X114_Y40_N9
\statePrvious[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \statePrvious[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => statePrvious(0));

-- Location: LCCOMB_X114_Y40_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.GR~q\) # ((\prevState.GR~q\ & ((\state.RG~q\) # (\state.YR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RG~q\,
	datab => \state.GR~q\,
	datac => \prevState.GR~q\,
	datad => \state.YR~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X114_Y40_N7
\prevState.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prevState.GR~q\);

-- Location: LCCOMB_X114_Y40_N22
\statePrvious[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \statePrvious[2]~feeder_combout\ = \prevState.GR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prevState.GR~q\,
	combout => \statePrvious[2]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\statePrvious[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \statePrvious[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => statePrvious(2));

-- Location: LCCOMB_X114_Y40_N0
\PDLED~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PDLED~reg0feeder_combout\ = \state.RG~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.RG~q\,
	combout => \PDLED~reg0feeder_combout\);

-- Location: FF_X114_Y40_N1
\PDLED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PDLED~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PDLED~reg0_q\);

ww_red <= \red~output_o\;

ww_yellow <= \yellow~output_o\;

ww_green <= \green~output_o\;

ww_stateC(0) <= \stateC[0]~output_o\;

ww_stateC(1) <= \stateC[1]~output_o\;

ww_stateC(2) <= \stateC[2]~output_o\;

ww_stateC(3) <= \stateC[3]~output_o\;

ww_stateN(0) <= \stateN[0]~output_o\;

ww_stateN(1) <= \stateN[1]~output_o\;

ww_stateN(2) <= \stateN[2]~output_o\;

ww_stateN(3) <= \stateN[3]~output_o\;

ww_stateP(0) <= \stateP[0]~output_o\;

ww_stateP(1) <= \stateP[1]~output_o\;

ww_stateP(2) <= \stateP[2]~output_o\;

ww_stateP(3) <= \stateP[3]~output_o\;

ww_PDLED <= \PDLED~output_o\;
END structure;


