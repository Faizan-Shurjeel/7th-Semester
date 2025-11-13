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
-- Generated on "10/23/2025 22:52:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          challange
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY challange_vhd_vec_tst IS
END challange_vhd_vec_tst;
ARCHITECTURE challange_arch OF challange_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL CLEAR : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL pedestrian_green : STD_LOGIC;
SIGNAL pedestrian_red : STD_LOGIC;
SIGNAL vehicle_green : STD_LOGIC;
SIGNAL vehicle_red : STD_LOGIC;
SIGNAL vehicle_yellow : STD_LOGIC;
COMPONENT challange
	PORT (
	btn : IN STD_LOGIC;
	CLEAR : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	pedestrian_green : OUT STD_LOGIC;
	pedestrian_red : OUT STD_LOGIC;
	vehicle_green : OUT STD_LOGIC;
	vehicle_red : OUT STD_LOGIC;
	vehicle_yellow : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : challange
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	CLEAR => CLEAR,
	clk => clk,
	pedestrian_green => pedestrian_green,
	pedestrian_red => pedestrian_red,
	vehicle_green => vehicle_green,
	vehicle_red => vehicle_red,
	vehicle_yellow => vehicle_yellow
	);

-- btn
t_prcs_btn: PROCESS
BEGIN
	btn <= '0';
	WAIT FOR 130000 ps;
	btn <= '1';
	WAIT FOR 10000 ps;
	btn <= '0';
WAIT;
END PROCESS t_prcs_btn;

-- CLEAR
t_prcs_CLEAR: PROCESS
BEGIN
	CLEAR <= '0';
WAIT;
END PROCESS t_prcs_CLEAR;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END challange_arch;
