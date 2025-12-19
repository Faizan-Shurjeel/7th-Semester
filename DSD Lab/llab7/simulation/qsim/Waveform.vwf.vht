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
-- Generated on "12/19/2025 11:07:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab_7_mul
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab_7_mul_vhd_vec_tst IS
END Lab_7_mul_vhd_vec_tst;
ARCHITECTURE Lab_7_mul_arch OF Lab_7_mul_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL final : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mcand : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mplier : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nmcand : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL product : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL st : STD_LOGIC;
COMPONENT Lab_7_mul
	PORT (
	clk : IN STD_LOGIC;
	final : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	mcand : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mplier : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	nmcand : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	product : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	st : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab_7_mul
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	final => final,
	mcand => mcand,
	mplier => mplier,
	nmcand => nmcand,
	product => product,
	st => st
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
-- mcand[3]
t_prcs_mcand_3: PROCESS
BEGIN
	mcand(3) <= '1';
	WAIT FOR 80000 ps;
	mcand(3) <= '0';
WAIT;
END PROCESS t_prcs_mcand_3;
-- mcand[2]
t_prcs_mcand_2: PROCESS
BEGIN
	mcand(2) <= '0';
WAIT;
END PROCESS t_prcs_mcand_2;
-- mcand[1]
t_prcs_mcand_1: PROCESS
BEGIN
	mcand(1) <= '0';
WAIT;
END PROCESS t_prcs_mcand_1;
-- mcand[0]
t_prcs_mcand_0: PROCESS
BEGIN
	mcand(0) <= '0';
WAIT;
END PROCESS t_prcs_mcand_0;
-- mplier[3]
t_prcs_mplier_3: PROCESS
BEGIN
	mplier(3) <= '1';
	WAIT FOR 80000 ps;
	mplier(3) <= '0';
WAIT;
END PROCESS t_prcs_mplier_3;
-- mplier[2]
t_prcs_mplier_2: PROCESS
BEGIN
	mplier(2) <= '1';
	WAIT FOR 80000 ps;
	mplier(2) <= '0';
WAIT;
END PROCESS t_prcs_mplier_2;
-- mplier[1]
t_prcs_mplier_1: PROCESS
BEGIN
	mplier(1) <= '0';
WAIT;
END PROCESS t_prcs_mplier_1;
-- mplier[0]
t_prcs_mplier_0: PROCESS
BEGIN
	mplier(0) <= '0';
WAIT;
END PROCESS t_prcs_mplier_0;

-- st
t_prcs_st: PROCESS
BEGIN
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 20000 ps;
	st <= '1';
	WAIT FOR 30000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 50000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 70000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 50000 ps;
	st <= '1';
	WAIT FOR 30000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 40000 ps;
	st <= '0';
	WAIT FOR 40000 ps;
	st <= '1';
	WAIT FOR 60000 ps;
	st <= '0';
	WAIT FOR 20000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 30000 ps;
	st <= '1';
	WAIT FOR 50000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 20000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 40000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 20000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
	WAIT FOR 20000 ps;
	st <= '1';
	WAIT FOR 20000 ps;
	st <= '0';
	WAIT FOR 10000 ps;
	st <= '1';
	WAIT FOR 10000 ps;
	st <= '0';
WAIT;
END PROCESS t_prcs_st;
END Lab_7_mul_arch;
