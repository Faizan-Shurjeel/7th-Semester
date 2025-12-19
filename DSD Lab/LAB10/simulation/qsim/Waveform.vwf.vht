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
-- Generated on "12/19/2025 07:22:31"
                                                             
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
SIGNAL Clock : STD_LOGIC;
SIGNAL Data_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Data_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL Read : STD_LOGIC;
SIGNAL Read_Addr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Write : STD_LOGIC;
SIGNAL Write_Addr : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT lab
	PORT (
	Clock : IN STD_LOGIC;
	Data_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Data_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Enable : IN STD_LOGIC;
	Read : IN STD_LOGIC;
	Read_Addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Write : IN STD_LOGIC;
	Write_Addr : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Data_in => Data_in,
	Data_out => Data_out,
	Enable => Enable,
	Read => Read,
	Read_Addr => Read_Addr,
	Write => Write,
	Write_Addr => Write_Addr
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '0';
	WAIT FOR 70000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 30000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 40000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 30000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
WAIT;
END PROCESS t_prcs_Enable;

-- Write
t_prcs_Write: PROCESS
BEGIN
	Write <= '0';
	WAIT FOR 70000 ps;
	Write <= '1';
	WAIT FOR 20000 ps;
	Write <= '0';
	WAIT FOR 20000 ps;
	Write <= '1';
	WAIT FOR 20000 ps;
	Write <= '0';
WAIT;
END PROCESS t_prcs_Write;

-- Read
t_prcs_Read: PROCESS
BEGIN
	Read <= '0';
	WAIT FOR 160000 ps;
	Read <= '1';
	WAIT FOR 20000 ps;
	Read <= '0';
	WAIT FOR 40000 ps;
	Read <= '1';
	WAIT FOR 20000 ps;
	Read <= '0';
WAIT;
END PROCESS t_prcs_Read;
-- Write_Addr[1]
t_prcs_Write_Addr_1: PROCESS
BEGIN
	Write_Addr(1) <= '0';
	WAIT FOR 110000 ps;
	Write_Addr(1) <= '1';
	WAIT FOR 20000 ps;
	Write_Addr(1) <= '0';
WAIT;
END PROCESS t_prcs_Write_Addr_1;
-- Write_Addr[0]
t_prcs_Write_Addr_0: PROCESS
BEGIN
	Write_Addr(0) <= '0';
	WAIT FOR 70000 ps;
	Write_Addr(0) <= '1';
	WAIT FOR 20000 ps;
	Write_Addr(0) <= '0';
WAIT;
END PROCESS t_prcs_Write_Addr_0;
-- Read_Addr[1]
t_prcs_Read_Addr_1: PROCESS
BEGIN
	Read_Addr(1) <= '0';
	WAIT FOR 220000 ps;
	Read_Addr(1) <= '1';
	WAIT FOR 20000 ps;
	Read_Addr(1) <= '0';
WAIT;
END PROCESS t_prcs_Read_Addr_1;
-- Read_Addr[0]
t_prcs_Read_Addr_0: PROCESS
BEGIN
	Read_Addr(0) <= '0';
	WAIT FOR 160000 ps;
	Read_Addr(0) <= '1';
	WAIT FOR 20000 ps;
	Read_Addr(0) <= '0';
WAIT;
END PROCESS t_prcs_Read_Addr_0;
-- Data_in[3]
t_prcs_Data_in_3: PROCESS
BEGIN
	Data_in(3) <= '0';
	WAIT FOR 70000 ps;
	Data_in(3) <= '1';
	WAIT FOR 20000 ps;
	Data_in(3) <= '0';
	WAIT FOR 20000 ps;
	Data_in(3) <= '1';
	WAIT FOR 20000 ps;
	Data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_in_3;
-- Data_in[2]
t_prcs_Data_in_2: PROCESS
BEGIN
	Data_in(2) <= '0';
	WAIT FOR 110000 ps;
	Data_in(2) <= '1';
	WAIT FOR 20000 ps;
	Data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_in_2;
-- Data_in[1]
t_prcs_Data_in_1: PROCESS
BEGIN
	Data_in(1) <= '0';
	WAIT FOR 70000 ps;
	Data_in(1) <= '1';
	WAIT FOR 20000 ps;
	Data_in(1) <= '0';
	WAIT FOR 20000 ps;
	Data_in(1) <= '1';
	WAIT FOR 20000 ps;
	Data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_in_1;
-- Data_in[0]
t_prcs_Data_in_0: PROCESS
BEGIN
	Data_in(0) <= '0';
	WAIT FOR 110000 ps;
	Data_in(0) <= '1';
	WAIT FOR 20000 ps;
	Data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_in_0;
END lab_arch;
