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
-- Generated on "10/03/2025 11:40:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          seq_1011_detector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seq_1011_detector_vhd_vec_tst IS
END seq_1011_detector_vhd_vec_tst;
ARCHITECTURE seq_1011_detector_arch OF seq_1011_detector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT seq_1011_detector
	PORT (
	clk : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : seq_1011_detector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	resetn => resetn,
	X => X,
	Z => Z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
	resetn <= '1';
	WAIT FOR 590000 ps;
	resetn <= '0';
WAIT;
END PROCESS t_prcs_resetn;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 160000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
	WAIT FOR 70000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
	WAIT FOR 110000 ps;
	X <= '1';
	WAIT FOR 250000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END seq_1011_detector_arch;
