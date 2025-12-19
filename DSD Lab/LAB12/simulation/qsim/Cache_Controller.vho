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

-- DATE "12/19/2025 11:38:51"

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

ENTITY 	Cache_Controller IS
    PORT (
	Clk : IN std_logic;
	Reset : IN std_logic;
	Start_Btn : IN std_logic;
	Switch_Addr : IN std_logic_vector(7 DOWNTO 0);
	Led_Hit : OUT std_logic;
	Led_Miss : OUT std_logic
	);
END Cache_Controller;

-- Design Ports Information
-- Led_Hit	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Miss	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_Addr[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_Btn	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cache_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Start_Btn : std_logic;
SIGNAL ww_Switch_Addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_Hit : std_logic;
SIGNAL ww_Led_Miss : std_logic;
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Led_Hit~output_o\ : std_logic;
SIGNAL \Led_Miss~output_o\ : std_logic;
SIGNAL \Switch_Addr[4]~input_o\ : std_logic;
SIGNAL \Switch_Addr[7]~input_o\ : std_logic;
SIGNAL \Switch_Addr[5]~input_o\ : std_logic;
SIGNAL \Switch_Addr[2]~input_o\ : std_logic;
SIGNAL \Switch_Addr[1]~input_o\ : std_logic;
SIGNAL \Switch_Addr[3]~input_o\ : std_logic;
SIGNAL \Switch_Addr[0]~input_o\ : std_logic;
SIGNAL \Led_Hit~1_combout\ : std_logic;
SIGNAL \Led_Hit~3_combout\ : std_logic;
SIGNAL \Switch_Addr[6]~input_o\ : std_logic;
SIGNAL \Led_Hit~0_combout\ : std_logic;
SIGNAL \Led_Hit~4_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start_Btn~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.s_IDLE~q\ : std_logic;
SIGNAL \next_state.s_READ~0_combout\ : std_logic;
SIGNAL \current_state.s_READ~q\ : std_logic;
SIGNAL \current_state.s_COMPARE~feeder_combout\ : std_logic;
SIGNAL \current_state.s_COMPARE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.s_RESULT~q\ : std_logic;
SIGNAL \Led_Hit~2_combout\ : std_logic;
SIGNAL \Led_Miss~0_combout\ : std_logic;
SIGNAL \ALT_INV_Led_Miss~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Reset <= Reset;
ww_Start_Btn <= Start_Btn;
ww_Switch_Addr <= Switch_Addr;
Led_Hit <= ww_Led_Hit;
Led_Miss <= ww_Led_Miss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Led_Miss~0_combout\ <= NOT \Led_Miss~0_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y45_N23
\Led_Hit~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Led_Hit~2_combout\,
	devoe => ww_devoe,
	o => \Led_Hit~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Led_Miss~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Led_Miss~0_combout\,
	devoe => ww_devoe,
	o => \Led_Miss~output_o\);

-- Location: IOIBUF_X0_Y48_N1
\Switch_Addr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(4),
	o => \Switch_Addr[4]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\Switch_Addr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(7),
	o => \Switch_Addr[7]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\Switch_Addr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(5),
	o => \Switch_Addr[5]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\Switch_Addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(2),
	o => \Switch_Addr[2]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\Switch_Addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(1),
	o => \Switch_Addr[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\Switch_Addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(3),
	o => \Switch_Addr[3]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\Switch_Addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(0),
	o => \Switch_Addr[0]~input_o\);

-- Location: LCCOMB_X1_Y47_N16
\Led_Hit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Hit~1_combout\ = (\Switch_Addr[3]~input_o\ & (\Switch_Addr[0]~input_o\ & (\Switch_Addr[2]~input_o\ $ (!\Switch_Addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_Addr[2]~input_o\,
	datab => \Switch_Addr[1]~input_o\,
	datac => \Switch_Addr[3]~input_o\,
	datad => \Switch_Addr[0]~input_o\,
	combout => \Led_Hit~1_combout\);

-- Location: LCCOMB_X1_Y47_N0
\Led_Hit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Hit~3_combout\ = (\Switch_Addr[7]~input_o\ & (\Switch_Addr[5]~input_o\ & ((\Led_Hit~1_combout\)))) # (!\Switch_Addr[7]~input_o\ & (!\Switch_Addr[5]~input_o\ & (!\Switch_Addr[4]~input_o\ & !\Led_Hit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_Addr[7]~input_o\,
	datab => \Switch_Addr[5]~input_o\,
	datac => \Switch_Addr[4]~input_o\,
	datad => \Led_Hit~1_combout\,
	combout => \Led_Hit~3_combout\);

-- Location: IOIBUF_X0_Y48_N8
\Switch_Addr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_Addr(6),
	o => \Switch_Addr[6]~input_o\);

-- Location: LCCOMB_X1_Y47_N22
\Led_Hit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Hit~0_combout\ = (\Switch_Addr[2]~input_o\ & (\Switch_Addr[3]~input_o\ $ (((!\Switch_Addr[0]~input_o\) # (!\Switch_Addr[1]~input_o\))))) # (!\Switch_Addr[2]~input_o\ & ((\Switch_Addr[1]~input_o\ & (!\Switch_Addr[3]~input_o\)) # 
-- (!\Switch_Addr[1]~input_o\ & (\Switch_Addr[3]~input_o\ & !\Switch_Addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_Addr[2]~input_o\,
	datab => \Switch_Addr[1]~input_o\,
	datac => \Switch_Addr[3]~input_o\,
	datad => \Switch_Addr[0]~input_o\,
	combout => \Led_Hit~0_combout\);

-- Location: LCCOMB_X1_Y47_N30
\Led_Hit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Hit~4_combout\ = (\Led_Hit~3_combout\ & ((\Switch_Addr[4]~input_o\ & (\Switch_Addr[6]~input_o\ & !\Led_Hit~0_combout\)) # (!\Switch_Addr[4]~input_o\ & (!\Switch_Addr[6]~input_o\ & \Led_Hit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_Addr[4]~input_o\,
	datab => \Led_Hit~3_combout\,
	datac => \Switch_Addr[6]~input_o\,
	datad => \Led_Hit~0_combout\,
	combout => \Led_Hit~4_combout\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y50_N22
\Start_Btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_Btn,
	o => \Start_Btn~input_o\);

-- Location: LCCOMB_X1_Y47_N10
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Start_Btn~input_o\) # ((\current_state.s_COMPARE~q\) # (\current_state.s_READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start_Btn~input_o\,
	datab => \current_state.s_COMPARE~q\,
	datad => \current_state.s_READ~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y47_N11
\current_state.s_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_IDLE~q\);

-- Location: LCCOMB_X1_Y47_N28
\next_state.s_READ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.s_READ~0_combout\ = (\Start_Btn~input_o\ & !\current_state.s_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start_Btn~input_o\,
	datad => \current_state.s_IDLE~q\,
	combout => \next_state.s_READ~0_combout\);

-- Location: FF_X1_Y47_N29
\current_state.s_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.s_READ~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_READ~q\);

-- Location: LCCOMB_X1_Y47_N2
\current_state.s_COMPARE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.s_COMPARE~feeder_combout\ = \current_state.s_READ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.s_READ~q\,
	combout => \current_state.s_COMPARE~feeder_combout\);

-- Location: FF_X1_Y47_N3
\current_state.s_COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state.s_COMPARE~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_COMPARE~q\);

-- Location: LCCOMB_X1_Y47_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.s_COMPARE~q\) # ((\Start_Btn~input_o\ & \current_state.s_RESULT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start_Btn~input_o\,
	datac => \current_state.s_RESULT~q\,
	datad => \current_state.s_COMPARE~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y47_N21
\current_state.s_RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_RESULT~q\);

-- Location: LCCOMB_X1_Y47_N26
\Led_Hit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Hit~2_combout\ = (\Led_Hit~4_combout\ & \current_state.s_RESULT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Hit~4_combout\,
	datad => \current_state.s_RESULT~q\,
	combout => \Led_Hit~2_combout\);

-- Location: LCCOMB_X1_Y47_N24
\Led_Miss~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Led_Miss~0_combout\ = (\Led_Hit~4_combout\) # (!\current_state.s_RESULT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Hit~4_combout\,
	datad => \current_state.s_RESULT~q\,
	combout => \Led_Miss~0_combout\);

ww_Led_Hit <= \Led_Hit~output_o\;

ww_Led_Miss <= \Led_Miss~output_o\;
END structure;


