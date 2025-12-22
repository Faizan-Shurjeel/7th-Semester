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
-- Generated on "12/19/2025 15:44:46"
                                                             
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
SIGNAL done : STD_LOGIC;
SIGNAL M : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL P : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Q_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT multiplier
	PORT (
	clk : IN STD_LOGIC;
	done : BUFFER STD_LOGIC;
	M : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	P : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	Q_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rst : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplier
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	done => done,
	M => M,
	P => P,
	Q_in => Q_in,
	rst => rst,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- M[4]
t_prcs_M_4: PROCESS
BEGIN
	M(4) <= '0';
WAIT;
END PROCESS t_prcs_M_4;
-- M[3]
t_prcs_M_3: PROCESS
BEGIN
	M(3) <= '0';
WAIT;
END PROCESS t_prcs_M_3;
-- M[2]
t_prcs_M_2: PROCESS
BEGIN
	M(2) <= '0';
WAIT;
END PROCESS t_prcs_M_2;
-- M[1]
t_prcs_M_1: PROCESS
BEGIN
	M(1) <= '1';
WAIT;
END PROCESS t_prcs_M_1;
-- M[0]
t_prcs_M_0: PROCESS
BEGIN
	M(0) <= '1';
WAIT;
END PROCESS t_prcs_M_0;
-- Q_in[4]
t_prcs_Q_in_4: PROCESS
BEGIN
	Q_in(4) <= '1';
WAIT;
END PROCESS t_prcs_Q_in_4;
-- Q_in[3]
t_prcs_Q_in_3: PROCESS
BEGIN
	Q_in(3) <= '1';
WAIT;
END PROCESS t_prcs_Q_in_3;
-- Q_in[2]
t_prcs_Q_in_2: PROCESS
BEGIN
	Q_in(2) <= '0';
WAIT;
END PROCESS t_prcs_Q_in_2;
-- Q_in[1]
t_prcs_Q_in_1: PROCESS
BEGIN
	Q_in(1) <= '0';
WAIT;
END PROCESS t_prcs_Q_in_1;
-- Q_in[0]
t_prcs_Q_in_0: PROCESS
BEGIN
	Q_in(0) <= '1';
WAIT;
END PROCESS t_prcs_Q_in_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
END multiplier_arch;
