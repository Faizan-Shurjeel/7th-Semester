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
-- Generated on "10/31/2025 12:57:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplier
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplier_vhd_vec_tst IS
END multiplier_vhd_vec_tst;
ARCHITECTURE multiplier_arch OF multiplier_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL numb : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL PROUT : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL sbtn : STD_LOGIC;
COMPONENT multiplier
	PORT (
	clk : IN STD_LOGIC;
	numb : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	PROUT : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	rst : IN STD_LOGIC;
	sbtn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplier
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	numb => numb,
	PROUT => PROUT,
	rst => rst,
	sbtn => sbtn
	);

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

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- sbtn
t_prcs_sbtn: PROCESS
BEGIN
	sbtn <= '0';
	WAIT FOR 60000 ps;
	sbtn <= '1';
WAIT;
END PROCESS t_prcs_sbtn;
END multiplier_arch;
