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
-- Generated on "09/19/2025 12:32:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_reg_vhd_vec_tst IS
END shift_reg_vhd_vec_tst;
ARCHITECTURE shift_reg_arch OF shift_reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Serial_In : STD_LOGIC;
SIGNAL shift : STD_LOGIC;
COMPONENT shift_reg
	PORT (
	clock : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Serial_In : IN STD_LOGIC;
	shift : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_reg
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Q => Q,
	Serial_In => Serial_In,
	shift => shift
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Serial_In
t_prcs_Serial_In: PROCESS
BEGIN
	Serial_In <= '0';
	WAIT FOR 50000 ps;
	Serial_In <= '1';
	WAIT FOR 150000 ps;
	Serial_In <= '0';
	WAIT FOR 170000 ps;
	Serial_In <= '1';
	WAIT FOR 340000 ps;
	Serial_In <= '0';
WAIT;
END PROCESS t_prcs_Serial_In;

-- shift
t_prcs_shift: PROCESS
BEGIN
	shift <= '0';
	WAIT FOR 120000 ps;
	shift <= '1';
	WAIT FOR 160000 ps;
	shift <= '0';
	WAIT FOR 90000 ps;
	shift <= '1';
	WAIT FOR 340000 ps;
	shift <= '0';
WAIT;
END PROCESS t_prcs_shift;
END shift_reg_arch;
