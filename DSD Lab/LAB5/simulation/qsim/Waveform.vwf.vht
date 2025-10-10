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
-- Generated on "10/10/2025 11:27:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_vec_tst IS
END FSM_vhd_vec_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLEAR : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Count_Index : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ENA : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL num : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT FSM
	PORT (
	CLEAR : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Count_Index : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ENA : IN STD_LOGIC;
	M : IN STD_LOGIC;
	num : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	CLEAR => CLEAR,
	CLK => CLK,
	Count_Index => Count_Index,
	ENA => ENA,
	M => M,
	num => num
	);

-- CLEAR
t_prcs_CLEAR: PROCESS
BEGIN
	CLEAR <= '0';
WAIT;
END PROCESS t_prcs_CLEAR;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 70000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 70000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 70000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 70000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 70000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 30000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	CLK <= '0';
	WAIT FOR 30000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 25
	LOOP
		CLK <= '0';
		WAIT FOR 10000 ps;
		CLK <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_CLK;

-- ENA
t_prcs_ENA: PROCESS
BEGIN
	ENA <= '1';
WAIT;
END PROCESS t_prcs_ENA;

-- M
t_prcs_M: PROCESS
BEGIN
	M <= '1';
WAIT;
END PROCESS t_prcs_M;
END FSM_arch;
