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
-- Generated on "12/19/2025 09:52:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab_vhd_vec_tst IS
END lab_vhd_vec_tst;
ARCHITECTURE lab_arch OF lab_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL burst : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL din : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mem : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
COMPONENT lab
	PORT (
	address : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	burst : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	mem : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rw : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	burst => burst,
	clk => clk,
	din => din,
	dout => dout,
	mem => mem,
	reset => reset,
	rw => rw
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

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

-- mem
t_prcs_mem: PROCESS
BEGIN
	mem <= '1';
WAIT;
END PROCESS t_prcs_mem;

-- rw
t_prcs_rw: PROCESS
BEGIN
	rw <= '0';
	WAIT FOR 190000 ps;
	rw <= '1';
	WAIT FOR 40000 ps;
	rw <= '0';
	WAIT FOR 80000 ps;
	rw <= '1';
	WAIT FOR 100000 ps;
	rw <= '0';
	WAIT FOR 90000 ps;
	rw <= '1';
	WAIT FOR 120000 ps;
	rw <= '0';
WAIT;
END PROCESS t_prcs_rw;

-- burst
t_prcs_burst: PROCESS
BEGIN
	burst <= '0';
WAIT;
END PROCESS t_prcs_burst;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 110000 ps;
	address(1) <= '1';
	WAIT FOR 30000 ps;
	address(1) <= '0';
	WAIT FOR 160000 ps;
	address(1) <= '1';
	WAIT FOR 100000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 190000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;
-- din[3]
t_prcs_din_3: PROCESS
BEGIN
	din(3) <= '0';
	WAIT FOR 30000 ps;
	din(3) <= '1';
	WAIT FOR 50000 ps;
	din(3) <= '0';
	WAIT FOR 30000 ps;
	din(3) <= '1';
	WAIT FOR 30000 ps;
	din(3) <= '0';
WAIT;
END PROCESS t_prcs_din_3;
-- din[2]
t_prcs_din_2: PROCESS
BEGIN
	din(2) <= '0';
	WAIT FOR 110000 ps;
	din(2) <= '1';
	WAIT FOR 30000 ps;
	din(2) <= '0';
WAIT;
END PROCESS t_prcs_din_2;
-- din[1]
t_prcs_din_1: PROCESS
BEGIN
	din(1) <= '0';
	WAIT FOR 30000 ps;
	din(1) <= '1';
	WAIT FOR 50000 ps;
	din(1) <= '0';
	WAIT FOR 30000 ps;
	din(1) <= '1';
	WAIT FOR 30000 ps;
	din(1) <= '0';
WAIT;
END PROCESS t_prcs_din_1;
-- din[0]
t_prcs_din_0: PROCESS
BEGIN
	din(0) <= '0';
	WAIT FOR 110000 ps;
	din(0) <= '1';
	WAIT FOR 30000 ps;
	din(0) <= '0';
WAIT;
END PROCESS t_prcs_din_0;
END lab_arch;
