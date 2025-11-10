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
-- Generated on "10/03/2025 10:57:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          two_consecutive_ones
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY two_consecutive_ones_vhd_vec_tst IS
END two_consecutive_ones_vhd_vec_tst;
ARCHITECTURE two_consecutive_ones_arch OF two_consecutive_ones_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL W : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT two_consecutive_ones
	PORT (
	clk : IN STD_LOGIC;
	Resetn : IN STD_LOGIC;
	W : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : two_consecutive_ones
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Resetn => Resetn,
	W => W,
	Z => Z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
	WAIT FOR 30000 ps;
	Resetn <= '1';
	WAIT FOR 460000 ps;
	Resetn <= '0';
	WAIT FOR 30000 ps;
	Resetn <= '1';
	WAIT FOR 70000 ps;
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;

-- W
t_prcs_W: PROCESS
BEGIN
	W <= '0';
	WAIT FOR 40000 ps;
	W <= '1';
	WAIT FOR 10000 ps;
	W <= '0';
	WAIT FOR 70000 ps;
	W <= '1';
	WAIT FOR 70000 ps;
	W <= '0';
	WAIT FOR 90000 ps;
	W <= '1';
	WAIT FOR 40000 ps;
	W <= '0';
	WAIT FOR 60000 ps;
	W <= '1';
	WAIT FOR 210000 ps;
	W <= '0';
WAIT;
END PROCESS t_prcs_W;
END two_consecutive_ones_arch;
