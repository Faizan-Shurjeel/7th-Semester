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
-- Generated on "11/14/2025 12:13:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Unsigned_binary_divider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Unsigned_binary_divider_vhd_vec_tst IS
END Unsigned_binary_divider_vhd_vec_tst;
ARCHITECTURE Unsigned_binary_divider_arch OF Unsigned_binary_divider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL overflow : STD_LOGIC;
SIGNAL quotient : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL remainder : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT Unsigned_binary_divider
	PORT (
	clk : IN STD_LOGIC;
	done : OUT STD_LOGIC;
	overflow : OUT STD_LOGIC;
	quotient : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	remainder : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Unsigned_binary_divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	done => done,
	overflow => overflow,
	quotient => quotient,
	remainder => remainder,
	reset => reset,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
END Unsigned_binary_divider_arch;
