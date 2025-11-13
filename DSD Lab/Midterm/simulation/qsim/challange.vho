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

-- DATE "10/24/2025 07:57:38"

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

ENTITY 	challange IS
    PORT (
	CLEAR : IN std_logic;
	btn : IN std_logic;
	clk : IN std_logic;
	vehicle_red : OUT std_logic;
	vehicle_yellow : OUT std_logic;
	vehicle_green : OUT std_logic;
	pedestrian_red : OUT std_logic;
	pedestrian_green : OUT std_logic
	);
END challange;

-- Design Ports Information
-- vehicle_red	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_yellow	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_green	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestrian_red	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestrian_green	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF challange IS
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
SIGNAL ww_btn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_vehicle_red : std_logic;
SIGNAL ww_vehicle_yellow : std_logic;
SIGNAL ww_vehicle_green : std_logic;
SIGNAL ww_pedestrian_red : std_logic;
SIGNAL ww_pedestrian_green : std_logic;
SIGNAL \CLEAR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vehicle_red~output_o\ : std_logic;
SIGNAL \vehicle_yellow~output_o\ : std_logic;
SIGNAL \vehicle_green~output_o\ : std_logic;
SIGNAL \pedestrian_red~output_o\ : std_logic;
SIGNAL \pedestrian_green~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \nextstate.s0~3_combout\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \CLEAR~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \nextstate.s0~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \nextstate.s0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \nextstate.s0~2_combout\ : std_logic;
SIGNAL \nextstate.s0~q\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \nextstate.s1~0_combout\ : std_logic;
SIGNAL \nextstate.s1~q\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \nextstate.s2~0_combout\ : std_logic;
SIGNAL \nextstate.s2~1_combout\ : std_logic;
SIGNAL \nextstate.s2~q\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL j : std_logic_vector(3 DOWNTO 0);
SIGNAL i : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_state.s0~q\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_CLEAR~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLEAR <= CLEAR;
ww_btn <= btn;
ww_clk <= clk;
vehicle_red <= ww_vehicle_red;
vehicle_yellow <= ww_vehicle_yellow;
vehicle_green <= ww_vehicle_green;
pedestrian_red <= ww_pedestrian_red;
pedestrian_green <= ww_pedestrian_green;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLEAR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLEAR~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_CLEAR~inputclkctrl_outclk\ <= NOT \CLEAR~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y30_N9
\vehicle_red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s2~q\,
	devoe => ww_devoe,
	o => \vehicle_red~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\vehicle_yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s1~q\,
	devoe => ww_devoe,
	o => \vehicle_yellow~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\vehicle_green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.s0~q\,
	devoe => ww_devoe,
	o => \vehicle_green~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\pedestrian_red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.s2~q\,
	devoe => ww_devoe,
	o => \pedestrian_red~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\pedestrian_green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s2~q\,
	devoe => ww_devoe,
	o => \pedestrian_green~output_o\);

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

-- Location: IOIBUF_X0_Y31_N15
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X1_Y32_N6
\nextstate.s0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s0~3_combout\ = (\state.s0~q\ & (!\state.s2~q\)) # (!\state.s0~q\ & ((\btn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => \state.s0~q\,
	datad => \btn~input_o\,
	combout => \nextstate.s0~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: LCCOMB_X1_Y32_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (i(0) & (((\state.s2~q\)))) # (!i(0) & (\state.s1~q\ & (!i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => i(1),
	datac => i(0),
	datad => \state.s2~q\,
	combout => \Selector4~0_combout\);

-- Location: CLKCTRL_G4
\CLEAR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLEAR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLEAR~inputclkctrl_outclk\);

-- Location: FF_X1_Y32_N1
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X1_Y32_N14
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (i(1) & ((\state.s2~q\) # ((!i(0) & \state.s1~q\)))) # (!i(1) & (i(0) & ((\state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \state.s2~q\,
	datac => i(1),
	datad => \state.s1~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y32_N15
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X1_Y32_N8
\nextstate.s0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s0~1_combout\ = (\CLEAR~input_o\) # ((\state.s1~q\ & ((i(0)) # (!i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \CLEAR~input_o\,
	datac => i(1),
	datad => i(0),
	combout => \nextstate.s0~1_combout\);

-- Location: LCCOMB_X1_Y32_N26
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (j(0) & ((\state.s1~q\) # ((\Equal1~0_combout\ & \state.s2~q\)))) # (!j(0) & (((\state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Equal1~0_combout\,
	datac => j(0),
	datad => \state.s2~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X1_Y32_N27
\j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(0));

-- Location: LCCOMB_X1_Y32_N24
\nextstate.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s0~0_combout\ = (\state.s2~q\ & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datad => \Equal1~0_combout\,
	combout => \nextstate.s0~0_combout\);

-- Location: LCCOMB_X1_Y32_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (j(1) & ((\state.s1~q\) # ((!j(0) & \nextstate.s0~0_combout\)))) # (!j(1) & (j(0) & (\nextstate.s0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(0),
	datab => \nextstate.s0~0_combout\,
	datac => j(1),
	datad => \state.s1~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X1_Y32_N17
\j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(1));

-- Location: LCCOMB_X1_Y32_N10
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s2~q\ & (j(2) $ (((j(0) & j(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(0),
	datac => \state.s2~q\,
	datad => j(1),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y32_N4
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\state.s1~q\ & j(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datac => j(2),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X1_Y32_N5
\j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(2));

-- Location: LCCOMB_X1_Y32_N22
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = j(3) $ (((j(2) & (j(1) & j(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(3),
	datac => j(1),
	datad => j(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y32_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add1~0_combout\ & ((\state.s2~q\) # ((j(3) & \state.s1~q\)))) # (!\Add1~0_combout\ & (((j(3) & \state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \state.s2~q\,
	datac => j(3),
	datad => \state.s1~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y32_N19
\j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(3));

-- Location: LCCOMB_X1_Y32_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (j(0) & (j(3) & (!j(2) & !j(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(0),
	datab => j(3),
	datac => j(2),
	datad => j(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\nextstate.s0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s0~2_combout\ = (!\nextstate.s0~1_combout\ & ((\Equal1~0_combout\) # (!\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => \nextstate.s0~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \nextstate.s0~2_combout\);

-- Location: FF_X1_Y32_N7
\nextstate.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate.s0~3_combout\,
	ena => \nextstate.s0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.s0~q\);

-- Location: FF_X1_Y32_N25
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nextstate.s0~q\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X1_Y32_N20
\nextstate.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s1~0_combout\ = (!\state.s0~q\ & \btn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s0~q\,
	datad => \btn~input_o\,
	combout => \nextstate.s1~0_combout\);

-- Location: FF_X1_Y32_N21
\nextstate.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate.s1~0_combout\,
	ena => \nextstate.s0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.s1~q\);

-- Location: FF_X1_Y32_N31
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nextstate.s1~q\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X1_Y32_N30
\nextstate.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s2~0_combout\ = (\CLEAR~input_o\ & (((!\state.s1~q\)))) # (!\CLEAR~input_o\ & (!i(0) & (\state.s1~q\ & i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \CLEAR~input_o\,
	datac => \state.s1~q\,
	datad => i(1),
	combout => \nextstate.s2~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\nextstate.s2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.s2~1_combout\ = (\state.s1~q\ & (((\nextstate.s2~q\) # (\nextstate.s2~0_combout\)))) # (!\state.s1~q\ & (\nextstate.s2~q\ & ((\nextstate.s0~0_combout\) # (\nextstate.s2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \nextstate.s0~0_combout\,
	datac => \nextstate.s2~q\,
	datad => \nextstate.s2~0_combout\,
	combout => \nextstate.s2~1_combout\);

-- Location: FF_X1_Y32_N13
\nextstate.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate.s2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.s2~q\);

-- Location: FF_X1_Y32_N11
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nextstate.s2~q\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

ww_vehicle_red <= \vehicle_red~output_o\;

ww_vehicle_yellow <= \vehicle_yellow~output_o\;

ww_vehicle_green <= \vehicle_green~output_o\;

ww_pedestrian_red <= \pedestrian_red~output_o\;

ww_pedestrian_green <= \pedestrian_green~output_o\;
END structure;


