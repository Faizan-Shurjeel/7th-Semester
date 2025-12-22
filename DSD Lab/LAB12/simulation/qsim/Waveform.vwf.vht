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
-- Generated on "12/19/2025 13:11:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Cache_Controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cache_Controller_vhd_vec_tst IS
END Cache_Controller_vhd_vec_tst;
ARCHITECTURE Cache_Controller_arch OF Cache_Controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Led_Hit : STD_LOGIC;
SIGNAL Led_Miss : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL Start_Btn : STD_LOGIC;
SIGNAL Switch_Addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Cache_Controller
	PORT (
	Clk : IN STD_LOGIC;
	Led_Hit : OUT STD_LOGIC;
	Led_Miss : OUT STD_LOGIC;
	Reset : IN STD_LOGIC;
	Start_Btn : IN STD_LOGIC;
	Switch_Addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Cache_Controller
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Led_Hit => Led_Hit,
	Led_Miss => Led_Miss,
	Reset => Reset,
	Start_Btn => Start_Btn,
	Switch_Addr => Switch_Addr
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
	WAIT FOR 40000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- Start_Btn
t_prcs_Start_Btn: PROCESS
BEGIN
	Start_Btn <= '1';
WAIT;
END PROCESS t_prcs_Start_Btn;
-- Switch_Addr[7]
t_prcs_Switch_Addr_7: PROCESS
BEGIN
	Switch_Addr(7) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_7;
-- Switch_Addr[6]
t_prcs_Switch_Addr_6: PROCESS
BEGIN
	Switch_Addr(6) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_6;
-- Switch_Addr[5]
t_prcs_Switch_Addr_5: PROCESS
BEGIN
	Switch_Addr(5) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_5;
-- Switch_Addr[4]
t_prcs_Switch_Addr_4: PROCESS
BEGIN
	Switch_Addr(4) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_4;
-- Switch_Addr[3]
t_prcs_Switch_Addr_3: PROCESS
BEGIN
	Switch_Addr(3) <= '1';
WAIT;
END PROCESS t_prcs_Switch_Addr_3;
-- Switch_Addr[2]
t_prcs_Switch_Addr_2: PROCESS
BEGIN
	Switch_Addr(2) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_2;
-- Switch_Addr[1]
t_prcs_Switch_Addr_1: PROCESS
BEGIN
	Switch_Addr(1) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_1;
-- Switch_Addr[0]
t_prcs_Switch_Addr_0: PROCESS
BEGIN
	Switch_Addr(0) <= '0';
WAIT;
END PROCESS t_prcs_Switch_Addr_0;
END Cache_Controller_arch;
