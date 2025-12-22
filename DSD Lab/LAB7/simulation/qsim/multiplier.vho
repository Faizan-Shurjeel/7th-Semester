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

-- DATE "12/19/2025 15:44:47"

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

ENTITY 	multiplier IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	M : IN std_logic_vector(4 DOWNTO 0);
	Q_in : IN std_logic_vector(4 DOWNTO 0);
	P : BUFFER std_logic_vector(9 DOWNTO 0);
	done : BUFFER std_logic
	);
END multiplier;

-- Design Ports Information
-- P[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_in[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_in[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_in[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_in[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_in[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_M : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Q_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \P[8]~output_o\ : std_logic;
SIGNAL \P[9]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.FINISH~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.IDLE~feeder_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.INIT~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.CHECK_BITS~q\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.ADD_SUB~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.SHIFT_REG~q\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \A~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Qm1~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \M[4]~input_o\ : std_logic;
SIGNAL \M_reg~5_combout\ : std_logic;
SIGNAL \M_reg[0]~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \M[3]~input_o\ : std_logic;
SIGNAL \M_reg~4_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \M[2]~input_o\ : std_logic;
SIGNAL \M_reg~3_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \M_reg~2_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \M_reg~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \A~7_combout\ : std_logic;
SIGNAL \A[2]~3_combout\ : std_logic;
SIGNAL \A[2]~4_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \A~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \A~5_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \A~2_combout\ : std_logic;
SIGNAL \Q_in[4]~input_o\ : std_logic;
SIGNAL \Q~5_combout\ : std_logic;
SIGNAL \Q[0]~1_combout\ : std_logic;
SIGNAL \Q_in[3]~input_o\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \Q_in[2]~input_o\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q_in[1]~input_o\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q_in[0]~input_o\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL Q : std_logic_vector(4 DOWNTO 0);
SIGNAL A : std_logic_vector(4 DOWNTO 0);
SIGNAL SC : std_logic_vector(2 DOWNTO 0);
SIGNAL M_reg : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_M <= M;
ww_Q_in <= Q_in;
P <= ww_P;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y49_N9
\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => \P[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(4),
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(0),
	devoe => ww_devoe,
	o => \P[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(1),
	devoe => ww_devoe,
	o => \P[6]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(2),
	devoe => ww_devoe,
	o => \P[7]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\P[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(3),
	devoe => ww_devoe,
	o => \P[8]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\P[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(4),
	devoe => ww_devoe,
	o => \P[9]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
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

-- Location: IOIBUF_X0_Y49_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X2_Y49_N18
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (SC(0) & ((!\state.SHIFT_REG~q\))) # (!SC(0) & ((\state.INIT~q\) # (\state.SHIFT_REG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.INIT~q\,
	datac => SC(0),
	datad => \state.SHIFT_REG~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X2_Y49_N19
\SC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SC(0));

-- Location: LCCOMB_X2_Y49_N4
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.SHIFT_REG~q\ & (SC(0) $ (((!SC(1)))))) # (!\state.SHIFT_REG~q\ & (((!\state.INIT~q\ & SC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SC(0),
	datab => \state.INIT~q\,
	datac => SC(1),
	datad => \state.SHIFT_REG~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X2_Y49_N5
\SC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SC(1));

-- Location: LCCOMB_X2_Y49_N6
\state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\rst~input_o\ & (SC(0) & (!SC(1) & \state.SHIFT_REG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => SC(0),
	datac => SC(1),
	datad => \state.SHIFT_REG~q\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X2_Y49_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.SHIFT_REG~q\ & (SC(2) $ (((!SC(0) & !SC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SC(2),
	datab => SC(0),
	datac => SC(1),
	datad => \state.SHIFT_REG~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X2_Y49_N14
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # ((!\state.SHIFT_REG~q\ & ((\state.INIT~q\) # (SC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \state.INIT~q\,
	datac => SC(2),
	datad => \state.SHIFT_REG~q\,
	combout => \Selector17~1_combout\);

-- Location: FF_X2_Y49_N15
\SC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SC(2));

-- Location: LCCOMB_X3_Y49_N24
\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state~18_combout\ & !SC(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~18_combout\,
	datad => SC(2),
	combout => \state~19_combout\);

-- Location: FF_X3_Y49_N25
\state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FINISH~q\);

-- Location: LCCOMB_X2_Y49_N8
\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (!\rst~input_o\ & (!\state.FINISH~q\ & ((\state.IDLE~q\) # (\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state.IDLE~q\,
	datac => \start~input_o\,
	datad => \state.FINISH~q\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X3_Y49_N18
\state.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~feeder_combout\ = \state~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~17_combout\,
	combout => \state.IDLE~feeder_combout\);

-- Location: FF_X3_Y49_N19
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.IDLE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X2_Y49_N24
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!\rst~input_o\ & (\start~input_o\ & !\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \start~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~15_combout\);

-- Location: FF_X2_Y49_N25
\state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.INIT~q\);

-- Location: LCCOMB_X2_Y49_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.SHIFT_REG~q\ & ((SC(2)) # ((SC(1)) # (!SC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SC(2),
	datab => SC(0),
	datac => SC(1),
	datad => \state.SHIFT_REG~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X2_Y49_N0
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state.INIT~q\) # (\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.INIT~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X2_Y49_N1
\state.CHECK_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CHECK_BITS~q\);

-- Location: LCCOMB_X3_Y49_N12
\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state.CHECK_BITS~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.CHECK_BITS~q\,
	datac => \rst~input_o\,
	combout => \state~16_combout\);

-- Location: FF_X3_Y49_N13
\state.ADD_SUB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ADD_SUB~q\);

-- Location: LCCOMB_X3_Y49_N28
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (!\rst~input_o\ & \state.ADD_SUB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \state.ADD_SUB~q\,
	combout => \state~14_combout\);

-- Location: FF_X3_Y49_N29
\state.SHIFT_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SHIFT_REG~q\);

-- Location: LCCOMB_X3_Y49_N2
\A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~0_combout\ = (!\state.SHIFT_REG~q\ & (!\rst~input_o\ & \state.ADD_SUB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SHIFT_REG~q\,
	datac => \rst~input_o\,
	datad => \state.ADD_SUB~q\,
	combout => \A~0_combout\);

-- Location: LCCOMB_X3_Y49_N0
\A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~1_combout\ = (\state.SHIFT_REG~q\ & (!\rst~input_o\ & !\state.ADD_SUB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SHIFT_REG~q\,
	datac => \rst~input_o\,
	datad => \state.ADD_SUB~q\,
	combout => \A~1_combout\);

-- Location: LCCOMB_X4_Y49_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.SHIFT_REG~q\ & (Q(0))) # (!\state.SHIFT_REG~q\ & (((!\state.INIT~q\ & \Qm1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \state.INIT~q\,
	datac => \Qm1~q\,
	datad => \state.SHIFT_REG~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X4_Y49_N7
Qm1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Qm1~q\);

-- Location: LCCOMB_X3_Y49_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.ADD_SUB~q\ & (Q(0) $ (((\Qm1~q\))))) # (!\state.ADD_SUB~q\ & (((\state.INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datab => Q(0),
	datac => \state.INIT~q\,
	datad => \Qm1~q\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X0_Y44_N22
\M[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(4),
	o => \M[4]~input_o\);

-- Location: LCCOMB_X3_Y49_N22
\M_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg~5_combout\ = (!\rst~input_o\ & \M[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \M[4]~input_o\,
	combout => \M_reg~5_combout\);

-- Location: LCCOMB_X3_Y49_N30
\M_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg[0]~1_combout\ = (\rst~input_o\) # (\state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \state.INIT~q\,
	combout => \M_reg[0]~1_combout\);

-- Location: FF_X3_Y49_N11
\M_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \M_reg~5_combout\,
	sload => VCC,
	ena => \M_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M_reg(4));

-- Location: LCCOMB_X3_Y49_N10
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = M_reg(4) $ (((\Qm1~q\ & !Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qm1~q\,
	datac => M_reg(4),
	datad => Q(0),
	combout => \Add0~14_combout\);

-- Location: IOIBUF_X0_Y44_N8
\M[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(3),
	o => \M[3]~input_o\);

-- Location: LCCOMB_X3_Y49_N14
\M_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg~4_combout\ = (!\rst~input_o\ & \M[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \M[3]~input_o\,
	combout => \M_reg~4_combout\);

-- Location: FF_X3_Y49_N15
\M_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_reg~4_combout\,
	ena => \M_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M_reg(3));

-- Location: LCCOMB_X3_Y49_N20
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = M_reg(3) $ (((!Q(0) & \Qm1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => M_reg(3),
	datad => \Qm1~q\,
	combout => \Add0~11_combout\);

-- Location: IOIBUF_X0_Y44_N1
\M[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(2),
	o => \M[2]~input_o\);

-- Location: LCCOMB_X3_Y49_N8
\M_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg~3_combout\ = (!\rst~input_o\ & \M[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \M[2]~input_o\,
	combout => \M_reg~3_combout\);

-- Location: FF_X3_Y49_N17
\M_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \M_reg~3_combout\,
	sload => VCC,
	ena => \M_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M_reg(2));

-- Location: LCCOMB_X3_Y49_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = M_reg(2) $ (((!Q(0) & \Qm1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => M_reg(2),
	datad => \Qm1~q\,
	combout => \Add0~8_combout\);

-- Location: IOIBUF_X0_Y47_N15
\M[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: LCCOMB_X3_Y49_N6
\M_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg~2_combout\ = (!\rst~input_o\ & \M[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \M[1]~input_o\,
	combout => \M_reg~2_combout\);

-- Location: FF_X3_Y49_N7
\M_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_reg~2_combout\,
	ena => \M_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M_reg(1));

-- Location: LCCOMB_X4_Y49_N2
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = M_reg(1) $ (((\Qm1~q\ & !Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qm1~q\,
	datac => M_reg(1),
	datad => Q(0),
	combout => \Add0~5_combout\);

-- Location: IOIBUF_X0_Y44_N15
\M[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: LCCOMB_X3_Y49_N26
\M_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_reg~0_combout\ = (!\rst~input_o\ & \M[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \M[0]~input_o\,
	combout => \M_reg~0_combout\);

-- Location: FF_X3_Y49_N27
\M_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \M_reg~0_combout\,
	ena => \M_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M_reg(0));

-- Location: LCCOMB_X4_Y49_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = M_reg(0) $ (((\Qm1~q\ & !Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qm1~q\,
	datac => M_reg(0),
	datad => Q(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X4_Y49_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY((Q(0)) # (!\Qm1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qm1~q\,
	datab => Q(0),
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X4_Y49_N16
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((A(0) & (!\Add0~2_cout\)) # (!A(0) & ((\Add0~2_cout\) # (GND))))) # (!\Add0~0_combout\ & ((A(0) & (\Add0~2_cout\ & VCC)) # (!A(0) & (!\Add0~2_cout\))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & ((!\Add0~2_cout\) # (!A(0)))) # (!\Add0~0_combout\ & (!A(0) & !\Add0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => A(0),
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X4_Y49_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((A(1) $ (\Add0~5_combout\ $ (\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((A(1) & ((!\Add0~4\) # (!\Add0~5_combout\))) # (!A(1) & (!\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X4_Y49_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((A(2) & (!\Add0~7\)) # (!A(2) & ((\Add0~7\) # (GND))))) # (!\Add0~8_combout\ & ((A(2) & (\Add0~7\ & VCC)) # (!A(2) & (!\Add0~7\))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((!\Add0~7\) # (!A(2)))) # (!\Add0~8_combout\ & (!A(2) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => A(2),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X4_Y49_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((A(3) $ (\Add0~11_combout\ $ (\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((A(3) & ((!\Add0~10\) # (!\Add0~11_combout\))) # (!A(3) & (!\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X4_Y49_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = A(4) $ (\Add0~13\ $ (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => A(4),
	datad => \Add0~14_combout\,
	cin => \Add0~13\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X4_Y49_N0
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\ & (\state.ADD_SUB~q\ & ((\Add0~15_combout\)))) # (!\Selector6~0_combout\ & (((A(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datab => \Selector6~0_combout\,
	datac => A(4),
	datad => \Add0~15_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X4_Y49_N1
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X4_Y49_N30
\A~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~7_combout\ = (\A~1_combout\ & ((A(4)) # ((\Add0~12_combout\ & \A~0_combout\)))) # (!\A~1_combout\ & (((\Add0~12_combout\ & \A~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~1_combout\,
	datab => A(4),
	datac => \Add0~12_combout\,
	datad => \A~0_combout\,
	combout => \A~7_combout\);

-- Location: LCCOMB_X4_Y49_N10
\A[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~3_combout\ = ((\state.ADD_SUB~q\ & (Q(0) $ (!\Qm1~q\)))) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datab => \state.IDLE~q\,
	datac => Q(0),
	datad => \Qm1~q\,
	combout => \A[2]~3_combout\);

-- Location: LCCOMB_X4_Y49_N4
\A[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~4_combout\ = (\rst~input_o\) # ((!\state.FINISH~q\ & (!\state.CHECK_BITS~q\ & !\A[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state.FINISH~q\,
	datac => \state.CHECK_BITS~q\,
	datad => \A[2]~3_combout\,
	combout => \A[2]~4_combout\);

-- Location: FF_X4_Y49_N31
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A~7_combout\,
	ena => \A[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X4_Y49_N28
\A~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~6_combout\ = (\A~0_combout\ & ((\Add0~9_combout\) # ((A(3) & \A~1_combout\)))) # (!\A~0_combout\ & (A(3) & (\A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~0_combout\,
	datab => A(3),
	datac => \A~1_combout\,
	datad => \Add0~9_combout\,
	combout => \A~6_combout\);

-- Location: FF_X4_Y49_N29
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A~6_combout\,
	ena => \A[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X4_Y49_N26
\A~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~5_combout\ = (\A~0_combout\ & ((\Add0~6_combout\) # ((A(2) & \A~1_combout\)))) # (!\A~0_combout\ & (A(2) & (\A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~0_combout\,
	datab => A(2),
	datac => \A~1_combout\,
	datad => \Add0~6_combout\,
	combout => \A~5_combout\);

-- Location: FF_X4_Y49_N27
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A~5_combout\,
	ena => \A[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X4_Y49_N8
\A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A~2_combout\ = (\A~0_combout\ & ((\Add0~3_combout\) # ((A(1) & \A~1_combout\)))) # (!\A~0_combout\ & (A(1) & (\A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~0_combout\,
	datab => A(1),
	datac => \A~1_combout\,
	datad => \Add0~3_combout\,
	combout => \A~2_combout\);

-- Location: FF_X4_Y49_N9
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A~2_combout\,
	ena => \A[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: IOIBUF_X0_Y47_N1
\Q_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_in(4),
	o => \Q_in[4]~input_o\);

-- Location: LCCOMB_X2_Y49_N28
\Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~5_combout\ = (\state.SHIFT_REG~q\ & (A(0))) # (!\state.SHIFT_REG~q\ & ((\Q_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A(0),
	datac => \Q_in[4]~input_o\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q~5_combout\);

-- Location: LCCOMB_X2_Y49_N22
\Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~1_combout\ = (\rst~input_o\) # ((\state.INIT~q\) # (\state.SHIFT_REG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state.INIT~q\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q[0]~1_combout\);

-- Location: FF_X2_Y49_N29
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~5_combout\,
	sclr => \rst~input_o\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: IOIBUF_X0_Y45_N22
\Q_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_in(3),
	o => \Q_in[3]~input_o\);

-- Location: LCCOMB_X2_Y49_N26
\Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = (\state.SHIFT_REG~q\ & (Q(4))) # (!\state.SHIFT_REG~q\ & ((\Q_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => \Q_in[3]~input_o\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q~4_combout\);

-- Location: FF_X2_Y49_N27
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~4_combout\,
	sclr => \rst~input_o\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: IOIBUF_X0_Y46_N15
\Q_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_in(2),
	o => \Q_in[2]~input_o\);

-- Location: LCCOMB_X2_Y49_N12
\Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = (\state.SHIFT_REG~q\ & (Q(3))) # (!\state.SHIFT_REG~q\ & ((\Q_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datac => \Q_in[2]~input_o\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q~3_combout\);

-- Location: FF_X2_Y49_N13
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~3_combout\,
	sclr => \rst~input_o\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: IOIBUF_X0_Y45_N15
\Q_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_in(1),
	o => \Q_in[1]~input_o\);

-- Location: LCCOMB_X2_Y49_N2
\Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (\state.SHIFT_REG~q\ & (Q(2))) # (!\state.SHIFT_REG~q\ & ((\Q_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datac => \Q_in[1]~input_o\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q~2_combout\);

-- Location: FF_X2_Y49_N3
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~2_combout\,
	sclr => \rst~input_o\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: IOIBUF_X0_Y46_N22
\Q_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_in(0),
	o => \Q_in[0]~input_o\);

-- Location: LCCOMB_X2_Y49_N16
\Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\state.SHIFT_REG~q\ & (Q(1))) # (!\state.SHIFT_REG~q\ & ((\Q_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => \Q_in[0]~input_o\,
	datad => \state.SHIFT_REG~q\,
	combout => \Q~0_combout\);

-- Location: FF_X2_Y49_N17
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~0_combout\,
	sclr => \rst~input_o\,
	ena => \Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LCCOMB_X2_Y49_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.FINISH~q\) # ((\state.IDLE~q\ & \done~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \done~reg0_q\,
	datad => \state.FINISH~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X2_Y49_N31
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;

ww_P(8) <= \P[8]~output_o\;

ww_P(9) <= \P[9]~output_o\;

ww_done <= \done~output_o\;
END structure;


