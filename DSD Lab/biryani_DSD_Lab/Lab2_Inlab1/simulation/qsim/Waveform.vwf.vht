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
-- Generated on "09/19/2025 12:12:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          D_latch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY D_latch_vhd_vec_tst IS
END D_latch_vhd_vec_tst;
ARCHITECTURE D_latch_arch OF D_latch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC;
SIGNAL data_out : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
COMPONENT D_latch
	PORT (
	data_in : IN STD_LOGIC;
	data_out : BUFFER STD_LOGIC;
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : D_latch
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out,
	enable => enable
	);

-- data_in
t_prcs_data_in: PROCESS
BEGIN
	data_in <= '0';
	WAIT FOR 50000 ps;
	data_in <= '1';
	WAIT FOR 70000 ps;
	data_in <= '0';
	WAIT FOR 100000 ps;
	data_in <= '1';
	WAIT FOR 70000 ps;
	data_in <= '0';
	WAIT FOR 220000 ps;
	data_in <= '1';
	WAIT FOR 50000 ps;
	data_in <= '0';
WAIT;
END PROCESS t_prcs_data_in;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 500000 ps;
	enable <= '0';
	WAIT FOR 80000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END D_latch_arch;
