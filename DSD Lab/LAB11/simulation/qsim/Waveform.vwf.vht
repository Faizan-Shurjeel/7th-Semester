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
-- Generated on "12/19/2025 16:16:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Stack_FSM_Controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Stack_FSM_Controller_vhd_vec_tst IS
END Stack_FSM_Controller_vhd_vec_tst;
ARCHITECTURE Stack_FSM_Controller_arch OF Stack_FSM_Controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Data_In : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Empty : STD_LOGIC;
SIGNAL Full : STD_LOGIC;
SIGNAL Pop : STD_LOGIC;
SIGNAL Push : STD_LOGIC;
SIGNAL Rst : STD_LOGIC;
COMPONENT Stack_FSM_Controller
	PORT (
	Clk : IN STD_LOGIC;
	Data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Empty : OUT STD_LOGIC;
	Full : OUT STD_LOGIC;
	Pop : IN STD_LOGIC;
	Push : IN STD_LOGIC;
	Rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Stack_FSM_Controller
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Data_In => Data_In,
	Data_Out => Data_Out,
	Empty => Empty,
	Full => Full,
	Pop => Pop,
	Push => Push,
	Rst => Rst
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 25000 ps;
	Clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- Data_In[7]
t_prcs_Data_In_7: PROCESS
BEGIN
	Data_In(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_7;
-- Data_In[6]
t_prcs_Data_In_6: PROCESS
BEGIN
	Data_In(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_6;
-- Data_In[5]
t_prcs_Data_In_5: PROCESS
BEGIN
	Data_In(5) <= '1';
WAIT;
END PROCESS t_prcs_Data_In_5;
-- Data_In[4]
t_prcs_Data_In_4: PROCESS
BEGIN
	Data_In(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_4;
-- Data_In[3]
t_prcs_Data_In_3: PROCESS
BEGIN
	Data_In(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_3;
-- Data_In[2]
t_prcs_Data_In_2: PROCESS
BEGIN
	Data_In(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_2;
-- Data_In[1]
t_prcs_Data_In_1: PROCESS
BEGIN
	Data_In(1) <= '1';
WAIT;
END PROCESS t_prcs_Data_In_1;
-- Data_In[0]
t_prcs_Data_In_0: PROCESS
BEGIN
	Data_In(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_In_0;

-- Pop
t_prcs_Pop: PROCESS
BEGIN
	Pop <= '0';
	WAIT FOR 360000 ps;
	Pop <= '1';
	WAIT FOR 170000 ps;
	Pop <= '0';
WAIT;
END PROCESS t_prcs_Pop;

-- Push
t_prcs_Push: PROCESS
BEGIN
	Push <= '0';
	WAIT FOR 120000 ps;
	Push <= '1';
	WAIT FOR 160000 ps;
	Push <= '0';
	WAIT FOR 360000 ps;
	Push <= '1';
	WAIT FOR 130000 ps;
	Push <= '0';
WAIT;
END PROCESS t_prcs_Push;

-- Rst
t_prcs_Rst: PROCESS
BEGIN
	Rst <= '1';
	WAIT FOR 40000 ps;
	Rst <= '0';
WAIT;
END PROCESS t_prcs_Rst;
END Stack_FSM_Controller_arch;
