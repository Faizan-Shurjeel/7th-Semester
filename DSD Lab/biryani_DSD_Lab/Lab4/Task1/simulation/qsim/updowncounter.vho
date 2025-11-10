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

-- DATE "10/03/2025 10:49:39"

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

ENTITY 	even_odd_updown_counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	cen : IN std_logic;
	dir : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END even_odd_updown_counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cen	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF even_odd_updown_counter IS
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
SIGNAL ww_cen : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dir~input_o\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cen~input_o\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.S15~q\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \state.S13~q\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state.S11~q\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \state.S9~q\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.S7~q\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.S14~q\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state.S12~q\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.S10~q\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state.S8~q\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.S6~q\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \WideOr19~combout\ : std_logic;
SIGNAL \WideOr18~1_combout\ : std_logic;
SIGNAL \WideOr18~combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \WideOr17~combout\ : std_logic;
SIGNAL \WideOr16~1_combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr19~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr16~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_cen <= cen;
ww_dir <= dir;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr19~combout\ <= NOT \WideOr19~combout\;
\ALT_INV_WideOr18~combout\ <= NOT \WideOr18~combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_WideOr17~combout\ <= NOT \WideOr17~combout\;
\ALT_INV_WideOr16~combout\ <= NOT \WideOr16~combout\;
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
	i => \ALT_INV_WideOr19~combout\,
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
	i => \ALT_INV_WideOr18~combout\,
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
	i => \ALT_INV_WideOr17~combout\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr16~combout\,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

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

-- Location: IOIBUF_X115_Y14_N1
\dir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir,
	o => \dir~input_o\);

-- Location: LCCOMB_X114_Y40_N0
\state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\dir~input_o\ & (!\state.S0~q\)) # (!\dir~input_o\ & ((\state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S0~q\,
	datad => \state.S4~q\,
	combout => \state~36_combout\);

-- Location: IOIBUF_X115_Y15_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\cen~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cen,
	o => \cen~input_o\);

-- Location: FF_X114_Y40_N1
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X114_Y40_N4
\state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (\dir~input_o\ & (!\state.S15~q\)) # (!\dir~input_o\ & ((!\state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S15~q\,
	datad => \state.S2~q\,
	combout => \state~40_combout\);

-- Location: FF_X114_Y40_N5
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X114_Y40_N30
\state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (\dir~input_o\ & ((\state.S13~q\))) # (!\dir~input_o\ & (!\state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S0~q\,
	datad => \state.S13~q\,
	combout => \state~51_combout\);

-- Location: FF_X114_Y40_N31
\state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S15~q\);

-- Location: LCCOMB_X114_Y40_N2
\state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~47_combout\ = (\dir~input_o\ & ((\state.S11~q\))) # (!\dir~input_o\ & (\state.S15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S15~q\,
	datad => \state.S11~q\,
	combout => \state~47_combout\);

-- Location: FF_X114_Y40_N3
\state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S13~q\);

-- Location: LCCOMB_X114_Y40_N16
\state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~48_combout\ = (\dir~input_o\ & (\state.S9~q\)) # (!\dir~input_o\ & ((\state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S9~q\,
	datad => \state.S13~q\,
	combout => \state~48_combout\);

-- Location: FF_X114_Y40_N17
\state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S11~q\);

-- Location: LCCOMB_X114_Y40_N8
\state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~46_combout\ = (\dir~input_o\ & (\state.S7~q\)) # (!\dir~input_o\ & ((\state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S7~q\,
	datad => \state.S11~q\,
	combout => \state~46_combout\);

-- Location: FF_X114_Y40_N9
\state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S9~q\);

-- Location: LCCOMB_X114_Y40_N20
\state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (\dir~input_o\ & ((\state.S5~q\))) # (!\dir~input_o\ & (\state.S9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S9~q\,
	datad => \state.S5~q\,
	combout => \state~50_combout\);

-- Location: FF_X114_Y40_N21
\state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S7~q\);

-- Location: LCCOMB_X114_Y40_N10
\state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (\dir~input_o\ & (\state.S3~q\)) # (!\dir~input_o\ & ((\state.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S3~q\,
	datac => \dir~input_o\,
	datad => \state.S7~q\,
	combout => \state~45_combout\);

-- Location: FF_X114_Y40_N11
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X114_Y40_N18
\state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~49_combout\ = (\dir~input_o\ & (\state.S1~q\)) # (!\dir~input_o\ & ((\state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S1~q\,
	datac => \dir~input_o\,
	datad => \state.S5~q\,
	combout => \state~49_combout\);

-- Location: FF_X114_Y40_N19
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X114_Y40_N28
\state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~44_combout\ = (\dir~input_o\ & (\state.S14~q\)) # (!\dir~input_o\ & ((\state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S14~q\,
	datad => \state.S3~q\,
	combout => \state~44_combout\);

-- Location: FF_X114_Y40_N29
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X114_Y40_N22
\state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\dir~input_o\ & (\state.S12~q\)) # (!\dir~input_o\ & ((\state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S12~q\,
	datad => \state.S1~q\,
	combout => \state~39_combout\);

-- Location: FF_X114_Y40_N23
\state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S14~q\);

-- Location: LCCOMB_X114_Y40_N26
\state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (\dir~input_o\ & ((\state.S10~q\))) # (!\dir~input_o\ & (\state.S14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S14~q\,
	datad => \state.S10~q\,
	combout => \state~43_combout\);

-- Location: FF_X114_Y40_N27
\state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S12~q\);

-- Location: LCCOMB_X114_Y40_N24
\state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (\dir~input_o\ & ((\state.S8~q\))) # (!\dir~input_o\ & (\state.S12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S12~q\,
	datad => \state.S8~q\,
	combout => \state~38_combout\);

-- Location: FF_X114_Y40_N25
\state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S10~q\);

-- Location: LCCOMB_X114_Y40_N12
\state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (\dir~input_o\ & (\state.S6~q\)) # (!\dir~input_o\ & ((\state.S10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S6~q\,
	datad => \state.S10~q\,
	combout => \state~42_combout\);

-- Location: FF_X114_Y40_N13
\state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S8~q\);

-- Location: LCCOMB_X114_Y40_N14
\state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\dir~input_o\ & (\state.S4~q\)) # (!\dir~input_o\ & ((\state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S4~q\,
	datac => \dir~input_o\,
	datad => \state.S8~q\,
	combout => \state~37_combout\);

-- Location: FF_X114_Y40_N15
\state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S6~q\);

-- Location: LCCOMB_X114_Y40_N6
\state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\dir~input_o\ & ((\state.S2~q\))) # (!\dir~input_o\ & (\state.S6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datac => \state.S6~q\,
	datad => \state.S2~q\,
	combout => \state~41_combout\);

-- Location: FF_X114_Y40_N7
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \cen~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X114_Y41_N30
\WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\state.S4~q\ & (!\state.S8~q\ & (!\state.S12~q\ & \state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S4~q\,
	datab => \state.S8~q\,
	datac => \state.S12~q\,
	datad => \state.S0~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X114_Y41_N20
\WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (\state.S6~q\) # ((\state.S14~q\) # ((\state.S10~q\) # (\state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S6~q\,
	datab => \state.S14~q\,
	datac => \state.S10~q\,
	datad => \state.S2~q\,
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X114_Y41_N24
WideOr19 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr19~combout\ = (\WideOr19~0_combout\) # (!\WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr18~0_combout\,
	datad => \WideOr19~0_combout\,
	combout => \WideOr19~combout\);

-- Location: LCCOMB_X114_Y41_N18
\WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~1_combout\ = (\state.S1~q\) # ((\state.S13~q\) # ((\state.S5~q\) # (\state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \state.S13~q\,
	datac => \state.S5~q\,
	datad => \state.S9~q\,
	combout => \WideOr18~1_combout\);

-- Location: LCCOMB_X114_Y41_N28
WideOr18 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~combout\ = (\WideOr18~1_combout\) # (!\WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr18~0_combout\,
	datad => \WideOr18~1_combout\,
	combout => \WideOr18~combout\);

-- Location: LCCOMB_X114_Y41_N8
\WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (!\state.S2~q\ & (!\state.S3~q\ & (!\state.S1~q\ & \state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datab => \state.S3~q\,
	datac => \state.S1~q\,
	datad => \state.S0~q\,
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X114_Y41_N10
\WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (\state.S11~q\) # ((\state.S9~q\) # ((\state.S10~q\) # (\state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S11~q\,
	datab => \state.S9~q\,
	datac => \state.S10~q\,
	datad => \state.S8~q\,
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X114_Y41_N6
WideOr17 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~combout\ = (\WideOr17~0_combout\) # (!\WideOr16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr16~0_combout\,
	datad => \WideOr17~0_combout\,
	combout => \WideOr17~combout\);

-- Location: LCCOMB_X114_Y41_N12
\WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~1_combout\ = (\state.S6~q\) # ((\state.S5~q\) # ((\state.S7~q\) # (\state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S6~q\,
	datab => \state.S5~q\,
	datac => \state.S7~q\,
	datad => \state.S4~q\,
	combout => \WideOr16~1_combout\);

-- Location: LCCOMB_X114_Y41_N22
WideOr16 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = (\WideOr16~1_combout\) # (!\WideOr16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr16~0_combout\,
	datad => \WideOr16~1_combout\,
	combout => \WideOr16~combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


