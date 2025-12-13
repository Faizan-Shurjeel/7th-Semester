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
-- Generated on "12/09/2025 15:18:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          trafficController
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY trafficController_vhd_vec_tst IS
END trafficController_vhd_vec_tst;
ARCHITECTURE trafficController_arch OF trafficController_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL green : STD_LOGIC;
SIGNAL PDLED : STD_LOGIC;
SIGNAL red : STD_LOGIC;
SIGNAL stateC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL stateN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL stateP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL yellow : STD_LOGIC;
COMPONENT trafficController
	PORT (
	btn : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	green : OUT STD_LOGIC;
	PDLED : OUT STD_LOGIC;
	red : OUT STD_LOGIC;
	stateC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	stateN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	stateP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	yellow : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : trafficController
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	clk => clk,
	green => green,
	PDLED => PDLED,
	red => red,
	stateC => stateC,
	stateN => stateN,
	stateP => stateP,
	yellow => yellow
	);

-- btn
t_prcs_btn: PROCESS
BEGIN
	btn <= '0';
	WAIT FOR 430000 ps;
	btn <= '1';
	WAIT FOR 130000 ps;
	btn <= '0';
WAIT;
END PROCESS t_prcs_btn;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END trafficController_arch;
