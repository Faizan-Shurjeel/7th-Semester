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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/19/2025 16:37:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binary_divider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binary_divider_vhd_vec_tst IS
END binary_divider_vhd_vec_tst;
ARCHITECTURE binary_divider_arch OF binary_divider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL debug_counter : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL debug_state : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dividend : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL divisor : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL done : STD_LOGIC;
SIGNAL quotient : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL remi : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT binary_divider
	PORT (
	clk : IN STD_LOGIC;
	debug_counter : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	debug_state : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	dividend : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	divisor : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	done : BUFFER STD_LOGIC;
	quotient : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	remi : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : binary_divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	debug_counter => debug_counter,
	debug_state => debug_state,
	dividend => dividend,
	divisor => divisor,
	done => done,
	quotient => quotient,
	remi => remi,
	reset => reset,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dividend[3]
t_prcs_dividend_3: PROCESS
BEGIN
	dividend(3) <= '0';
WAIT;
END PROCESS t_prcs_dividend_3;
-- dividend[2]
t_prcs_dividend_2: PROCESS
BEGIN
	dividend(2) <= '1';
WAIT;
END PROCESS t_prcs_dividend_2;
-- dividend[1]
t_prcs_dividend_1: PROCESS
BEGIN
	dividend(1) <= '1';
WAIT;
END PROCESS t_prcs_dividend_1;
-- dividend[0]
t_prcs_dividend_0: PROCESS
BEGIN
	dividend(0) <= '1';
WAIT;
END PROCESS t_prcs_dividend_0;
-- divisor[3]
t_prcs_divisor_3: PROCESS
BEGIN
	divisor(3) <= '0';
WAIT;
END PROCESS t_prcs_divisor_3;
-- divisor[2]
t_prcs_divisor_2: PROCESS
BEGIN
	divisor(2) <= '0';
WAIT;
END PROCESS t_prcs_divisor_2;
-- divisor[1]
t_prcs_divisor_1: PROCESS
BEGIN
	divisor(1) <= '1';
WAIT;
END PROCESS t_prcs_divisor_1;
-- divisor[0]
t_prcs_divisor_0: PROCESS
BEGIN
	divisor(0) <= '0';
WAIT;
END PROCESS t_prcs_divisor_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END binary_divider_arch;
