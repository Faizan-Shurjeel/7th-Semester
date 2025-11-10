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
-- Generated on "09/19/2025 10:29:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Alarm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Alarm_vhd_vec_tst IS
END Alarm_vhd_vec_tst;
ARCHITECTURE Alarm_arch OF Alarm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DOOR : STD_LOGIC;
SIGNAL IGNITION : STD_LOGIC;
SIGNAL SBELT : STD_LOGIC;
SIGNAL WARNING : STD_LOGIC;
COMPONENT Alarm
	PORT (
	DOOR : IN STD_LOGIC;
	IGNITION : IN STD_LOGIC;
	SBELT : IN STD_LOGIC;
	WARNING : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Alarm
	PORT MAP (
-- list connections between master ports and signals
	DOOR => DOOR,
	IGNITION => IGNITION,
	SBELT => SBELT,
	WARNING => WARNING
	);

-- DOOR
t_prcs_DOOR: PROCESS
BEGIN
	DOOR <= '0';
	WAIT FOR 40000 ps;
	DOOR <= '1';
	WAIT FOR 40000 ps;
	DOOR <= '0';
	WAIT FOR 150000 ps;
	DOOR <= '1';
	WAIT FOR 40000 ps;
	DOOR <= '0';
	WAIT FOR 140000 ps;
	DOOR <= '1';
	WAIT FOR 40000 ps;
	DOOR <= '0';
	WAIT FOR 50000 ps;
	DOOR <= '1';
	WAIT FOR 40000 ps;
	DOOR <= '0';
WAIT;
END PROCESS t_prcs_DOOR;

-- IGNITION
t_prcs_IGNITION: PROCESS
BEGIN
	IGNITION <= '0';
	WAIT FOR 90000 ps;
	IGNITION <= '1';
	WAIT FOR 40000 ps;
	IGNITION <= '0';
	WAIT FOR 100000 ps;
	IGNITION <= '1';
	WAIT FOR 40000 ps;
	IGNITION <= '0';
	WAIT FOR 40000 ps;
	IGNITION <= '1';
	WAIT FOR 50000 ps;
	IGNITION <= '0';
	WAIT FOR 140000 ps;
	IGNITION <= '1';
	WAIT FOR 40000 ps;
	IGNITION <= '0';
WAIT;
END PROCESS t_prcs_IGNITION;

-- SBELT
t_prcs_SBELT: PROCESS
BEGIN
	SBELT <= '0';
	WAIT FOR 160000 ps;
	SBELT <= '1';
	WAIT FOR 30000 ps;
	SBELT <= '0';
	WAIT FOR 120000 ps;
	SBELT <= '1';
	WAIT FOR 50000 ps;
	SBELT <= '0';
	WAIT FOR 50000 ps;
	SBELT <= '1';
	WAIT FOR 40000 ps;
	SBELT <= '0';
	WAIT FOR 50000 ps;
	SBELT <= '1';
	WAIT FOR 40000 ps;
	SBELT <= '0';
WAIT;
END PROCESS t_prcs_SBELT;
END Alarm_arch;
