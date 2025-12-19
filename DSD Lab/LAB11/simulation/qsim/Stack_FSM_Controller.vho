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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "12/19/2025 11:59:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Stack_FSM_Controller IS
    PORT (
	Clk : IN std_logic;
	Rst : IN std_logic;
	Push : IN std_logic;
	Pop : IN std_logic;
	Data_In : IN std_logic_vector(7 DOWNTO 0);
	Data_Out : OUT std_logic_vector(7 DOWNTO 0);
	Full : OUT std_logic;
	Empty : OUT std_logic
	);
END Stack_FSM_Controller;

-- Design Ports Information
-- Data_Out[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Full	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Empty	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pop	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Push	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Stack_FSM_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Push : std_logic;
SIGNAL ww_Pop : std_logic;
SIGNAL ww_Data_In : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Data_Out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Full : std_logic;
SIGNAL ww_Empty : std_logic;
SIGNAL \Rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_Out[0]~output_o\ : std_logic;
SIGNAL \Data_Out[1]~output_o\ : std_logic;
SIGNAL \Data_Out[2]~output_o\ : std_logic;
SIGNAL \Data_Out[3]~output_o\ : std_logic;
SIGNAL \Data_Out[4]~output_o\ : std_logic;
SIGNAL \Data_Out[5]~output_o\ : std_logic;
SIGNAL \Data_Out[6]~output_o\ : std_logic;
SIGNAL \Data_Out[7]~output_o\ : std_logic;
SIGNAL \Full~output_o\ : std_logic;
SIGNAL \Empty~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data_In[0]~input_o\ : std_logic;
SIGNAL \stack_mem~29feeder_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Push~input_o\ : std_logic;
SIGNAL \Pop~input_o\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \sp[0]~0_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \next_state.s_Pop~0_combout\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.s_Pop~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \next_state.s_Push~0_combout\ : std_logic;
SIGNAL \next_state.s_Idle~0_combout\ : std_logic;
SIGNAL \current_state.s_Idle~q\ : std_logic;
SIGNAL \next_state.s_Push~1_combout\ : std_logic;
SIGNAL \current_state.s_Push~q\ : std_logic;
SIGNAL \stack_mem~245_combout\ : std_logic;
SIGNAL \stack_mem~246_combout\ : std_logic;
SIGNAL \stack_mem~29_q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \stack_mem~251_combout\ : std_logic;
SIGNAL \stack_mem~252_combout\ : std_logic;
SIGNAL \stack_mem~13_q\ : std_logic;
SIGNAL \stack_mem~247_combout\ : std_logic;
SIGNAL \stack_mem~248_combout\ : std_logic;
SIGNAL \stack_mem~45_q\ : std_logic;
SIGNAL \stack_mem~249_combout\ : std_logic;
SIGNAL \stack_mem~250_combout\ : std_logic;
SIGNAL \stack_mem~61_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \stack_mem~148_combout\ : std_logic;
SIGNAL \stack_mem~149_combout\ : std_logic;
SIGNAL \stack_mem~21feeder_combout\ : std_logic;
SIGNAL \stack_mem~227_combout\ : std_logic;
SIGNAL \stack_mem~228_combout\ : std_logic;
SIGNAL \stack_mem~21_q\ : std_logic;
SIGNAL \stack_mem~221_combout\ : std_logic;
SIGNAL \stack_mem~222_combout\ : std_logic;
SIGNAL \stack_mem~53_q\ : std_logic;
SIGNAL \stack_mem~223_combout\ : std_logic;
SIGNAL \stack_mem~224_combout\ : std_logic;
SIGNAL \stack_mem~37_q\ : std_logic;
SIGNAL \stack_mem~225_combout\ : std_logic;
SIGNAL \stack_mem~226_combout\ : std_logic;
SIGNAL \stack_mem~69_q\ : std_logic;
SIGNAL \stack_mem~141_combout\ : std_logic;
SIGNAL \stack_mem~142_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \stack_mem~77feeder_combout\ : std_logic;
SIGNAL \stack_mem~235_combout\ : std_logic;
SIGNAL \stack_mem~236_combout\ : std_logic;
SIGNAL \stack_mem~77_q\ : std_logic;
SIGNAL \stack_mem~109feeder_combout\ : std_logic;
SIGNAL \stack_mem~229_combout\ : std_logic;
SIGNAL \stack_mem~230_combout\ : std_logic;
SIGNAL \stack_mem~109_q\ : std_logic;
SIGNAL \stack_mem~231_combout\ : std_logic;
SIGNAL \stack_mem~232_combout\ : std_logic;
SIGNAL \stack_mem~93_q\ : std_logic;
SIGNAL \stack_mem~125feeder_combout\ : std_logic;
SIGNAL \stack_mem~233_combout\ : std_logic;
SIGNAL \stack_mem~234_combout\ : std_logic;
SIGNAL \stack_mem~125_q\ : std_logic;
SIGNAL \stack_mem~143_combout\ : std_logic;
SIGNAL \stack_mem~144_combout\ : std_logic;
SIGNAL \stack_mem~117feeder_combout\ : std_logic;
SIGNAL \stack_mem~237_combout\ : std_logic;
SIGNAL \stack_mem~238_combout\ : std_logic;
SIGNAL \stack_mem~117_q\ : std_logic;
SIGNAL \stack_mem~243_combout\ : std_logic;
SIGNAL \stack_mem~244_combout\ : std_logic;
SIGNAL \stack_mem~85_q\ : std_logic;
SIGNAL \stack_mem~239_combout\ : std_logic;
SIGNAL \stack_mem~240_combout\ : std_logic;
SIGNAL \stack_mem~101_q\ : std_logic;
SIGNAL \stack_mem~241_combout\ : std_logic;
SIGNAL \stack_mem~242_combout\ : std_logic;
SIGNAL \stack_mem~133_q\ : std_logic;
SIGNAL \stack_mem~145_combout\ : std_logic;
SIGNAL \stack_mem~146_combout\ : std_logic;
SIGNAL \stack_mem~147_combout\ : std_logic;
SIGNAL \stack_mem~150_combout\ : std_logic;
SIGNAL \Data_Out[0]~0_combout\ : std_logic;
SIGNAL \Data_Out[0]~reg0_q\ : std_logic;
SIGNAL \Data_In[1]~input_o\ : std_logic;
SIGNAL \stack_mem~46_q\ : std_logic;
SIGNAL \stack_mem~14_q\ : std_logic;
SIGNAL \stack_mem~78_q\ : std_logic;
SIGNAL \stack_mem~110_q\ : std_logic;
SIGNAL \stack_mem~158_combout\ : std_logic;
SIGNAL \stack_mem~159_combout\ : std_logic;
SIGNAL \stack_mem~54_q\ : std_logic;
SIGNAL \stack_mem~22_q\ : std_logic;
SIGNAL \stack_mem~86_q\ : std_logic;
SIGNAL \stack_mem~118_q\ : std_logic;
SIGNAL \stack_mem~151_combout\ : std_logic;
SIGNAL \stack_mem~152_combout\ : std_logic;
SIGNAL \stack_mem~62feeder_combout\ : std_logic;
SIGNAL \stack_mem~62_q\ : std_logic;
SIGNAL \stack_mem~30_q\ : std_logic;
SIGNAL \stack_mem~94feeder_combout\ : std_logic;
SIGNAL \stack_mem~94_q\ : std_logic;
SIGNAL \stack_mem~126_q\ : std_logic;
SIGNAL \stack_mem~155_combout\ : std_logic;
SIGNAL \stack_mem~156_combout\ : std_logic;
SIGNAL \stack_mem~70_q\ : std_logic;
SIGNAL \stack_mem~38_q\ : std_logic;
SIGNAL \stack_mem~102_q\ : std_logic;
SIGNAL \stack_mem~134_q\ : std_logic;
SIGNAL \stack_mem~153_combout\ : std_logic;
SIGNAL \stack_mem~154_combout\ : std_logic;
SIGNAL \stack_mem~157_combout\ : std_logic;
SIGNAL \stack_mem~160_combout\ : std_logic;
SIGNAL \Data_Out[1]~reg0_q\ : std_logic;
SIGNAL \Data_In[2]~input_o\ : std_logic;
SIGNAL \stack_mem~31_q\ : std_logic;
SIGNAL \stack_mem~79feeder_combout\ : std_logic;
SIGNAL \stack_mem~79_q\ : std_logic;
SIGNAL \stack_mem~95_q\ : std_logic;
SIGNAL \stack_mem~168_combout\ : std_logic;
SIGNAL \stack_mem~15_q\ : std_logic;
SIGNAL \stack_mem~169_combout\ : std_logic;
SIGNAL \stack_mem~47_q\ : std_logic;
SIGNAL \stack_mem~63_q\ : std_logic;
SIGNAL \stack_mem~127_q\ : std_logic;
SIGNAL \stack_mem~161_combout\ : std_logic;
SIGNAL \stack_mem~111_q\ : std_logic;
SIGNAL \stack_mem~162_combout\ : std_logic;
SIGNAL \stack_mem~39_q\ : std_logic;
SIGNAL \stack_mem~23_q\ : std_logic;
SIGNAL \stack_mem~103_q\ : std_logic;
SIGNAL \stack_mem~87_q\ : std_logic;
SIGNAL \stack_mem~163_combout\ : std_logic;
SIGNAL \stack_mem~164_combout\ : std_logic;
SIGNAL \stack_mem~119feeder_combout\ : std_logic;
SIGNAL \stack_mem~119_q\ : std_logic;
SIGNAL \stack_mem~55_q\ : std_logic;
SIGNAL \stack_mem~71_q\ : std_logic;
SIGNAL \stack_mem~135_q\ : std_logic;
SIGNAL \stack_mem~165_combout\ : std_logic;
SIGNAL \stack_mem~166_combout\ : std_logic;
SIGNAL \stack_mem~167_combout\ : std_logic;
SIGNAL \stack_mem~170_combout\ : std_logic;
SIGNAL \Data_Out[2]~reg0_q\ : std_logic;
SIGNAL \Data_In[3]~input_o\ : std_logic;
SIGNAL \stack_mem~48feeder_combout\ : std_logic;
SIGNAL \stack_mem~48_q\ : std_logic;
SIGNAL \stack_mem~16_q\ : std_logic;
SIGNAL \stack_mem~64feeder_combout\ : std_logic;
SIGNAL \stack_mem~64_q\ : std_logic;
SIGNAL \stack_mem~32_q\ : std_logic;
SIGNAL \stack_mem~178_combout\ : std_logic;
SIGNAL \stack_mem~179_combout\ : std_logic;
SIGNAL \stack_mem~80_q\ : std_logic;
SIGNAL \stack_mem~96feeder_combout\ : std_logic;
SIGNAL \stack_mem~96_q\ : std_logic;
SIGNAL \stack_mem~112feeder_combout\ : std_logic;
SIGNAL \stack_mem~112_q\ : std_logic;
SIGNAL \stack_mem~128_q\ : std_logic;
SIGNAL \stack_mem~171_combout\ : std_logic;
SIGNAL \stack_mem~172_combout\ : std_logic;
SIGNAL \stack_mem~104feeder_combout\ : std_logic;
SIGNAL \stack_mem~104_q\ : std_logic;
SIGNAL \stack_mem~88_q\ : std_logic;
SIGNAL \stack_mem~120feeder_combout\ : std_logic;
SIGNAL \stack_mem~120_q\ : std_logic;
SIGNAL \stack_mem~136_q\ : std_logic;
SIGNAL \stack_mem~175_combout\ : std_logic;
SIGNAL \stack_mem~176_combout\ : std_logic;
SIGNAL \stack_mem~40feeder_combout\ : std_logic;
SIGNAL \stack_mem~40_q\ : std_logic;
SIGNAL \stack_mem~24_q\ : std_logic;
SIGNAL \stack_mem~72feeder_combout\ : std_logic;
SIGNAL \stack_mem~72_q\ : std_logic;
SIGNAL \stack_mem~56feeder_combout\ : std_logic;
SIGNAL \stack_mem~56_q\ : std_logic;
SIGNAL \stack_mem~173_combout\ : std_logic;
SIGNAL \stack_mem~174_combout\ : std_logic;
SIGNAL \stack_mem~177_combout\ : std_logic;
SIGNAL \stack_mem~180_combout\ : std_logic;
SIGNAL \Data_Out[3]~reg0_q\ : std_logic;
SIGNAL \Data_In[4]~input_o\ : std_logic;
SIGNAL \stack_mem~33feeder_combout\ : std_logic;
SIGNAL \stack_mem~33_q\ : std_logic;
SIGNAL \stack_mem~65_q\ : std_logic;
SIGNAL \stack_mem~97_q\ : std_logic;
SIGNAL \stack_mem~129_q\ : std_logic;
SIGNAL \stack_mem~181_combout\ : std_logic;
SIGNAL \stack_mem~182_combout\ : std_logic;
SIGNAL \stack_mem~81_q\ : std_logic;
SIGNAL \stack_mem~17_q\ : std_logic;
SIGNAL \stack_mem~49feeder_combout\ : std_logic;
SIGNAL \stack_mem~49_q\ : std_logic;
SIGNAL \stack_mem~113_q\ : std_logic;
SIGNAL \stack_mem~188_combout\ : std_logic;
SIGNAL \stack_mem~189_combout\ : std_logic;
SIGNAL \stack_mem~73feeder_combout\ : std_logic;
SIGNAL \stack_mem~73_q\ : std_logic;
SIGNAL \stack_mem~41_q\ : std_logic;
SIGNAL \stack_mem~105_q\ : std_logic;
SIGNAL \stack_mem~137_q\ : std_logic;
SIGNAL \stack_mem~183_combout\ : std_logic;
SIGNAL \stack_mem~184_combout\ : std_logic;
SIGNAL \stack_mem~57_q\ : std_logic;
SIGNAL \stack_mem~25_q\ : std_logic;
SIGNAL \stack_mem~89feeder_combout\ : std_logic;
SIGNAL \stack_mem~89_q\ : std_logic;
SIGNAL \stack_mem~121_q\ : std_logic;
SIGNAL \stack_mem~185_combout\ : std_logic;
SIGNAL \stack_mem~186_combout\ : std_logic;
SIGNAL \stack_mem~187_combout\ : std_logic;
SIGNAL \stack_mem~190_combout\ : std_logic;
SIGNAL \Data_Out[4]~reg0_q\ : std_logic;
SIGNAL \Data_In[5]~input_o\ : std_logic;
SIGNAL \stack_mem~66feeder_combout\ : std_logic;
SIGNAL \stack_mem~66_q\ : std_logic;
SIGNAL \stack_mem~130_q\ : std_logic;
SIGNAL \stack_mem~191_combout\ : std_logic;
SIGNAL \stack_mem~114feeder_combout\ : std_logic;
SIGNAL \stack_mem~114_q\ : std_logic;
SIGNAL \stack_mem~50_q\ : std_logic;
SIGNAL \stack_mem~192_combout\ : std_logic;
SIGNAL \stack_mem~34_q\ : std_logic;
SIGNAL \stack_mem~18_q\ : std_logic;
SIGNAL \stack_mem~98feeder_combout\ : std_logic;
SIGNAL \stack_mem~98_q\ : std_logic;
SIGNAL \stack_mem~82feeder_combout\ : std_logic;
SIGNAL \stack_mem~82_q\ : std_logic;
SIGNAL \stack_mem~198_combout\ : std_logic;
SIGNAL \stack_mem~199_combout\ : std_logic;
SIGNAL \stack_mem~90_q\ : std_logic;
SIGNAL \stack_mem~26_q\ : std_logic;
SIGNAL \stack_mem~42_q\ : std_logic;
SIGNAL \stack_mem~106_q\ : std_logic;
SIGNAL \stack_mem~193_combout\ : std_logic;
SIGNAL \stack_mem~194_combout\ : std_logic;
SIGNAL \stack_mem~122feeder_combout\ : std_logic;
SIGNAL \stack_mem~122_q\ : std_logic;
SIGNAL \stack_mem~58_q\ : std_logic;
SIGNAL \stack_mem~74_q\ : std_logic;
SIGNAL \stack_mem~138_q\ : std_logic;
SIGNAL \stack_mem~195_combout\ : std_logic;
SIGNAL \stack_mem~196_combout\ : std_logic;
SIGNAL \stack_mem~197_combout\ : std_logic;
SIGNAL \stack_mem~200_combout\ : std_logic;
SIGNAL \Data_Out[5]~reg0_q\ : std_logic;
SIGNAL \Data_In[6]~input_o\ : std_logic;
SIGNAL \stack_mem~51_q\ : std_logic;
SIGNAL \stack_mem~19_q\ : std_logic;
SIGNAL \stack_mem~67_q\ : std_logic;
SIGNAL \stack_mem~35_q\ : std_logic;
SIGNAL \stack_mem~208_combout\ : std_logic;
SIGNAL \stack_mem~209_combout\ : std_logic;
SIGNAL \stack_mem~99_q\ : std_logic;
SIGNAL \stack_mem~83_q\ : std_logic;
SIGNAL \stack_mem~115_q\ : std_logic;
SIGNAL \stack_mem~131_q\ : std_logic;
SIGNAL \stack_mem~201_combout\ : std_logic;
SIGNAL \stack_mem~202_combout\ : std_logic;
SIGNAL \stack_mem~107_q\ : std_logic;
SIGNAL \stack_mem~91_q\ : std_logic;
SIGNAL \stack_mem~123_q\ : std_logic;
SIGNAL \stack_mem~139_q\ : std_logic;
SIGNAL \stack_mem~205_combout\ : std_logic;
SIGNAL \stack_mem~206_combout\ : std_logic;
SIGNAL \stack_mem~43_q\ : std_logic;
SIGNAL \stack_mem~27_q\ : std_logic;
SIGNAL \stack_mem~75_q\ : std_logic;
SIGNAL \stack_mem~59_q\ : std_logic;
SIGNAL \stack_mem~203_combout\ : std_logic;
SIGNAL \stack_mem~204_combout\ : std_logic;
SIGNAL \stack_mem~207_combout\ : std_logic;
SIGNAL \stack_mem~210_combout\ : std_logic;
SIGNAL \Data_Out[6]~reg0_q\ : std_logic;
SIGNAL \Data_In[7]~input_o\ : std_logic;
SIGNAL \stack_mem~20_q\ : std_logic;
SIGNAL \stack_mem~84_q\ : std_logic;
SIGNAL \stack_mem~52feeder_combout\ : std_logic;
SIGNAL \stack_mem~52_q\ : std_logic;
SIGNAL \stack_mem~116_q\ : std_logic;
SIGNAL \stack_mem~218_combout\ : std_logic;
SIGNAL \stack_mem~219_combout\ : std_logic;
SIGNAL \stack_mem~36_q\ : std_logic;
SIGNAL \stack_mem~132_q\ : std_logic;
SIGNAL \stack_mem~100feeder_combout\ : std_logic;
SIGNAL \stack_mem~100_q\ : std_logic;
SIGNAL \stack_mem~211_combout\ : std_logic;
SIGNAL \stack_mem~68feeder_combout\ : std_logic;
SIGNAL \stack_mem~68_q\ : std_logic;
SIGNAL \stack_mem~212_combout\ : std_logic;
SIGNAL \stack_mem~44feeder_combout\ : std_logic;
SIGNAL \stack_mem~44_q\ : std_logic;
SIGNAL \stack_mem~76feeder_combout\ : std_logic;
SIGNAL \stack_mem~76_q\ : std_logic;
SIGNAL \stack_mem~108feeder_combout\ : std_logic;
SIGNAL \stack_mem~108_q\ : std_logic;
SIGNAL \stack_mem~140_q\ : std_logic;
SIGNAL \stack_mem~213_combout\ : std_logic;
SIGNAL \stack_mem~214_combout\ : std_logic;
SIGNAL \stack_mem~60feeder_combout\ : std_logic;
SIGNAL \stack_mem~60_q\ : std_logic;
SIGNAL \stack_mem~28_q\ : std_logic;
SIGNAL \stack_mem~92feeder_combout\ : std_logic;
SIGNAL \stack_mem~92_q\ : std_logic;
SIGNAL \stack_mem~124_q\ : std_logic;
SIGNAL \stack_mem~215_combout\ : std_logic;
SIGNAL \stack_mem~216_combout\ : std_logic;
SIGNAL \stack_mem~217_combout\ : std_logic;
SIGNAL \stack_mem~220_combout\ : std_logic;
SIGNAL \Data_Out[7]~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL sp : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Rst <= Rst;
ww_Push <= Push;
ww_Pop <= Pop;
ww_Data_In <= Data_In;
Data_Out <= ww_Data_Out;
Full <= ww_Full;
Empty <= ww_Empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y63_N16
\Data_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\Data_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[1]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Data_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Data_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[3]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Data_Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\Data_Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Data_Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[6]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\Data_Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \Full~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\Empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \Empty~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y66_N22
\Data_In[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(0),
	o => \Data_In[0]~input_o\);

-- Location: LCCOMB_X9_Y66_N14
\stack_mem~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~29feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~29feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\Push~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Push,
	o => \Push~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\Pop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pop,
	o => \Pop~input_o\);

-- Location: LCCOMB_X8_Y66_N10
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = sp(0) $ (VCC)
-- \Add1~4\ = CARRY(sp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sp(0),
	datad => VCC,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X9_Y66_N4
\sp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp[0]~0_combout\ = (\Rst~input_o\) # (\current_state.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rst~input_o\,
	datad => \current_state.s_Idle~q\,
	combout => \sp[0]~0_combout\);

-- Location: FF_X8_Y66_N11
\sp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	sclr => \Rst~input_o\,
	ena => \sp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sp(0));

-- Location: LCCOMB_X8_Y66_N12
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (sp(1) & ((\current_state.s_Pop~q\ & (\Add1~4\ & VCC)) # (!\current_state.s_Pop~q\ & (!\Add1~4\)))) # (!sp(1) & ((\current_state.s_Pop~q\ & (!\Add1~4\)) # (!\current_state.s_Pop~q\ & ((\Add1~4\) # (GND)))))
-- \Add1~6\ = CARRY((sp(1) & (!\current_state.s_Pop~q\ & !\Add1~4\)) # (!sp(1) & ((!\Add1~4\) # (!\current_state.s_Pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => \current_state.s_Pop~q\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~5_combout\,
	cout => \Add1~6\);

-- Location: FF_X8_Y66_N13
\sp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	sclr => \Rst~input_o\,
	ena => \sp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sp(1));

-- Location: LCCOMB_X8_Y66_N14
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = ((sp(2) $ (\current_state.s_Pop~q\ $ (!\Add1~6\)))) # (GND)
-- \Add1~8\ = CARRY((sp(2) & ((\current_state.s_Pop~q\) # (!\Add1~6\))) # (!sp(2) & (\current_state.s_Pop~q\ & !\Add1~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sp(2),
	datab => \current_state.s_Pop~q\,
	datad => VCC,
	cin => \Add1~6\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: FF_X8_Y66_N15
\sp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~7_combout\,
	sclr => \Rst~input_o\,
	ena => \sp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sp(2));

-- Location: LCCOMB_X8_Y66_N16
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (sp(3) & ((\current_state.s_Pop~q\ & (\Add1~8\ & VCC)) # (!\current_state.s_Pop~q\ & (!\Add1~8\)))) # (!sp(3) & ((\current_state.s_Pop~q\ & (!\Add1~8\)) # (!\current_state.s_Pop~q\ & ((\Add1~8\) # (GND)))))
-- \Add1~10\ = CARRY((sp(3) & (!\current_state.s_Pop~q\ & !\Add1~8\)) # (!sp(3) & ((!\Add1~8\) # (!\current_state.s_Pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sp(3),
	datab => \current_state.s_Pop~q\,
	datad => VCC,
	cin => \Add1~8\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: FF_X8_Y66_N17
\sp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~9_combout\,
	sclr => \Rst~input_o\,
	ena => \sp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sp(3));

-- Location: LCCOMB_X9_Y66_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sp(2) & (!sp(1) & (!sp(3) & !sp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(2),
	datab => sp(1),
	datac => sp(3),
	datad => sp(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y66_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~0_combout\ & !sp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => sp(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X9_Y66_N0
\next_state.s_Pop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.s_Pop~0_combout\ = (!\next_state.s_Push~0_combout\ & (!\current_state.s_Idle~q\ & (\Pop~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s_Push~0_combout\,
	datab => \current_state.s_Idle~q\,
	datac => \Pop~input_o\,
	datad => \Equal1~0_combout\,
	combout => \next_state.s_Pop~0_combout\);

-- Location: CLKCTRL_G4
\Rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Rst~inputclkctrl_outclk\);

-- Location: FF_X9_Y66_N1
\current_state.s_Pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.s_Pop~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_Pop~q\);

-- Location: LCCOMB_X8_Y66_N18
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = \current_state.s_Pop~q\ $ (\Add1~10\ $ (!sp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s_Pop~q\,
	datad => sp(4),
	cin => \Add1~10\,
	combout => \Add1~11_combout\);

-- Location: FF_X8_Y66_N19
\sp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	sclr => \Rst~input_o\,
	ena => \sp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sp(4));

-- Location: LCCOMB_X9_Y66_N12
\next_state.s_Push~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.s_Push~0_combout\ = (\Push~input_o\ & !sp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Push~input_o\,
	datad => sp(4),
	combout => \next_state.s_Push~0_combout\);

-- Location: LCCOMB_X9_Y66_N18
\next_state.s_Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.s_Idle~0_combout\ = (!\current_state.s_Idle~q\ & ((\next_state.s_Push~0_combout\) # ((\Pop~input_o\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s_Push~0_combout\,
	datab => \Pop~input_o\,
	datac => \current_state.s_Idle~q\,
	datad => \Equal1~0_combout\,
	combout => \next_state.s_Idle~0_combout\);

-- Location: FF_X9_Y66_N19
\current_state.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.s_Idle~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_Idle~q\);

-- Location: LCCOMB_X9_Y66_N30
\next_state.s_Push~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.s_Push~1_combout\ = (!\current_state.s_Idle~q\ & (\Push~input_o\ & !sp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s_Idle~q\,
	datac => \Push~input_o\,
	datad => sp(4),
	combout => \next_state.s_Push~1_combout\);

-- Location: FF_X9_Y66_N31
\current_state.s_Push\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.s_Push~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s_Push~q\);

-- Location: LCCOMB_X8_Y66_N2
\stack_mem~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~245_combout\ = (sp(1) & (!sp(2) & (!sp(0) & !sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(2),
	datac => sp(0),
	datad => sp(3),
	combout => \stack_mem~245_combout\);

-- Location: LCCOMB_X9_Y66_N10
\stack_mem~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~246_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \current_state.s_Push~q\,
	datad => \stack_mem~245_combout\,
	combout => \stack_mem~246_combout\);

-- Location: FF_X9_Y66_N15
\stack_mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~29feeder_combout\,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~29_q\);

-- Location: LCCOMB_X8_Y66_N6
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = sp(2) $ (((sp(0)) # (sp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datac => sp(2),
	datad => sp(1),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X8_Y66_N26
\stack_mem~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~251_combout\ = (!sp(1) & (!sp(3) & (!sp(0) & !sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(3),
	datac => sp(0),
	datad => sp(2),
	combout => \stack_mem~251_combout\);

-- Location: LCCOMB_X5_Y67_N12
\stack_mem~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~252_combout\ = (\current_state.s_Push~q\ & (!\Rst~input_o\ & \stack_mem~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s_Push~q\,
	datab => \Rst~input_o\,
	datad => \stack_mem~251_combout\,
	combout => \stack_mem~252_combout\);

-- Location: FF_X5_Y67_N3
\stack_mem~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~13_q\);

-- Location: LCCOMB_X5_Y66_N22
\stack_mem~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~247_combout\ = (!sp(0) & (!sp(1) & (sp(2) & !sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => sp(1),
	datac => sp(2),
	datad => sp(3),
	combout => \stack_mem~247_combout\);

-- Location: LCCOMB_X5_Y66_N18
\stack_mem~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~248_combout\ = (\stack_mem~247_combout\ & (!\Rst~input_o\ & \current_state.s_Push~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~247_combout\,
	datab => \Rst~input_o\,
	datad => \current_state.s_Push~q\,
	combout => \stack_mem~248_combout\);

-- Location: FF_X5_Y66_N5
\stack_mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~45_q\);

-- Location: LCCOMB_X8_Y66_N0
\stack_mem~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~249_combout\ = (sp(1) & (!sp(0) & (!sp(3) & sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(3),
	datad => sp(2),
	combout => \stack_mem~249_combout\);

-- Location: LCCOMB_X6_Y67_N26
\stack_mem~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~250_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~249_combout\,
	combout => \stack_mem~250_combout\);

-- Location: FF_X6_Y67_N27
\stack_mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~61_q\);

-- Location: LCCOMB_X8_Y66_N24
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = sp(0) $ (sp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datad => sp(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X5_Y67_N28
\stack_mem~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~148_combout\ = (\Add1~1_combout\ & (((\Add1~0_combout\)))) # (!\Add1~1_combout\ & ((\Add1~0_combout\ & (\stack_mem~45_q\)) # (!\Add1~0_combout\ & ((\stack_mem~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~45_q\,
	datab => \stack_mem~61_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~148_combout\);

-- Location: LCCOMB_X5_Y67_N2
\stack_mem~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~149_combout\ = (\Add1~1_combout\ & ((\stack_mem~148_combout\ & ((\stack_mem~13_q\))) # (!\stack_mem~148_combout\ & (\stack_mem~29_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~29_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~13_q\,
	datad => \stack_mem~148_combout\,
	combout => \stack_mem~149_combout\);

-- Location: LCCOMB_X3_Y66_N8
\stack_mem~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~21feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~21feeder_combout\);

-- Location: LCCOMB_X8_Y66_N8
\stack_mem~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~227_combout\ = (!sp(1) & (!sp(3) & (sp(0) & !sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(3),
	datac => sp(0),
	datad => sp(2),
	combout => \stack_mem~227_combout\);

-- Location: LCCOMB_X4_Y66_N6
\stack_mem~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~228_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~227_combout\,
	combout => \stack_mem~228_combout\);

-- Location: FF_X3_Y66_N9
\stack_mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~21feeder_combout\,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~21_q\);

-- Location: LCCOMB_X8_Y66_N30
\stack_mem~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~221_combout\ = (!sp(3) & (sp(0) & (!sp(1) & sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(3),
	datab => sp(0),
	datac => sp(1),
	datad => sp(2),
	combout => \stack_mem~221_combout\);

-- Location: LCCOMB_X4_Y66_N28
\stack_mem~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~222_combout\ = (\stack_mem~221_combout\ & (\current_state.s_Push~q\ & !\Rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~221_combout\,
	datab => \current_state.s_Push~q\,
	datad => \Rst~input_o\,
	combout => \stack_mem~222_combout\);

-- Location: FF_X4_Y66_N1
\stack_mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~53_q\);

-- Location: LCCOMB_X5_Y66_N14
\stack_mem~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~223_combout\ = (sp(0) & (sp(1) & (!sp(2) & !sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => sp(1),
	datac => sp(2),
	datad => sp(3),
	combout => \stack_mem~223_combout\);

-- Location: LCCOMB_X6_Y66_N28
\stack_mem~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~224_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~223_combout\,
	combout => \stack_mem~224_combout\);

-- Location: FF_X6_Y66_N1
\stack_mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~37_q\);

-- Location: LCCOMB_X8_Y66_N4
\stack_mem~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~225_combout\ = (sp(1) & (sp(0) & (!sp(3) & sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(3),
	datad => sp(2),
	combout => \stack_mem~225_combout\);

-- Location: LCCOMB_X4_Y66_N12
\stack_mem~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~226_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~225_combout\,
	combout => \stack_mem~226_combout\);

-- Location: FF_X4_Y66_N19
\stack_mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~69_q\);

-- Location: LCCOMB_X4_Y66_N18
\stack_mem~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~141_combout\ = (\Add1~1_combout\ & ((\stack_mem~37_q\) # ((\Add1~0_combout\)))) # (!\Add1~1_combout\ & (((\stack_mem~69_q\ & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \stack_mem~37_q\,
	datac => \stack_mem~69_q\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~141_combout\);

-- Location: LCCOMB_X4_Y66_N0
\stack_mem~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~142_combout\ = (\Add1~0_combout\ & ((\stack_mem~141_combout\ & (\stack_mem~21_q\)) # (!\stack_mem~141_combout\ & ((\stack_mem~53_q\))))) # (!\Add1~0_combout\ & (((\stack_mem~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~21_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~53_q\,
	datad => \stack_mem~141_combout\,
	combout => \stack_mem~142_combout\);

-- Location: LCCOMB_X8_Y66_N28
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = sp(3) $ (((sp(0)) # ((sp(2)) # (sp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => sp(3),
	datac => sp(2),
	datad => sp(1),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X8_Y67_N18
\stack_mem~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~77feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~77feeder_combout\);

-- Location: LCCOMB_X7_Y67_N24
\stack_mem~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~235_combout\ = (!sp(1) & (!sp(0) & (sp(3) & !sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(3),
	datad => sp(2),
	combout => \stack_mem~235_combout\);

-- Location: LCCOMB_X8_Y67_N30
\stack_mem~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~236_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~235_combout\,
	combout => \stack_mem~236_combout\);

-- Location: FF_X8_Y67_N19
\stack_mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~77feeder_combout\,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~77_q\);

-- Location: LCCOMB_X8_Y67_N8
\stack_mem~109feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~109feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~109feeder_combout\);

-- Location: LCCOMB_X7_Y67_N20
\stack_mem~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~229_combout\ = (!sp(1) & (!sp(0) & (sp(3) & sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(3),
	datad => sp(2),
	combout => \stack_mem~229_combout\);

-- Location: LCCOMB_X8_Y67_N4
\stack_mem~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~230_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~229_combout\,
	combout => \stack_mem~230_combout\);

-- Location: FF_X8_Y67_N9
\stack_mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~109feeder_combout\,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~109_q\);

-- Location: LCCOMB_X7_Y67_N26
\stack_mem~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~231_combout\ = (sp(1) & (!sp(0) & (sp(3) & !sp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(3),
	datad => sp(2),
	combout => \stack_mem~231_combout\);

-- Location: LCCOMB_X6_Y67_N10
\stack_mem~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~232_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~231_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~231_combout\,
	combout => \stack_mem~232_combout\);

-- Location: FF_X6_Y67_N9
\stack_mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~93_q\);

-- Location: LCCOMB_X9_Y67_N28
\stack_mem~125feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~125feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~125feeder_combout\);

-- Location: LCCOMB_X9_Y67_N18
\stack_mem~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~233_combout\ = (sp(1) & (sp(2) & (sp(3) & !sp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(2),
	datac => sp(3),
	datad => sp(0),
	combout => \stack_mem~233_combout\);

-- Location: LCCOMB_X9_Y67_N6
\stack_mem~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~234_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~233_combout\,
	combout => \stack_mem~234_combout\);

-- Location: FF_X9_Y67_N29
\stack_mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~125feeder_combout\,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~125_q\);

-- Location: LCCOMB_X7_Y67_N30
\stack_mem~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~143_combout\ = (\Add1~1_combout\ & ((\stack_mem~93_q\) # ((\Add1~0_combout\)))) # (!\Add1~1_combout\ & (((\stack_mem~125_q\ & !\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~93_q\,
	datab => \stack_mem~125_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~143_combout\);

-- Location: LCCOMB_X7_Y67_N16
\stack_mem~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~144_combout\ = (\stack_mem~143_combout\ & ((\stack_mem~77_q\) # ((!\Add1~0_combout\)))) # (!\stack_mem~143_combout\ & (((\stack_mem~109_q\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~77_q\,
	datab => \stack_mem~109_q\,
	datac => \stack_mem~143_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~144_combout\);

-- Location: LCCOMB_X3_Y66_N22
\stack_mem~117feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~117feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack_mem~117feeder_combout\);

-- Location: LCCOMB_X5_Y66_N12
\stack_mem~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~237_combout\ = (sp(0) & (!sp(1) & (sp(2) & sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => sp(1),
	datac => sp(2),
	datad => sp(3),
	combout => \stack_mem~237_combout\);

-- Location: LCCOMB_X3_Y66_N12
\stack_mem~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~238_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \current_state.s_Push~q\,
	datad => \stack_mem~237_combout\,
	combout => \stack_mem~238_combout\);

-- Location: FF_X3_Y66_N23
\stack_mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~117feeder_combout\,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~117_q\);

-- Location: LCCOMB_X8_Y66_N20
\stack_mem~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~243_combout\ = (!sp(1) & (sp(0) & (!sp(2) & sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => sp(2),
	datad => sp(3),
	combout => \stack_mem~243_combout\);

-- Location: LCCOMB_X7_Y66_N6
\stack_mem~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~244_combout\ = (!\Rst~input_o\ & (\stack_mem~243_combout\ & \current_state.s_Push~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \stack_mem~243_combout\,
	datad => \current_state.s_Push~q\,
	combout => \stack_mem~244_combout\);

-- Location: FF_X7_Y66_N31
\stack_mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~85_q\);

-- Location: LCCOMB_X9_Y66_N16
\stack_mem~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~239_combout\ = (!sp(2) & (sp(1) & (sp(3) & sp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(2),
	datab => sp(1),
	datac => sp(3),
	datad => sp(0),
	combout => \stack_mem~239_combout\);

-- Location: LCCOMB_X6_Y66_N4
\stack_mem~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~240_combout\ = (!\Rst~input_o\ & (\current_state.s_Push~q\ & \stack_mem~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \current_state.s_Push~q\,
	datad => \stack_mem~239_combout\,
	combout => \stack_mem~240_combout\);

-- Location: FF_X6_Y66_N15
\stack_mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~101_q\);

-- Location: LCCOMB_X8_Y66_N22
\stack_mem~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~241_combout\ = (sp(2) & (sp(0) & (sp(1) & sp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(2),
	datab => sp(0),
	datac => sp(1),
	datad => sp(3),
	combout => \stack_mem~241_combout\);

-- Location: LCCOMB_X7_Y66_N12
\stack_mem~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~242_combout\ = (!\Rst~input_o\ & (\stack_mem~241_combout\ & \current_state.s_Push~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \stack_mem~241_combout\,
	datad => \current_state.s_Push~q\,
	combout => \stack_mem~242_combout\);

-- Location: FF_X7_Y66_N25
\stack_mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~133_q\);

-- Location: LCCOMB_X7_Y66_N24
\stack_mem~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~145_combout\ = (\Add1~0_combout\ & (((\Add1~1_combout\)))) # (!\Add1~0_combout\ & ((\Add1~1_combout\ & (\stack_mem~101_q\)) # (!\Add1~1_combout\ & ((\stack_mem~133_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~101_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~133_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~145_combout\);

-- Location: LCCOMB_X7_Y66_N30
\stack_mem~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~146_combout\ = (\Add1~0_combout\ & ((\stack_mem~145_combout\ & ((\stack_mem~85_q\))) # (!\stack_mem~145_combout\ & (\stack_mem~117_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~117_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~85_q\,
	datad => \stack_mem~145_combout\,
	combout => \stack_mem~146_combout\);

-- Location: LCCOMB_X4_Y67_N2
\stack_mem~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~147_combout\ = (sp(0) & ((\Add1~2_combout\) # ((\stack_mem~144_combout\)))) # (!sp(0) & (!\Add1~2_combout\ & ((\stack_mem~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \Add1~2_combout\,
	datac => \stack_mem~144_combout\,
	datad => \stack_mem~146_combout\,
	combout => \stack_mem~147_combout\);

-- Location: LCCOMB_X4_Y67_N28
\stack_mem~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~150_combout\ = (\Add1~2_combout\ & ((\stack_mem~147_combout\ & (\stack_mem~149_combout\)) # (!\stack_mem~147_combout\ & ((\stack_mem~142_combout\))))) # (!\Add1~2_combout\ & (((\stack_mem~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~149_combout\,
	datab => \stack_mem~142_combout\,
	datac => \Add1~2_combout\,
	datad => \stack_mem~147_combout\,
	combout => \stack_mem~150_combout\);

-- Location: LCCOMB_X8_Y67_N28
\Data_Out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Out[0]~0_combout\ = (\Rst~input_o\) # (\current_state.s_Pop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datad => \current_state.s_Pop~q\,
	combout => \Data_Out[0]~0_combout\);

-- Location: FF_X4_Y67_N29
\Data_Out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~150_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[0]~reg0_q\);

-- Location: IOIBUF_X0_Y68_N15
\Data_In[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(1),
	o => \Data_In[1]~input_o\);

-- Location: FF_X5_Y66_N19
\stack_mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~46_q\);

-- Location: FF_X5_Y67_N5
\stack_mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~14_q\);

-- Location: FF_X8_Y67_N11
\stack_mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~78_q\);

-- Location: FF_X8_Y67_N17
\stack_mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~110_q\);

-- Location: LCCOMB_X8_Y67_N16
\stack_mem~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~158_combout\ = (\Add1~1_combout\ & ((\stack_mem~78_q\) # ((\Add1~2_combout\)))) # (!\Add1~1_combout\ & (((\stack_mem~110_q\ & !\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~78_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~110_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~158_combout\);

-- Location: LCCOMB_X5_Y67_N4
\stack_mem~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~159_combout\ = (\Add1~2_combout\ & ((\stack_mem~158_combout\ & ((\stack_mem~14_q\))) # (!\stack_mem~158_combout\ & (\stack_mem~46_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~46_q\,
	datac => \stack_mem~14_q\,
	datad => \stack_mem~158_combout\,
	combout => \stack_mem~159_combout\);

-- Location: FF_X4_Y66_N29
\stack_mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~54_q\);

-- Location: FF_X3_Y66_N19
\stack_mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~22_q\);

-- Location: FF_X7_Y66_N13
\stack_mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~86_q\);

-- Location: FF_X3_Y66_N29
\stack_mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~118_q\);

-- Location: LCCOMB_X3_Y66_N28
\stack_mem~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~151_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~86_q\)) # (!\Add1~1_combout\ & ((\stack_mem~118_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~86_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~118_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~151_combout\);

-- Location: LCCOMB_X3_Y66_N18
\stack_mem~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~152_combout\ = (\Add1~2_combout\ & ((\stack_mem~151_combout\ & ((\stack_mem~22_q\))) # (!\stack_mem~151_combout\ & (\stack_mem~54_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~54_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~22_q\,
	datad => \stack_mem~151_combout\,
	combout => \stack_mem~152_combout\);

-- Location: LCCOMB_X6_Y67_N0
\stack_mem~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~62feeder_combout\ = \Data_In[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[1]~input_o\,
	combout => \stack_mem~62feeder_combout\);

-- Location: FF_X6_Y67_N1
\stack_mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~62feeder_combout\,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~62_q\);

-- Location: FF_X9_Y67_N5
\stack_mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~30_q\);

-- Location: LCCOMB_X6_Y67_N22
\stack_mem~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~94feeder_combout\ = \Data_In[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[1]~input_o\,
	combout => \stack_mem~94feeder_combout\);

-- Location: FF_X6_Y67_N23
\stack_mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~94feeder_combout\,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~94_q\);

-- Location: FF_X9_Y67_N11
\stack_mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~126_q\);

-- Location: LCCOMB_X9_Y67_N10
\stack_mem~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~155_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~94_q\)) # (!\Add1~1_combout\ & ((\stack_mem~126_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~94_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~126_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~155_combout\);

-- Location: LCCOMB_X9_Y67_N4
\stack_mem~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~156_combout\ = (\Add1~2_combout\ & ((\stack_mem~155_combout\ & ((\stack_mem~30_q\))) # (!\stack_mem~155_combout\ & (\stack_mem~62_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~62_q\,
	datac => \stack_mem~30_q\,
	datad => \stack_mem~155_combout\,
	combout => \stack_mem~156_combout\);

-- Location: FF_X4_Y66_N23
\stack_mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~70_q\);

-- Location: FF_X6_Y66_N31
\stack_mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~38_q\);

-- Location: FF_X6_Y66_N25
\stack_mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~102_q\);

-- Location: FF_X7_Y66_N27
\stack_mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~134_q\);

-- Location: LCCOMB_X7_Y66_N26
\stack_mem~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~153_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~102_q\)) # (!\Add1~1_combout\ & ((\stack_mem~134_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~102_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~134_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~153_combout\);

-- Location: LCCOMB_X6_Y66_N30
\stack_mem~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~154_combout\ = (\Add1~2_combout\ & ((\stack_mem~153_combout\ & ((\stack_mem~38_q\))) # (!\stack_mem~153_combout\ & (\stack_mem~70_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~70_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~38_q\,
	datad => \stack_mem~153_combout\,
	combout => \stack_mem~154_combout\);

-- Location: LCCOMB_X4_Y67_N20
\stack_mem~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~157_combout\ = (sp(1) & (sp(0) & (\stack_mem~156_combout\))) # (!sp(1) & ((sp(0)) # ((\stack_mem~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => \stack_mem~156_combout\,
	datad => \stack_mem~154_combout\,
	combout => \stack_mem~157_combout\);

-- Location: LCCOMB_X4_Y67_N14
\stack_mem~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~160_combout\ = (\Add1~0_combout\ & ((\stack_mem~157_combout\ & (\stack_mem~159_combout\)) # (!\stack_mem~157_combout\ & ((\stack_mem~152_combout\))))) # (!\Add1~0_combout\ & (((\stack_mem~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~159_combout\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~152_combout\,
	datad => \stack_mem~157_combout\,
	combout => \stack_mem~160_combout\);

-- Location: FF_X4_Y67_N15
\Data_Out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~160_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[1]~reg0_q\);

-- Location: IOIBUF_X0_Y66_N15
\Data_In[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(2),
	o => \Data_In[2]~input_o\);

-- Location: FF_X9_Y67_N7
\stack_mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~31_q\);

-- Location: LCCOMB_X8_Y67_N22
\stack_mem~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~79feeder_combout\ = \Data_In[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[2]~input_o\,
	combout => \stack_mem~79feeder_combout\);

-- Location: FF_X8_Y67_N23
\stack_mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~79feeder_combout\,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~79_q\);

-- Location: FF_X6_Y67_N11
\stack_mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~95_q\);

-- Location: LCCOMB_X5_Y67_N18
\stack_mem~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~168_combout\ = (\Add1~2_combout\ & (((\Add1~0_combout\)))) # (!\Add1~2_combout\ & ((\Add1~0_combout\ & (\stack_mem~79_q\)) # (!\Add1~0_combout\ & ((\stack_mem~95_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~79_q\,
	datab => \stack_mem~95_q\,
	datac => \Add1~2_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~168_combout\);

-- Location: FF_X5_Y67_N9
\stack_mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~15_q\);

-- Location: LCCOMB_X5_Y67_N8
\stack_mem~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~169_combout\ = (\stack_mem~168_combout\ & (((\stack_mem~15_q\) # (!\Add1~2_combout\)))) # (!\stack_mem~168_combout\ & (\stack_mem~31_q\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~31_q\,
	datab => \stack_mem~168_combout\,
	datac => \stack_mem~15_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~169_combout\);

-- Location: FF_X5_Y66_N29
\stack_mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~47_q\);

-- Location: FF_X6_Y67_N13
\stack_mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~63_q\);

-- Location: FF_X9_Y67_N31
\stack_mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~127_q\);

-- Location: LCCOMB_X9_Y67_N30
\stack_mem~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~161_combout\ = (\Add1~0_combout\ & (((\Add1~2_combout\)))) # (!\Add1~0_combout\ & ((\Add1~2_combout\ & (\stack_mem~63_q\)) # (!\Add1~2_combout\ & ((\stack_mem~127_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~63_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~127_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~161_combout\);

-- Location: FF_X8_Y67_N29
\stack_mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~111_q\);

-- Location: LCCOMB_X9_Y67_N24
\stack_mem~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~162_combout\ = (\Add1~0_combout\ & ((\stack_mem~161_combout\ & (\stack_mem~47_q\)) # (!\stack_mem~161_combout\ & ((\stack_mem~111_q\))))) # (!\Add1~0_combout\ & (((\stack_mem~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~47_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~161_combout\,
	datad => \stack_mem~111_q\,
	combout => \stack_mem~162_combout\);

-- Location: FF_X6_Y66_N29
\stack_mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~39_q\);

-- Location: FF_X5_Y66_N17
\stack_mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~23_q\);

-- Location: FF_X6_Y66_N23
\stack_mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~103_q\);

-- Location: FF_X7_Y66_N17
\stack_mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~87_q\);

-- Location: LCCOMB_X5_Y66_N6
\stack_mem~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~163_combout\ = (\Add1~2_combout\ & (((\Add1~0_combout\)))) # (!\Add1~2_combout\ & ((\Add1~0_combout\ & ((\stack_mem~87_q\))) # (!\Add1~0_combout\ & (\stack_mem~103_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~103_q\,
	datab => \stack_mem~87_q\,
	datac => \Add1~2_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~163_combout\);

-- Location: LCCOMB_X5_Y66_N16
\stack_mem~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~164_combout\ = (\Add1~2_combout\ & ((\stack_mem~163_combout\ & ((\stack_mem~23_q\))) # (!\stack_mem~163_combout\ & (\stack_mem~39_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~39_q\,
	datac => \stack_mem~23_q\,
	datad => \stack_mem~163_combout\,
	combout => \stack_mem~164_combout\);

-- Location: LCCOMB_X3_Y66_N16
\stack_mem~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~119feeder_combout\ = \Data_In[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[2]~input_o\,
	combout => \stack_mem~119feeder_combout\);

-- Location: FF_X3_Y66_N17
\stack_mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~119feeder_combout\,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~119_q\);

-- Location: FF_X4_Y66_N11
\stack_mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~55_q\);

-- Location: FF_X4_Y66_N17
\stack_mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~71_q\);

-- Location: FF_X7_Y66_N11
\stack_mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~135_q\);

-- Location: LCCOMB_X7_Y66_N10
\stack_mem~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~165_combout\ = (\Add1~0_combout\ & (((\Add1~2_combout\)))) # (!\Add1~0_combout\ & ((\Add1~2_combout\ & (\stack_mem~71_q\)) # (!\Add1~2_combout\ & ((\stack_mem~135_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~71_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~135_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~165_combout\);

-- Location: LCCOMB_X4_Y66_N10
\stack_mem~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~166_combout\ = (\Add1~0_combout\ & ((\stack_mem~165_combout\ & ((\stack_mem~55_q\))) # (!\stack_mem~165_combout\ & (\stack_mem~119_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~119_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~55_q\,
	datad => \stack_mem~165_combout\,
	combout => \stack_mem~166_combout\);

-- Location: LCCOMB_X4_Y67_N6
\stack_mem~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~167_combout\ = (sp(0) & (\Add1~1_combout\)) # (!sp(0) & ((\Add1~1_combout\ & (\stack_mem~164_combout\)) # (!\Add1~1_combout\ & ((\stack_mem~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \Add1~1_combout\,
	datac => \stack_mem~164_combout\,
	datad => \stack_mem~166_combout\,
	combout => \stack_mem~167_combout\);

-- Location: LCCOMB_X4_Y67_N4
\stack_mem~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~170_combout\ = (sp(0) & ((\stack_mem~167_combout\ & (\stack_mem~169_combout\)) # (!\stack_mem~167_combout\ & ((\stack_mem~162_combout\))))) # (!sp(0) & (((\stack_mem~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \stack_mem~169_combout\,
	datac => \stack_mem~162_combout\,
	datad => \stack_mem~167_combout\,
	combout => \stack_mem~170_combout\);

-- Location: FF_X4_Y67_N5
\Data_Out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~170_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[2]~reg0_q\);

-- Location: IOIBUF_X0_Y65_N15
\Data_In[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(3),
	o => \Data_In[3]~input_o\);

-- Location: LCCOMB_X5_Y66_N2
\stack_mem~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~48feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~48feeder_combout\);

-- Location: FF_X5_Y66_N3
\stack_mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~48feeder_combout\,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~48_q\);

-- Location: FF_X5_Y67_N21
\stack_mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~16_q\);

-- Location: LCCOMB_X6_Y67_N30
\stack_mem~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~64feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~64feeder_combout\);

-- Location: FF_X6_Y67_N31
\stack_mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~64feeder_combout\,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~64_q\);

-- Location: FF_X10_Y67_N11
\stack_mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~32_q\);

-- Location: LCCOMB_X5_Y67_N6
\stack_mem~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~178_combout\ = (\Add1~1_combout\ & (((\stack_mem~32_q\) # (\Add1~0_combout\)))) # (!\Add1~1_combout\ & (\stack_mem~64_q\ & ((!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~64_q\,
	datab => \stack_mem~32_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~178_combout\);

-- Location: LCCOMB_X5_Y67_N20
\stack_mem~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~179_combout\ = (\Add1~0_combout\ & ((\stack_mem~178_combout\ & ((\stack_mem~16_q\))) # (!\stack_mem~178_combout\ & (\stack_mem~48_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~48_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~16_q\,
	datad => \stack_mem~178_combout\,
	combout => \stack_mem~179_combout\);

-- Location: FF_X8_Y67_N31
\stack_mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~80_q\);

-- Location: LCCOMB_X6_Y67_N4
\stack_mem~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~96feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~96feeder_combout\);

-- Location: FF_X6_Y67_N5
\stack_mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~96feeder_combout\,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~96_q\);

-- Location: LCCOMB_X8_Y67_N20
\stack_mem~112feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~112feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~112feeder_combout\);

-- Location: FF_X8_Y67_N21
\stack_mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~112feeder_combout\,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~112_q\);

-- Location: FF_X10_Y67_N9
\stack_mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~128_q\);

-- Location: LCCOMB_X7_Y67_N18
\stack_mem~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~171_combout\ = (\Add1~1_combout\ & (((\Add1~0_combout\)))) # (!\Add1~1_combout\ & ((\Add1~0_combout\ & (\stack_mem~112_q\)) # (!\Add1~0_combout\ & ((\stack_mem~128_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~112_q\,
	datab => \stack_mem~128_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~171_combout\);

-- Location: LCCOMB_X7_Y67_N8
\stack_mem~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~172_combout\ = (\Add1~1_combout\ & ((\stack_mem~171_combout\ & (\stack_mem~80_q\)) # (!\stack_mem~171_combout\ & ((\stack_mem~96_q\))))) # (!\Add1~1_combout\ & (((\stack_mem~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~80_q\,
	datab => \stack_mem~96_q\,
	datac => \Add1~1_combout\,
	datad => \stack_mem~171_combout\,
	combout => \stack_mem~172_combout\);

-- Location: LCCOMB_X6_Y66_N18
\stack_mem~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~104feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~104feeder_combout\);

-- Location: FF_X6_Y66_N19
\stack_mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~104feeder_combout\,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~104_q\);

-- Location: FF_X7_Y66_N23
\stack_mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~88_q\);

-- Location: LCCOMB_X3_Y66_N14
\stack_mem~120feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~120feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~120feeder_combout\);

-- Location: FF_X3_Y66_N15
\stack_mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~120feeder_combout\,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~120_q\);

-- Location: FF_X7_Y66_N29
\stack_mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~136_q\);

-- Location: LCCOMB_X7_Y66_N28
\stack_mem~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~175_combout\ = (\Add1~0_combout\ & ((\stack_mem~120_q\) # ((\Add1~1_combout\)))) # (!\Add1~0_combout\ & (((\stack_mem~136_q\ & !\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~120_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~136_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~175_combout\);

-- Location: LCCOMB_X7_Y66_N22
\stack_mem~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~176_combout\ = (\Add1~1_combout\ & ((\stack_mem~175_combout\ & ((\stack_mem~88_q\))) # (!\stack_mem~175_combout\ & (\stack_mem~104_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \stack_mem~104_q\,
	datac => \stack_mem~88_q\,
	datad => \stack_mem~175_combout\,
	combout => \stack_mem~176_combout\);

-- Location: LCCOMB_X6_Y66_N12
\stack_mem~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~40feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~40feeder_combout\);

-- Location: FF_X6_Y66_N13
\stack_mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~40feeder_combout\,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~40_q\);

-- Location: FF_X3_Y66_N1
\stack_mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~24_q\);

-- Location: LCCOMB_X4_Y66_N30
\stack_mem~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~72feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~72feeder_combout\);

-- Location: FF_X4_Y66_N31
\stack_mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~72feeder_combout\,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~72_q\);

-- Location: LCCOMB_X4_Y66_N24
\stack_mem~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~56feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack_mem~56feeder_combout\);

-- Location: FF_X4_Y66_N25
\stack_mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~56feeder_combout\,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~56_q\);

-- Location: LCCOMB_X3_Y66_N10
\stack_mem~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~173_combout\ = (\Add1~1_combout\ & (((\Add1~0_combout\)))) # (!\Add1~1_combout\ & ((\Add1~0_combout\ & ((\stack_mem~56_q\))) # (!\Add1~0_combout\ & (\stack_mem~72_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~72_q\,
	datab => \stack_mem~56_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~173_combout\);

-- Location: LCCOMB_X3_Y66_N0
\stack_mem~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~174_combout\ = (\Add1~1_combout\ & ((\stack_mem~173_combout\ & ((\stack_mem~24_q\))) # (!\stack_mem~173_combout\ & (\stack_mem~40_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~40_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~24_q\,
	datad => \stack_mem~173_combout\,
	combout => \stack_mem~174_combout\);

-- Location: LCCOMB_X4_Y67_N12
\stack_mem~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~177_combout\ = (sp(0) & (\Add1~2_combout\)) # (!sp(0) & ((\Add1~2_combout\ & ((\stack_mem~174_combout\))) # (!\Add1~2_combout\ & (\stack_mem~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \Add1~2_combout\,
	datac => \stack_mem~176_combout\,
	datad => \stack_mem~174_combout\,
	combout => \stack_mem~177_combout\);

-- Location: LCCOMB_X4_Y67_N22
\stack_mem~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~180_combout\ = (sp(0) & ((\stack_mem~177_combout\ & (\stack_mem~179_combout\)) # (!\stack_mem~177_combout\ & ((\stack_mem~172_combout\))))) # (!sp(0) & (((\stack_mem~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~179_combout\,
	datab => sp(0),
	datac => \stack_mem~172_combout\,
	datad => \stack_mem~177_combout\,
	combout => \stack_mem~180_combout\);

-- Location: FF_X4_Y67_N23
\Data_Out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~180_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[3]~reg0_q\);

-- Location: IOIBUF_X0_Y67_N22
\Data_In[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(4),
	o => \Data_In[4]~input_o\);

-- Location: LCCOMB_X9_Y66_N22
\stack_mem~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~33feeder_combout\ = \Data_In[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[4]~input_o\,
	combout => \stack_mem~33feeder_combout\);

-- Location: FF_X9_Y66_N23
\stack_mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~33feeder_combout\,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~33_q\);

-- Location: FF_X6_Y67_N17
\stack_mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~65_q\);

-- Location: FF_X6_Y67_N3
\stack_mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~97_q\);

-- Location: FF_X9_Y67_N21
\stack_mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~129_q\);

-- Location: LCCOMB_X9_Y67_N20
\stack_mem~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~181_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~97_q\)) # (!\Add1~1_combout\ & ((\stack_mem~129_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~97_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~129_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~181_combout\);

-- Location: LCCOMB_X9_Y67_N2
\stack_mem~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~182_combout\ = (\Add1~2_combout\ & ((\stack_mem~181_combout\ & (\stack_mem~33_q\)) # (!\stack_mem~181_combout\ & ((\stack_mem~65_q\))))) # (!\Add1~2_combout\ & (((\stack_mem~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~33_q\,
	datac => \stack_mem~65_q\,
	datad => \stack_mem~181_combout\,
	combout => \stack_mem~182_combout\);

-- Location: FF_X8_Y67_N5
\stack_mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~81_q\);

-- Location: FF_X5_Y67_N11
\stack_mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~17_q\);

-- Location: LCCOMB_X5_Y66_N0
\stack_mem~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~49feeder_combout\ = \Data_In[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[4]~input_o\,
	combout => \stack_mem~49feeder_combout\);

-- Location: FF_X5_Y66_N1
\stack_mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~49feeder_combout\,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~49_q\);

-- Location: FF_X8_Y67_N15
\stack_mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~113_q\);

-- Location: LCCOMB_X8_Y67_N14
\stack_mem~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~188_combout\ = (\Add1~1_combout\ & (((\Add1~2_combout\)))) # (!\Add1~1_combout\ & ((\Add1~2_combout\ & (\stack_mem~49_q\)) # (!\Add1~2_combout\ & ((\stack_mem~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~49_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~113_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~188_combout\);

-- Location: LCCOMB_X5_Y67_N10
\stack_mem~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~189_combout\ = (\Add1~1_combout\ & ((\stack_mem~188_combout\ & ((\stack_mem~17_q\))) # (!\stack_mem~188_combout\ & (\stack_mem~81_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~81_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~17_q\,
	datad => \stack_mem~188_combout\,
	combout => \stack_mem~189_combout\);

-- Location: LCCOMB_X4_Y66_N8
\stack_mem~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~73feeder_combout\ = \Data_In[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[4]~input_o\,
	combout => \stack_mem~73feeder_combout\);

-- Location: FF_X4_Y66_N9
\stack_mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~73feeder_combout\,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~73_q\);

-- Location: FF_X6_Y66_N27
\stack_mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~41_q\);

-- Location: FF_X6_Y66_N9
\stack_mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~105_q\);

-- Location: FF_X7_Y66_N5
\stack_mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~137_q\);

-- Location: LCCOMB_X7_Y66_N4
\stack_mem~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~183_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~105_q\)) # (!\Add1~1_combout\ & ((\stack_mem~137_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~105_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~137_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~183_combout\);

-- Location: LCCOMB_X6_Y66_N26
\stack_mem~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~184_combout\ = (\Add1~2_combout\ & ((\stack_mem~183_combout\ & ((\stack_mem~41_q\))) # (!\stack_mem~183_combout\ & (\stack_mem~73_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~73_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~41_q\,
	datad => \stack_mem~183_combout\,
	combout => \stack_mem~184_combout\);

-- Location: FF_X4_Y66_N7
\stack_mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~57_q\);

-- Location: FF_X3_Y66_N3
\stack_mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~25_q\);

-- Location: LCCOMB_X2_Y66_N16
\stack_mem~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~89feeder_combout\ = \Data_In[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[4]~input_o\,
	combout => \stack_mem~89feeder_combout\);

-- Location: FF_X2_Y66_N17
\stack_mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~89feeder_combout\,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~89_q\);

-- Location: FF_X3_Y66_N25
\stack_mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[4]~input_o\,
	sload => VCC,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~121_q\);

-- Location: LCCOMB_X3_Y66_N24
\stack_mem~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~185_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~89_q\)) # (!\Add1~1_combout\ & ((\stack_mem~121_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~89_q\,
	datac => \stack_mem~121_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~185_combout\);

-- Location: LCCOMB_X3_Y66_N2
\stack_mem~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~186_combout\ = (\Add1~2_combout\ & ((\stack_mem~185_combout\ & ((\stack_mem~25_q\))) # (!\stack_mem~185_combout\ & (\stack_mem~57_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~57_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~25_q\,
	datad => \stack_mem~185_combout\,
	combout => \stack_mem~186_combout\);

-- Location: LCCOMB_X4_Y67_N10
\stack_mem~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~187_combout\ = (sp(1) & (!sp(0) & ((\stack_mem~186_combout\)))) # (!sp(1) & ((sp(0)) # ((\stack_mem~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => \stack_mem~184_combout\,
	datad => \stack_mem~186_combout\,
	combout => \stack_mem~187_combout\);

-- Location: LCCOMB_X4_Y67_N24
\stack_mem~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~190_combout\ = (sp(0) & ((\stack_mem~187_combout\ & ((\stack_mem~189_combout\))) # (!\stack_mem~187_combout\ & (\stack_mem~182_combout\)))) # (!sp(0) & (((\stack_mem~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~182_combout\,
	datab => sp(0),
	datac => \stack_mem~189_combout\,
	datad => \stack_mem~187_combout\,
	combout => \stack_mem~190_combout\);

-- Location: FF_X4_Y67_N25
\Data_Out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~190_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[4]~reg0_q\);

-- Location: IOIBUF_X0_Y68_N8
\Data_In[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(5),
	o => \Data_In[5]~input_o\);

-- Location: LCCOMB_X6_Y67_N20
\stack_mem~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~66feeder_combout\ = \Data_In[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[5]~input_o\,
	combout => \stack_mem~66feeder_combout\);

-- Location: FF_X6_Y67_N21
\stack_mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~66feeder_combout\,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~66_q\);

-- Location: FF_X9_Y67_N13
\stack_mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~130_q\);

-- Location: LCCOMB_X9_Y67_N12
\stack_mem~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~191_combout\ = (\Add1~0_combout\ & (((\Add1~2_combout\)))) # (!\Add1~0_combout\ & ((\Add1~2_combout\ & (\stack_mem~66_q\)) # (!\Add1~2_combout\ & ((\stack_mem~130_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~66_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~130_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~191_combout\);

-- Location: LCCOMB_X8_Y67_N24
\stack_mem~114feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~114feeder_combout\ = \Data_In[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[5]~input_o\,
	combout => \stack_mem~114feeder_combout\);

-- Location: FF_X8_Y67_N25
\stack_mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~114feeder_combout\,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~114_q\);

-- Location: FF_X5_Y66_N31
\stack_mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~50_q\);

-- Location: LCCOMB_X9_Y67_N14
\stack_mem~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~192_combout\ = (\stack_mem~191_combout\ & (((\stack_mem~50_q\) # (!\Add1~0_combout\)))) # (!\stack_mem~191_combout\ & (\stack_mem~114_q\ & ((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~191_combout\,
	datab => \stack_mem~114_q\,
	datac => \stack_mem~50_q\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~192_combout\);

-- Location: FF_X9_Y67_N9
\stack_mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~34_q\);

-- Location: FF_X5_Y67_N23
\stack_mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~18_q\);

-- Location: LCCOMB_X6_Y67_N14
\stack_mem~98feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~98feeder_combout\ = \Data_In[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[5]~input_o\,
	combout => \stack_mem~98feeder_combout\);

-- Location: FF_X6_Y67_N15
\stack_mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~98feeder_combout\,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~98_q\);

-- Location: LCCOMB_X8_Y67_N2
\stack_mem~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~82feeder_combout\ = \Data_In[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[5]~input_o\,
	combout => \stack_mem~82feeder_combout\);

-- Location: FF_X8_Y67_N3
\stack_mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~82feeder_combout\,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~82_q\);

-- Location: LCCOMB_X5_Y67_N24
\stack_mem~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~198_combout\ = (\Add1~2_combout\ & (((\Add1~0_combout\)))) # (!\Add1~2_combout\ & ((\Add1~0_combout\ & ((\stack_mem~82_q\))) # (!\Add1~0_combout\ & (\stack_mem~98_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~98_q\,
	datab => \stack_mem~82_q\,
	datac => \Add1~2_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~198_combout\);

-- Location: LCCOMB_X5_Y67_N22
\stack_mem~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~199_combout\ = (\Add1~2_combout\ & ((\stack_mem~198_combout\ & ((\stack_mem~18_q\))) # (!\stack_mem~198_combout\ & (\stack_mem~34_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~34_q\,
	datac => \stack_mem~18_q\,
	datad => \stack_mem~198_combout\,
	combout => \stack_mem~199_combout\);

-- Location: FF_X7_Y66_N15
\stack_mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~90_q\);

-- Location: FF_X5_Y66_N9
\stack_mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~26_q\);

-- Location: FF_X6_Y66_N17
\stack_mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~42_q\);

-- Location: FF_X6_Y66_N7
\stack_mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~106_q\);

-- Location: LCCOMB_X6_Y66_N6
\stack_mem~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~193_combout\ = (\Add1~0_combout\ & (((\Add1~2_combout\)))) # (!\Add1~0_combout\ & ((\Add1~2_combout\ & (\stack_mem~42_q\)) # (!\Add1~2_combout\ & ((\stack_mem~106_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \stack_mem~42_q\,
	datac => \stack_mem~106_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~193_combout\);

-- Location: LCCOMB_X5_Y66_N8
\stack_mem~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~194_combout\ = (\Add1~0_combout\ & ((\stack_mem~193_combout\ & ((\stack_mem~26_q\))) # (!\stack_mem~193_combout\ & (\stack_mem~90_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~90_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~26_q\,
	datad => \stack_mem~193_combout\,
	combout => \stack_mem~194_combout\);

-- Location: LCCOMB_X3_Y66_N4
\stack_mem~122feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~122feeder_combout\ = \Data_In[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[5]~input_o\,
	combout => \stack_mem~122feeder_combout\);

-- Location: FF_X3_Y66_N5
\stack_mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~122feeder_combout\,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~122_q\);

-- Location: FF_X4_Y66_N27
\stack_mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~58_q\);

-- Location: FF_X4_Y66_N13
\stack_mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~74_q\);

-- Location: FF_X7_Y66_N21
\stack_mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[5]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~138_q\);

-- Location: LCCOMB_X7_Y66_N20
\stack_mem~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~195_combout\ = (\Add1~0_combout\ & (((\Add1~2_combout\)))) # (!\Add1~0_combout\ & ((\Add1~2_combout\ & (\stack_mem~74_q\)) # (!\Add1~2_combout\ & ((\stack_mem~138_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~74_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~138_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~195_combout\);

-- Location: LCCOMB_X4_Y66_N26
\stack_mem~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~196_combout\ = (\Add1~0_combout\ & ((\stack_mem~195_combout\ & ((\stack_mem~58_q\))) # (!\stack_mem~195_combout\ & (\stack_mem~122_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~122_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~58_q\,
	datad => \stack_mem~195_combout\,
	combout => \stack_mem~196_combout\);

-- Location: LCCOMB_X4_Y67_N16
\stack_mem~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~197_combout\ = (sp(0) & (\Add1~1_combout\)) # (!sp(0) & ((\Add1~1_combout\ & (\stack_mem~194_combout\)) # (!\Add1~1_combout\ & ((\stack_mem~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \Add1~1_combout\,
	datac => \stack_mem~194_combout\,
	datad => \stack_mem~196_combout\,
	combout => \stack_mem~197_combout\);

-- Location: LCCOMB_X4_Y67_N30
\stack_mem~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~200_combout\ = (sp(0) & ((\stack_mem~197_combout\ & ((\stack_mem~199_combout\))) # (!\stack_mem~197_combout\ & (\stack_mem~192_combout\)))) # (!sp(0) & (((\stack_mem~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~192_combout\,
	datab => \stack_mem~199_combout\,
	datac => sp(0),
	datad => \stack_mem~197_combout\,
	combout => \stack_mem~200_combout\);

-- Location: FF_X4_Y67_N31
\Data_Out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~200_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[5]~reg0_q\);

-- Location: IOIBUF_X0_Y68_N1
\Data_In[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(6),
	o => \Data_In[6]~input_o\);

-- Location: FF_X5_Y66_N27
\stack_mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~51_q\);

-- Location: FF_X5_Y67_N15
\stack_mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~19_q\);

-- Location: FF_X6_Y67_N7
\stack_mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~67_q\);

-- Location: FF_X9_Y66_N13
\stack_mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~35_q\);

-- Location: LCCOMB_X5_Y67_N0
\stack_mem~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~208_combout\ = (\Add1~1_combout\ & (((\stack_mem~35_q\) # (\Add1~0_combout\)))) # (!\Add1~1_combout\ & (\stack_mem~67_q\ & ((!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~67_q\,
	datab => \stack_mem~35_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~208_combout\);

-- Location: LCCOMB_X5_Y67_N14
\stack_mem~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~209_combout\ = (\Add1~0_combout\ & ((\stack_mem~208_combout\ & ((\stack_mem~19_q\))) # (!\stack_mem~208_combout\ & (\stack_mem~51_q\)))) # (!\Add1~0_combout\ & (((\stack_mem~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~51_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~19_q\,
	datad => \stack_mem~208_combout\,
	combout => \stack_mem~209_combout\);

-- Location: FF_X6_Y67_N29
\stack_mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~99_q\);

-- Location: FF_X8_Y67_N7
\stack_mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~83_q\);

-- Location: FF_X8_Y67_N13
\stack_mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~115_q\);

-- Location: FF_X9_Y67_N27
\stack_mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~131_q\);

-- Location: LCCOMB_X9_Y67_N26
\stack_mem~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~201_combout\ = (\Add1~0_combout\ & ((\stack_mem~115_q\) # ((\Add1~1_combout\)))) # (!\Add1~0_combout\ & (((\stack_mem~131_q\ & !\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~115_q\,
	datab => \Add1~0_combout\,
	datac => \stack_mem~131_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~201_combout\);

-- Location: LCCOMB_X9_Y67_N0
\stack_mem~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~202_combout\ = (\stack_mem~201_combout\ & (((\stack_mem~83_q\) # (!\Add1~1_combout\)))) # (!\stack_mem~201_combout\ & (\stack_mem~99_q\ & ((\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~99_q\,
	datab => \stack_mem~83_q\,
	datac => \stack_mem~201_combout\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~202_combout\);

-- Location: FF_X6_Y66_N11
\stack_mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~107_q\);

-- Location: FF_X7_Y66_N1
\stack_mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~91_q\);

-- Location: FF_X3_Y66_N27
\stack_mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~123_q\);

-- Location: FF_X7_Y66_N19
\stack_mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~139_q\);

-- Location: LCCOMB_X7_Y66_N18
\stack_mem~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~205_combout\ = (\Add1~1_combout\ & (((\Add1~0_combout\)))) # (!\Add1~1_combout\ & ((\Add1~0_combout\ & (\stack_mem~123_q\)) # (!\Add1~0_combout\ & ((\stack_mem~139_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \stack_mem~123_q\,
	datac => \stack_mem~139_q\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~205_combout\);

-- Location: LCCOMB_X7_Y66_N0
\stack_mem~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~206_combout\ = (\Add1~1_combout\ & ((\stack_mem~205_combout\ & ((\stack_mem~91_q\))) # (!\stack_mem~205_combout\ & (\stack_mem~107_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \stack_mem~107_q\,
	datac => \stack_mem~91_q\,
	datad => \stack_mem~205_combout\,
	combout => \stack_mem~206_combout\);

-- Location: FF_X6_Y66_N5
\stack_mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~43_q\);

-- Location: FF_X5_Y66_N21
\stack_mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~27_q\);

-- Location: FF_X4_Y66_N15
\stack_mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~75_q\);

-- Location: FF_X4_Y66_N21
\stack_mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[6]~input_o\,
	sload => VCC,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~59_q\);

-- Location: LCCOMB_X5_Y66_N10
\stack_mem~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~203_combout\ = (\Add1~1_combout\ & (((\Add1~0_combout\)))) # (!\Add1~1_combout\ & ((\Add1~0_combout\ & ((\stack_mem~59_q\))) # (!\Add1~0_combout\ & (\stack_mem~75_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~75_q\,
	datab => \stack_mem~59_q\,
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \stack_mem~203_combout\);

-- Location: LCCOMB_X5_Y66_N20
\stack_mem~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~204_combout\ = (\Add1~1_combout\ & ((\stack_mem~203_combout\ & ((\stack_mem~27_q\))) # (!\stack_mem~203_combout\ & (\stack_mem~43_q\)))) # (!\Add1~1_combout\ & (((\stack_mem~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~43_q\,
	datab => \Add1~1_combout\,
	datac => \stack_mem~27_q\,
	datad => \stack_mem~203_combout\,
	combout => \stack_mem~204_combout\);

-- Location: LCCOMB_X4_Y67_N18
\stack_mem~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~207_combout\ = (sp(0) & (((\Add1~2_combout\)))) # (!sp(0) & ((\Add1~2_combout\ & ((\stack_mem~204_combout\))) # (!\Add1~2_combout\ & (\stack_mem~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \stack_mem~206_combout\,
	datac => \Add1~2_combout\,
	datad => \stack_mem~204_combout\,
	combout => \stack_mem~207_combout\);

-- Location: LCCOMB_X4_Y67_N8
\stack_mem~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~210_combout\ = (sp(0) & ((\stack_mem~207_combout\ & (\stack_mem~209_combout\)) # (!\stack_mem~207_combout\ & ((\stack_mem~202_combout\))))) # (!sp(0) & (((\stack_mem~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \stack_mem~209_combout\,
	datac => \stack_mem~202_combout\,
	datad => \stack_mem~207_combout\,
	combout => \stack_mem~210_combout\);

-- Location: FF_X4_Y67_N9
\Data_Out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~210_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[6]~reg0_q\);

-- Location: IOIBUF_X0_Y67_N15
\Data_In[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(7),
	o => \Data_In[7]~input_o\);

-- Location: FF_X5_Y67_N13
\stack_mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~20_q\);

-- Location: FF_X8_Y67_N1
\stack_mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~84_q\);

-- Location: LCCOMB_X5_Y66_N24
\stack_mem~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~52feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~52feeder_combout\);

-- Location: FF_X5_Y66_N25
\stack_mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~52feeder_combout\,
	ena => \stack_mem~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~52_q\);

-- Location: FF_X8_Y67_N27
\stack_mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~116_q\);

-- Location: LCCOMB_X7_Y67_N12
\stack_mem~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~218_combout\ = (\Add1~1_combout\ & (((\Add1~2_combout\)))) # (!\Add1~1_combout\ & ((\Add1~2_combout\ & (\stack_mem~52_q\)) # (!\Add1~2_combout\ & ((\stack_mem~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~52_q\,
	datab => \Add1~1_combout\,
	datac => \Add1~2_combout\,
	datad => \stack_mem~116_q\,
	combout => \stack_mem~218_combout\);

-- Location: LCCOMB_X7_Y67_N2
\stack_mem~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~219_combout\ = (\Add1~1_combout\ & ((\stack_mem~218_combout\ & (\stack_mem~20_q\)) # (!\stack_mem~218_combout\ & ((\stack_mem~84_q\))))) # (!\Add1~1_combout\ & (((\stack_mem~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~20_q\,
	datab => \stack_mem~84_q\,
	datac => \Add1~1_combout\,
	datad => \stack_mem~218_combout\,
	combout => \stack_mem~219_combout\);

-- Location: FF_X9_Y67_N17
\stack_mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~36_q\);

-- Location: FF_X9_Y67_N23
\stack_mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~132_q\);

-- Location: LCCOMB_X6_Y67_N18
\stack_mem~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~100feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~100feeder_combout\);

-- Location: FF_X6_Y67_N19
\stack_mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~100feeder_combout\,
	ena => \stack_mem~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~100_q\);

-- Location: LCCOMB_X7_Y67_N22
\stack_mem~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~211_combout\ = (\Add1~1_combout\ & (((\Add1~2_combout\) # (\stack_mem~100_q\)))) # (!\Add1~1_combout\ & (\stack_mem~132_q\ & (!\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~132_q\,
	datab => \Add1~1_combout\,
	datac => \Add1~2_combout\,
	datad => \stack_mem~100_q\,
	combout => \stack_mem~211_combout\);

-- Location: LCCOMB_X6_Y67_N24
\stack_mem~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~68feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~68feeder_combout\);

-- Location: FF_X6_Y67_N25
\stack_mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~68feeder_combout\,
	ena => \stack_mem~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~68_q\);

-- Location: LCCOMB_X7_Y67_N4
\stack_mem~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~212_combout\ = (\Add1~2_combout\ & ((\stack_mem~211_combout\ & (\stack_mem~36_q\)) # (!\stack_mem~211_combout\ & ((\stack_mem~68_q\))))) # (!\Add1~2_combout\ & (((\stack_mem~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~36_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~211_combout\,
	datad => \stack_mem~68_q\,
	combout => \stack_mem~212_combout\);

-- Location: LCCOMB_X6_Y66_N2
\stack_mem~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~44feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~44feeder_combout\);

-- Location: FF_X6_Y66_N3
\stack_mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~44feeder_combout\,
	ena => \stack_mem~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~44_q\);

-- Location: LCCOMB_X4_Y66_N4
\stack_mem~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~76feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~76feeder_combout\);

-- Location: FF_X4_Y66_N5
\stack_mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~76feeder_combout\,
	ena => \stack_mem~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~76_q\);

-- Location: LCCOMB_X6_Y66_N20
\stack_mem~108feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~108feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~108feeder_combout\);

-- Location: FF_X6_Y66_N21
\stack_mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~108feeder_combout\,
	ena => \stack_mem~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~108_q\);

-- Location: FF_X7_Y66_N3
\stack_mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~140_q\);

-- Location: LCCOMB_X7_Y66_N2
\stack_mem~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~213_combout\ = (\Add1~1_combout\ & ((\stack_mem~108_q\) # ((\Add1~2_combout\)))) # (!\Add1~1_combout\ & (((\stack_mem~140_q\ & !\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \stack_mem~108_q\,
	datac => \stack_mem~140_q\,
	datad => \Add1~2_combout\,
	combout => \stack_mem~213_combout\);

-- Location: LCCOMB_X7_Y66_N8
\stack_mem~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~214_combout\ = (\Add1~2_combout\ & ((\stack_mem~213_combout\ & (\stack_mem~44_q\)) # (!\stack_mem~213_combout\ & ((\stack_mem~76_q\))))) # (!\Add1~2_combout\ & (((\stack_mem~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~44_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~76_q\,
	datad => \stack_mem~213_combout\,
	combout => \stack_mem~214_combout\);

-- Location: LCCOMB_X4_Y66_N2
\stack_mem~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~60feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~60feeder_combout\);

-- Location: FF_X4_Y66_N3
\stack_mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~60feeder_combout\,
	ena => \stack_mem~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~60_q\);

-- Location: FF_X3_Y66_N7
\stack_mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~28_q\);

-- Location: LCCOMB_X2_Y66_N14
\stack_mem~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~92feeder_combout\ = \Data_In[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[7]~input_o\,
	combout => \stack_mem~92feeder_combout\);

-- Location: FF_X2_Y66_N15
\stack_mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~92feeder_combout\,
	ena => \stack_mem~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~92_q\);

-- Location: FF_X3_Y66_N21
\stack_mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[7]~input_o\,
	sload => VCC,
	ena => \stack_mem~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack_mem~124_q\);

-- Location: LCCOMB_X3_Y66_N20
\stack_mem~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~215_combout\ = (\Add1~2_combout\ & (((\Add1~1_combout\)))) # (!\Add1~2_combout\ & ((\Add1~1_combout\ & (\stack_mem~92_q\)) # (!\Add1~1_combout\ & ((\stack_mem~124_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \stack_mem~92_q\,
	datac => \stack_mem~124_q\,
	datad => \Add1~1_combout\,
	combout => \stack_mem~215_combout\);

-- Location: LCCOMB_X3_Y66_N6
\stack_mem~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~216_combout\ = (\Add1~2_combout\ & ((\stack_mem~215_combout\ & ((\stack_mem~28_q\))) # (!\stack_mem~215_combout\ & (\stack_mem~60_q\)))) # (!\Add1~2_combout\ & (((\stack_mem~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mem~60_q\,
	datab => \Add1~2_combout\,
	datac => \stack_mem~28_q\,
	datad => \stack_mem~215_combout\,
	combout => \stack_mem~216_combout\);

-- Location: LCCOMB_X7_Y67_N10
\stack_mem~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~217_combout\ = (sp(1) & (!sp(0) & ((\stack_mem~216_combout\)))) # (!sp(1) & ((sp(0)) # ((\stack_mem~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(1),
	datab => sp(0),
	datac => \stack_mem~214_combout\,
	datad => \stack_mem~216_combout\,
	combout => \stack_mem~217_combout\);

-- Location: LCCOMB_X7_Y67_N28
\stack_mem~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \stack_mem~220_combout\ = (sp(0) & ((\stack_mem~217_combout\ & (\stack_mem~219_combout\)) # (!\stack_mem~217_combout\ & ((\stack_mem~212_combout\))))) # (!sp(0) & (((\stack_mem~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sp(0),
	datab => \stack_mem~219_combout\,
	datac => \stack_mem~212_combout\,
	datad => \stack_mem~217_combout\,
	combout => \stack_mem~220_combout\);

-- Location: FF_X7_Y67_N29
\Data_Out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack_mem~220_combout\,
	sclr => \Rst~input_o\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[7]~reg0_q\);

-- Location: LCCOMB_X9_Y66_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & sp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => sp(4),
	combout => \Equal0~1_combout\);

ww_Data_Out(0) <= \Data_Out[0]~output_o\;

ww_Data_Out(1) <= \Data_Out[1]~output_o\;

ww_Data_Out(2) <= \Data_Out[2]~output_o\;

ww_Data_Out(3) <= \Data_Out[3]~output_o\;

ww_Data_Out(4) <= \Data_Out[4]~output_o\;

ww_Data_Out(5) <= \Data_Out[5]~output_o\;

ww_Data_Out(6) <= \Data_Out[6]~output_o\;

ww_Data_Out(7) <= \Data_Out[7]~output_o\;

ww_Full <= \Full~output_o\;

ww_Empty <= \Empty~output_o\;
END structure;


