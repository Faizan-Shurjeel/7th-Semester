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

-- DATE "12/19/2025 11:15:33"

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
	clk : IN std_logic;
	reset : IN std_logic;
	mem : IN std_logic;
	rw : IN std_logic;
	burst : IN std_logic;
	address : IN std_logic_vector(1 DOWNTO 0);
	din : IN std_logic_vector(3 DOWNTO 0);
	dout : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burst	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mem : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_burst : std_logic;
SIGNAL ww_address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \u_sram|tmp_ram~19feeder_combout\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \burst_addr_reg[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \mem~input_o\ : std_logic;
SIGNAL \next_state.S_WRITE~0_combout\ : std_logic;
SIGNAL \current_state.S_WRITE~q\ : std_logic;
SIGNAL \current_state.S_READ1~feeder_combout\ : std_logic;
SIGNAL \current_state.S_READ1~q\ : std_logic;
SIGNAL \burst~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.S_READ2~q\ : std_logic;
SIGNAL \current_state.S_READ3~feeder_combout\ : std_logic;
SIGNAL \current_state.S_READ3~q\ : std_logic;
SIGNAL \current_state.S_READ4~feeder_combout\ : std_logic;
SIGNAL \current_state.S_READ4~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \current_state.S_IDLE~q\ : std_logic;
SIGNAL \next_state.S_READ1~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \burst_addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~34_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~19_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~15feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~31_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~15_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~11feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~32_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~11_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~33_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~7_q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~23_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~24_combout\ : std_logic;
SIGNAL \u_sram|Data_out[0]~reg0_q\ : std_logic;
SIGNAL \sram_oe~0_combout\ : std_logic;
SIGNAL \u_sram|Data_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \u_sram|Data_out[0]~en_q\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \u_sram|tmp_ram~12_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~20_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~16feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~16_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~8feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~8_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~25_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~26_combout\ : std_logic;
SIGNAL \u_sram|Data_out[1]~reg0_q\ : std_logic;
SIGNAL \u_sram|Data_out[1]~enfeeder_combout\ : std_logic;
SIGNAL \u_sram|Data_out[1]~en_q\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \u_sram|tmp_ram~21feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~21_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~17feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~17_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~13feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~13_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~9_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~27_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~28_combout\ : std_logic;
SIGNAL \u_sram|Data_out[2]~reg0_q\ : std_logic;
SIGNAL \u_sram|Data_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \u_sram|Data_out[2]~en_q\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \u_sram|tmp_ram~22feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~22_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~18feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~18_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~10feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~10_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~29_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~14feeder_combout\ : std_logic;
SIGNAL \u_sram|tmp_ram~14_q\ : std_logic;
SIGNAL \u_sram|tmp_ram~30_combout\ : std_logic;
SIGNAL \u_sram|Data_out[3]~reg0_q\ : std_logic;
SIGNAL \u_sram|Data_out[3]~en_q\ : std_logic;
SIGNAL burst_addr_reg : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_mem <= mem;
ww_rw <= rw;
ww_burst <= burst;
ww_address <= address;
ww_din <= din;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N16
\dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sram|Data_out[0]~reg0_q\,
	oe => \u_sram|Data_out[0]~en_q\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sram|Data_out[1]~reg0_q\,
	oe => \u_sram|Data_out[1]~en_q\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sram|Data_out[2]~reg0_q\,
	oe => \u_sram|Data_out[2]~en_q\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sram|Data_out[3]~reg0_q\,
	oe => \u_sram|Data_out[3]~en_q\,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

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

-- Location: IOIBUF_X16_Y73_N8
\din[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: LCCOMB_X19_Y72_N10
\u_sram|tmp_ram~19feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~19feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \u_sram|tmp_ram~19feeder_combout\);

-- Location: IOIBUF_X20_Y73_N1
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X17_Y72_N8
\burst_addr_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \burst_addr_reg[0]~feeder_combout\ = \address[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \address[0]~input_o\,
	combout => \burst_addr_reg[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y73_N15
\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\mem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem,
	o => \mem~input_o\);

-- Location: LCCOMB_X18_Y72_N26
\next_state.S_WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.S_WRITE~0_combout\ = (!\current_state.S_IDLE~q\ & (!\rw~input_o\ & \mem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_IDLE~q\,
	datac => \rw~input_o\,
	datad => \mem~input_o\,
	combout => \next_state.S_WRITE~0_combout\);

-- Location: FF_X18_Y72_N27
\current_state.S_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.S_WRITE~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_WRITE~q\);

-- Location: LCCOMB_X18_Y72_N16
\current_state.S_READ1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.S_READ1~feeder_combout\ = \next_state.S_READ1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.S_READ1~0_combout\,
	combout => \current_state.S_READ1~feeder_combout\);

-- Location: FF_X18_Y72_N17
\current_state.S_READ1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.S_READ1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_READ1~q\);

-- Location: IOIBUF_X20_Y73_N15
\burst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burst,
	o => \burst~input_o\);

-- Location: LCCOMB_X17_Y72_N18
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.S_READ1~q\ & \burst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_READ1~q\,
	datad => \burst~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X17_Y72_N19
\current_state.S_READ2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_READ2~q\);

-- Location: LCCOMB_X18_Y72_N8
\current_state.S_READ3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.S_READ3~feeder_combout\ = \current_state.S_READ2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S_READ2~q\,
	combout => \current_state.S_READ3~feeder_combout\);

-- Location: FF_X18_Y72_N9
\current_state.S_READ3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.S_READ3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_READ3~q\);

-- Location: LCCOMB_X18_Y72_N24
\current_state.S_READ4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.S_READ4~feeder_combout\ = \current_state.S_READ3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_READ3~q\,
	combout => \current_state.S_READ4~feeder_combout\);

-- Location: FF_X18_Y72_N25
\current_state.S_READ4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.S_READ4~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_READ4~q\);

-- Location: LCCOMB_X18_Y72_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.S_IDLE~q\ & (((!\burst~input_o\ & \current_state.S_READ1~q\)))) # (!\current_state.S_IDLE~q\ & (((!\burst~input_o\ & \current_state.S_READ1~q\)) # (!\mem~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_IDLE~q\,
	datab => \mem~input_o\,
	datac => \burst~input_o\,
	datad => \current_state.S_READ1~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X18_Y72_N12
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\current_state.S_WRITE~q\ & (!\current_state.S_READ4~q\ & !\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_WRITE~q\,
	datab => \current_state.S_READ4~q\,
	datac => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X18_Y72_N13
\current_state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_IDLE~q\);

-- Location: LCCOMB_X18_Y72_N4
\next_state.S_READ1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.S_READ1~0_combout\ = (\rw~input_o\ & (\mem~input_o\ & !\current_state.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~input_o\,
	datab => \mem~input_o\,
	datad => \current_state.S_IDLE~q\,
	combout => \next_state.S_READ1~0_combout\);

-- Location: FF_X17_Y72_N9
\burst_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \burst_addr_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \next_state.S_READ1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => burst_addr_reg(0));

-- Location: LCCOMB_X18_Y72_N14
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\current_state.S_WRITE~q\) # ((\current_state.S_READ1~q\) # (!\current_state.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_WRITE~q\,
	datab => \current_state.S_READ1~q\,
	datad => \current_state.S_IDLE~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X18_Y72_N0
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.S_READ3~q\ & (burst_addr_reg(0))) # (!\current_state.S_READ3~q\ & ((\WideOr4~combout\ & ((\address[0]~input_o\))) # (!\WideOr4~combout\ & (!burst_addr_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst_addr_reg(0),
	datab => \current_state.S_READ3~q\,
	datac => \WideOr4~combout\,
	datad => \address[0]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: IOIBUF_X20_Y73_N8
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X17_Y72_N22
\burst_addr_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \burst_addr_reg[1]~feeder_combout\ = \address[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \address[1]~input_o\,
	combout => \burst_addr_reg[1]~feeder_combout\);

-- Location: FF_X17_Y72_N23
\burst_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \burst_addr_reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \next_state.S_READ1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => burst_addr_reg(1));

-- Location: LCCOMB_X17_Y72_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = burst_addr_reg(1) $ (burst_addr_reg(0) $ (\current_state.S_READ2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => burst_addr_reg(1),
	datab => burst_addr_reg(0),
	datad => \current_state.S_READ2~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X18_Y72_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\current_state.S_READ3~q\ & ((\WideOr4~combout\ & (\address[1]~input_o\)) # (!\WideOr4~combout\ & ((!\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \current_state.S_READ3~q\,
	datac => \WideOr4~combout\,
	datad => \Add0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X18_Y72_N20
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\current_state.S_READ3~q\ & !burst_addr_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_READ3~q\,
	datad => burst_addr_reg(1),
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X19_Y72_N2
\u_sram|tmp_ram~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~34_combout\ = (\Selector5~0_combout\ & (\current_state.S_WRITE~q\ & ((\Selector4~0_combout\) # (\Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \current_state.S_WRITE~q\,
	datac => \Selector4~0_combout\,
	datad => \Selector4~2_combout\,
	combout => \u_sram|tmp_ram~34_combout\);

-- Location: FF_X19_Y72_N11
\u_sram|tmp_ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~19feeder_combout\,
	ena => \u_sram|tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~19_q\);

-- Location: LCCOMB_X16_Y72_N4
\u_sram|tmp_ram~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~15feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \u_sram|tmp_ram~15feeder_combout\);

-- Location: LCCOMB_X17_Y72_N12
\u_sram|tmp_ram~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~31_combout\ = (\current_state.S_WRITE~q\ & (!\Selector5~0_combout\ & ((\Selector4~2_combout\) # (\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \current_state.S_WRITE~q\,
	datac => \Selector5~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \u_sram|tmp_ram~31_combout\);

-- Location: FF_X16_Y72_N5
\u_sram|tmp_ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~15feeder_combout\,
	ena => \u_sram|tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~15_q\);

-- Location: LCCOMB_X19_Y72_N4
\u_sram|tmp_ram~11feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~11feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \u_sram|tmp_ram~11feeder_combout\);

-- Location: LCCOMB_X19_Y72_N28
\u_sram|tmp_ram~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~32_combout\ = (\current_state.S_WRITE~q\ & (!\Selector4~2_combout\ & (!\Selector4~0_combout\ & \Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_WRITE~q\,
	datab => \Selector4~2_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector5~0_combout\,
	combout => \u_sram|tmp_ram~32_combout\);

-- Location: FF_X19_Y72_N5
\u_sram|tmp_ram~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~11feeder_combout\,
	ena => \u_sram|tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~11_q\);

-- Location: LCCOMB_X18_Y72_N30
\u_sram|tmp_ram~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~33_combout\ = (!\Selector4~2_combout\ & (!\Selector5~0_combout\ & (\current_state.S_WRITE~q\ & !\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector5~0_combout\,
	datac => \current_state.S_WRITE~q\,
	datad => \Selector4~0_combout\,
	combout => \u_sram|tmp_ram~33_combout\);

-- Location: FF_X18_Y72_N15
\u_sram|tmp_ram~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[0]~input_o\,
	sload => VCC,
	ena => \u_sram|tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~7_q\);

-- Location: LCCOMB_X17_Y72_N0
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((!burst_addr_reg(1) & \current_state.S_READ3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => burst_addr_reg(1),
	datac => \current_state.S_READ3~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X17_Y72_N14
\u_sram|tmp_ram~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~23_combout\ = (\Selector5~0_combout\ & ((\u_sram|tmp_ram~11_q\) # ((\Selector4~1_combout\)))) # (!\Selector5~0_combout\ & (((\u_sram|tmp_ram~7_q\ & !\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~11_q\,
	datab => \u_sram|tmp_ram~7_q\,
	datac => \Selector5~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \u_sram|tmp_ram~23_combout\);

-- Location: LCCOMB_X17_Y72_N28
\u_sram|tmp_ram~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~24_combout\ = (\u_sram|tmp_ram~23_combout\ & ((\u_sram|tmp_ram~19_q\) # ((!\Selector4~1_combout\)))) # (!\u_sram|tmp_ram~23_combout\ & (((\u_sram|tmp_ram~15_q\ & \Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~19_q\,
	datab => \u_sram|tmp_ram~15_q\,
	datac => \u_sram|tmp_ram~23_combout\,
	datad => \Selector4~1_combout\,
	combout => \u_sram|tmp_ram~24_combout\);

-- Location: FF_X17_Y72_N29
\u_sram|Data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[0]~reg0_q\);

-- Location: LCCOMB_X17_Y72_N4
\sram_oe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_oe~0_combout\ = (\current_state.S_IDLE~q\ & !\current_state.S_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_IDLE~q\,
	datad => \current_state.S_WRITE~q\,
	combout => \sram_oe~0_combout\);

-- Location: LCCOMB_X13_Y72_N0
\u_sram|Data_out[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|Data_out[0]~enfeeder_combout\ = \sram_oe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_oe~0_combout\,
	combout => \u_sram|Data_out[0]~enfeeder_combout\);

-- Location: FF_X13_Y72_N1
\u_sram|Data_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|Data_out[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[0]~en_q\);

-- Location: IOIBUF_X20_Y73_N22
\din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: FF_X19_Y72_N9
\u_sram|tmp_ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[1]~input_o\,
	sload => VCC,
	ena => \u_sram|tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~12_q\);

-- Location: FF_X19_Y72_N23
\u_sram|tmp_ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[1]~input_o\,
	sload => VCC,
	ena => \u_sram|tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~20_q\);

-- Location: LCCOMB_X16_Y72_N6
\u_sram|tmp_ram~16feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~16feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[1]~input_o\,
	combout => \u_sram|tmp_ram~16feeder_combout\);

-- Location: FF_X16_Y72_N7
\u_sram|tmp_ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~16feeder_combout\,
	ena => \u_sram|tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~16_q\);

-- Location: LCCOMB_X18_Y72_N22
\u_sram|tmp_ram~8feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~8feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[1]~input_o\,
	combout => \u_sram|tmp_ram~8feeder_combout\);

-- Location: FF_X18_Y72_N23
\u_sram|tmp_ram~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~8feeder_combout\,
	ena => \u_sram|tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~8_q\);

-- Location: LCCOMB_X17_Y72_N6
\u_sram|tmp_ram~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~25_combout\ = (\Selector5~0_combout\ & (((\Selector4~1_combout\)))) # (!\Selector5~0_combout\ & ((\Selector4~1_combout\ & (\u_sram|tmp_ram~16_q\)) # (!\Selector4~1_combout\ & ((\u_sram|tmp_ram~8_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~16_q\,
	datab => \u_sram|tmp_ram~8_q\,
	datac => \Selector5~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \u_sram|tmp_ram~25_combout\);

-- Location: LCCOMB_X17_Y72_N30
\u_sram|tmp_ram~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~26_combout\ = (\Selector5~0_combout\ & ((\u_sram|tmp_ram~25_combout\ & ((\u_sram|tmp_ram~20_q\))) # (!\u_sram|tmp_ram~25_combout\ & (\u_sram|tmp_ram~12_q\)))) # (!\Selector5~0_combout\ & (((\u_sram|tmp_ram~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~12_q\,
	datab => \Selector5~0_combout\,
	datac => \u_sram|tmp_ram~20_q\,
	datad => \u_sram|tmp_ram~25_combout\,
	combout => \u_sram|tmp_ram~26_combout\);

-- Location: FF_X17_Y72_N31
\u_sram|Data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[1]~reg0_q\);

-- Location: LCCOMB_X13_Y72_N2
\u_sram|Data_out[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|Data_out[1]~enfeeder_combout\ = \sram_oe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_oe~0_combout\,
	combout => \u_sram|Data_out[1]~enfeeder_combout\);

-- Location: FF_X13_Y72_N3
\u_sram|Data_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|Data_out[1]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[1]~en_q\);

-- Location: IOIBUF_X16_Y73_N1
\din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X19_Y72_N14
\u_sram|tmp_ram~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~21feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \u_sram|tmp_ram~21feeder_combout\);

-- Location: FF_X19_Y72_N15
\u_sram|tmp_ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~21feeder_combout\,
	ena => \u_sram|tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~21_q\);

-- Location: LCCOMB_X16_Y72_N16
\u_sram|tmp_ram~17feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~17feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \u_sram|tmp_ram~17feeder_combout\);

-- Location: FF_X16_Y72_N17
\u_sram|tmp_ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~17feeder_combout\,
	ena => \u_sram|tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~17_q\);

-- Location: LCCOMB_X19_Y72_N24
\u_sram|tmp_ram~13feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~13feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \u_sram|tmp_ram~13feeder_combout\);

-- Location: FF_X19_Y72_N25
\u_sram|tmp_ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~13feeder_combout\,
	ena => \u_sram|tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~13_q\);

-- Location: FF_X18_Y72_N5
\u_sram|tmp_ram~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[2]~input_o\,
	sload => VCC,
	ena => \u_sram|tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~9_q\);

-- Location: LCCOMB_X17_Y72_N24
\u_sram|tmp_ram~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~27_combout\ = (\Selector5~0_combout\ & ((\u_sram|tmp_ram~13_q\) # ((\Selector4~1_combout\)))) # (!\Selector5~0_combout\ & (((\u_sram|tmp_ram~9_q\ & !\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~13_q\,
	datab => \u_sram|tmp_ram~9_q\,
	datac => \Selector5~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \u_sram|tmp_ram~27_combout\);

-- Location: LCCOMB_X17_Y72_N16
\u_sram|tmp_ram~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~28_combout\ = (\Selector4~1_combout\ & ((\u_sram|tmp_ram~27_combout\ & (\u_sram|tmp_ram~21_q\)) # (!\u_sram|tmp_ram~27_combout\ & ((\u_sram|tmp_ram~17_q\))))) # (!\Selector4~1_combout\ & (((\u_sram|tmp_ram~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~21_q\,
	datab => \Selector4~1_combout\,
	datac => \u_sram|tmp_ram~17_q\,
	datad => \u_sram|tmp_ram~27_combout\,
	combout => \u_sram|tmp_ram~28_combout\);

-- Location: FF_X17_Y72_N17
\u_sram|Data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[2]~reg0_q\);

-- Location: LCCOMB_X13_Y72_N8
\u_sram|Data_out[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|Data_out[2]~enfeeder_combout\ = \sram_oe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sram_oe~0_combout\,
	combout => \u_sram|Data_out[2]~enfeeder_combout\);

-- Location: FF_X13_Y72_N9
\u_sram|Data_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|Data_out[2]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[2]~en_q\);

-- Location: IOIBUF_X16_Y73_N15
\din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X19_Y72_N26
\u_sram|tmp_ram~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~22feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \u_sram|tmp_ram~22feeder_combout\);

-- Location: FF_X19_Y72_N27
\u_sram|tmp_ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~22feeder_combout\,
	ena => \u_sram|tmp_ram~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~22_q\);

-- Location: LCCOMB_X16_Y72_N14
\u_sram|tmp_ram~18feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~18feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \u_sram|tmp_ram~18feeder_combout\);

-- Location: FF_X16_Y72_N15
\u_sram|tmp_ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~18feeder_combout\,
	ena => \u_sram|tmp_ram~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~18_q\);

-- Location: LCCOMB_X18_Y72_N10
\u_sram|tmp_ram~10feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~10feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \u_sram|tmp_ram~10feeder_combout\);

-- Location: FF_X18_Y72_N11
\u_sram|tmp_ram~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~10feeder_combout\,
	ena => \u_sram|tmp_ram~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~10_q\);

-- Location: LCCOMB_X17_Y72_N26
\u_sram|tmp_ram~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~29_combout\ = (\Selector5~0_combout\ & (((\Selector4~1_combout\)))) # (!\Selector5~0_combout\ & ((\Selector4~1_combout\ & (\u_sram|tmp_ram~18_q\)) # (!\Selector4~1_combout\ & ((\u_sram|tmp_ram~10_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~18_q\,
	datab => \Selector5~0_combout\,
	datac => \u_sram|tmp_ram~10_q\,
	datad => \Selector4~1_combout\,
	combout => \u_sram|tmp_ram~29_combout\);

-- Location: LCCOMB_X19_Y72_N12
\u_sram|tmp_ram~14feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~14feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \u_sram|tmp_ram~14feeder_combout\);

-- Location: FF_X19_Y72_N13
\u_sram|tmp_ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~14feeder_combout\,
	ena => \u_sram|tmp_ram~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|tmp_ram~14_q\);

-- Location: LCCOMB_X17_Y72_N10
\u_sram|tmp_ram~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sram|tmp_ram~30_combout\ = (\Selector5~0_combout\ & ((\u_sram|tmp_ram~29_combout\ & (\u_sram|tmp_ram~22_q\)) # (!\u_sram|tmp_ram~29_combout\ & ((\u_sram|tmp_ram~14_q\))))) # (!\Selector5~0_combout\ & (((\u_sram|tmp_ram~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sram|tmp_ram~22_q\,
	datab => \Selector5~0_combout\,
	datac => \u_sram|tmp_ram~29_combout\,
	datad => \u_sram|tmp_ram~14_q\,
	combout => \u_sram|tmp_ram~30_combout\);

-- Location: FF_X17_Y72_N11
\u_sram|Data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_sram|tmp_ram~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[3]~reg0_q\);

-- Location: FF_X17_Y72_N21
\u_sram|Data_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sram_oe~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sram|Data_out[3]~en_q\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;
END structure;


