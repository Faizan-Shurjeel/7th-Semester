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

-- DATE "12/19/2025 16:38:00"

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

ENTITY 	binary_divider IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dividend : IN std_logic_vector(3 DOWNTO 0);
	divisor : IN std_logic_vector(3 DOWNTO 0);
	start : IN std_logic;
	quotient : BUFFER std_logic_vector(3 DOWNTO 0);
	remi : BUFFER std_logic_vector(3 DOWNTO 0);
	done : BUFFER std_logic;
	debug_state : BUFFER std_logic_vector(2 DOWNTO 0);
	debug_counter : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END binary_divider;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remi[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remi[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remi[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remi[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_counter[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_counter[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_counter[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF binary_divider IS
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
SIGNAL ww_dividend : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_divisor : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_quotient : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_remi : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_debug_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_debug_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \remi[0]~output_o\ : std_logic;
SIGNAL \remi[1]~output_o\ : std_logic;
SIGNAL \remi[2]~output_o\ : std_logic;
SIGNAL \remi[3]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \debug_state[0]~output_o\ : std_logic;
SIGNAL \debug_state[1]~output_o\ : std_logic;
SIGNAL \debug_state[2]~output_o\ : std_logic;
SIGNAL \debug_counter[0]~output_o\ : std_logic;
SIGNAL \debug_counter[1]~output_o\ : std_logic;
SIGNAL \debug_counter[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.SHIFT~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.SHIFT~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.DONE_STATE~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \next_state.LOAD~0_combout\ : std_logic;
SIGNAL \current_state.LOAD~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.CHECK~q\ : std_logic;
SIGNAL \current_state.SUBTRACT~q\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \ender[0]~0_combout\ : std_logic;
SIGNAL \quotient[0]~reg0_q\ : std_logic;
SIGNAL \quotient[1]~reg0_q\ : std_logic;
SIGNAL \quotient[2]~reg0_q\ : std_logic;
SIGNAL \quotient[3]~reg0_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \remi[0]~reg0feeder_combout\ : std_logic;
SIGNAL \remi[0]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \remi[1]~reg0feeder_combout\ : std_logic;
SIGNAL \remi[1]~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \remi[2]~reg0feeder_combout\ : std_logic;
SIGNAL \remi[2]~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \remi[3]~reg0feeder_combout\ : std_logic;
SIGNAL \remi[3]~reg0_q\ : std_logic;
SIGNAL \done~reg0feeder_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL ender : std_logic_vector(7 DOWNTO 0);
SIGNAL quotient_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL sor : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
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
ww_dividend <= dividend;
ww_divisor <= divisor;
ww_start <= start;
quotient <= ww_quotient;
remi <= ww_remi;
done <= ww_done;
debug_state <= ww_debug_state;
debug_counter <= ww_debug_counter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y73_N9
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[0]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[1]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[2]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient[3]~reg0_q\,
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\remi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remi[0]~reg0_q\,
	devoe => ww_devoe,
	o => \remi[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\remi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remi[1]~reg0_q\,
	devoe => ww_devoe,
	o => \remi[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\remi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remi[2]~reg0_q\,
	devoe => ww_devoe,
	o => \remi[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\remi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remi[3]~reg0_q\,
	devoe => ww_devoe,
	o => \remi[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\debug_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => \debug_state[0]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\debug_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \debug_state[1]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\debug_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => \debug_state[2]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\debug_counter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(0),
	devoe => ww_devoe,
	o => \debug_counter[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\debug_counter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(1),
	devoe => ww_devoe,
	o => \debug_counter[1]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\debug_counter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(2),
	devoe => ww_devoe,
	o => \debug_counter[2]~output_o\);

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

-- Location: LCCOMB_X4_Y69_N16
\current_state.SHIFT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.SHIFT~feeder_combout\ = \current_state.SUBTRACT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.SUBTRACT~q\,
	combout => \current_state.SHIFT~feeder_combout\);

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

-- Location: FF_X4_Y69_N17
\current_state.SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.SHIFT~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SHIFT~q\);

-- Location: LCCOMB_X4_Y69_N6
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\current_state.SUBTRACT~q\ & !\current_state.CHECK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => \current_state.CHECK~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y69_N10
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (counter(0) & ((\current_state.DONE_STATE~q\) # ((!\WideOr1~0_combout\)))) # (!counter(0) & (((\current_state.SHIFT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DONE_STATE~q\,
	datab => \current_state.SHIFT~q\,
	datac => counter(0),
	datad => \WideOr1~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X4_Y69_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X4_Y69_N28
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\current_state.SHIFT~q\ & (counter(0) $ (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.SHIFT~q\,
	datac => counter(0),
	datad => counter(1),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X4_Y69_N20
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((counter(1) & ((\current_state.DONE_STATE~q\) # (!\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DONE_STATE~q\,
	datab => \WideOr1~0_combout\,
	datac => counter(1),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X4_Y69_N21
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X4_Y69_N30
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!counter(2) & (\current_state.SHIFT~q\ & (counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \current_state.SHIFT~q\,
	datac => counter(0),
	datad => counter(1),
	combout => \Selector4~0_combout\);

-- Location: FF_X4_Y69_N31
\current_state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DONE_STATE~q\);

-- Location: LCCOMB_X4_Y69_N14
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\current_state.SHIFT~q\ & (counter(2) $ (((counter(0) & counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \current_state.SHIFT~q\,
	datac => counter(0),
	datad => counter(1),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X4_Y69_N22
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((counter(2) & ((\current_state.DONE_STATE~q\) # (!\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DONE_STATE~q\,
	datab => \Selector9~0_combout\,
	datac => counter(2),
	datad => \WideOr1~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X4_Y69_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X4_Y69_N26
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.SHIFT~q\ & ((counter(2)) # ((!counter(1)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \current_state.SHIFT~q\,
	datac => counter(0),
	datad => counter(1),
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X9_Y73_N8
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X4_Y69_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.DONE_STATE~q\ & ((\current_state.IDLE~q\) # (\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DONE_STATE~q\,
	datac => \current_state.IDLE~q\,
	datad => \start~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X4_Y69_N13
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X4_Y69_N8
\next_state.LOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.LOAD~0_combout\ = (!\current_state.IDLE~q\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datad => \start~input_o\,
	combout => \next_state.LOAD~0_combout\);

-- Location: FF_X4_Y69_N9
\current_state.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.LOAD~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.LOAD~q\);

-- Location: LCCOMB_X4_Y69_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # (\current_state.LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datad => \current_state.LOAD~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X4_Y69_N19
\current_state.CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.CHECK~q\);

-- Location: FF_X4_Y69_N7
\current_state.SUBTRACT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.CHECK~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SUBTRACT~q\);

-- Location: IOIBUF_X3_Y73_N8
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: LCCOMB_X1_Y69_N6
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\divisor[3]~input_o\ & \current_state.LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor[3]~input_o\,
	datad => \current_state.LOAD~q\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X2_Y69_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\current_state.SHIFT~q\) # (\current_state.LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.SHIFT~q\,
	datad => \current_state.LOAD~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X2_Y69_N3
\sor[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector20~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(7));

-- Location: IOIBUF_X1_Y73_N22
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: LCCOMB_X2_Y69_N4
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\current_state.SHIFT~q\ & (sor(7))) # (!\current_state.SHIFT~q\ & ((\divisor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sor(7),
	datac => \divisor[2]~input_o\,
	datad => \current_state.SHIFT~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X2_Y69_N5
\sor[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(6));

-- Location: IOIBUF_X0_Y68_N1
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X2_Y69_N10
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\current_state.SHIFT~q\ & (sor(6))) # (!\current_state.SHIFT~q\ & ((\divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sor(6),
	datac => \divisor[1]~input_o\,
	datad => \current_state.SHIFT~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X2_Y69_N11
\sor[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(5));

-- Location: LCCOMB_X1_Y69_N4
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\current_state.SHIFT~q\ & ((sor(5)))) # (!\current_state.SHIFT~q\ & (\divisor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => sor(5),
	datac => \current_state.SHIFT~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X2_Y69_N9
\sor[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(4));

-- Location: LCCOMB_X2_Y69_N30
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (sor(4) & \current_state.SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sor(4),
	datad => \current_state.SHIFT~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X2_Y69_N31
\sor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(3));

-- Location: LCCOMB_X2_Y69_N28
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (sor(3) & \current_state.SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sor(3),
	datad => \current_state.SHIFT~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X2_Y69_N29
\sor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(2));

-- Location: LCCOMB_X2_Y69_N6
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (sor(2) & \current_state.SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sor(2),
	datad => \current_state.SHIFT~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X2_Y69_N7
\sor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(1));

-- Location: LCCOMB_X2_Y69_N0
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (sor(1) & \current_state.SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sor(1),
	datad => \current_state.SHIFT~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X2_Y69_N1
\sor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sor(0));

-- Location: LCCOMB_X2_Y69_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (sor(0) & (ender(0) $ (VCC))) # (!sor(0) & ((ender(0)) # (GND)))
-- \Add0~1\ = CARRY((ender(0)) # (!sor(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sor(0),
	datab => ender(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X3_Y69_N28
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\current_state.SUBTRACT~q\ & ((\Add0~0_combout\))) # (!\current_state.SUBTRACT~q\ & (\dividend[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datac => \dividend[0]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: IOIBUF_X3_Y73_N22
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: LCCOMB_X2_Y69_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sor(1) & ((ender(1) & (!\Add0~1\)) # (!ender(1) & ((\Add0~1\) # (GND))))) # (!sor(1) & ((ender(1) & (\Add0~1\ & VCC)) # (!ender(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((sor(1) & ((!\Add0~1\) # (!ender(1)))) # (!sor(1) & (!ender(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(1),
	datab => ender(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y69_N30
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\current_state.SUBTRACT~q\ & ((\Add0~2_combout\))) # (!\current_state.SUBTRACT~q\ & (\dividend[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datac => \dividend[1]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X3_Y69_N31
\ender[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ender[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(1));

-- Location: LCCOMB_X2_Y69_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((ender(2) $ (sor(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((ender(2) & ((!\Add0~3\) # (!sor(2)))) # (!ender(2) & (!sor(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(2),
	datab => sor(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y69_N2
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\current_state.SUBTRACT~q\ & ((\Add0~4_combout\))) # (!\current_state.SUBTRACT~q\ & (\dividend[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datab => \dividend[2]~input_o\,
	datad => \Add0~4_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X3_Y69_N25
\ender[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ender[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(2));

-- Location: LCCOMB_X2_Y69_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sor(3) & ((ender(3) & (!\Add0~5\)) # (!ender(3) & ((\Add0~5\) # (GND))))) # (!sor(3) & ((ender(3) & (\Add0~5\ & VCC)) # (!ender(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((sor(3) & ((!\Add0~5\) # (!ender(3)))) # (!sor(3) & (!ender(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(3),
	datab => ender(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X3_Y69_N26
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\current_state.SUBTRACT~q\ & ((\Add0~6_combout\))) # (!\current_state.SUBTRACT~q\ & (\dividend[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datac => \dividend[3]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X3_Y69_N27
\ender[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ender[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(3));

-- Location: LCCOMB_X2_Y69_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((sor(4) $ (ender(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((sor(4) & (ender(4) & !\Add0~7\)) # (!sor(4) & ((ender(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(4),
	datab => ender(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X3_Y69_N4
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.SUBTRACT~q\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datad => \Add0~8_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X3_Y69_N6
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\current_state.SUBTRACT~q\ & ((!\LessThan0~14_combout\))) # (!\current_state.SUBTRACT~q\ & (\current_state.LOAD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.LOAD~q\,
	datac => \LessThan0~14_combout\,
	datad => \current_state.SUBTRACT~q\,
	combout => \Selector12~2_combout\);

-- Location: FF_X3_Y69_N5
\ender[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(4));

-- Location: LCCOMB_X2_Y69_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ender(5) & ((sor(5) & (!\Add0~9\)) # (!sor(5) & (\Add0~9\ & VCC)))) # (!ender(5) & ((sor(5) & ((\Add0~9\) # (GND))) # (!sor(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((ender(5) & (sor(5) & !\Add0~9\)) # (!ender(5) & ((sor(5)) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(5),
	datab => sor(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y69_N2
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\current_state.SUBTRACT~q\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datad => \Add0~10_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X3_Y69_N3
\ender[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(5));

-- Location: LCCOMB_X2_Y69_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((ender(6) $ (sor(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((ender(6) & ((!\Add0~11\) # (!sor(6)))) # (!ender(6) & (!sor(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(6),
	datab => sor(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y69_N0
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\current_state.SUBTRACT~q\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datad => \Add0~12_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X3_Y69_N1
\ender[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(6));

-- Location: LCCOMB_X2_Y69_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = sor(7) $ (\Add0~13\ $ (!ender(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sor(7),
	datad => ender(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X4_Y69_N24
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\current_state.SUBTRACT~q\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datad => \Add0~14_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X4_Y69_N25
\ender[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(7));

-- Location: LCCOMB_X3_Y69_N8
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((sor(0) & !ender(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(0),
	datab => ender(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X3_Y69_N10
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((ender(1) & ((!\LessThan0~1_cout\) # (!sor(1)))) # (!ender(1) & (!sor(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(1),
	datab => sor(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X3_Y69_N12
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((ender(2) & (sor(2) & !\LessThan0~3_cout\)) # (!ender(2) & ((sor(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(2),
	datab => sor(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X3_Y69_N14
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((ender(3) & ((!\LessThan0~5_cout\) # (!sor(3)))) # (!ender(3) & (!sor(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ender(3),
	datab => sor(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X3_Y69_N16
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((sor(4) & ((!\LessThan0~7_cout\) # (!ender(4)))) # (!sor(4) & (!ender(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(4),
	datab => ender(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X3_Y69_N18
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((sor(5) & (ender(5) & !\LessThan0~9_cout\)) # (!sor(5) & ((ender(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(5),
	datab => ender(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X3_Y69_N20
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((sor(6) & ((!\LessThan0~11_cout\) # (!ender(6)))) # (!sor(6) & (!ender(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(6),
	datab => ender(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X3_Y69_N22
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (sor(7) & ((\LessThan0~13_cout\) # (!ender(7)))) # (!sor(7) & (\LessThan0~13_cout\ & !ender(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sor(7),
	datad => ender(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X3_Y69_N24
\ender[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ender[0]~0_combout\ = (\current_state.SUBTRACT~q\ & ((!\LessThan0~14_combout\))) # (!\current_state.SUBTRACT~q\ & (\current_state.LOAD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SUBTRACT~q\,
	datab => \current_state.LOAD~q\,
	datad => \LessThan0~14_combout\,
	combout => \ender[0]~0_combout\);

-- Location: FF_X3_Y69_N29
\ender[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ender[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ender(0));

-- Location: FF_X2_Y69_N15
\quotient[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ender(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[0]~reg0_q\);

-- Location: FF_X2_Y69_N13
\quotient[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ender(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[1]~reg0_q\);

-- Location: FF_X2_Y69_N17
\quotient[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ender(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[2]~reg0_q\);

-- Location: FF_X2_Y69_N25
\quotient[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ender(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quotient[3]~reg0_q\);

-- Location: LCCOMB_X5_Y69_N12
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_state.SUBTRACT~q\ & !\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => \LessThan0~14_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X5_Y69_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.SUBTRACT~q\) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => \current_state.IDLE~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X5_Y69_N13
\quotient_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quotient_reg(3));

-- Location: LCCOMB_X5_Y69_N4
\remi[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remi[0]~reg0feeder_combout\ = quotient_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => quotient_reg(3),
	combout => \remi[0]~reg0feeder_combout\);

-- Location: FF_X5_Y69_N5
\remi[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remi[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remi[0]~reg0_q\);

-- Location: LCCOMB_X5_Y69_N18
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.SUBTRACT~q\ & quotient_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => quotient_reg(3),
	combout => \Selector6~0_combout\);

-- Location: FF_X5_Y69_N19
\quotient_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quotient_reg(2));

-- Location: LCCOMB_X5_Y69_N26
\remi[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remi[1]~reg0feeder_combout\ = quotient_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => quotient_reg(2),
	combout => \remi[1]~reg0feeder_combout\);

-- Location: FF_X5_Y69_N27
\remi[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remi[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remi[1]~reg0_q\);

-- Location: LCCOMB_X5_Y69_N28
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.SUBTRACT~q\ & quotient_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => quotient_reg(2),
	combout => \Selector7~0_combout\);

-- Location: FF_X5_Y69_N29
\quotient_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quotient_reg(1));

-- Location: LCCOMB_X5_Y69_N0
\remi[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remi[2]~reg0feeder_combout\ = quotient_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => quotient_reg(1),
	combout => \remi[2]~reg0feeder_combout\);

-- Location: FF_X5_Y69_N1
\remi[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remi[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remi[2]~reg0_q\);

-- Location: LCCOMB_X5_Y69_N10
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.SUBTRACT~q\ & quotient_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SUBTRACT~q\,
	datad => quotient_reg(1),
	combout => \Selector8~0_combout\);

-- Location: FF_X5_Y69_N11
\quotient_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quotient_reg(0));

-- Location: LCCOMB_X5_Y69_N14
\remi[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remi[3]~reg0feeder_combout\ = quotient_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => quotient_reg(0),
	combout => \remi[3]~reg0feeder_combout\);

-- Location: FF_X5_Y69_N15
\remi[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remi[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \current_state.DONE_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remi[3]~reg0_q\);

-- Location: LCCOMB_X4_Y69_N4
\done~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~reg0feeder_combout\ = \current_state.DONE_STATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DONE_STATE~q\,
	combout => \done~reg0feeder_combout\);

-- Location: FF_X4_Y69_N5
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \done~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: LCCOMB_X4_Y69_N0
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\current_state.LOAD~q\) # ((\current_state.DONE_STATE~q\) # (\current_state.SUBTRACT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.LOAD~q\,
	datab => \current_state.DONE_STATE~q\,
	datad => \current_state.SUBTRACT~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X1_Y69_N24
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\current_state.SHIFT~q\) # (\current_state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.SHIFT~q\,
	datad => \current_state.DONE_STATE~q\,
	combout => \WideOr0~combout\);

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_remi(0) <= \remi[0]~output_o\;

ww_remi(1) <= \remi[1]~output_o\;

ww_remi(2) <= \remi[2]~output_o\;

ww_remi(3) <= \remi[3]~output_o\;

ww_done <= \done~output_o\;

ww_debug_state(0) <= \debug_state[0]~output_o\;

ww_debug_state(1) <= \debug_state[1]~output_o\;

ww_debug_state(2) <= \debug_state[2]~output_o\;

ww_debug_counter(0) <= \debug_counter[0]~output_o\;

ww_debug_counter(1) <= \debug_counter[1]~output_o\;

ww_debug_counter(2) <= \debug_counter[2]~output_o\;
END structure;


