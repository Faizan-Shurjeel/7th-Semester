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

-- DATE "10/03/2025 11:20:27"

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
	UP_DOWN : IN std_logic;
	ENA : IN std_logic;
	Count_Index : OUT std_logic_vector(3 DOWNTO 0)
	);
END FSM;

-- Design Ports Information
-- Count_Index[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_Index[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_DOWN	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_UP_DOWN : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_Count_Index : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLEAR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Count_Index[0]~output_o\ : std_logic;
SIGNAL \Count_Index[1]~output_o\ : std_logic;
SIGNAL \Count_Index[2]~output_o\ : std_logic;
SIGNAL \Count_Index[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \UP_DOWN~input_o\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \CLEAR~inputclkctrl_outclk\ : std_logic;
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \State.S5~q\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.S4~q\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \State.S3~q\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.S2~q\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State.S1~q\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.S0~q\ : std_logic;
SIGNAL \State~19_combout\ : std_logic;
SIGNAL \State.S7~q\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State.S6~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_CLEAR~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLEAR <= CLEAR;
ww_CLK <= CLK;
ww_UP_DOWN <= UP_DOWN;
ww_ENA <= ENA;
Count_Index <= ww_Count_Index;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLEAR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLEAR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_CLEAR~inputclkctrl_outclk\ <= NOT \CLEAR~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N23
\Count_Index[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \Count_Index[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Count_Index[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \Count_Index[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\Count_Index[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \Count_Index[2]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Count_Index[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Count_Index[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y44_N8
\UP_DOWN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_DOWN,
	o => \UP_DOWN~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\State~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~17_combout\ = (\UP_DOWN~input_o\ & (\State.S6~q\)) # (!\UP_DOWN~input_o\ & ((\State.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \State.S6~q\,
	datad => \State.S4~q\,
	combout => \State~17_combout\);

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

-- Location: IOIBUF_X0_Y44_N15
\ENA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: FF_X1_Y44_N17
\State.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~17_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S5~q\);

-- Location: LCCOMB_X1_Y44_N6
\State~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~13_combout\ = (\UP_DOWN~input_o\ & (\State.S5~q\)) # (!\UP_DOWN~input_o\ & ((\State.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \State.S5~q\,
	datad => \State.S3~q\,
	combout => \State~13_combout\);

-- Location: FF_X1_Y44_N7
\State.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~13_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S4~q\);

-- Location: LCCOMB_X1_Y44_N0
\State~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~18_combout\ = (\UP_DOWN~input_o\ & (\State.S4~q\)) # (!\UP_DOWN~input_o\ & ((\State.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datac => \State.S4~q\,
	datad => \State.S2~q\,
	combout => \State~18_combout\);

-- Location: FF_X1_Y44_N1
\State.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~18_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S3~q\);

-- Location: LCCOMB_X1_Y44_N24
\State~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~12_combout\ = (\UP_DOWN~input_o\ & (\State.S3~q\)) # (!\UP_DOWN~input_o\ & ((\State.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \State.S3~q\,
	datad => \State.S1~q\,
	combout => \State~12_combout\);

-- Location: FF_X1_Y44_N25
\State.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~12_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S2~q\);

-- Location: LCCOMB_X1_Y44_N2
\State~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~16_combout\ = (\UP_DOWN~input_o\ & ((\State.S2~q\))) # (!\UP_DOWN~input_o\ & (!\State.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datac => \State.S0~q\,
	datad => \State.S2~q\,
	combout => \State~16_combout\);

-- Location: FF_X1_Y44_N3
\State.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~16_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S1~q\);

-- Location: LCCOMB_X1_Y44_N30
\State~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~15_combout\ = (\UP_DOWN~input_o\ & (!\State.S1~q\)) # (!\UP_DOWN~input_o\ & ((!\State.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \State.S1~q\,
	datad => \State.S7~q\,
	combout => \State~15_combout\);

-- Location: FF_X1_Y44_N31
\State.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~15_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S0~q\);

-- Location: LCCOMB_X1_Y44_N12
\State~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~19_combout\ = (\UP_DOWN~input_o\ & (!\State.S0~q\)) # (!\UP_DOWN~input_o\ & ((\State.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datac => \State.S0~q\,
	datad => \State.S6~q\,
	combout => \State~19_combout\);

-- Location: FF_X1_Y44_N13
\State.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~19_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S7~q\);

-- Location: LCCOMB_X1_Y44_N28
\State~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \State~14_combout\ = (\UP_DOWN~input_o\ & (\State.S7~q\)) # (!\UP_DOWN~input_o\ & ((\State.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S7~q\,
	datac => \UP_DOWN~input_o\,
	datad => \State.S5~q\,
	combout => \State~14_combout\);

-- Location: FF_X1_Y44_N29
\State.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \State~14_combout\,
	clrn => \ALT_INV_CLEAR~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S6~q\);

-- Location: LCCOMB_X1_Y44_N20
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\State.S6~q\) # (((\State.S4~q\) # (\State.S2~q\)) # (!\State.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S6~q\,
	datab => \State.S0~q\,
	datac => \State.S4~q\,
	datad => \State.S2~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\State.S1~q\) # ((\State.S5~q\) # ((\State.S4~q\) # (!\State.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S1~q\,
	datab => \State.S5~q\,
	datac => \State.S0~q\,
	datad => \State.S4~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y44_N26
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\State.S1~q\) # ((\State.S3~q\) # ((\State.S2~q\) # (!\State.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.S1~q\,
	datab => \State.S3~q\,
	datac => \State.S0~q\,
	datad => \State.S2~q\,
	combout => \WideOr0~0_combout\);

ww_Count_Index(0) <= \Count_Index[0]~output_o\;

ww_Count_Index(1) <= \Count_Index[1]~output_o\;

ww_Count_Index(2) <= \Count_Index[2]~output_o\;

ww_Count_Index(3) <= \Count_Index[3]~output_o\;
END structure;


