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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/03/2025 10:49:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          even_odd_updown_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY even_odd_updown_counter_vhd_vec_tst IS
END even_odd_updown_counter_vhd_vec_tst;
ARCHITECTURE even_odd_updown_counter_arch OF even_odd_updown_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cen : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dir : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT even_odd_updown_counter
	PORT (
	cen : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dir : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : even_odd_updown_counter
	PORT MAP (
-- list connections between master ports and signals
	cen => cen,
	clk => clk,
	count => count,
	dir => dir,
	rst => rst
	);

-- cen
t_prcs_cen: PROCESS
BEGIN
	cen <= '0';
	WAIT FOR 50000 ps;
	cen <= '1';
	WAIT FOR 400000 ps;
	cen <= '0';
	WAIT FOR 70000 ps;
	cen <= '1';
	WAIT FOR 470000 ps;
	cen <= '0';
WAIT;
END PROCESS t_prcs_cen;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- dir
t_prcs_dir: PROCESS
BEGIN
	dir <= '0';
	WAIT FOR 50000 ps;
	dir <= '1';
	WAIT FOR 400000 ps;
	dir <= '0';
WAIT;
END PROCESS t_prcs_dir;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 470000 ps;
	rst <= '1';
	WAIT FOR 30000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END even_odd_updown_counter_arch;
