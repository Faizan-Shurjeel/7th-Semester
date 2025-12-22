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
-- Generated on "12/19/2025 16:14:28"
                                                             
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
SIGNAL rst : STD_LOGIC;
SIGNAL state_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL yellow : STD_LOGIC;
COMPONENT trafficController
	PORT (
	btn : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	green : BUFFER STD_LOGIC;
	PDLED : BUFFER STD_LOGIC;
	red : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	state_out : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	yellow : BUFFER STD_LOGIC
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
	rst => rst,
	state_out => state_out,
	yellow => yellow
	);

-- btn
t_prcs_btn: PROCESS
BEGIN
	btn <= '0';
WAIT;
END PROCESS t_prcs_btn;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END trafficController_arch;
