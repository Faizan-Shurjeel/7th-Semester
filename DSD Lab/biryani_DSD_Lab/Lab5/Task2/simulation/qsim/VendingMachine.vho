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

-- DATE "10/10/2025 12:09:47"

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

ENTITY 	vending_machine IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rs1 : IN std_logic;
	rs2 : IN std_logic;
	rs4 : IN std_logic;
	rs8 : IN std_logic;
	fanta : IN std_logic;
	cola : IN std_logic;
	sprite : IN std_logic;
	enter : IN std_logic;
	total_money : OUT std_logic_vector(7 DOWNTO 0);
	change : OUT std_logic_vector(7 DOWNTO 0);
	dispense : OUT std_logic_vector(2 DOWNTO 0)
	);
END vending_machine;

-- Design Ports Information
-- total_money[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispense[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispense[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dispense[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs4	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs8	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fanta	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cola	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sprite	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vending_machine IS
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
SIGNAL ww_rs1 : std_logic;
SIGNAL ww_rs2 : std_logic;
SIGNAL ww_rs4 : std_logic;
SIGNAL ww_rs8 : std_logic;
SIGNAL ww_fanta : std_logic;
SIGNAL ww_cola : std_logic;
SIGNAL ww_sprite : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_total_money : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_change : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dispense : std_logic_vector(2 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \total_money[0]~output_o\ : std_logic;
SIGNAL \total_money[1]~output_o\ : std_logic;
SIGNAL \total_money[2]~output_o\ : std_logic;
SIGNAL \total_money[3]~output_o\ : std_logic;
SIGNAL \total_money[4]~output_o\ : std_logic;
SIGNAL \total_money[5]~output_o\ : std_logic;
SIGNAL \total_money[6]~output_o\ : std_logic;
SIGNAL \total_money[7]~output_o\ : std_logic;
SIGNAL \change[0]~output_o\ : std_logic;
SIGNAL \change[1]~output_o\ : std_logic;
SIGNAL \change[2]~output_o\ : std_logic;
SIGNAL \change[3]~output_o\ : std_logic;
SIGNAL \change[4]~output_o\ : std_logic;
SIGNAL \change[5]~output_o\ : std_logic;
SIGNAL \change[6]~output_o\ : std_logic;
SIGNAL \change[7]~output_o\ : std_logic;
SIGNAL \dispense[0]~output_o\ : std_logic;
SIGNAL \dispense[1]~output_o\ : std_logic;
SIGNAL \dispense[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cola~input_o\ : std_logic;
SIGNAL \sprite~input_o\ : std_logic;
SIGNAL \fanta~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \rs1~input_o\ : std_logic;
SIGNAL \rs4~input_o\ : std_logic;
SIGNAL \rs2~input_o\ : std_logic;
SIGNAL \next_money~0_combout\ : std_logic;
SIGNAL \rs8~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \current_state.WAIT_MONEY~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \next_money~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \next_money~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \next_money~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \next_money~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \next_money~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \next_money~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \next_money~7_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \next_money~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \next_money~9_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \next_money~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \next_money~11_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \current_state.DISPENSER~q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \current_state.RETURN_CHANGE~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \current_state.WAIT_SELECTION~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \dispense~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \dispense~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \dispense~2_combout\ : std_logic;
SIGNAL money_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL drink_cost : std_logic_vector(3 DOWNTO 0);
SIGNAL selected_drink : std_logic_vector(2 DOWNTO 0);
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
ww_rs1 <= rs1;
ww_rs2 <= rs2;
ww_rs4 <= rs4;
ww_rs8 <= rs8;
ww_fanta <= fanta;
ww_cola <= cola;
ww_sprite <= sprite;
ww_enter <= enter;
total_money <= ww_total_money;
change <= ww_change;
dispense <= ww_dispense;
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

-- Location: IOOBUF_X23_Y73_N16
\total_money[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(0),
	devoe => ww_devoe,
	o => \total_money[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\total_money[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(1),
	devoe => ww_devoe,
	o => \total_money[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\total_money[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(2),
	devoe => ww_devoe,
	o => \total_money[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\total_money[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(3),
	devoe => ww_devoe,
	o => \total_money[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\total_money[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(4),
	devoe => ww_devoe,
	o => \total_money[4]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\total_money[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(5),
	devoe => ww_devoe,
	o => \total_money[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\total_money[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(6),
	devoe => ww_devoe,
	o => \total_money[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\total_money[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_sum(7),
	devoe => ww_devoe,
	o => \total_money[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\change[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector27~0_combout\,
	devoe => ww_devoe,
	o => \change[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\change[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector26~0_combout\,
	devoe => ww_devoe,
	o => \change[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\change[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector25~0_combout\,
	devoe => ww_devoe,
	o => \change[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\change[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector24~0_combout\,
	devoe => ww_devoe,
	o => \change[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\change[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector23~0_combout\,
	devoe => ww_devoe,
	o => \change[4]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\change[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector22~0_combout\,
	devoe => ww_devoe,
	o => \change[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\change[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector21~0_combout\,
	devoe => ww_devoe,
	o => \change[6]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\change[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector20~0_combout\,
	devoe => ww_devoe,
	o => \change[7]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\dispense[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispense~0_combout\,
	devoe => ww_devoe,
	o => \dispense[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\dispense[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispense~1_combout\,
	devoe => ww_devoe,
	o => \dispense[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\dispense[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispense~2_combout\,
	devoe => ww_devoe,
	o => \dispense[2]~output_o\);

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

-- Location: LCCOMB_X24_Y72_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = money_sum(0) $ (VCC)
-- \Add0~1\ = CARRY(money_sum(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X38_Y73_N8
\cola~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cola,
	o => \cola~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\sprite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sprite,
	o => \sprite~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\fanta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fanta,
	o => \fanta~input_o\);

-- Location: LCCOMB_X29_Y72_N8
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\cola~input_o\) # ((\sprite~input_o\) # (\fanta~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cola~input_o\,
	datab => \sprite~input_o\,
	datac => \fanta~input_o\,
	combout => \process_1~0_combout\);

-- Location: IOIBUF_X33_Y73_N1
\enter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LCCOMB_X29_Y72_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\current_state.DISPENSER~q\ & (!\current_state.RETURN_CHANGE~q\ & (\current_state.WAIT_SELECTION~q\ & \enter~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPENSER~q\,
	datab => \current_state.RETURN_CHANGE~q\,
	datac => \current_state.WAIT_SELECTION~q\,
	datad => \enter~input_o\,
	combout => \Selector19~0_combout\);

-- Location: IOIBUF_X18_Y73_N15
\rs1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1,
	o => \rs1~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\rs4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs4,
	o => \rs4~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\rs2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2,
	o => \rs2~input_o\);

-- Location: LCCOMB_X26_Y72_N20
\next_money~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~0_combout\ = (!\rs4~input_o\ & !\rs2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs4~input_o\,
	datad => \rs2~input_o\,
	combout => \next_money~0_combout\);

-- Location: IOIBUF_X18_Y73_N22
\rs8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs8,
	o => \rs8~input_o\);

-- Location: LCCOMB_X29_Y72_N28
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\process_1~0_combout\ & (\current_state.WAIT_MONEY~q\ $ (((\current_state.WAIT_SELECTION~q\ & \enter~input_o\))))) # (!\process_1~0_combout\ & (\enter~input_o\ & ((\current_state.WAIT_SELECTION~q\) # 
-- (\current_state.WAIT_MONEY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \current_state.WAIT_SELECTION~q\,
	datac => \current_state.WAIT_MONEY~q\,
	datad => \enter~input_o\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X26_Y72_N10
\Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Selector17~0_combout\ & ((\current_state.IDLE~q\) # (\Selector15~1_combout\ $ (\Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \Selector15~1_combout\,
	datac => \current_state.IDLE~q\,
	datad => \Selector15~2_combout\,
	combout => \Selector15~4_combout\);

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

-- Location: FF_X26_Y72_N11
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X26_Y72_N4
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!\current_state.IDLE~q\ & (((\rs8~input_o\) # (\rs1~input_o\)) # (!\next_money~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \rs8~input_o\,
	datac => \rs1~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X26_Y72_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Selector17~0_combout\ & ((\Selector15~1_combout\ & ((\current_state.WAIT_MONEY~q\) # (!\Selector15~2_combout\))) # (!\Selector15~1_combout\ & (\current_state.WAIT_MONEY~q\ & !\Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \Selector15~1_combout\,
	datac => \current_state.WAIT_MONEY~q\,
	datad => \Selector15~2_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X26_Y72_N31
\current_state.WAIT_MONEY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_MONEY~q\);

-- Location: LCCOMB_X24_Y72_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (money_sum(1) & (!\Add0~1\)) # (!money_sum(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!money_sum(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y72_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = money_sum(1) $ (VCC)
-- \Add1~1\ = CARRY(money_sum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X28_Y72_N12
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\rs1~input_o\ & ((\rs2~input_o\ & ((\Add1~0_combout\))) # (!\rs2~input_o\ & (money_sum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2~input_o\,
	datab => money_sum(1),
	datac => \rs1~input_o\,
	datad => \Add1~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X28_Y72_N18
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\current_state.WAIT_MONEY~q\ & ((\Selector6~0_combout\) # ((\rs1~input_o\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1~input_o\,
	datab => \current_state.WAIT_MONEY~q\,
	datac => \Add0~2_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X28_Y72_N20
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~1_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(1),
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X28_Y72_N21
\money_sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(1));

-- Location: LCCOMB_X24_Y72_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (money_sum(2) & (\Add0~3\ $ (GND))) # (!money_sum(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((money_sum(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y72_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = money_sum(2) $ (VCC)
-- \Add2~1\ = CARRY(money_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y72_N8
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\rs2~input_o\ & ((\rs4~input_o\ & (\Add2~0_combout\)) # (!\rs4~input_o\ & ((money_sum(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs4~input_o\,
	datab => \rs2~input_o\,
	datac => \Add2~0_combout\,
	datad => money_sum(2),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X25_Y72_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (money_sum(2) & (!\Add1~1\)) # (!money_sum(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!money_sum(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X26_Y72_N2
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\rs2~input_o\ & \Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs2~input_o\,
	datac => \Selector5~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X26_Y72_N16
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~4_combout\)) # (!\rs1~input_o\ & ((\Selector5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => \rs1~input_o\,
	datac => \Add0~4_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X23_Y72_N30
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~2_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(2),
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: FF_X23_Y72_N31
\money_sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(2));

-- Location: LCCOMB_X24_Y72_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (money_sum(3) & (!\Add0~5\)) # (!money_sum(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!money_sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y72_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (money_sum(3) & (!\Add2~1\)) # (!money_sum(3) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!money_sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X26_Y72_N26
\next_money~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~1_combout\ = (\rs2~input_o\) # ((!\rs4~input_o\ & \rs8~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs4~input_o\,
	datab => \rs8~input_o\,
	datad => \rs2~input_o\,
	combout => \next_money~1_combout\);

-- Location: LCCOMB_X24_Y72_N22
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = money_sum(3) $ (VCC)
-- \Add3~1\ = CARRY(money_sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_sum(3),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X26_Y72_N14
\next_money~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~2_combout\ = (\next_money~0_combout\ & ((\next_money~1_combout\ & ((\Add3~0_combout\))) # (!\next_money~1_combout\ & (money_sum(3))))) # (!\next_money~0_combout\ & (\next_money~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \next_money~1_combout\,
	datac => money_sum(3),
	datad => \Add3~0_combout\,
	combout => \next_money~2_combout\);

-- Location: LCCOMB_X25_Y72_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (money_sum(3) & (\Add1~3\ $ (GND))) # (!money_sum(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((money_sum(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y72_N24
\next_money~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~3_combout\ = (\next_money~0_combout\ & (((\next_money~2_combout\)))) # (!\next_money~0_combout\ & ((\next_money~2_combout\ & ((\Add1~4_combout\))) # (!\next_money~2_combout\ & (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \Add2~2_combout\,
	datac => \next_money~2_combout\,
	datad => \Add1~4_combout\,
	combout => \next_money~3_combout\);

-- Location: LCCOMB_X25_Y72_N26
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~6_combout\)) # (!\rs1~input_o\ & ((\next_money~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1~input_o\,
	datab => \Add0~6_combout\,
	datac => \current_state.WAIT_MONEY~q\,
	datad => \next_money~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X25_Y72_N24
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(3),
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X25_Y72_N25
\money_sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(3));

-- Location: LCCOMB_X24_Y72_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (money_sum(4) & (\Add0~7\ $ (GND))) # (!money_sum(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((money_sum(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y72_N24
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (money_sum(4) & (!\Add3~1\)) # (!money_sum(4) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!money_sum(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(4),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X23_Y72_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (money_sum(4) & (\Add2~3\ $ (GND))) # (!money_sum(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((money_sum(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y72_N0
\next_money~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~4_combout\ = (\next_money~0_combout\ & (!\next_money~1_combout\ & ((money_sum(4))))) # (!\next_money~0_combout\ & ((\next_money~1_combout\) # ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \next_money~1_combout\,
	datac => \Add2~4_combout\,
	datad => money_sum(4),
	combout => \next_money~4_combout\);

-- Location: LCCOMB_X25_Y72_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (money_sum(4) & (!\Add1~5\)) # (!money_sum(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!money_sum(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y72_N6
\next_money~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~5_combout\ = (\next_money~1_combout\ & ((\next_money~4_combout\ & ((\Add1~6_combout\))) # (!\next_money~4_combout\ & (\Add3~2_combout\)))) # (!\next_money~1_combout\ & (((\next_money~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~1_combout\,
	datab => \Add3~2_combout\,
	datac => \next_money~4_combout\,
	datad => \Add1~6_combout\,
	combout => \next_money~5_combout\);

-- Location: LCCOMB_X25_Y72_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~8_combout\)) # (!\rs1~input_o\ & ((\next_money~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \current_state.WAIT_MONEY~q\,
	datac => \rs1~input_o\,
	datad => \next_money~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X25_Y72_N30
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(4),
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X25_Y72_N31
\money_sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(4));

-- Location: LCCOMB_X24_Y72_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (money_sum(5) & (!\Add0~9\)) # (!money_sum(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!money_sum(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y72_N26
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (money_sum(5) & (\Add3~3\ $ (GND))) # (!money_sum(5) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((money_sum(5) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(5),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X24_Y72_N2
\next_money~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~6_combout\ = (\next_money~0_combout\ & ((\next_money~1_combout\ & ((\Add3~4_combout\))) # (!\next_money~1_combout\ & (money_sum(5))))) # (!\next_money~0_combout\ & (\next_money~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \next_money~1_combout\,
	datac => money_sum(5),
	datad => \Add3~4_combout\,
	combout => \next_money~6_combout\);

-- Location: LCCOMB_X23_Y72_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (money_sum(5) & (!\Add2~5\)) # (!money_sum(5) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!money_sum(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X25_Y72_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (money_sum(5) & (\Add1~7\ $ (GND))) # (!money_sum(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((money_sum(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y72_N4
\next_money~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~7_combout\ = (\next_money~0_combout\ & (\next_money~6_combout\)) # (!\next_money~0_combout\ & ((\next_money~6_combout\ & ((\Add1~8_combout\))) # (!\next_money~6_combout\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \next_money~6_combout\,
	datac => \Add2~6_combout\,
	datad => \Add1~8_combout\,
	combout => \next_money~7_combout\);

-- Location: LCCOMB_X23_Y72_N10
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~10_combout\)) # (!\rs1~input_o\ & ((\next_money~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => \Add0~10_combout\,
	datac => \rs1~input_o\,
	datad => \next_money~7_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X23_Y72_N4
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(5),
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X23_Y72_N5
\money_sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(5));

-- Location: LCCOMB_X24_Y72_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (money_sum(6) & (\Add0~11\ $ (GND))) # (!money_sum(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((money_sum(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X24_Y72_N28
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (money_sum(6) & (!\Add3~5\)) # (!money_sum(6) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!money_sum(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(6),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X23_Y72_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (money_sum(6) & (\Add2~7\ $ (GND))) # (!money_sum(6) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((money_sum(6) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X23_Y72_N8
\next_money~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~8_combout\ = (\next_money~0_combout\ & (money_sum(6) & (!\next_money~1_combout\))) # (!\next_money~0_combout\ & (((\next_money~1_combout\) # (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(6),
	datab => \next_money~0_combout\,
	datac => \next_money~1_combout\,
	datad => \Add2~8_combout\,
	combout => \next_money~8_combout\);

-- Location: LCCOMB_X25_Y72_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (money_sum(6) & (!\Add1~9\)) # (!money_sum(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!money_sum(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y72_N2
\next_money~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~9_combout\ = (\next_money~1_combout\ & ((\next_money~8_combout\ & ((\Add1~10_combout\))) # (!\next_money~8_combout\ & (\Add3~6_combout\)))) # (!\next_money~1_combout\ & (((\next_money~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~1_combout\,
	datab => \Add3~6_combout\,
	datac => \next_money~8_combout\,
	datad => \Add1~10_combout\,
	combout => \next_money~9_combout\);

-- Location: LCCOMB_X23_Y72_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~12_combout\)) # (!\rs1~input_o\ & ((\next_money~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => \Add0~12_combout\,
	datac => \rs1~input_o\,
	datad => \next_money~9_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X23_Y72_N6
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(6),
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X23_Y72_N7
\money_sum[6]\ : dffeas
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
	q => money_sum(6));

-- Location: LCCOMB_X24_Y72_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (money_sum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => money_sum(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X25_Y72_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = money_sum(7) $ (!\Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(7),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X24_Y72_N30
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = \Add3~7\ $ (!money_sum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => money_sum(7),
	cin => \Add3~7\,
	combout => \Add3~8_combout\);

-- Location: LCCOMB_X25_Y72_N22
\next_money~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~10_combout\ = (\next_money~1_combout\ & (((\Add3~8_combout\) # (!\next_money~0_combout\)))) # (!\next_money~1_combout\ & (money_sum(7) & (\next_money~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~1_combout\,
	datab => money_sum(7),
	datac => \next_money~0_combout\,
	datad => \Add3~8_combout\,
	combout => \next_money~10_combout\);

-- Location: LCCOMB_X23_Y72_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add2~9\ $ (money_sum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => money_sum(7),
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X25_Y72_N28
\next_money~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_money~11_combout\ = (\next_money~0_combout\ & (((\next_money~10_combout\)))) # (!\next_money~0_combout\ & ((\next_money~10_combout\ & (\Add1~12_combout\)) # (!\next_money~10_combout\ & ((\Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_money~0_combout\,
	datab => \Add1~12_combout\,
	datac => \next_money~10_combout\,
	datad => \Add2~10_combout\,
	combout => \next_money~11_combout\);

-- Location: LCCOMB_X25_Y72_N2
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\rs1~input_o\ & (\Add0~14_combout\)) # (!\rs1~input_o\ & ((\next_money~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => \Add0~14_combout\,
	datac => \rs1~input_o\,
	datad => \next_money~11_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X25_Y72_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\current_state.WAIT_SELECTION~q\ & money_sum(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.WAIT_SELECTION~q\,
	datac => money_sum(7),
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X25_Y72_N5
\money_sum[7]\ : dffeas
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
	q => money_sum(7));

-- Location: LCCOMB_X23_Y72_N26
\process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (!money_sum(6) & (!money_sum(5) & (!money_sum(7) & !money_sum(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(6),
	datab => money_sum(5),
	datac => money_sum(7),
	datad => money_sum(4),
	combout => \process_1~1_combout\);

-- Location: FF_X28_Y72_N5
\drink_cost[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => drink_cost(3));

-- Location: LCCOMB_X28_Y72_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (drink_cost(3) & ((\current_state.WAIT_MONEY~q\) # ((\current_state.WAIT_SELECTION~q\ & !\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_SELECTION~q\,
	datab => \process_1~0_combout\,
	datac => drink_cost(3),
	datad => \current_state.WAIT_MONEY~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X29_Y72_N1
\drink_cost[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector11~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => drink_cost(0));

-- Location: LCCOMB_X29_Y72_N16
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\fanta~input_o\) # ((!\cola~input_o\ & ((drink_cost(0)) # (\sprite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fanta~input_o\,
	datab => drink_cost(0),
	datac => \cola~input_o\,
	datad => \sprite~input_o\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X29_Y72_N26
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\current_state.WAIT_MONEY~q\ & ((drink_cost(0)) # ((\current_state.WAIT_SELECTION~q\ & \Selector11~0_combout\)))) # (!\current_state.WAIT_MONEY~q\ & (((\current_state.WAIT_SELECTION~q\ & \Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => drink_cost(0),
	datac => \current_state.WAIT_SELECTION~q\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X28_Y72_N10
\process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!money_sum(1) & (!money_sum(2) & (!money_sum(0) & \process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(1),
	datab => money_sum(2),
	datac => money_sum(0),
	datad => \process_1~1_combout\,
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X28_Y72_N16
\process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\process_1~7_combout\ & (((\Selector11~1_combout\ & \Selector8~0_combout\)) # (!money_sum(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => money_sum(3),
	datac => \Selector8~0_combout\,
	datad => \process_1~7_combout\,
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X28_Y72_N30
\process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\) # ((!money_sum(3) & (\process_1~1_combout\ & \Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(3),
	datab => \process_1~1_combout\,
	datac => \Selector8~0_combout\,
	datad => \process_1~8_combout\,
	combout => \process_1~9_combout\);

-- Location: FF_X26_Y72_N27
\drink_cost[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => drink_cost(2));

-- Location: LCCOMB_X29_Y72_N6
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\sprite~input_o\ & !\cola~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite~input_o\,
	datac => \cola~input_o\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X26_Y72_N6
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\fanta~input_o\ & \current_state.WAIT_SELECTION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fanta~input_o\,
	datad => \current_state.WAIT_SELECTION~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X26_Y72_N0
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (drink_cost(2) & (((\current_state.WAIT_MONEY~q\) # (\Selector9~0_combout\)))) # (!drink_cost(2) & (!\Selector10~1_combout\ & ((\Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => drink_cost(2),
	datab => \Selector10~1_combout\,
	datac => \current_state.WAIT_MONEY~q\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X26_Y72_N21
\drink_cost[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector10~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => drink_cost(1));

-- Location: LCCOMB_X26_Y72_N22
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\fanta~input_o\ & ((\current_state.WAIT_SELECTION~q\) # ((drink_cost(1) & \current_state.WAIT_MONEY~q\)))) # (!\fanta~input_o\ & (drink_cost(1) & (\current_state.WAIT_MONEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fanta~input_o\,
	datab => drink_cost(1),
	datac => \current_state.WAIT_MONEY~q\,
	datad => \current_state.WAIT_SELECTION~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X26_Y72_N28
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~0_combout\) # ((\Selector10~1_combout\ & (drink_cost(1) & \current_state.WAIT_SELECTION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datab => drink_cost(1),
	datac => \Selector10~0_combout\,
	datad => \current_state.WAIT_SELECTION~q\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X27_Y72_N8
\process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (money_sum(1) & ((\Selector9~1_combout\ & (money_sum(2))) # (!\Selector9~1_combout\ & ((\Selector10~2_combout\))))) # (!money_sum(1) & (money_sum(2) & (\Selector9~1_combout\ $ (\Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(2),
	datab => money_sum(1),
	datac => \Selector9~1_combout\,
	datad => \Selector10~2_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X27_Y72_N30
\process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\Selector9~1_combout\ & ((money_sum(1) $ (\Selector10~2_combout\)) # (!money_sum(2)))) # (!\Selector9~1_combout\ & (\Selector10~2_combout\ & ((money_sum(2)) # (!money_sum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => money_sum(1),
	datac => money_sum(2),
	datad => \Selector10~2_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X28_Y72_N8
\process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\process_1~1_combout\ & ((\Selector8~0_combout\) # (!money_sum(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_sum(3),
	datac => \Selector8~0_combout\,
	datad => \process_1~1_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X28_Y72_N6
\process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\Selector11~1_combout\ & (((!\process_1~4_combout\)) # (!money_sum(0)))) # (!\Selector11~1_combout\ & (((\Selector8~0_combout\ & !\process_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => money_sum(0),
	datac => \Selector8~0_combout\,
	datad => \process_1~4_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X28_Y72_N28
\process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\process_1~4_combout\ & (!\process_1~3_combout\ & (\process_1~2_combout\ & \process_1~5_combout\))) # (!\process_1~4_combout\ & ((\process_1~3_combout\ & (\process_1~2_combout\)) # (!\process_1~3_combout\ & 
-- ((!\process_1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \process_1~3_combout\,
	datac => \process_1~2_combout\,
	datad => \process_1~5_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X28_Y72_N14
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Selector19~0_combout\ & (!\process_1~9_combout\ & !\process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datac => \process_1~9_combout\,
	datad => \process_1~6_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X28_Y72_N15
\current_state.DISPENSER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DISPENSER~q\);

-- Location: LCCOMB_X29_Y72_N30
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (!\current_state.DISPENSER~q\ & (!\current_state.RETURN_CHANGE~q\ & ((!\enter~input_o\) # (!\current_state.WAIT_SELECTION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPENSER~q\,
	datab => \current_state.RETURN_CHANGE~q\,
	datac => \current_state.WAIT_SELECTION~q\,
	datad => \enter~input_o\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X29_Y72_N20
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (!\process_1~0_combout\ & (\enter~input_o\ & (\Selector19~1_combout\ & \current_state.WAIT_MONEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \enter~input_o\,
	datac => \Selector19~1_combout\,
	datad => \current_state.WAIT_MONEY~q\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X28_Y72_N24
\Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\Selector19~2_combout\) # ((\Selector19~0_combout\ & ((\process_1~9_combout\) # (\process_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datab => \Selector19~0_combout\,
	datac => \process_1~9_combout\,
	datad => \process_1~6_combout\,
	combout => \Selector19~3_combout\);

-- Location: FF_X28_Y72_N25
\current_state.RETURN_CHANGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RETURN_CHANGE~q\);

-- Location: LCCOMB_X27_Y72_N2
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\current_state.RETURN_CHANGE~q\ & !\current_state.DISPENSER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.RETURN_CHANGE~q\,
	datad => \current_state.DISPENSER~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X26_Y72_N18
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = \Selector15~1_combout\ $ (\Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector15~1_combout\,
	datad => \Selector15~2_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X29_Y72_N22
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.WAIT_MONEY~q\ & ((\fanta~input_o\) # ((\sprite~input_o\) # (\cola~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fanta~input_o\,
	datab => \sprite~input_o\,
	datac => \cola~input_o\,
	datad => \current_state.WAIT_MONEY~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X26_Y72_N12
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\ & ((\Selector15~3_combout\ & ((\Selector15~0_combout\))) # (!\Selector15~3_combout\ & (\current_state.WAIT_SELECTION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \Selector15~3_combout\,
	datac => \current_state.WAIT_SELECTION~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X26_Y72_N13
\current_state.WAIT_SELECTION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_SELECTION~q\);

-- Location: LCCOMB_X23_Y72_N24
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (money_sum(0) & ((\current_state.WAIT_SELECTION~q\) # ((!\rs1~input_o\ & \current_state.WAIT_MONEY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_SELECTION~q\,
	datab => money_sum(0),
	datac => \rs1~input_o\,
	datad => \current_state.WAIT_MONEY~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X23_Y72_N0
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\Add0~0_combout\ & (\rs1~input_o\ & \current_state.WAIT_MONEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector7~0_combout\,
	datac => \rs1~input_o\,
	datad => \current_state.WAIT_MONEY~q\,
	combout => \Selector7~1_combout\);

-- Location: FF_X23_Y72_N1
\money_sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_sum(0));

-- Location: LCCOMB_X27_Y72_N12
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (drink_cost(0) & (money_sum(0) $ (VCC))) # (!drink_cost(0) & ((money_sum(0)) # (GND)))
-- \Add4~1\ = CARRY((money_sum(0)) # (!drink_cost(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => drink_cost(0),
	datab => money_sum(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X28_Y72_N26
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Add4~0_combout\ & ((\current_state.DISPENSER~q\) # ((money_sum(0) & \current_state.RETURN_CHANGE~q\)))) # (!\Add4~0_combout\ & (((money_sum(0) & \current_state.RETURN_CHANGE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \current_state.DISPENSER~q\,
	datac => money_sum(0),
	datad => \current_state.RETURN_CHANGE~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X27_Y72_N14
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (money_sum(1) & ((drink_cost(1) & (!\Add4~1\)) # (!drink_cost(1) & (\Add4~1\ & VCC)))) # (!money_sum(1) & ((drink_cost(1) & ((\Add4~1\) # (GND))) # (!drink_cost(1) & (!\Add4~1\))))
-- \Add4~3\ = CARRY((money_sum(1) & (drink_cost(1) & !\Add4~1\)) # (!money_sum(1) & ((drink_cost(1)) # (!\Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(1),
	datab => drink_cost(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X28_Y72_N0
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\current_state.RETURN_CHANGE~q\ & ((money_sum(1)) # ((\current_state.DISPENSER~q\ & \Add4~2_combout\)))) # (!\current_state.RETURN_CHANGE~q\ & (((\current_state.DISPENSER~q\ & \Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RETURN_CHANGE~q\,
	datab => money_sum(1),
	datac => \current_state.DISPENSER~q\,
	datad => \Add4~2_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X27_Y72_N16
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((drink_cost(2) $ (money_sum(2) $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((drink_cost(2) & (money_sum(2) & !\Add4~3\)) # (!drink_cost(2) & ((money_sum(2)) # (!\Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => drink_cost(2),
	datab => money_sum(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X28_Y72_N22
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Add4~4_combout\ & ((\current_state.DISPENSER~q\) # ((money_sum(2) & \current_state.RETURN_CHANGE~q\)))) # (!\Add4~4_combout\ & (money_sum(2) & ((\current_state.RETURN_CHANGE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => money_sum(2),
	datac => \current_state.DISPENSER~q\,
	datad => \current_state.RETURN_CHANGE~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X27_Y72_N18
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (drink_cost(3) & ((money_sum(3) & (!\Add4~5\)) # (!money_sum(3) & ((\Add4~5\) # (GND))))) # (!drink_cost(3) & ((money_sum(3) & (\Add4~5\ & VCC)) # (!money_sum(3) & (!\Add4~5\))))
-- \Add4~7\ = CARRY((drink_cost(3) & ((!\Add4~5\) # (!money_sum(3)))) # (!drink_cost(3) & (!money_sum(3) & !\Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => drink_cost(3),
	datab => money_sum(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X28_Y72_N2
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\current_state.RETURN_CHANGE~q\ & ((money_sum(3)) # ((\Add4~6_combout\ & \current_state.DISPENSER~q\)))) # (!\current_state.RETURN_CHANGE~q\ & (\Add4~6_combout\ & (\current_state.DISPENSER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RETURN_CHANGE~q\,
	datab => \Add4~6_combout\,
	datac => \current_state.DISPENSER~q\,
	datad => money_sum(3),
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X27_Y72_N20
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (money_sum(4) & ((GND) # (!\Add4~7\))) # (!money_sum(4) & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((money_sum(4)) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X27_Y72_N28
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\current_state.DISPENSER~q\ & ((\Add4~8_combout\) # ((\current_state.RETURN_CHANGE~q\ & money_sum(4))))) # (!\current_state.DISPENSER~q\ & (((\current_state.RETURN_CHANGE~q\ & money_sum(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPENSER~q\,
	datab => \Add4~8_combout\,
	datac => \current_state.RETURN_CHANGE~q\,
	datad => money_sum(4),
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X27_Y72_N22
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (money_sum(5) & (\Add4~9\ & VCC)) # (!money_sum(5) & (!\Add4~9\))
-- \Add4~11\ = CARRY((!money_sum(5) & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_sum(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X27_Y72_N6
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\current_state.RETURN_CHANGE~q\ & ((money_sum(5)) # ((\Add4~10_combout\ & \current_state.DISPENSER~q\)))) # (!\current_state.RETURN_CHANGE~q\ & (((\Add4~10_combout\ & \current_state.DISPENSER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RETURN_CHANGE~q\,
	datab => money_sum(5),
	datac => \Add4~10_combout\,
	datad => \current_state.DISPENSER~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X27_Y72_N24
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (money_sum(6) & ((GND) # (!\Add4~11\))) # (!money_sum(6) & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((money_sum(6)) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_sum(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X27_Y72_N0
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\current_state.RETURN_CHANGE~q\ & ((money_sum(6)) # ((\Add4~12_combout\ & \current_state.DISPENSER~q\)))) # (!\current_state.RETURN_CHANGE~q\ & (\Add4~12_combout\ & (\current_state.DISPENSER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RETURN_CHANGE~q\,
	datab => \Add4~12_combout\,
	datac => \current_state.DISPENSER~q\,
	datad => money_sum(6),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X27_Y72_N26
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\ $ (!money_sum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => money_sum(7),
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X27_Y72_N10
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add4~14_combout\ & ((\current_state.DISPENSER~q\) # ((\current_state.RETURN_CHANGE~q\ & money_sum(7))))) # (!\Add4~14_combout\ & (((\current_state.RETURN_CHANGE~q\ & money_sum(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \current_state.DISPENSER~q\,
	datac => \current_state.RETURN_CHANGE~q\,
	datad => money_sum(7),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X27_Y72_N4
\dispense~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispense~0_combout\ = (drink_cost(1) & \current_state.DISPENSER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => drink_cost(1),
	datad => \current_state.DISPENSER~q\,
	combout => \dispense~0_combout\);

-- Location: LCCOMB_X29_Y72_N18
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (selected_drink(1) & ((\current_state.WAIT_MONEY~q\) # ((\current_state.WAIT_SELECTION~q\ & !\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WAIT_MONEY~q\,
	datab => selected_drink(1),
	datac => \current_state.WAIT_SELECTION~q\,
	datad => \process_1~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X29_Y72_N14
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((\cola~input_o\ & (\current_state.WAIT_SELECTION~q\ & !\fanta~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cola~input_o\,
	datab => \current_state.WAIT_SELECTION~q\,
	datac => \fanta~input_o\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X29_Y72_N15
\selected_drink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selected_drink(1));

-- Location: LCCOMB_X29_Y72_N12
\dispense~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispense~1_combout\ = (\current_state.DISPENSER~q\ & selected_drink(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPENSER~q\,
	datac => selected_drink(1),
	combout => \dispense~1_combout\);

-- Location: LCCOMB_X29_Y72_N24
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_state.WAIT_SELECTION~q\ & (!\fanta~input_o\ & ((selected_drink(2)) # (\sprite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_drink(2),
	datab => \current_state.WAIT_SELECTION~q\,
	datac => \fanta~input_o\,
	datad => \sprite~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X29_Y72_N10
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\cola~input_o\ & (\current_state.WAIT_MONEY~q\ & (selected_drink(2)))) # (!\cola~input_o\ & ((\Selector12~0_combout\) # ((\current_state.WAIT_MONEY~q\ & selected_drink(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cola~input_o\,
	datab => \current_state.WAIT_MONEY~q\,
	datac => selected_drink(2),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X29_Y72_N11
\selected_drink[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selected_drink(2));

-- Location: LCCOMB_X29_Y72_N0
\dispense~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispense~2_combout\ = (\current_state.DISPENSER~q\ & selected_drink(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPENSER~q\,
	datad => selected_drink(2),
	combout => \dispense~2_combout\);

ww_total_money(0) <= \total_money[0]~output_o\;

ww_total_money(1) <= \total_money[1]~output_o\;

ww_total_money(2) <= \total_money[2]~output_o\;

ww_total_money(3) <= \total_money[3]~output_o\;

ww_total_money(4) <= \total_money[4]~output_o\;

ww_total_money(5) <= \total_money[5]~output_o\;

ww_total_money(6) <= \total_money[6]~output_o\;

ww_total_money(7) <= \total_money[7]~output_o\;

ww_change(0) <= \change[0]~output_o\;

ww_change(1) <= \change[1]~output_o\;

ww_change(2) <= \change[2]~output_o\;

ww_change(3) <= \change[3]~output_o\;

ww_change(4) <= \change[4]~output_o\;

ww_change(5) <= \change[5]~output_o\;

ww_change(6) <= \change[6]~output_o\;

ww_change(7) <= \change[7]~output_o\;

ww_dispense(0) <= \dispense[0]~output_o\;

ww_dispense(1) <= \dispense[1]~output_o\;

ww_dispense(2) <= \dispense[2]~output_o\;
END structure;


