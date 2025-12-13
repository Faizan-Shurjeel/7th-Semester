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

-- DATE "12/12/2025 11:50:56"

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

ENTITY 	lab IS
    PORT (
	Clock : IN std_logic;
	Enable : IN std_logic;
	Read : IN std_logic;
	Write : IN std_logic;
	Read_Addr : IN std_logic_vector(1 DOWNTO 0);
	Write_Addr : IN std_logic_vector(1 DOWNTO 0);
	Data_in : IN std_logic_vector(3 DOWNTO 0);
	Data_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab;

-- Design Ports Information
-- Data_out[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_Addr[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_Addr[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_Addr[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_Addr[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Read : std_logic;
SIGNAL ww_Write : std_logic;
SIGNAL ww_Read_Addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Write_Addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_out[0]~output_o\ : std_logic;
SIGNAL \Data_out[1]~output_o\ : std_logic;
SIGNAL \Data_out[2]~output_o\ : std_logic;
SIGNAL \Data_out[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data_in[0]~input_o\ : std_logic;
SIGNAL \tmp_ram~15feeder_combout\ : std_logic;
SIGNAL \Write_Addr[0]~input_o\ : std_logic;
SIGNAL \Write~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Write_Addr[1]~input_o\ : std_logic;
SIGNAL \tmp_ram~31_combout\ : std_logic;
SIGNAL \tmp_ram~15_q\ : std_logic;
SIGNAL \Read_Addr[1]~input_o\ : std_logic;
SIGNAL \tmp_ram~19feeder_combout\ : std_logic;
SIGNAL \tmp_ram~34_combout\ : std_logic;
SIGNAL \tmp_ram~19_q\ : std_logic;
SIGNAL \Read_Addr[0]~input_o\ : std_logic;
SIGNAL \tmp_ram~33_combout\ : std_logic;
SIGNAL \tmp_ram~7_q\ : std_logic;
SIGNAL \tmp_ram~11feeder_combout\ : std_logic;
SIGNAL \tmp_ram~32_combout\ : std_logic;
SIGNAL \tmp_ram~11_q\ : std_logic;
SIGNAL \tmp_ram~23_combout\ : std_logic;
SIGNAL \tmp_ram~24_combout\ : std_logic;
SIGNAL \Data_out[0]~reg0_q\ : std_logic;
SIGNAL \Read~input_o\ : std_logic;
SIGNAL \Data_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \Data_out[0]~en_q\ : std_logic;
SIGNAL \Data_in[1]~input_o\ : std_logic;
SIGNAL \tmp_ram~12feeder_combout\ : std_logic;
SIGNAL \tmp_ram~12_q\ : std_logic;
SIGNAL \tmp_ram~20feeder_combout\ : std_logic;
SIGNAL \tmp_ram~20_q\ : std_logic;
SIGNAL \tmp_ram~8_q\ : std_logic;
SIGNAL \tmp_ram~16feeder_combout\ : std_logic;
SIGNAL \tmp_ram~16_q\ : std_logic;
SIGNAL \tmp_ram~25_combout\ : std_logic;
SIGNAL \tmp_ram~26_combout\ : std_logic;
SIGNAL \Data_out[1]~reg0_q\ : std_logic;
SIGNAL \Data_out[1]~enfeeder_combout\ : std_logic;
SIGNAL \Data_out[1]~en_q\ : std_logic;
SIGNAL \Data_in[2]~input_o\ : std_logic;
SIGNAL \tmp_ram~17feeder_combout\ : std_logic;
SIGNAL \tmp_ram~17_q\ : std_logic;
SIGNAL \tmp_ram~21feeder_combout\ : std_logic;
SIGNAL \tmp_ram~21_q\ : std_logic;
SIGNAL \tmp_ram~9_q\ : std_logic;
SIGNAL \tmp_ram~13feeder_combout\ : std_logic;
SIGNAL \tmp_ram~13_q\ : std_logic;
SIGNAL \tmp_ram~27_combout\ : std_logic;
SIGNAL \tmp_ram~28_combout\ : std_logic;
SIGNAL \Data_out[2]~reg0_q\ : std_logic;
SIGNAL \Data_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \Data_out[2]~en_q\ : std_logic;
SIGNAL \Data_in[3]~input_o\ : std_logic;
SIGNAL \tmp_ram~14feeder_combout\ : std_logic;
SIGNAL \tmp_ram~14_q\ : std_logic;
SIGNAL \tmp_ram~22feeder_combout\ : std_logic;
SIGNAL \tmp_ram~22_q\ : std_logic;
SIGNAL \tmp_ram~10_q\ : std_logic;
SIGNAL \tmp_ram~18feeder_combout\ : std_logic;
SIGNAL \tmp_ram~18_q\ : std_logic;
SIGNAL \tmp_ram~29_combout\ : std_logic;
SIGNAL \tmp_ram~30_combout\ : std_logic;
SIGNAL \Data_out[3]~reg0_q\ : std_logic;
SIGNAL \Data_out[3]~enfeeder_combout\ : std_logic;
SIGNAL \Data_out[3]~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Enable <= Enable;
ww_Read <= Read;
ww_Write <= Write;
ww_Read_Addr <= Read_Addr;
ww_Write_Addr <= Write_Addr;
ww_Data_in <= Data_in;
Data_out <= ww_Data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N16
\Data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[0]~reg0_q\,
	oe => \Data_out[0]~en_q\,
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[1]~reg0_q\,
	oe => \Data_out[1]~en_q\,
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[2]~reg0_q\,
	oe => \Data_out[2]~en_q\,
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[3]~reg0_q\,
	oe => \Data_out[3]~en_q\,
	devoe => ww_devoe,
	o => \Data_out[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N15
\Data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(0),
	o => \Data_in[0]~input_o\);

-- Location: LCCOMB_X2_Y1_N16
\tmp_ram~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~15feeder_combout\ = \Data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[0]~input_o\,
	combout => \tmp_ram~15feeder_combout\);

-- Location: IOIBUF_X0_Y4_N22
\Write_Addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_Addr(0),
	o => \Write_Addr[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write,
	o => \Write~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\Write_Addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_Addr(1),
	o => \Write_Addr[1]~input_o\);

-- Location: LCCOMB_X3_Y1_N0
\tmp_ram~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~31_combout\ = (!\Write_Addr[0]~input_o\ & (\Write~input_o\ & (\Enable~input_o\ & \Write_Addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write_Addr[0]~input_o\,
	datab => \Write~input_o\,
	datac => \Enable~input_o\,
	datad => \Write_Addr[1]~input_o\,
	combout => \tmp_ram~31_combout\);

-- Location: FF_X2_Y1_N17
\tmp_ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~15feeder_combout\,
	ena => \tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~15_q\);

-- Location: IOIBUF_X5_Y0_N22
\Read_Addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_Addr(1),
	o => \Read_Addr[1]~input_o\);

-- Location: LCCOMB_X4_Y1_N8
\tmp_ram~19feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~19feeder_combout\ = \Data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[0]~input_o\,
	combout => \tmp_ram~19feeder_combout\);

-- Location: LCCOMB_X3_Y1_N26
\tmp_ram~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~34_combout\ = (\Write_Addr[0]~input_o\ & (\Write~input_o\ & (\Enable~input_o\ & \Write_Addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write_Addr[0]~input_o\,
	datab => \Write~input_o\,
	datac => \Enable~input_o\,
	datad => \Write_Addr[1]~input_o\,
	combout => \tmp_ram~34_combout\);

-- Location: FF_X4_Y1_N9
\tmp_ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~19feeder_combout\,
	ena => \tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~19_q\);

-- Location: IOIBUF_X5_Y0_N15
\Read_Addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_Addr(0),
	o => \Read_Addr[0]~input_o\);

-- Location: LCCOMB_X3_Y1_N12
\tmp_ram~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~33_combout\ = (!\Write_Addr[0]~input_o\ & (\Write~input_o\ & (\Enable~input_o\ & !\Write_Addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write_Addr[0]~input_o\,
	datab => \Write~input_o\,
	datac => \Enable~input_o\,
	datad => \Write_Addr[1]~input_o\,
	combout => \tmp_ram~33_combout\);

-- Location: FF_X3_Y1_N21
\tmp_ram~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Data_in[0]~input_o\,
	sload => VCC,
	ena => \tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~7_q\);

-- Location: LCCOMB_X2_Y1_N2
\tmp_ram~11feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~11feeder_combout\ = \Data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[0]~input_o\,
	combout => \tmp_ram~11feeder_combout\);

-- Location: LCCOMB_X3_Y1_N6
\tmp_ram~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~32_combout\ = (\Write_Addr[0]~input_o\ & (\Write~input_o\ & (\Enable~input_o\ & !\Write_Addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write_Addr[0]~input_o\,
	datab => \Write~input_o\,
	datac => \Enable~input_o\,
	datad => \Write_Addr[1]~input_o\,
	combout => \tmp_ram~32_combout\);

-- Location: FF_X2_Y1_N3
\tmp_ram~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~11feeder_combout\,
	ena => \tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~11_q\);

-- Location: LCCOMB_X3_Y1_N20
\tmp_ram~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~23_combout\ = (\Read_Addr[0]~input_o\ & ((\Read_Addr[1]~input_o\) # ((\tmp_ram~11_q\)))) # (!\Read_Addr[0]~input_o\ & (!\Read_Addr[1]~input_o\ & (\tmp_ram~7_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~7_q\,
	datad => \tmp_ram~11_q\,
	combout => \tmp_ram~23_combout\);

-- Location: LCCOMB_X3_Y1_N28
\tmp_ram~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~24_combout\ = (\Read_Addr[1]~input_o\ & ((\tmp_ram~23_combout\ & ((\tmp_ram~19_q\))) # (!\tmp_ram~23_combout\ & (\tmp_ram~15_q\)))) # (!\Read_Addr[1]~input_o\ & (((\tmp_ram~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp_ram~15_q\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~19_q\,
	datad => \tmp_ram~23_combout\,
	combout => \tmp_ram~24_combout\);

-- Location: FF_X3_Y1_N29
\Data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~24_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[0]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N22
\Read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read,
	o => \Read~input_o\);

-- Location: LCCOMB_X3_Y1_N30
\Data_out[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_out[0]~enfeeder_combout\ = \Read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Read~input_o\,
	combout => \Data_out[0]~enfeeder_combout\);

-- Location: FF_X3_Y1_N31
\Data_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Data_out[0]~enfeeder_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[0]~en_q\);

-- Location: IOIBUF_X1_Y0_N22
\Data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(1),
	o => \Data_in[1]~input_o\);

-- Location: LCCOMB_X2_Y1_N4
\tmp_ram~12feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~12feeder_combout\ = \Data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[1]~input_o\,
	combout => \tmp_ram~12feeder_combout\);

-- Location: FF_X2_Y1_N5
\tmp_ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~12feeder_combout\,
	ena => \tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~12_q\);

-- Location: LCCOMB_X4_Y1_N14
\tmp_ram~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~20feeder_combout\ = \Data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[1]~input_o\,
	combout => \tmp_ram~20feeder_combout\);

-- Location: FF_X4_Y1_N15
\tmp_ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~20feeder_combout\,
	ena => \tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~20_q\);

-- Location: FF_X3_Y1_N11
\tmp_ram~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Data_in[1]~input_o\,
	sload => VCC,
	ena => \tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~8_q\);

-- Location: LCCOMB_X2_Y1_N14
\tmp_ram~16feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~16feeder_combout\ = \Data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[1]~input_o\,
	combout => \tmp_ram~16feeder_combout\);

-- Location: FF_X2_Y1_N15
\tmp_ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~16feeder_combout\,
	ena => \tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~16_q\);

-- Location: LCCOMB_X3_Y1_N10
\tmp_ram~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~25_combout\ = (\Read_Addr[0]~input_o\ & (\Read_Addr[1]~input_o\)) # (!\Read_Addr[0]~input_o\ & ((\Read_Addr[1]~input_o\ & ((\tmp_ram~16_q\))) # (!\Read_Addr[1]~input_o\ & (\tmp_ram~8_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~8_q\,
	datad => \tmp_ram~16_q\,
	combout => \tmp_ram~25_combout\);

-- Location: LCCOMB_X3_Y1_N4
\tmp_ram~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~26_combout\ = (\Read_Addr[0]~input_o\ & ((\tmp_ram~25_combout\ & ((\tmp_ram~20_q\))) # (!\tmp_ram~25_combout\ & (\tmp_ram~12_q\)))) # (!\Read_Addr[0]~input_o\ & (((\tmp_ram~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \tmp_ram~12_q\,
	datac => \tmp_ram~20_q\,
	datad => \tmp_ram~25_combout\,
	combout => \tmp_ram~26_combout\);

-- Location: FF_X3_Y1_N5
\Data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~26_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[1]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N2
\Data_out[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_out[1]~enfeeder_combout\ = \Read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Read~input_o\,
	combout => \Data_out[1]~enfeeder_combout\);

-- Location: FF_X3_Y1_N3
\Data_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Data_out[1]~enfeeder_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[1]~en_q\);

-- Location: IOIBUF_X1_Y0_N8
\Data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(2),
	o => \Data_in[2]~input_o\);

-- Location: LCCOMB_X2_Y1_N0
\tmp_ram~17feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~17feeder_combout\ = \Data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[2]~input_o\,
	combout => \tmp_ram~17feeder_combout\);

-- Location: FF_X2_Y1_N1
\tmp_ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~17feeder_combout\,
	ena => \tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~17_q\);

-- Location: LCCOMB_X4_Y1_N12
\tmp_ram~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~21feeder_combout\ = \Data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[2]~input_o\,
	combout => \tmp_ram~21feeder_combout\);

-- Location: FF_X4_Y1_N13
\tmp_ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~21feeder_combout\,
	ena => \tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~21_q\);

-- Location: FF_X3_Y1_N17
\tmp_ram~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Data_in[2]~input_o\,
	sload => VCC,
	ena => \tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~9_q\);

-- Location: LCCOMB_X2_Y1_N18
\tmp_ram~13feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~13feeder_combout\ = \Data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[2]~input_o\,
	combout => \tmp_ram~13feeder_combout\);

-- Location: FF_X2_Y1_N19
\tmp_ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~13feeder_combout\,
	ena => \tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~13_q\);

-- Location: LCCOMB_X3_Y1_N16
\tmp_ram~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~27_combout\ = (\Read_Addr[0]~input_o\ & ((\Read_Addr[1]~input_o\) # ((\tmp_ram~13_q\)))) # (!\Read_Addr[0]~input_o\ & (!\Read_Addr[1]~input_o\ & (\tmp_ram~9_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~9_q\,
	datad => \tmp_ram~13_q\,
	combout => \tmp_ram~27_combout\);

-- Location: LCCOMB_X3_Y1_N24
\tmp_ram~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~28_combout\ = (\Read_Addr[1]~input_o\ & ((\tmp_ram~27_combout\ & ((\tmp_ram~21_q\))) # (!\tmp_ram~27_combout\ & (\tmp_ram~17_q\)))) # (!\Read_Addr[1]~input_o\ & (((\tmp_ram~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp_ram~17_q\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~21_q\,
	datad => \tmp_ram~27_combout\,
	combout => \tmp_ram~28_combout\);

-- Location: FF_X3_Y1_N25
\Data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~28_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[2]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N22
\Data_out[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_out[2]~enfeeder_combout\ = \Read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Read~input_o\,
	combout => \Data_out[2]~enfeeder_combout\);

-- Location: FF_X3_Y1_N23
\Data_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Data_out[2]~enfeeder_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[2]~en_q\);

-- Location: IOIBUF_X5_Y0_N8
\Data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(3),
	o => \Data_in[3]~input_o\);

-- Location: LCCOMB_X2_Y1_N20
\tmp_ram~14feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~14feeder_combout\ = \Data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[3]~input_o\,
	combout => \tmp_ram~14feeder_combout\);

-- Location: FF_X2_Y1_N21
\tmp_ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~14feeder_combout\,
	ena => \tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~14_q\);

-- Location: LCCOMB_X4_Y1_N30
\tmp_ram~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~22feeder_combout\ = \Data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[3]~input_o\,
	combout => \tmp_ram~22feeder_combout\);

-- Location: FF_X4_Y1_N31
\tmp_ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~22feeder_combout\,
	ena => \tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~22_q\);

-- Location: FF_X3_Y1_N19
\tmp_ram~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Data_in[3]~input_o\,
	sload => VCC,
	ena => \tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~10_q\);

-- Location: LCCOMB_X2_Y1_N22
\tmp_ram~18feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~18feeder_combout\ = \Data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[3]~input_o\,
	combout => \tmp_ram~18feeder_combout\);

-- Location: FF_X2_Y1_N23
\tmp_ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~18feeder_combout\,
	ena => \tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_ram~18_q\);

-- Location: LCCOMB_X3_Y1_N18
\tmp_ram~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~29_combout\ = (\Read_Addr[0]~input_o\ & (\Read_Addr[1]~input_o\)) # (!\Read_Addr[0]~input_o\ & ((\Read_Addr[1]~input_o\ & ((\tmp_ram~18_q\))) # (!\Read_Addr[1]~input_o\ & (\tmp_ram~10_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \Read_Addr[1]~input_o\,
	datac => \tmp_ram~10_q\,
	datad => \tmp_ram~18_q\,
	combout => \tmp_ram~29_combout\);

-- Location: LCCOMB_X3_Y1_N8
\tmp_ram~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp_ram~30_combout\ = (\Read_Addr[0]~input_o\ & ((\tmp_ram~29_combout\ & ((\tmp_ram~22_q\))) # (!\tmp_ram~29_combout\ & (\tmp_ram~14_q\)))) # (!\Read_Addr[0]~input_o\ & (((\tmp_ram~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_Addr[0]~input_o\,
	datab => \tmp_ram~14_q\,
	datac => \tmp_ram~22_q\,
	datad => \tmp_ram~29_combout\,
	combout => \tmp_ram~30_combout\);

-- Location: FF_X3_Y1_N9
\Data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \tmp_ram~30_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[3]~reg0_q\);

-- Location: LCCOMB_X3_Y1_N14
\Data_out[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_out[3]~enfeeder_combout\ = \Read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Read~input_o\,
	combout => \Data_out[3]~enfeeder_combout\);

-- Location: FF_X3_Y1_N15
\Data_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Data_out[3]~enfeeder_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[3]~en_q\);

ww_Data_out(0) <= \Data_out[0]~output_o\;

ww_Data_out(1) <= \Data_out[1]~output_o\;

ww_Data_out(2) <= \Data_out[2]~output_o\;

ww_Data_out(3) <= \Data_out[3]~output_o\;
END structure;


