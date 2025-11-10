-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/10/2025 10:52:10"

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

ENTITY 	complexcounter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	m : IN std_logic;
	cen : IN std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0)
	);
END complexcounter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cen	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF complexcounter IS
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
SIGNAL ww_m : std_logic;
SIGNAL ww_cen : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \m~input_o\ : std_logic;
SIGNAL \state.S7~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cen~input_o\ : std_logic;
SIGNAL \state.S7~q\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \state.S1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.S6~q\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_m <= m;
ww_cen <= cen;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

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
\m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m,
	o => \m~input_o\);

-- Location: LCCOMB_X114_Y40_N24
\state.S7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S7~feeder_combout\ = \state.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.S6~q\,
	combout => \state.S7~feeder_combout\);

-- Location: IOIBUF_X115_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\cen~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cen,
	o => \cen~input_o\);

-- Location: FF_X114_Y40_N25
\state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S7~q\);

-- Location: LCCOMB_X114_Y40_N16
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\m~input_o\ & (\state.S7~q\)) # (!\m~input_o\ & ((\state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datab => \state.S7~q\,
	datad => \state.S4~q\,
	combout => \state~24_combout\);

-- Location: FF_X114_Y40_N17
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X114_Y40_N6
\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\m~input_o\ & (\state.S5~q\)) # (!\m~input_o\ & ((\state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datab => \state.S5~q\,
	datad => \state.S3~q\,
	combout => \state~21_combout\);

-- Location: FF_X114_Y40_N7
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X114_Y40_N18
\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\m~input_o\ & (!\state.S4~q\)) # (!\m~input_o\ & ((!\state.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \state.S4~q\,
	datad => \state.S7~q\,
	combout => \state~23_combout\);

-- Location: FF_X114_Y40_N19
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X114_Y40_N10
\state.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S1~0_combout\ = !\state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.S0~q\,
	combout => \state.S1~0_combout\);

-- Location: FF_X114_Y40_N11
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X114_Y40_N12
\state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\m~input_o\ & (\state.S1~q\)) # (!\m~input_o\ & ((\state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \state.S1~q\,
	datad => \state.S2~q\,
	combout => \state~25_combout\);

-- Location: FF_X114_Y40_N13
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X114_Y40_N28
\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\m~input_o\ & (\state.S3~q\)) # (!\m~input_o\ & ((\state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datac => \m~input_o\,
	datad => \state.S1~q\,
	combout => \state~20_combout\);

-- Location: FF_X114_Y40_N29
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X114_Y40_N20
\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\m~input_o\ & (\state.S2~q\)) # (!\m~input_o\ & ((\state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datab => \state.S2~q\,
	datad => \state.S5~q\,
	combout => \state~22_combout\);

-- Location: FF_X114_Y40_N21
\state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S6~q\);

-- Location: LCCOMB_X114_Y40_N0
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\state.S6~q\) # ((\state.S2~q\) # ((\state.S4~q\) # (!\state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S6~q\,
	datab => \state.S2~q\,
	datac => \state.S4~q\,
	datad => \state.S0~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X114_Y40_N26
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = ((\state.S4~q\) # ((\state.S5~q\) # (\state.S1~q\))) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \state.S4~q\,
	datac => \state.S5~q\,
	datad => \state.S1~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y40_N30
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\state.S1~q\) # ((\state.S2~q\) # ((\state.S3~q\) # (!\state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \state.S2~q\,
	datac => \state.S3~q\,
	datad => \state.S0~q\,
	combout => \WideOr5~0_combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;
END structure;


