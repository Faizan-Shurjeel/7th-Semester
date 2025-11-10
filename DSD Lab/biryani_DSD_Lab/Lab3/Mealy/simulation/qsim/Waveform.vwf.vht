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
-- Generated on "09/26/2025 10:27:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Code_Converter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Code_Converter_vhd_vec_tst IS
END Code_Converter_vhd_vec_tst;
ARCHITECTURE Code_Converter_arch OF Code_Converter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT Code_Converter
	PORT (
	CLK : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Code_Converter
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	enable => enable,
	X => X,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 50000 ps;
	enable <= '1';
	WAIT FOR 340000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 60000 ps;
	X <= '1';
	WAIT FOR 120000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END Code_Converter_arch;
