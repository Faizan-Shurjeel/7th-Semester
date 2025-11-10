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
-- Generated on "10/10/2025 11:55:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          vending_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vending_machine_vhd_vec_tst IS
END vending_machine_vhd_vec_tst;
ARCHITECTURE vending_machine_arch OF vending_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL change : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cola : STD_LOGIC;
SIGNAL dispense : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enter : STD_LOGIC;
SIGNAL fanta : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rs1 : STD_LOGIC;
SIGNAL rs2 : STD_LOGIC;
SIGNAL rs4 : STD_LOGIC;
SIGNAL rs8 : STD_LOGIC;
SIGNAL sprite : STD_LOGIC;
SIGNAL total_money : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT vending_machine
	PORT (
	change : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	cola : IN STD_LOGIC;
	dispense : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	enter : IN STD_LOGIC;
	fanta : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rs1 : IN STD_LOGIC;
	rs2 : IN STD_LOGIC;
	rs4 : IN STD_LOGIC;
	rs8 : IN STD_LOGIC;
	sprite : IN STD_LOGIC;
	total_money : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : vending_machine
	PORT MAP (
-- list connections between master ports and signals
	change => change,
	clk => clk,
	cola => cola,
	dispense => dispense,
	enter => enter,
	fanta => fanta,
	reset => reset,
	rs1 => rs1,
	rs2 => rs2,
	rs4 => rs4,
	rs8 => rs8,
	sprite => sprite,
	total_money => total_money
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

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 250000 ps;
	enter <= '1';
	WAIT FOR 30000 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;

-- cola
t_prcs_cola: PROCESS
BEGIN
	cola <= '0';
	WAIT FOR 210000 ps;
	cola <= '1';
	WAIT FOR 60000 ps;
	cola <= '0';
WAIT;
END PROCESS t_prcs_cola;

-- fanta
t_prcs_fanta: PROCESS
BEGIN
	fanta <= '0';
WAIT;
END PROCESS t_prcs_fanta;

-- sprite
t_prcs_sprite: PROCESS
BEGIN
	sprite <= '0';
WAIT;
END PROCESS t_prcs_sprite;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- rs1
t_prcs_rs1: PROCESS
BEGIN
	rs1 <= '0';
	WAIT FOR 140000 ps;
	rs1 <= '1';
	WAIT FOR 50000 ps;
	rs1 <= '0';
WAIT;
END PROCESS t_prcs_rs1;

-- rs2
t_prcs_rs2: PROCESS
BEGIN
	rs2 <= '0';
	WAIT FOR 100000 ps;
	rs2 <= '1';
	WAIT FOR 30000 ps;
	rs2 <= '0';
WAIT;
END PROCESS t_prcs_rs2;

-- rs4
t_prcs_rs4: PROCESS
BEGIN
	rs4 <= '0';
	WAIT FOR 30000 ps;
	rs4 <= '1';
	WAIT FOR 60000 ps;
	rs4 <= '0';
WAIT;
END PROCESS t_prcs_rs4;

-- rs8
t_prcs_rs8: PROCESS
BEGIN
	rs8 <= '0';
WAIT;
END PROCESS t_prcs_rs8;
END vending_machine_arch;
