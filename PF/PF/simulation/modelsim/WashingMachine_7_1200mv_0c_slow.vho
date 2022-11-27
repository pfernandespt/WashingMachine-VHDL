-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/19/2022 19:19:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	top_level IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(5 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \c_door~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Debouncer1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \Debouncer1|s_dirtyIn~q\ : std_logic;
SIGNAL \Debouncer1|Add0~0_combout\ : std_logic;
SIGNAL \Debouncer1|s_previousIn~q\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~1\ : std_logic;
SIGNAL \Debouncer1|Add0~2_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~39\ : std_logic;
SIGNAL \Debouncer1|Add0~40_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~41\ : std_logic;
SIGNAL \Debouncer1|Add0~42_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[0]~29_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~3\ : std_logic;
SIGNAL \Debouncer1|Add0~4_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~5\ : std_logic;
SIGNAL \Debouncer1|Add0~6_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~7\ : std_logic;
SIGNAL \Debouncer1|Add0~8_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~9\ : std_logic;
SIGNAL \Debouncer1|Add0~10_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~11\ : std_logic;
SIGNAL \Debouncer1|Add0~12_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~13\ : std_logic;
SIGNAL \Debouncer1|Add0~14_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~15\ : std_logic;
SIGNAL \Debouncer1|Add0~16_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~17\ : std_logic;
SIGNAL \Debouncer1|Add0~18_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~19\ : std_logic;
SIGNAL \Debouncer1|Add0~20_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~21\ : std_logic;
SIGNAL \Debouncer1|Add0~22_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~23\ : std_logic;
SIGNAL \Debouncer1|Add0~24_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~25\ : std_logic;
SIGNAL \Debouncer1|Add0~26_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~27\ : std_logic;
SIGNAL \Debouncer1|Add0~28_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~29\ : std_logic;
SIGNAL \Debouncer1|Add0~30_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~31\ : std_logic;
SIGNAL \Debouncer1|Add0~32_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~33\ : std_logic;
SIGNAL \Debouncer1|Add0~34_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~35\ : std_logic;
SIGNAL \Debouncer1|Add0~36_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~37\ : std_logic;
SIGNAL \Debouncer1|Add0~38_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~5_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~2_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~0_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~1_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~3_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~4_combout\ : std_logic;
SIGNAL \Debouncer1|LessThan0~6_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \Debouncer1|Add0~43\ : std_logic;
SIGNAL \Debouncer1|Add0~44_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt[0]~5_combout\ : std_logic;
SIGNAL \Debouncer1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \Debouncer1|s_pulsedOut~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector5~4_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Debouncer2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \Debouncer2|s_dirtyIn~q\ : std_logic;
SIGNAL \Debouncer2|s_previousIn~q\ : std_logic;
SIGNAL \Debouncer2|Add0~9\ : std_logic;
SIGNAL \Debouncer2|Add0~10_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~35\ : std_logic;
SIGNAL \Debouncer2|Add0~36_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~37\ : std_logic;
SIGNAL \Debouncer2|Add0~38_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~39\ : std_logic;
SIGNAL \Debouncer2|Add0~40_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~3_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~11\ : std_logic;
SIGNAL \Debouncer2|Add0~12_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~13\ : std_logic;
SIGNAL \Debouncer2|Add0~14_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~15\ : std_logic;
SIGNAL \Debouncer2|Add0~16_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~17\ : std_logic;
SIGNAL \Debouncer2|Add0~18_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~19\ : std_logic;
SIGNAL \Debouncer2|Add0~20_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~21\ : std_logic;
SIGNAL \Debouncer2|Add0~22_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~23\ : std_logic;
SIGNAL \Debouncer2|Add0~24_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~25\ : std_logic;
SIGNAL \Debouncer2|Add0~26_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~0_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~1_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~2_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~4_combout\ : std_logic;
SIGNAL \Debouncer2|LessThan0~5_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~27\ : std_logic;
SIGNAL \Debouncer2|Add0~28_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~29\ : std_logic;
SIGNAL \Debouncer2|Add0~30_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~31\ : std_logic;
SIGNAL \Debouncer2|Add0~32_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~33\ : std_logic;
SIGNAL \Debouncer2|Add0~34_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[0]~29_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~41\ : std_logic;
SIGNAL \Debouncer2|Add0~42_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~43\ : std_logic;
SIGNAL \Debouncer2|Add0~44_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt[0]~5_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~1\ : std_logic;
SIGNAL \Debouncer2|Add0~2_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~3\ : std_logic;
SIGNAL \Debouncer2|Add0~4_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~5\ : std_logic;
SIGNAL \Debouncer2|Add0~6_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Debouncer2|Add0~7\ : std_logic;
SIGNAL \Debouncer2|Add0~8_combout\ : std_logic;
SIGNAL \Debouncer2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \Debouncer2|s_pulsedOut~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector4~1_combout\ : std_logic;
SIGNAL \MenuModule|Menu|comb_proc~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Debouncer0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \Debouncer0|s_dirtyIn~q\ : std_logic;
SIGNAL \Debouncer0|s_previousIn~q\ : std_logic;
SIGNAL \Debouncer0|Add0~0_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~1\ : std_logic;
SIGNAL \Debouncer0|Add0~2_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~3\ : std_logic;
SIGNAL \Debouncer0|Add0~5\ : std_logic;
SIGNAL \Debouncer0|Add0~6_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~7\ : std_logic;
SIGNAL \Debouncer0|Add0~8_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~9\ : std_logic;
SIGNAL \Debouncer0|Add0~10_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~11\ : std_logic;
SIGNAL \Debouncer0|Add0~12_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~23\ : std_logic;
SIGNAL \Debouncer0|Add0~24_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~25\ : std_logic;
SIGNAL \Debouncer0|Add0~26_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~27\ : std_logic;
SIGNAL \Debouncer0|Add0~28_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~29\ : std_logic;
SIGNAL \Debouncer0|Add0~30_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~31\ : std_logic;
SIGNAL \Debouncer0|Add0~32_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~33\ : std_logic;
SIGNAL \Debouncer0|Add0~34_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~35\ : std_logic;
SIGNAL \Debouncer0|Add0~36_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~37\ : std_logic;
SIGNAL \Debouncer0|Add0~38_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~39\ : std_logic;
SIGNAL \Debouncer0|Add0~40_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~3_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~0_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~1_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~2_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~4_combout\ : std_logic;
SIGNAL \Debouncer0|LessThan0~5_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~13\ : std_logic;
SIGNAL \Debouncer0|Add0~14_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~15\ : std_logic;
SIGNAL \Debouncer0|Add0~16_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~17\ : std_logic;
SIGNAL \Debouncer0|Add0~18_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~19\ : std_logic;
SIGNAL \Debouncer0|Add0~20_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~21\ : std_logic;
SIGNAL \Debouncer0|Add0~22_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[17]~29_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~41\ : std_logic;
SIGNAL \Debouncer0|Add0~42_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~43\ : std_logic;
SIGNAL \Debouncer0|Add0~44_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt[17]~5_combout\ : std_logic;
SIGNAL \Debouncer0|Add0~4_combout\ : std_logic;
SIGNAL \Debouncer0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \Debouncer0|s_pulsedOut~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector0~0_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState~12_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.PROG~q\ : std_logic;
SIGNAL \MenuModule|Menu|pState~11_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState~10_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.TEMP~q\ : std_logic;
SIGNAL \MenuModule|Menu|pState~9_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.SPIN~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector3~1_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector3~2_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.MODE~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector4~2_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.DELAY~q\ : std_logic;
SIGNAL \MenuModule|timer_en~combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~0_combout\ : std_logic;
SIGNAL \MenuModule|Demux|Mux2~0_combout\ : std_logic;
SIGNAL \MenuModule|Prog|Selector1~0_combout\ : std_logic;
SIGNAL \MenuModule|Prog|pState.P2~q\ : std_logic;
SIGNAL \MenuModule|Prog|Selector2~0_combout\ : std_logic;
SIGNAL \MenuModule|Prog|pState.P3~q\ : std_logic;
SIGNAL \MenuModule|Prog|Selector0~0_combout\ : std_logic;
SIGNAL \MenuModule|Prog|pState.P1~q\ : std_logic;
SIGNAL \Dec4|Equal1~0_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[0]~12_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[0]~34_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[0]~35\ : std_logic;
SIGNAL \MenuModule|Timer|periods[1]~37_combout\ : std_logic;
SIGNAL \MenuModule|Menu|sync_proc~7_combout\ : std_logic;
SIGNAL \MenuModule|Menu|force_t~q\ : std_logic;
SIGNAL \MenuModule|Timer|seconds~14_combout\ : std_logic;
SIGNAL \Dec4|Equal1~1_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~1\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~2_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[1]~10_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[1]~11_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~3\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~4_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[2]~8_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[2]~9_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~5\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~6_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[3]~6_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[3]~7_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~7\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~8_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[4]~4_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[4]~5_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~9\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~10_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[5]~2_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[5]~3_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~11\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~12_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[6]~15_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~13\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~14_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[7]~16_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~15\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~16_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[8]~17_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~17\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~18_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[9]~18_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~19\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~20_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[10]~19_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~21\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~22_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[11]~20_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~23\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~24_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[12]~21_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~25\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~26_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[13]~22_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~27\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~28_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[14]~23_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~29\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~30_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[15]~24_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~31\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~32_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[16]~25_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~33\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~34_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[17]~26_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~35\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~36_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[18]~27_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~37\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~38_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[19]~28_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~39\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~40_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[20]~29_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~5_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~41\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~42_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[21]~30_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~43\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~44_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[22]~31_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~45\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~46_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[23]~32_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~47\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~48_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[24]~33_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~6_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~2_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~0_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~3_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~1_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~4_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~49\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~50_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[25]~34_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~51\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~52_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[26]~35_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~53\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~54_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[27]~36_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~55\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~56_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[28]~37_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~57\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~58_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[29]~38_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~59\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~60_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[30]~39_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~61\ : std_logic;
SIGNAL \MenuModule|Timer|Add0~62_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[31]~40_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~7_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~8_combout\ : std_logic;
SIGNAL \MenuModule|Timer|Equal0~9_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[3]~0_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[2]~99_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[1]~38\ : std_logic;
SIGNAL \MenuModule|Timer|periods[2]~39_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[2]~40\ : std_logic;
SIGNAL \MenuModule|Timer|periods[3]~41_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[3]~42\ : std_logic;
SIGNAL \MenuModule|Timer|periods[4]~43_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[4]~44\ : std_logic;
SIGNAL \MenuModule|Timer|periods[5]~45_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[5]~46\ : std_logic;
SIGNAL \MenuModule|Timer|periods[6]~47_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[6]~48\ : std_logic;
SIGNAL \MenuModule|Timer|periods[7]~49_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[7]~50\ : std_logic;
SIGNAL \MenuModule|Timer|periods[8]~51_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[8]~52\ : std_logic;
SIGNAL \MenuModule|Timer|periods[9]~53_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[9]~54\ : std_logic;
SIGNAL \MenuModule|Timer|periods[10]~55_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[10]~56\ : std_logic;
SIGNAL \MenuModule|Timer|periods[11]~57_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[11]~58\ : std_logic;
SIGNAL \MenuModule|Timer|periods[12]~59_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[12]~60\ : std_logic;
SIGNAL \MenuModule|Timer|periods[13]~61_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[13]~62\ : std_logic;
SIGNAL \MenuModule|Timer|periods[14]~63_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[14]~64\ : std_logic;
SIGNAL \MenuModule|Timer|periods[15]~65_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[15]~66\ : std_logic;
SIGNAL \MenuModule|Timer|periods[16]~67_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[16]~68\ : std_logic;
SIGNAL \MenuModule|Timer|periods[17]~69_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[17]~70\ : std_logic;
SIGNAL \MenuModule|Timer|periods[18]~71_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[18]~72\ : std_logic;
SIGNAL \MenuModule|Timer|periods[19]~73_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[19]~74\ : std_logic;
SIGNAL \MenuModule|Timer|periods[20]~75_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~5_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[20]~76\ : std_logic;
SIGNAL \MenuModule|Timer|periods[21]~77_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[21]~78\ : std_logic;
SIGNAL \MenuModule|Timer|periods[22]~79_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[22]~80\ : std_logic;
SIGNAL \MenuModule|Timer|periods[23]~81_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[23]~82\ : std_logic;
SIGNAL \MenuModule|Timer|periods[24]~83_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~6_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[24]~84\ : std_logic;
SIGNAL \MenuModule|Timer|periods[25]~85_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[25]~86\ : std_logic;
SIGNAL \MenuModule|Timer|periods[26]~87_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[26]~88\ : std_logic;
SIGNAL \MenuModule|Timer|periods[27]~89_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[27]~90\ : std_logic;
SIGNAL \MenuModule|Timer|periods[28]~91_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~7_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[28]~92\ : std_logic;
SIGNAL \MenuModule|Timer|periods[29]~93_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[29]~94\ : std_logic;
SIGNAL \MenuModule|Timer|periods[30]~95_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[30]~96\ : std_logic;
SIGNAL \MenuModule|Timer|periods[31]~97_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~8_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~3_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~0_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~1_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~2_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~4_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~9_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods[2]~36_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[3]~1_combout\ : std_logic;
SIGNAL \MenuModule|Timer|seconds[0]~13_combout\ : std_logic;
SIGNAL \MenuModule|Timer|process_0~0_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~10_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~11_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~12_combout\ : std_logic;
SIGNAL \MenuModule|Timer|exp_time~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector5~5_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector6~5_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector6~4_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.PAUSE~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector5~6_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector5~7_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector5~8_combout\ : std_logic;
SIGNAL \MenuModule|Menu|pState.WASH~q\ : std_logic;
SIGNAL \WashModule|TIMER|periods[0]~33_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[0]~34\ : std_logic;
SIGNAL \WashModule|TIMER|periods[1]~37_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[29]~32_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[2]~0_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~0_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~30_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~29_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.E2~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~34_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~32_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.RW2~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~35_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~36_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.SP1~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~33_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.RW3~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~39_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.FINISHED~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~37_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~38_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.IDLE~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~23_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~22_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~24_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.PW1~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~28_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.E1~q\ : std_logic;
SIGNAL \WashModule|FSM|rinse~0_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[0]~1_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[0]~2_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[29]~36_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[1]~38\ : std_logic;
SIGNAL \WashModule|TIMER|periods[2]~39_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[2]~40\ : std_logic;
SIGNAL \WashModule|TIMER|periods[3]~41_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[3]~42\ : std_logic;
SIGNAL \WashModule|TIMER|periods[4]~43_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[4]~44\ : std_logic;
SIGNAL \WashModule|TIMER|periods[5]~45_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[5]~46\ : std_logic;
SIGNAL \WashModule|TIMER|periods[6]~47_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[6]~48\ : std_logic;
SIGNAL \WashModule|TIMER|periods[7]~49_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[7]~50\ : std_logic;
SIGNAL \WashModule|TIMER|periods[8]~51_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[8]~52\ : std_logic;
SIGNAL \WashModule|TIMER|periods[9]~53_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[9]~54\ : std_logic;
SIGNAL \WashModule|TIMER|periods[10]~55_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[10]~56\ : std_logic;
SIGNAL \WashModule|TIMER|periods[11]~57_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[11]~58\ : std_logic;
SIGNAL \WashModule|TIMER|periods[12]~59_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[12]~60\ : std_logic;
SIGNAL \WashModule|TIMER|periods[13]~61_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[13]~62\ : std_logic;
SIGNAL \WashModule|TIMER|periods[14]~63_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[14]~64\ : std_logic;
SIGNAL \WashModule|TIMER|periods[15]~65_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[15]~66\ : std_logic;
SIGNAL \WashModule|TIMER|periods[16]~67_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[16]~68\ : std_logic;
SIGNAL \WashModule|TIMER|periods[17]~69_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[17]~70\ : std_logic;
SIGNAL \WashModule|TIMER|periods[18]~71_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[18]~72\ : std_logic;
SIGNAL \WashModule|TIMER|periods[19]~73_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[19]~74\ : std_logic;
SIGNAL \WashModule|TIMER|periods[20]~75_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[20]~76\ : std_logic;
SIGNAL \WashModule|TIMER|periods[21]~77_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[21]~78\ : std_logic;
SIGNAL \WashModule|TIMER|periods[22]~79_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[22]~80\ : std_logic;
SIGNAL \WashModule|TIMER|periods[23]~81_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[23]~82\ : std_logic;
SIGNAL \WashModule|TIMER|periods[24]~83_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~6_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[24]~84\ : std_logic;
SIGNAL \WashModule|TIMER|periods[25]~85_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[25]~86\ : std_logic;
SIGNAL \WashModule|TIMER|periods[26]~87_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[26]~88\ : std_logic;
SIGNAL \WashModule|TIMER|periods[27]~89_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[27]~90\ : std_logic;
SIGNAL \WashModule|TIMER|periods[28]~91_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[28]~92\ : std_logic;
SIGNAL \WashModule|TIMER|periods[29]~93_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[29]~94\ : std_logic;
SIGNAL \WashModule|TIMER|periods[30]~95_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[30]~96\ : std_logic;
SIGNAL \WashModule|TIMER|periods[31]~97_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~7_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~8_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~5_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~3_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~0_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~2_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~1_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~4_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~9_combout\ : std_logic;
SIGNAL \WashModule|TIMER|periods[29]~35_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[31]~10_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~1\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~2_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~31_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.RW1~q\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[1]~3_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[1]~4_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~10_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[1]~5_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[1]~6_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~3\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~4_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[2]~7_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[2]~8_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[2]~9_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~5\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~6_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[3]~11_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~7\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~8_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[4]~12_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~9\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~10_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[5]~13_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~11\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~12_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[6]~14_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~13\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~14_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[7]~15_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~15\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~16_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[8]~16_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~17\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~18_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[9]~17_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~19\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~20_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[10]~18_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~21\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~22_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[11]~19_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~23\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~24_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[12]~20_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~25\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~26_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[13]~21_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~27\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~28_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[14]~22_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~29\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~30_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[15]~23_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~31\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~32_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[16]~24_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~33\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~34_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[17]~25_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~35\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~36_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[18]~26_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~37\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~38_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[19]~27_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~39\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~40_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[20]~28_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~5_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~41\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~42_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[21]~29_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~43\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~44_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[22]~30_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~45\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~46_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[23]~31_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~47\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~48_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[24]~32_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~6_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~49\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~50_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[25]~33_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~51\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~52_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[26]~34_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~53\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~54_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[27]~35_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~55\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~56_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[28]~36_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~57\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~58_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[29]~37_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~59\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~60_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[30]~38_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~61\ : std_logic;
SIGNAL \WashModule|TIMER|Add0~62_combout\ : std_logic;
SIGNAL \WashModule|TIMER|seconds[31]~39_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~7_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~8_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~1_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~2_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~3_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~0_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~4_combout\ : std_logic;
SIGNAL \WashModule|TIMER|Equal0~9_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~10_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~11_combout\ : std_logic;
SIGNAL \WashModule|TIMER|exp_time~q\ : std_logic;
SIGNAL \WashModule|FSM|pState~25_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~26_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState~27_combout\ : std_logic;
SIGNAL \WashModule|FSM|pState.PW2~q\ : std_logic;
SIGNAL \WashModule|FSM|w_valve~0_combout\ : std_logic;
SIGNAL \WashModule|FSM|w_pump~0_combout\ : std_logic;
SIGNAL \WashModule|FSM|spin~0_combout\ : std_logic;
SIGNAL \MenuModule|Demux|Mux1~0_combout\ : std_logic;
SIGNAL \MenuModule|Temp|Selector0~0_combout\ : std_logic;
SIGNAL \MenuModule|Temp|pState.COLD~q\ : std_logic;
SIGNAL \MenuModule|Temp|Selector1~0_combout\ : std_logic;
SIGNAL \MenuModule|Temp|pState.T40~q\ : std_logic;
SIGNAL \MenuModule|Temp|Selector2~0_combout\ : std_logic;
SIGNAL \MenuModule|Temp|pState.T60~q\ : std_logic;
SIGNAL \MenuModule|Spin|nState~0_combout\ : std_logic;
SIGNAL \MenuModule|Spin|pState~q\ : std_logic;
SIGNAL \MenuModule|Menu|Selector8~0_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector9~0_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector9~1_combout\ : std_logic;
SIGNAL \MenuModule|Menu|Selector10~0_combout\ : std_logic;
SIGNAL \Dec3|h0[0]~4_combout\ : std_logic;
SIGNAL \Dec3|Equal4~0_combout\ : std_logic;
SIGNAL \MenuModule|Menu|disp_0~0_combout\ : std_logic;
SIGNAL \Dec3|h0[0]~5_combout\ : std_logic;
SIGNAL \Dec3|h0[0]~18_combout\ : std_logic;
SIGNAL \Dec3|h0[1]~6_combout\ : std_logic;
SIGNAL \Dec3|h0[2]~7_combout\ : std_logic;
SIGNAL \Dec3|h0[2]~19_combout\ : std_logic;
SIGNAL \Dec3|h0[2]~8_combout\ : std_logic;
SIGNAL \Dec3|h0~9_combout\ : std_logic;
SIGNAL \Dec3|Equal4~1_combout\ : std_logic;
SIGNAL \Dec3|h0[5]~10_combout\ : std_logic;
SIGNAL \Dec3|h0[3]~12_combout\ : std_logic;
SIGNAL \Dec3|h0[3]~11_combout\ : std_logic;
SIGNAL \Dec3|h0[3]~13_combout\ : std_logic;
SIGNAL \Dec3|h0[4]~14_combout\ : std_logic;
SIGNAL \Dec3|h0[5]~15_combout\ : std_logic;
SIGNAL \Dec3|h0[5]~16_combout\ : std_logic;
SIGNAL \Dec3|h0[6]~17_combout\ : std_logic;
SIGNAL \Dec3|h1[0]~10_combout\ : std_logic;
SIGNAL \Dec3|h1[1]~11_combout\ : std_logic;
SIGNAL \Dec3|h1[2]~12_combout\ : std_logic;
SIGNAL \Dec3|h1[3]~13_combout\ : std_logic;
SIGNAL \Dec3|h1[3]~20_combout\ : std_logic;
SIGNAL \Dec3|h1[4]~14_combout\ : std_logic;
SIGNAL \Dec3|h1~19_combout\ : std_logic;
SIGNAL \Dec3|h1~15_combout\ : std_logic;
SIGNAL \Dec3|h1[4]~16_combout\ : std_logic;
SIGNAL \Dec3|h1[5]~17_combout\ : std_logic;
SIGNAL \Dec3|h1[6]~18_combout\ : std_logic;
SIGNAL \MenuModule|Menu|WideOr2~0_combout\ : std_logic;
SIGNAL \MenuModule|Menu|WideOr1~0_combout\ : std_logic;
SIGNAL \Dec2|h0[0]~12_combout\ : std_logic;
SIGNAL \Dec2|Equal4~2_combout\ : std_logic;
SIGNAL \Dec2|h0[3]~13_combout\ : std_logic;
SIGNAL \Dec2|h0[4]~14_combout\ : std_logic;
SIGNAL \Dec2|h0[5]~15_combout\ : std_logic;
SIGNAL \Dec2|h0[6]~16_combout\ : std_logic;
SIGNAL \Dec2|h1[0]~14_combout\ : std_logic;
SIGNAL \Dec2|h1[1]~15_combout\ : std_logic;
SIGNAL \Dec2|h1~16_combout\ : std_logic;
SIGNAL \Dec2|h1[3]~17_combout\ : std_logic;
SIGNAL \Dec2|h1[6]~18_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Dec1|Equal2~0_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ : std_logic;
SIGNAL \Dec1|Equal2~1_combout\ : std_logic;
SIGNAL \Dec1|Equal2~2_combout\ : std_logic;
SIGNAL \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dec1|Equal2~3_combout\ : std_logic;
SIGNAL \Dec1|Equal2~4_combout\ : std_logic;
SIGNAL \Dec1|h0[0]~0_combout\ : std_logic;
SIGNAL \Dec1|h0~1_combout\ : std_logic;
SIGNAL \Dec1|Equal7~0_combout\ : std_logic;
SIGNAL \Dec1|h0[3]~2_combout\ : std_logic;
SIGNAL \Dec1|Equal8~0_combout\ : std_logic;
SIGNAL \Dec1|Equal0~0_combout\ : std_logic;
SIGNAL \Dec1|Equal0~1_combout\ : std_logic;
SIGNAL \Dec1|h0[4]~4_combout\ : std_logic;
SIGNAL \Dec1|h0[4]~5_combout\ : std_logic;
SIGNAL \Dec1|h0[4]~3_combout\ : std_logic;
SIGNAL \Dec1|h0[4]~6_combout\ : std_logic;
SIGNAL \Dec1|h0[5]~7_combout\ : std_logic;
SIGNAL \Dec1|Equal2~5_combout\ : std_logic;
SIGNAL \Dec1|h0[6]~8_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29_combout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dec1|h1[0]~0_combout\ : std_logic;
SIGNAL \Dec1|h1~1_combout\ : std_logic;
SIGNAL \Dec1|Equal16~0_combout\ : std_logic;
SIGNAL \Dec1|h1[3]~2_combout\ : std_logic;
SIGNAL \Dec1|h1[4]~3_combout\ : std_logic;
SIGNAL \Dec1|h1[5]~4_combout\ : std_logic;
SIGNAL \Dec1|h1[6]~5_combout\ : std_logic;
SIGNAL \Dec4|h0~0_combout\ : std_logic;
SIGNAL \Dec4|h0[1]~1_combout\ : std_logic;
SIGNAL \MenuModule|Timer|periods\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \WashModule|TIMER|periods\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Debouncer0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \MenuModule|Menu|disp_1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Debouncer2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \MenuModule|Timer|seconds\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Debouncer1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \WashModule|TIMER|seconds\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Dec4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \Dec4|ALT_INV_h0[1]~1_combout\ : std_logic;
SIGNAL \Dec4|ALT_INV_h0~0_combout\ : std_logic;
SIGNAL \Dec1|ALT_INV_h1[0]~0_combout\ : std_logic;
SIGNAL \Dec1|ALT_INV_h0~1_combout\ : std_logic;
SIGNAL \Dec3|ALT_INV_h1[6]~18_combout\ : std_logic;
SIGNAL \Dec3|ALT_INV_h1[1]~11_combout\ : std_logic;
SIGNAL \Dec3|ALT_INV_h1[0]~10_combout\ : std_logic;
SIGNAL \Dec3|ALT_INV_h0[1]~6_combout\ : std_logic;
SIGNAL \Dec2|ALT_INV_h1~16_combout\ : std_logic;
SIGNAL \Dec2|ALT_INV_h0[6]~16_combout\ : std_logic;
SIGNAL \Dec2|ALT_INV_h0[5]~15_combout\ : std_logic;
SIGNAL \Dec2|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \MenuModule|Spin|ALT_INV_pState~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Dec4|ALT_INV_Equal1~0_combout\ <= NOT \Dec4|Equal1~0_combout\;
\Dec4|ALT_INV_h0[1]~1_combout\ <= NOT \Dec4|h0[1]~1_combout\;
\Dec4|ALT_INV_h0~0_combout\ <= NOT \Dec4|h0~0_combout\;
\Dec1|ALT_INV_h1[0]~0_combout\ <= NOT \Dec1|h1[0]~0_combout\;
\Dec1|ALT_INV_h0~1_combout\ <= NOT \Dec1|h0~1_combout\;
\Dec3|ALT_INV_h1[6]~18_combout\ <= NOT \Dec3|h1[6]~18_combout\;
\Dec3|ALT_INV_h1[1]~11_combout\ <= NOT \Dec3|h1[1]~11_combout\;
\Dec3|ALT_INV_h1[0]~10_combout\ <= NOT \Dec3|h1[0]~10_combout\;
\Dec3|ALT_INV_h0[1]~6_combout\ <= NOT \Dec3|h0[1]~6_combout\;
\Dec2|ALT_INV_h1~16_combout\ <= NOT \Dec2|h1~16_combout\;
\Dec2|ALT_INV_h0[6]~16_combout\ <= NOT \Dec2|h0[6]~16_combout\;
\Dec2|ALT_INV_h0[5]~15_combout\ <= NOT \Dec2|h0[5]~15_combout\;
\Dec2|ALT_INV_Equal4~2_combout\ <= NOT \Dec2|Equal4~2_combout\;
\MenuModule|Spin|ALT_INV_pState~q\ <= NOT \MenuModule|Spin|pState~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Menu|pState.WASH~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Menu|pState.DELAY~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WashModule|FSM|w_valve~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WashModule|FSM|rinse~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WashModule|FSM|w_pump~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WashModule|FSM|spin~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Temp|pState.T60~q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Temp|pState.COLD~q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Spin|ALT_INV_pState~q\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Spin|pState~q\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[0]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|ALT_INV_h0[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[2]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[3]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[4]~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[5]~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h0[6]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|ALT_INV_h1[0]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|ALT_INV_h1[1]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h1[2]~12_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h1[3]~20_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h1[4]~16_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|h1[5]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec3|ALT_INV_h1[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h0[0]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h0[0]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|ALT_INV_Equal4~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h0[3]~13_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h0[4]~14_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|ALT_INV_h0[5]~15_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|ALT_INV_h0[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h1[0]~14_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h1[1]~15_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|ALT_INV_h1~16_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h1[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MenuModule|Menu|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|ALT_INV_h0[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec2|h1[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h0[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|ALT_INV_h0~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h0[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h0[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h0[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h0[6]~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|ALT_INV_h1[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h1~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|Equal16~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h1[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h1[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h1[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec1|h1[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|ALT_INV_h0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|ALT_INV_h0[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|ALT_INV_h0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec4|ALT_INV_h0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X107_Y24_N9
c_door : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_door~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X110_Y36_N10
\Debouncer1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \Debouncer1|s_dirtyIn~0_combout\);

-- Location: FF_X110_Y36_N11
\Debouncer1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_dirtyIn~q\);

-- Location: LCCOMB_X111_Y36_N10
\Debouncer1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~0_combout\ = \Debouncer1|s_debounceCnt\(0) $ (VCC)
-- \Debouncer1|Add0~1\ = CARRY(\Debouncer1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(0),
	datad => VCC,
	combout => \Debouncer1|Add0~0_combout\,
	cout => \Debouncer1|Add0~1\);

-- Location: FF_X111_Y36_N31
\Debouncer1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Debouncer1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_previousIn~q\);

-- Location: LCCOMB_X113_Y36_N30
\Debouncer1|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[0]~2_combout\ = (\Debouncer1|s_dirtyIn~q\ & ((!\Debouncer1|LessThan0~6_combout\) # (!\Debouncer1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(22),
	datac => \Debouncer1|s_dirtyIn~q\,
	datad => \Debouncer1|LessThan0~6_combout\,
	combout => \Debouncer1|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X111_Y36_N12
\Debouncer1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~2_combout\ = (\Debouncer1|s_debounceCnt\(1) & (\Debouncer1|Add0~1\ & VCC)) # (!\Debouncer1|s_debounceCnt\(1) & (!\Debouncer1|Add0~1\))
-- \Debouncer1|Add0~3\ = CARRY((!\Debouncer1|s_debounceCnt\(1) & !\Debouncer1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(1),
	datad => VCC,
	cin => \Debouncer1|Add0~1\,
	combout => \Debouncer1|Add0~2_combout\,
	cout => \Debouncer1|Add0~3\);

-- Location: LCCOMB_X112_Y36_N30
\Debouncer1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~21_combout\ = (\Debouncer1|Add0~2_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|Add0~2_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X112_Y36_N10
\Debouncer1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~7_combout\ = (!\Debouncer1|s_debounceCnt\(1) & (!\Debouncer1|s_debounceCnt\(2) & (!\Debouncer1|s_debounceCnt\(3) & !\Debouncer1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(1),
	datab => \Debouncer1|s_debounceCnt\(2),
	datac => \Debouncer1|s_debounceCnt\(3),
	datad => \Debouncer1|s_debounceCnt\(4),
	combout => \Debouncer1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X111_Y36_N0
\Debouncer1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~2_combout\ = (!\Debouncer1|s_debounceCnt\(17) & (!\Debouncer1|s_debounceCnt\(15) & (!\Debouncer1|s_debounceCnt\(6) & !\Debouncer1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(17),
	datab => \Debouncer1|s_debounceCnt\(15),
	datac => \Debouncer1|s_debounceCnt\(6),
	datad => \Debouncer1|s_debounceCnt\(16),
	combout => \Debouncer1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X111_Y35_N16
\Debouncer1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~38_combout\ = (\Debouncer1|s_debounceCnt\(19) & (\Debouncer1|Add0~37\ & VCC)) # (!\Debouncer1|s_debounceCnt\(19) & (!\Debouncer1|Add0~37\))
-- \Debouncer1|Add0~39\ = CARRY((!\Debouncer1|s_debounceCnt\(19) & !\Debouncer1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(19),
	datad => VCC,
	cin => \Debouncer1|Add0~37\,
	combout => \Debouncer1|Add0~38_combout\,
	cout => \Debouncer1|Add0~39\);

-- Location: LCCOMB_X111_Y35_N18
\Debouncer1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~40_combout\ = (\Debouncer1|s_debounceCnt\(20) & ((GND) # (!\Debouncer1|Add0~39\))) # (!\Debouncer1|s_debounceCnt\(20) & (\Debouncer1|Add0~39\ $ (GND)))
-- \Debouncer1|Add0~41\ = CARRY((\Debouncer1|s_debounceCnt\(20)) # (!\Debouncer1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(20),
	datad => VCC,
	cin => \Debouncer1|Add0~39\,
	combout => \Debouncer1|Add0~40_combout\,
	cout => \Debouncer1|Add0~41\);

-- Location: LCCOMB_X110_Y36_N0
\Debouncer1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[20]~9_combout\ = (\Debouncer1|s_debounceCnt[0]~4_combout\ & (\Debouncer1|Add0~40_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt[0]~4_combout\,
	datac => \Debouncer1|Add0~40_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X110_Y36_N1
\Debouncer1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y35_N20
\Debouncer1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~42_combout\ = (\Debouncer1|s_debounceCnt\(21) & (\Debouncer1|Add0~41\ & VCC)) # (!\Debouncer1|s_debounceCnt\(21) & (!\Debouncer1|Add0~41\))
-- \Debouncer1|Add0~43\ = CARRY((!\Debouncer1|s_debounceCnt\(21) & !\Debouncer1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(21),
	datad => VCC,
	cin => \Debouncer1|Add0~41\,
	combout => \Debouncer1|Add0~42_combout\,
	cout => \Debouncer1|Add0~43\);

-- Location: LCCOMB_X113_Y36_N2
\Debouncer1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[21]~10_combout\ = (\Debouncer1|s_debounceCnt[0]~5_combout\ & (\Debouncer1|s_debounceCnt[0]~4_combout\ & \Debouncer1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt[0]~5_combout\,
	datac => \Debouncer1|s_debounceCnt[0]~4_combout\,
	datad => \Debouncer1|Add0~42_combout\,
	combout => \Debouncer1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X113_Y36_N3
\Debouncer1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(21));

-- Location: LCCOMB_X111_Y36_N6
\Debouncer1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~3_combout\ = (!\Debouncer1|s_debounceCnt\(13) & (!\Debouncer1|s_debounceCnt\(21) & (!\Debouncer1|s_debounceCnt\(20) & !\Debouncer1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(13),
	datab => \Debouncer1|s_debounceCnt\(21),
	datac => \Debouncer1|s_debounceCnt\(20),
	datad => \Debouncer1|s_debounceCnt\(12),
	combout => \Debouncer1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X111_Y35_N26
\Debouncer1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~5_combout\ = (!\Debouncer1|s_debounceCnt\(18) & (!\Debouncer1|s_debounceCnt\(19) & (!\Debouncer1|s_debounceCnt\(14) & !\Debouncer1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(18),
	datab => \Debouncer1|s_debounceCnt\(19),
	datac => \Debouncer1|s_debounceCnt\(14),
	datad => \Debouncer1|s_debounceCnt\(11),
	combout => \Debouncer1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y36_N8
\Debouncer1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~4_combout\ = (!\Debouncer1|s_debounceCnt\(7) & (!\Debouncer1|s_debounceCnt\(9) & (!\Debouncer1|s_debounceCnt\(10) & !\Debouncer1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(7),
	datab => \Debouncer1|s_debounceCnt\(9),
	datac => \Debouncer1|s_debounceCnt\(10),
	datad => \Debouncer1|s_debounceCnt\(8),
	combout => \Debouncer1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X112_Y36_N28
\Debouncer1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~6_combout\ = (\Debouncer1|s_pulsedOut~2_combout\ & (\Debouncer1|s_pulsedOut~3_combout\ & (\Debouncer1|s_pulsedOut~5_combout\ & \Debouncer1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_pulsedOut~2_combout\,
	datab => \Debouncer1|s_pulsedOut~3_combout\,
	datac => \Debouncer1|s_pulsedOut~5_combout\,
	datad => \Debouncer1|s_pulsedOut~4_combout\,
	combout => \Debouncer1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X112_Y36_N18
\Debouncer1|s_debounceCnt[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[0]~29_combout\ = (\Debouncer1|s_debounceCnt\(5)) # ((\Debouncer1|s_debounceCnt\(0)) # ((!\Debouncer1|s_pulsedOut~6_combout\) # (!\Debouncer1|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(5),
	datab => \Debouncer1|s_debounceCnt\(0),
	datac => \Debouncer1|s_pulsedOut~7_combout\,
	datad => \Debouncer1|s_pulsedOut~6_combout\,
	combout => \Debouncer1|s_debounceCnt[0]~29_combout\);

-- Location: LCCOMB_X112_Y36_N20
\Debouncer1|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[0]~4_combout\ = ((\Debouncer1|s_debounceCnt\(22)) # ((\Debouncer1|s_debounceCnt[0]~29_combout\) # (!\Debouncer1|s_dirtyIn~q\))) # (!\Debouncer1|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|s_debounceCnt\(22),
	datac => \Debouncer1|s_dirtyIn~q\,
	datad => \Debouncer1|s_debounceCnt[0]~29_combout\,
	combout => \Debouncer1|s_debounceCnt[0]~4_combout\);

-- Location: FF_X112_Y36_N31
\Debouncer1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~21_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y36_N14
\Debouncer1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~4_combout\ = (\Debouncer1|s_debounceCnt\(2) & ((GND) # (!\Debouncer1|Add0~3\))) # (!\Debouncer1|s_debounceCnt\(2) & (\Debouncer1|Add0~3\ $ (GND)))
-- \Debouncer1|Add0~5\ = CARRY((\Debouncer1|s_debounceCnt\(2)) # (!\Debouncer1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(2),
	datad => VCC,
	cin => \Debouncer1|Add0~3\,
	combout => \Debouncer1|Add0~4_combout\,
	cout => \Debouncer1|Add0~5\);

-- Location: LCCOMB_X112_Y36_N16
\Debouncer1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~22_combout\ = (\Debouncer1|Add0~4_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|Add0~4_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~22_combout\);

-- Location: FF_X112_Y36_N17
\Debouncer1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~22_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y36_N16
\Debouncer1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~6_combout\ = (\Debouncer1|s_debounceCnt\(3) & (\Debouncer1|Add0~5\ & VCC)) # (!\Debouncer1|s_debounceCnt\(3) & (!\Debouncer1|Add0~5\))
-- \Debouncer1|Add0~7\ = CARRY((!\Debouncer1|s_debounceCnt\(3) & !\Debouncer1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(3),
	datad => VCC,
	cin => \Debouncer1|Add0~5\,
	combout => \Debouncer1|Add0~6_combout\,
	cout => \Debouncer1|Add0~7\);

-- Location: LCCOMB_X112_Y36_N22
\Debouncer1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~23_combout\ = (\Debouncer1|Add0~6_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|Add0~6_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y36_N23
\Debouncer1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~23_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y36_N18
\Debouncer1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~8_combout\ = (\Debouncer1|s_debounceCnt\(4) & ((GND) # (!\Debouncer1|Add0~7\))) # (!\Debouncer1|s_debounceCnt\(4) & (\Debouncer1|Add0~7\ $ (GND)))
-- \Debouncer1|Add0~9\ = CARRY((\Debouncer1|s_debounceCnt\(4)) # (!\Debouncer1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(4),
	datad => VCC,
	cin => \Debouncer1|Add0~7\,
	combout => \Debouncer1|Add0~8_combout\,
	cout => \Debouncer1|Add0~9\);

-- Location: LCCOMB_X112_Y36_N12
\Debouncer1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~24_combout\ = (\Debouncer1|Add0~8_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|Add0~8_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~24_combout\);

-- Location: FF_X112_Y36_N13
\Debouncer1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~24_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(4));

-- Location: LCCOMB_X111_Y36_N20
\Debouncer1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~10_combout\ = (\Debouncer1|s_debounceCnt\(5) & (\Debouncer1|Add0~9\ & VCC)) # (!\Debouncer1|s_debounceCnt\(5) & (!\Debouncer1|Add0~9\))
-- \Debouncer1|Add0~11\ = CARRY((!\Debouncer1|s_debounceCnt\(5) & !\Debouncer1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(5),
	datad => VCC,
	cin => \Debouncer1|Add0~9\,
	combout => \Debouncer1|Add0~10_combout\,
	cout => \Debouncer1|Add0~11\);

-- Location: LCCOMB_X112_Y36_N4
\Debouncer1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~25_combout\ = (\Debouncer1|Add0~10_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|Add0~10_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~25_combout\);

-- Location: FF_X112_Y36_N5
\Debouncer1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~25_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(5));

-- Location: LCCOMB_X111_Y36_N22
\Debouncer1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~12_combout\ = (\Debouncer1|s_debounceCnt\(6) & ((GND) # (!\Debouncer1|Add0~11\))) # (!\Debouncer1|s_debounceCnt\(6) & (\Debouncer1|Add0~11\ $ (GND)))
-- \Debouncer1|Add0~13\ = CARRY((\Debouncer1|s_debounceCnt\(6)) # (!\Debouncer1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(6),
	datad => VCC,
	cin => \Debouncer1|Add0~11\,
	combout => \Debouncer1|Add0~12_combout\,
	cout => \Debouncer1|Add0~13\);

-- Location: LCCOMB_X112_Y36_N8
\Debouncer1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~3_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & ((\Debouncer1|Add0~12_combout\) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|Add0~12_combout\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	combout => \Debouncer1|s_debounceCnt~3_combout\);

-- Location: FF_X112_Y36_N9
\Debouncer1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~3_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y36_N24
\Debouncer1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~14_combout\ = (\Debouncer1|s_debounceCnt\(7) & (\Debouncer1|Add0~13\ & VCC)) # (!\Debouncer1|s_debounceCnt\(7) & (!\Debouncer1|Add0~13\))
-- \Debouncer1|Add0~15\ = CARRY((!\Debouncer1|s_debounceCnt\(7) & !\Debouncer1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(7),
	datad => VCC,
	cin => \Debouncer1|Add0~13\,
	combout => \Debouncer1|Add0~14_combout\,
	cout => \Debouncer1|Add0~15\);

-- Location: LCCOMB_X112_Y36_N6
\Debouncer1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~13_combout\ = (\Debouncer1|Add0~14_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|Add0~14_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~13_combout\);

-- Location: FF_X112_Y36_N7
\Debouncer1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~13_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y36_N26
\Debouncer1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~16_combout\ = (\Debouncer1|s_debounceCnt\(8) & ((GND) # (!\Debouncer1|Add0~15\))) # (!\Debouncer1|s_debounceCnt\(8) & (\Debouncer1|Add0~15\ $ (GND)))
-- \Debouncer1|Add0~17\ = CARRY((\Debouncer1|s_debounceCnt\(8)) # (!\Debouncer1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(8),
	datad => VCC,
	cin => \Debouncer1|Add0~15\,
	combout => \Debouncer1|Add0~16_combout\,
	cout => \Debouncer1|Add0~17\);

-- Location: LCCOMB_X113_Y36_N8
\Debouncer1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~14_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & ((\Debouncer1|Add0~16_combout\) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|Add0~16_combout\,
	combout => \Debouncer1|s_debounceCnt~14_combout\);

-- Location: FF_X113_Y36_N9
\Debouncer1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~14_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y36_N28
\Debouncer1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~18_combout\ = (\Debouncer1|s_debounceCnt\(9) & (\Debouncer1|Add0~17\ & VCC)) # (!\Debouncer1|s_debounceCnt\(9) & (!\Debouncer1|Add0~17\))
-- \Debouncer1|Add0~19\ = CARRY((!\Debouncer1|s_debounceCnt\(9) & !\Debouncer1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(9),
	datad => VCC,
	cin => \Debouncer1|Add0~17\,
	combout => \Debouncer1|Add0~18_combout\,
	cout => \Debouncer1|Add0~19\);

-- Location: LCCOMB_X113_Y36_N26
\Debouncer1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~15_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & ((\Debouncer1|Add0~18_combout\) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|Add0~18_combout\,
	combout => \Debouncer1|s_debounceCnt~15_combout\);

-- Location: FF_X113_Y36_N27
\Debouncer1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~15_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y36_N30
\Debouncer1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~20_combout\ = (\Debouncer1|s_debounceCnt\(10) & ((GND) # (!\Debouncer1|Add0~19\))) # (!\Debouncer1|s_debounceCnt\(10) & (\Debouncer1|Add0~19\ $ (GND)))
-- \Debouncer1|Add0~21\ = CARRY((\Debouncer1|s_debounceCnt\(10)) # (!\Debouncer1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(10),
	datad => VCC,
	cin => \Debouncer1|Add0~19\,
	combout => \Debouncer1|Add0~20_combout\,
	cout => \Debouncer1|Add0~21\);

-- Location: LCCOMB_X113_Y36_N20
\Debouncer1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~16_combout\ = (\Debouncer1|Add0~20_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|Add0~20_combout\,
	datac => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~16_combout\);

-- Location: FF_X113_Y36_N21
\Debouncer1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~16_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(10));

-- Location: LCCOMB_X111_Y35_N0
\Debouncer1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~22_combout\ = (\Debouncer1|s_debounceCnt\(11) & (\Debouncer1|Add0~21\ & VCC)) # (!\Debouncer1|s_debounceCnt\(11) & (!\Debouncer1|Add0~21\))
-- \Debouncer1|Add0~23\ = CARRY((!\Debouncer1|s_debounceCnt\(11) & !\Debouncer1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(11),
	datad => VCC,
	cin => \Debouncer1|Add0~21\,
	combout => \Debouncer1|Add0~22_combout\,
	cout => \Debouncer1|Add0~23\);

-- Location: LCCOMB_X112_Y36_N0
\Debouncer1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~17_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & ((\Debouncer1|Add0~22_combout\) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|Add0~22_combout\,
	combout => \Debouncer1|s_debounceCnt~17_combout\);

-- Location: FF_X112_Y36_N1
\Debouncer1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~17_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y35_N2
\Debouncer1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~24_combout\ = (\Debouncer1|s_debounceCnt\(12) & ((GND) # (!\Debouncer1|Add0~23\))) # (!\Debouncer1|s_debounceCnt\(12) & (\Debouncer1|Add0~23\ $ (GND)))
-- \Debouncer1|Add0~25\ = CARRY((\Debouncer1|s_debounceCnt\(12)) # (!\Debouncer1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(12),
	datad => VCC,
	cin => \Debouncer1|Add0~23\,
	combout => \Debouncer1|Add0~24_combout\,
	cout => \Debouncer1|Add0~25\);

-- Location: LCCOMB_X113_Y36_N24
\Debouncer1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~11_combout\ = (\Debouncer1|s_debounceCnt[0]~5_combout\ & \Debouncer1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer1|Add0~24_combout\,
	combout => \Debouncer1|s_debounceCnt~11_combout\);

-- Location: FF_X113_Y36_N25
\Debouncer1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~11_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y35_N4
\Debouncer1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~26_combout\ = (\Debouncer1|s_debounceCnt\(13) & (\Debouncer1|Add0~25\ & VCC)) # (!\Debouncer1|s_debounceCnt\(13) & (!\Debouncer1|Add0~25\))
-- \Debouncer1|Add0~27\ = CARRY((!\Debouncer1|s_debounceCnt\(13) & !\Debouncer1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(13),
	datad => VCC,
	cin => \Debouncer1|Add0~25\,
	combout => \Debouncer1|Add0~26_combout\,
	cout => \Debouncer1|Add0~27\);

-- Location: LCCOMB_X113_Y36_N22
\Debouncer1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~12_combout\ = (\Debouncer1|s_debounceCnt[0]~5_combout\ & \Debouncer1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt[0]~5_combout\,
	datac => \Debouncer1|Add0~26_combout\,
	combout => \Debouncer1|s_debounceCnt~12_combout\);

-- Location: FF_X113_Y36_N23
\Debouncer1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~12_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y35_N6
\Debouncer1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~28_combout\ = (\Debouncer1|s_debounceCnt\(14) & ((GND) # (!\Debouncer1|Add0~27\))) # (!\Debouncer1|s_debounceCnt\(14) & (\Debouncer1|Add0~27\ $ (GND)))
-- \Debouncer1|Add0~29\ = CARRY((\Debouncer1|s_debounceCnt\(14)) # (!\Debouncer1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(14),
	datad => VCC,
	cin => \Debouncer1|Add0~27\,
	combout => \Debouncer1|Add0~28_combout\,
	cout => \Debouncer1|Add0~29\);

-- Location: LCCOMB_X112_Y36_N26
\Debouncer1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~18_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & ((\Debouncer1|Add0~28_combout\) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|Add0~28_combout\,
	combout => \Debouncer1|s_debounceCnt~18_combout\);

-- Location: FF_X112_Y36_N27
\Debouncer1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~18_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y35_N8
\Debouncer1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~30_combout\ = (\Debouncer1|s_debounceCnt\(15) & (\Debouncer1|Add0~29\ & VCC)) # (!\Debouncer1|s_debounceCnt\(15) & (!\Debouncer1|Add0~29\))
-- \Debouncer1|Add0~31\ = CARRY((!\Debouncer1|s_debounceCnt\(15) & !\Debouncer1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(15),
	datad => VCC,
	cin => \Debouncer1|Add0~29\,
	combout => \Debouncer1|Add0~30_combout\,
	cout => \Debouncer1|Add0~31\);

-- Location: LCCOMB_X113_Y36_N0
\Debouncer1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~6_combout\ = (\Debouncer1|s_debounceCnt[0]~5_combout\ & \Debouncer1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer1|Add0~30_combout\,
	combout => \Debouncer1|s_debounceCnt~6_combout\);

-- Location: FF_X113_Y36_N1
\Debouncer1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~6_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y35_N10
\Debouncer1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~32_combout\ = (\Debouncer1|s_debounceCnt\(16) & ((GND) # (!\Debouncer1|Add0~31\))) # (!\Debouncer1|s_debounceCnt\(16) & (\Debouncer1|Add0~31\ $ (GND)))
-- \Debouncer1|Add0~33\ = CARRY((\Debouncer1|s_debounceCnt\(16)) # (!\Debouncer1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(16),
	datad => VCC,
	cin => \Debouncer1|Add0~31\,
	combout => \Debouncer1|Add0~32_combout\,
	cout => \Debouncer1|Add0~33\);

-- Location: LCCOMB_X111_Y36_N2
\Debouncer1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~7_combout\ = (\Debouncer1|Add0~32_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|Add0~32_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~7_combout\);

-- Location: FF_X111_Y36_N3
\Debouncer1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~7_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y35_N12
\Debouncer1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~34_combout\ = (\Debouncer1|s_debounceCnt\(17) & (\Debouncer1|Add0~33\ & VCC)) # (!\Debouncer1|s_debounceCnt\(17) & (!\Debouncer1|Add0~33\))
-- \Debouncer1|Add0~35\ = CARRY((!\Debouncer1|s_debounceCnt\(17) & !\Debouncer1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer1|s_debounceCnt\(17),
	datad => VCC,
	cin => \Debouncer1|Add0~33\,
	combout => \Debouncer1|Add0~34_combout\,
	cout => \Debouncer1|Add0~35\);

-- Location: LCCOMB_X111_Y35_N24
\Debouncer1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~8_combout\ = (\Debouncer1|Add0~34_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|Add0~34_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~8_combout\);

-- Location: FF_X111_Y35_N25
\Debouncer1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~8_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y35_N14
\Debouncer1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~36_combout\ = (\Debouncer1|s_debounceCnt\(18) & ((GND) # (!\Debouncer1|Add0~35\))) # (!\Debouncer1|s_debounceCnt\(18) & (\Debouncer1|Add0~35\ $ (GND)))
-- \Debouncer1|Add0~37\ = CARRY((\Debouncer1|s_debounceCnt\(18)) # (!\Debouncer1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(18),
	datad => VCC,
	cin => \Debouncer1|Add0~35\,
	combout => \Debouncer1|Add0~36_combout\,
	cout => \Debouncer1|Add0~37\);

-- Location: LCCOMB_X111_Y35_N30
\Debouncer1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[18]~19_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & (\Debouncer1|s_debounceCnt[0]~4_combout\ & ((\Debouncer1|Add0~36_combout\) # (!\Debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|Add0~36_combout\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~4_combout\,
	combout => \Debouncer1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X111_Y35_N31
\Debouncer1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(18));

-- Location: LCCOMB_X111_Y35_N28
\Debouncer1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[19]~20_combout\ = (\Debouncer1|s_debounceCnt[0]~2_combout\ & (\Debouncer1|s_debounceCnt[0]~4_combout\ & ((\Debouncer1|Add0~38_combout\) # (!\Debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|Add0~38_combout\,
	datac => \Debouncer1|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~4_combout\,
	combout => \Debouncer1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X111_Y35_N29
\Debouncer1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y36_N2
\Debouncer1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~5_combout\ = (!\Debouncer1|s_debounceCnt\(21) & !\Debouncer1|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|s_debounceCnt\(21),
	datad => \Debouncer1|s_debounceCnt\(20),
	combout => \Debouncer1|LessThan0~5_combout\);

-- Location: LCCOMB_X113_Y36_N6
\Debouncer1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~2_combout\ = (!\Debouncer1|s_debounceCnt\(13) & !\Debouncer1|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|s_debounceCnt\(13),
	datad => \Debouncer1|s_debounceCnt\(12),
	combout => \Debouncer1|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y36_N2
\Debouncer1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~8_combout\ = (!\Debouncer1|s_debounceCnt\(5) & \Debouncer1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer1|s_debounceCnt\(5),
	datad => \Debouncer1|s_pulsedOut~7_combout\,
	combout => \Debouncer1|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X112_Y36_N14
\Debouncer1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~0_combout\ = (\Debouncer1|s_debounceCnt\(7)) # ((\Debouncer1|s_debounceCnt\(6) & ((\Debouncer1|s_debounceCnt\(0)) # (!\Debouncer1|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(7),
	datab => \Debouncer1|s_debounceCnt\(0),
	datac => \Debouncer1|s_debounceCnt\(6),
	datad => \Debouncer1|s_pulsedOut~8_combout\,
	combout => \Debouncer1|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y36_N12
\Debouncer1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~1_combout\ = (\Debouncer1|s_debounceCnt\(10)) # ((\Debouncer1|s_debounceCnt\(8) & (\Debouncer1|s_debounceCnt\(9) & \Debouncer1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(8),
	datab => \Debouncer1|s_debounceCnt\(10),
	datac => \Debouncer1|s_debounceCnt\(9),
	datad => \Debouncer1|LessThan0~0_combout\,
	combout => \Debouncer1|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y36_N28
\Debouncer1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~3_combout\ = (\Debouncer1|s_debounceCnt\(14) & (((\Debouncer1|s_debounceCnt\(11) & \Debouncer1|LessThan0~1_combout\)) # (!\Debouncer1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|LessThan0~2_combout\,
	datab => \Debouncer1|s_debounceCnt\(14),
	datac => \Debouncer1|s_debounceCnt\(11),
	datad => \Debouncer1|LessThan0~1_combout\,
	combout => \Debouncer1|LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y36_N10
\Debouncer1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~4_combout\ = (\Debouncer1|s_debounceCnt\(16)) # ((\Debouncer1|s_debounceCnt\(15)) # ((\Debouncer1|s_debounceCnt\(17)) # (\Debouncer1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(16),
	datab => \Debouncer1|s_debounceCnt\(15),
	datac => \Debouncer1|s_debounceCnt\(17),
	datad => \Debouncer1|LessThan0~3_combout\,
	combout => \Debouncer1|LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y36_N16
\Debouncer1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|LessThan0~6_combout\ = ((\Debouncer1|s_debounceCnt\(19) & (\Debouncer1|s_debounceCnt\(18) & \Debouncer1|LessThan0~4_combout\))) # (!\Debouncer1|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_debounceCnt\(19),
	datab => \Debouncer1|s_debounceCnt\(18),
	datac => \Debouncer1|LessThan0~5_combout\,
	datad => \Debouncer1|LessThan0~4_combout\,
	combout => \Debouncer1|LessThan0~6_combout\);

-- Location: LCCOMB_X113_Y36_N14
\Debouncer1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[22]~27_combout\ = (\Debouncer1|s_debounceCnt\(22) & (((!\Debouncer1|LessThan0~6_combout\)))) # (!\Debouncer1|s_debounceCnt\(22) & (((\Debouncer1|s_debounceCnt[0]~29_combout\)) # (!\Debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|LessThan0~6_combout\,
	datac => \Debouncer1|s_debounceCnt\(22),
	datad => \Debouncer1|s_debounceCnt[0]~29_combout\,
	combout => \Debouncer1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X111_Y35_N22
\Debouncer1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|Add0~44_combout\ = \Debouncer1|Add0~43\ $ (\Debouncer1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Debouncer1|s_debounceCnt\(22),
	cin => \Debouncer1|Add0~43\,
	combout => \Debouncer1|Add0~44_combout\);

-- Location: LCCOMB_X113_Y36_N18
\Debouncer1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[22]~28_combout\ = (\Debouncer1|s_dirtyIn~q\ & (\Debouncer1|s_debounceCnt[22]~27_combout\ & ((\Debouncer1|Add0~44_combout\) # (!\Debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|s_dirtyIn~q\,
	datac => \Debouncer1|s_debounceCnt[22]~27_combout\,
	datad => \Debouncer1|Add0~44_combout\,
	combout => \Debouncer1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X113_Y36_N19
\Debouncer1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(22));

-- Location: LCCOMB_X113_Y36_N4
\Debouncer1|s_debounceCnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt[0]~5_combout\ = (\Debouncer1|s_previousIn~q\ & (\Debouncer1|s_dirtyIn~q\ & ((!\Debouncer1|LessThan0~6_combout\) # (!\Debouncer1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_previousIn~q\,
	datab => \Debouncer1|s_debounceCnt\(22),
	datac => \Debouncer1|s_dirtyIn~q\,
	datad => \Debouncer1|LessThan0~6_combout\,
	combout => \Debouncer1|s_debounceCnt[0]~5_combout\);

-- Location: LCCOMB_X112_Y36_N24
\Debouncer1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_debounceCnt~26_combout\ = (\Debouncer1|Add0~0_combout\ & \Debouncer1|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|Add0~0_combout\,
	datad => \Debouncer1|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer1|s_debounceCnt~26_combout\);

-- Location: FF_X112_Y36_N25
\Debouncer1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_debounceCnt~26_combout\,
	ena => \Debouncer1|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_debounceCnt\(0));

-- Location: LCCOMB_X110_Y36_N12
\Debouncer1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~9_combout\ = (\Debouncer1|s_dirtyIn~q\ & (\Debouncer1|s_debounceCnt\(0) & (\Debouncer1|s_previousIn~q\ & !\Debouncer1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_dirtyIn~q\,
	datab => \Debouncer1|s_debounceCnt\(0),
	datac => \Debouncer1|s_previousIn~q\,
	datad => \Debouncer1|s_debounceCnt\(22),
	combout => \Debouncer1|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X111_Y36_N4
\Debouncer1|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer1|s_pulsedOut~10_combout\ = (\Debouncer1|s_pulsedOut~9_combout\ & (!\Debouncer1|s_debounceCnt\(5) & (\Debouncer1|s_pulsedOut~7_combout\ & \Debouncer1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer1|s_pulsedOut~9_combout\,
	datab => \Debouncer1|s_debounceCnt\(5),
	datac => \Debouncer1|s_pulsedOut~7_combout\,
	datad => \Debouncer1|s_pulsedOut~6_combout\,
	combout => \Debouncer1|s_pulsedOut~10_combout\);

-- Location: FF_X111_Y36_N5
\Debouncer1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer1|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer1|s_pulsedOut~q\);

-- Location: LCCOMB_X106_Y24_N26
\MenuModule|Menu|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector5~4_combout\ = (\MenuModule|Menu|pState.WASH~q\ & ((\Debouncer1|s_pulsedOut~q\) # (!\c_door~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_door~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|Selector5~4_combout\);

-- Location: LCCOMB_X109_Y44_N10
\Debouncer2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~0_combout\ = \Debouncer2|s_debounceCnt\(0) $ (VCC)
-- \Debouncer2|Add0~1\ = CARRY(\Debouncer2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(0),
	datad => VCC,
	combout => \Debouncer2|Add0~0_combout\,
	cout => \Debouncer2|Add0~1\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X114_Y44_N24
\Debouncer2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \Debouncer2|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y44_N25
\Debouncer2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_dirtyIn~q\);

-- Location: FF_X111_Y44_N5
\Debouncer2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Debouncer2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_previousIn~q\);

-- Location: LCCOMB_X109_Y44_N18
\Debouncer2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~8_combout\ = (\Debouncer2|s_debounceCnt\(4) & ((GND) # (!\Debouncer2|Add0~7\))) # (!\Debouncer2|s_debounceCnt\(4) & (\Debouncer2|Add0~7\ $ (GND)))
-- \Debouncer2|Add0~9\ = CARRY((\Debouncer2|s_debounceCnt\(4)) # (!\Debouncer2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(4),
	datad => VCC,
	cin => \Debouncer2|Add0~7\,
	combout => \Debouncer2|Add0~8_combout\,
	cout => \Debouncer2|Add0~9\);

-- Location: LCCOMB_X109_Y44_N20
\Debouncer2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~10_combout\ = (\Debouncer2|s_debounceCnt\(5) & (\Debouncer2|Add0~9\ & VCC)) # (!\Debouncer2|s_debounceCnt\(5) & (!\Debouncer2|Add0~9\))
-- \Debouncer2|Add0~11\ = CARRY((!\Debouncer2|s_debounceCnt\(5) & !\Debouncer2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(5),
	datad => VCC,
	cin => \Debouncer2|Add0~9\,
	combout => \Debouncer2|Add0~10_combout\,
	cout => \Debouncer2|Add0~11\);

-- Location: LCCOMB_X110_Y44_N0
\Debouncer2|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~25_combout\ = (\Debouncer2|Add0~10_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|Add0~10_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~25_combout\);

-- Location: FF_X110_Y44_N1
\Debouncer2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~25_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(5));

-- Location: LCCOMB_X109_Y43_N12
\Debouncer2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~34_combout\ = (\Debouncer2|s_debounceCnt\(17) & (\Debouncer2|Add0~33\ & VCC)) # (!\Debouncer2|s_debounceCnt\(17) & (!\Debouncer2|Add0~33\))
-- \Debouncer2|Add0~35\ = CARRY((!\Debouncer2|s_debounceCnt\(17) & !\Debouncer2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(17),
	datad => VCC,
	cin => \Debouncer2|Add0~33\,
	combout => \Debouncer2|Add0~34_combout\,
	cout => \Debouncer2|Add0~35\);

-- Location: LCCOMB_X109_Y43_N14
\Debouncer2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~36_combout\ = (\Debouncer2|s_debounceCnt\(18) & ((GND) # (!\Debouncer2|Add0~35\))) # (!\Debouncer2|s_debounceCnt\(18) & (\Debouncer2|Add0~35\ $ (GND)))
-- \Debouncer2|Add0~37\ = CARRY((\Debouncer2|s_debounceCnt\(18)) # (!\Debouncer2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(18),
	datad => VCC,
	cin => \Debouncer2|Add0~35\,
	combout => \Debouncer2|Add0~36_combout\,
	cout => \Debouncer2|Add0~37\);

-- Location: LCCOMB_X109_Y43_N30
\Debouncer2|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[18]~19_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & (\Debouncer2|s_debounceCnt[0]~4_combout\ & ((\Debouncer2|Add0~36_combout\) # (!\Debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datab => \Debouncer2|Add0~36_combout\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~4_combout\,
	combout => \Debouncer2|s_debounceCnt[18]~19_combout\);

-- Location: FF_X109_Y43_N31
\Debouncer2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y43_N16
\Debouncer2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~38_combout\ = (\Debouncer2|s_debounceCnt\(19) & (\Debouncer2|Add0~37\ & VCC)) # (!\Debouncer2|s_debounceCnt\(19) & (!\Debouncer2|Add0~37\))
-- \Debouncer2|Add0~39\ = CARRY((!\Debouncer2|s_debounceCnt\(19) & !\Debouncer2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(19),
	datad => VCC,
	cin => \Debouncer2|Add0~37\,
	combout => \Debouncer2|Add0~38_combout\,
	cout => \Debouncer2|Add0~39\);

-- Location: LCCOMB_X109_Y43_N28
\Debouncer2|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[19]~20_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & (\Debouncer2|s_debounceCnt[0]~4_combout\ & ((\Debouncer2|Add0~38_combout\) # (!\Debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datab => \Debouncer2|Add0~38_combout\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~4_combout\,
	combout => \Debouncer2|s_debounceCnt[19]~20_combout\);

-- Location: FF_X109_Y43_N29
\Debouncer2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(19));

-- Location: LCCOMB_X109_Y43_N18
\Debouncer2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~40_combout\ = (\Debouncer2|s_debounceCnt\(20) & ((GND) # (!\Debouncer2|Add0~39\))) # (!\Debouncer2|s_debounceCnt\(20) & (\Debouncer2|Add0~39\ $ (GND)))
-- \Debouncer2|Add0~41\ = CARRY((\Debouncer2|s_debounceCnt\(20)) # (!\Debouncer2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(20),
	datad => VCC,
	cin => \Debouncer2|Add0~39\,
	combout => \Debouncer2|Add0~40_combout\,
	cout => \Debouncer2|Add0~41\);

-- Location: LCCOMB_X111_Y44_N2
\Debouncer2|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[20]~9_combout\ = (\Debouncer2|s_debounceCnt[0]~4_combout\ & (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt[0]~4_combout\,
	datab => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datac => \Debouncer2|Add0~40_combout\,
	combout => \Debouncer2|s_debounceCnt[20]~9_combout\);

-- Location: FF_X111_Y44_N3
\Debouncer2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(20));

-- Location: LCCOMB_X112_Y44_N24
\Debouncer2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~3_combout\ = (\Debouncer2|s_debounceCnt\(17)) # ((\Debouncer2|s_debounceCnt\(16)) # (\Debouncer2|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(17),
	datac => \Debouncer2|s_debounceCnt\(16),
	datad => \Debouncer2|s_debounceCnt\(15),
	combout => \Debouncer2|LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y44_N22
\Debouncer2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~12_combout\ = (\Debouncer2|s_debounceCnt\(6) & ((GND) # (!\Debouncer2|Add0~11\))) # (!\Debouncer2|s_debounceCnt\(6) & (\Debouncer2|Add0~11\ $ (GND)))
-- \Debouncer2|Add0~13\ = CARRY((\Debouncer2|s_debounceCnt\(6)) # (!\Debouncer2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(6),
	datad => VCC,
	cin => \Debouncer2|Add0~11\,
	combout => \Debouncer2|Add0~12_combout\,
	cout => \Debouncer2|Add0~13\);

-- Location: LCCOMB_X110_Y44_N20
\Debouncer2|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~3_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & ((\Debouncer2|Add0~12_combout\) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|Add0~12_combout\,
	combout => \Debouncer2|s_debounceCnt~3_combout\);

-- Location: FF_X110_Y44_N21
\Debouncer2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~3_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(6));

-- Location: LCCOMB_X109_Y44_N24
\Debouncer2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~14_combout\ = (\Debouncer2|s_debounceCnt\(7) & (\Debouncer2|Add0~13\ & VCC)) # (!\Debouncer2|s_debounceCnt\(7) & (!\Debouncer2|Add0~13\))
-- \Debouncer2|Add0~15\ = CARRY((!\Debouncer2|s_debounceCnt\(7) & !\Debouncer2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(7),
	datad => VCC,
	cin => \Debouncer2|Add0~13\,
	combout => \Debouncer2|Add0~14_combout\,
	cout => \Debouncer2|Add0~15\);

-- Location: LCCOMB_X110_Y44_N26
\Debouncer2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~13_combout\ = (\Debouncer2|Add0~14_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|Add0~14_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y44_N27
\Debouncer2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~13_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(7));

-- Location: LCCOMB_X109_Y44_N26
\Debouncer2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~16_combout\ = (\Debouncer2|s_debounceCnt\(8) & ((GND) # (!\Debouncer2|Add0~15\))) # (!\Debouncer2|s_debounceCnt\(8) & (\Debouncer2|Add0~15\ $ (GND)))
-- \Debouncer2|Add0~17\ = CARRY((\Debouncer2|s_debounceCnt\(8)) # (!\Debouncer2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(8),
	datad => VCC,
	cin => \Debouncer2|Add0~15\,
	combout => \Debouncer2|Add0~16_combout\,
	cout => \Debouncer2|Add0~17\);

-- Location: LCCOMB_X111_Y44_N22
\Debouncer2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~14_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & ((\Debouncer2|Add0~16_combout\) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|Add0~16_combout\,
	combout => \Debouncer2|s_debounceCnt~14_combout\);

-- Location: FF_X111_Y44_N23
\Debouncer2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~14_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(8));

-- Location: LCCOMB_X109_Y44_N28
\Debouncer2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~18_combout\ = (\Debouncer2|s_debounceCnt\(9) & (\Debouncer2|Add0~17\ & VCC)) # (!\Debouncer2|s_debounceCnt\(9) & (!\Debouncer2|Add0~17\))
-- \Debouncer2|Add0~19\ = CARRY((!\Debouncer2|s_debounceCnt\(9) & !\Debouncer2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(9),
	datad => VCC,
	cin => \Debouncer2|Add0~17\,
	combout => \Debouncer2|Add0~18_combout\,
	cout => \Debouncer2|Add0~19\);

-- Location: LCCOMB_X111_Y44_N16
\Debouncer2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~15_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & ((\Debouncer2|Add0~18_combout\) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|Add0~18_combout\,
	combout => \Debouncer2|s_debounceCnt~15_combout\);

-- Location: FF_X111_Y44_N17
\Debouncer2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~15_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y44_N30
\Debouncer2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~20_combout\ = (\Debouncer2|s_debounceCnt\(10) & ((GND) # (!\Debouncer2|Add0~19\))) # (!\Debouncer2|s_debounceCnt\(10) & (\Debouncer2|Add0~19\ $ (GND)))
-- \Debouncer2|Add0~21\ = CARRY((\Debouncer2|s_debounceCnt\(10)) # (!\Debouncer2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(10),
	datad => VCC,
	cin => \Debouncer2|Add0~19\,
	combout => \Debouncer2|Add0~20_combout\,
	cout => \Debouncer2|Add0~21\);

-- Location: LCCOMB_X111_Y44_N14
\Debouncer2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~16_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer2|Add0~20_combout\,
	combout => \Debouncer2|s_debounceCnt~16_combout\);

-- Location: FF_X111_Y44_N15
\Debouncer2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~16_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y43_N0
\Debouncer2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~22_combout\ = (\Debouncer2|s_debounceCnt\(11) & (\Debouncer2|Add0~21\ & VCC)) # (!\Debouncer2|s_debounceCnt\(11) & (!\Debouncer2|Add0~21\))
-- \Debouncer2|Add0~23\ = CARRY((!\Debouncer2|s_debounceCnt\(11) & !\Debouncer2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(11),
	datad => VCC,
	cin => \Debouncer2|Add0~21\,
	combout => \Debouncer2|Add0~22_combout\,
	cout => \Debouncer2|Add0~23\);

-- Location: LCCOMB_X110_Y43_N28
\Debouncer2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~17_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & ((\Debouncer2|Add0~22_combout\) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|Add0~22_combout\,
	combout => \Debouncer2|s_debounceCnt~17_combout\);

-- Location: FF_X110_Y43_N29
\Debouncer2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~17_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y43_N2
\Debouncer2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~24_combout\ = (\Debouncer2|s_debounceCnt\(12) & ((GND) # (!\Debouncer2|Add0~23\))) # (!\Debouncer2|s_debounceCnt\(12) & (\Debouncer2|Add0~23\ $ (GND)))
-- \Debouncer2|Add0~25\ = CARRY((\Debouncer2|s_debounceCnt\(12)) # (!\Debouncer2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(12),
	datad => VCC,
	cin => \Debouncer2|Add0~23\,
	combout => \Debouncer2|Add0~24_combout\,
	cout => \Debouncer2|Add0~25\);

-- Location: LCCOMB_X111_Y44_N26
\Debouncer2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~11_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer2|Add0~24_combout\,
	combout => \Debouncer2|s_debounceCnt~11_combout\);

-- Location: FF_X111_Y44_N27
\Debouncer2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~11_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(12));

-- Location: LCCOMB_X109_Y43_N4
\Debouncer2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~26_combout\ = (\Debouncer2|s_debounceCnt\(13) & (\Debouncer2|Add0~25\ & VCC)) # (!\Debouncer2|s_debounceCnt\(13) & (!\Debouncer2|Add0~25\))
-- \Debouncer2|Add0~27\ = CARRY((!\Debouncer2|s_debounceCnt\(13) & !\Debouncer2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(13),
	datad => VCC,
	cin => \Debouncer2|Add0~25\,
	combout => \Debouncer2|Add0~26_combout\,
	cout => \Debouncer2|Add0~27\);

-- Location: LCCOMB_X111_Y44_N20
\Debouncer2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~12_combout\ = (\Debouncer2|Add0~26_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|Add0~26_combout\,
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~12_combout\);

-- Location: FF_X111_Y44_N21
\Debouncer2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~12_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(13));

-- Location: LCCOMB_X110_Y44_N10
\Debouncer2|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~8_combout\ = (!\Debouncer2|s_debounceCnt\(5) & \Debouncer2|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(5),
	datad => \Debouncer2|s_pulsedOut~7_combout\,
	combout => \Debouncer2|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X110_Y44_N24
\Debouncer2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~0_combout\ = (\Debouncer2|s_debounceCnt\(7)) # ((\Debouncer2|s_debounceCnt\(6) & ((\Debouncer2|s_debounceCnt\(0)) # (!\Debouncer2|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(7),
	datab => \Debouncer2|s_debounceCnt\(6),
	datac => \Debouncer2|s_debounceCnt\(0),
	datad => \Debouncer2|s_pulsedOut~8_combout\,
	combout => \Debouncer2|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y44_N18
\Debouncer2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~1_combout\ = (\Debouncer2|s_debounceCnt\(10)) # ((\Debouncer2|s_debounceCnt\(8) & (\Debouncer2|s_debounceCnt\(9) & \Debouncer2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(8),
	datab => \Debouncer2|s_debounceCnt\(9),
	datac => \Debouncer2|s_debounceCnt\(10),
	datad => \Debouncer2|LessThan0~0_combout\,
	combout => \Debouncer2|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y44_N24
\Debouncer2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~2_combout\ = (\Debouncer2|s_debounceCnt\(12)) # ((\Debouncer2|s_debounceCnt\(13)) # ((\Debouncer2|s_debounceCnt\(11) & \Debouncer2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(12),
	datab => \Debouncer2|s_debounceCnt\(13),
	datac => \Debouncer2|s_debounceCnt\(11),
	datad => \Debouncer2|LessThan0~1_combout\,
	combout => \Debouncer2|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y44_N10
\Debouncer2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~4_combout\ = (\Debouncer2|s_debounceCnt\(18) & ((\Debouncer2|LessThan0~3_combout\) # ((\Debouncer2|s_debounceCnt\(14) & \Debouncer2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(18),
	datab => \Debouncer2|LessThan0~3_combout\,
	datac => \Debouncer2|s_debounceCnt\(14),
	datad => \Debouncer2|LessThan0~2_combout\,
	combout => \Debouncer2|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y44_N0
\Debouncer2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|LessThan0~5_combout\ = (\Debouncer2|s_debounceCnt\(21)) # ((\Debouncer2|s_debounceCnt\(20)) # ((\Debouncer2|s_debounceCnt\(19) & \Debouncer2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(21),
	datab => \Debouncer2|s_debounceCnt\(20),
	datac => \Debouncer2|s_debounceCnt\(19),
	datad => \Debouncer2|LessThan0~4_combout\,
	combout => \Debouncer2|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y44_N30
\Debouncer2|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[0]~2_combout\ = (\Debouncer2|s_dirtyIn~q\ & ((!\Debouncer2|LessThan0~5_combout\) # (!\Debouncer2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(22),
	datac => \Debouncer2|s_dirtyIn~q\,
	datad => \Debouncer2|LessThan0~5_combout\,
	combout => \Debouncer2|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X109_Y43_N6
\Debouncer2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~28_combout\ = (\Debouncer2|s_debounceCnt\(14) & ((GND) # (!\Debouncer2|Add0~27\))) # (!\Debouncer2|s_debounceCnt\(14) & (\Debouncer2|Add0~27\ $ (GND)))
-- \Debouncer2|Add0~29\ = CARRY((\Debouncer2|s_debounceCnt\(14)) # (!\Debouncer2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(14),
	datad => VCC,
	cin => \Debouncer2|Add0~27\,
	combout => \Debouncer2|Add0~28_combout\,
	cout => \Debouncer2|Add0~29\);

-- Location: LCCOMB_X109_Y43_N24
\Debouncer2|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~18_combout\ = (\Debouncer2|s_debounceCnt[0]~2_combout\ & ((\Debouncer2|Add0~28_combout\) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datac => \Debouncer2|s_debounceCnt[0]~2_combout\,
	datad => \Debouncer2|Add0~28_combout\,
	combout => \Debouncer2|s_debounceCnt~18_combout\);

-- Location: FF_X109_Y43_N25
\Debouncer2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~18_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(14));

-- Location: LCCOMB_X109_Y43_N8
\Debouncer2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~30_combout\ = (\Debouncer2|s_debounceCnt\(15) & (\Debouncer2|Add0~29\ & VCC)) # (!\Debouncer2|s_debounceCnt\(15) & (!\Debouncer2|Add0~29\))
-- \Debouncer2|Add0~31\ = CARRY((!\Debouncer2|s_debounceCnt\(15) & !\Debouncer2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(15),
	datad => VCC,
	cin => \Debouncer2|Add0~29\,
	combout => \Debouncer2|Add0~30_combout\,
	cout => \Debouncer2|Add0~31\);

-- Location: LCCOMB_X111_Y44_N8
\Debouncer2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~6_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer2|Add0~30_combout\,
	combout => \Debouncer2|s_debounceCnt~6_combout\);

-- Location: FF_X111_Y44_N9
\Debouncer2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~6_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(15));

-- Location: LCCOMB_X109_Y43_N10
\Debouncer2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~32_combout\ = (\Debouncer2|s_debounceCnt\(16) & ((GND) # (!\Debouncer2|Add0~31\))) # (!\Debouncer2|s_debounceCnt\(16) & (\Debouncer2|Add0~31\ $ (GND)))
-- \Debouncer2|Add0~33\ = CARRY((\Debouncer2|s_debounceCnt\(16)) # (!\Debouncer2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(16),
	datad => VCC,
	cin => \Debouncer2|Add0~31\,
	combout => \Debouncer2|Add0~32_combout\,
	cout => \Debouncer2|Add0~33\);

-- Location: LCCOMB_X111_Y44_N6
\Debouncer2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~7_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer2|Add0~32_combout\,
	combout => \Debouncer2|s_debounceCnt~7_combout\);

-- Location: FF_X111_Y44_N7
\Debouncer2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~7_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y44_N28
\Debouncer2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~8_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & \Debouncer2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datad => \Debouncer2|Add0~34_combout\,
	combout => \Debouncer2|s_debounceCnt~8_combout\);

-- Location: FF_X111_Y44_N29
\Debouncer2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~8_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(17));

-- Location: LCCOMB_X109_Y44_N6
\Debouncer2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~2_combout\ = (!\Debouncer2|s_debounceCnt\(17) & (!\Debouncer2|s_debounceCnt\(15) & (!\Debouncer2|s_debounceCnt\(6) & !\Debouncer2|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(17),
	datab => \Debouncer2|s_debounceCnt\(15),
	datac => \Debouncer2|s_debounceCnt\(6),
	datad => \Debouncer2|s_debounceCnt\(16),
	combout => \Debouncer2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X109_Y44_N8
\Debouncer2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~3_combout\ = (!\Debouncer2|s_debounceCnt\(21) & (!\Debouncer2|s_debounceCnt\(20) & (!\Debouncer2|s_debounceCnt\(12) & !\Debouncer2|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(21),
	datab => \Debouncer2|s_debounceCnt\(20),
	datac => \Debouncer2|s_debounceCnt\(12),
	datad => \Debouncer2|s_debounceCnt\(13),
	combout => \Debouncer2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y43_N26
\Debouncer2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~5_combout\ = (!\Debouncer2|s_debounceCnt\(18) & (!\Debouncer2|s_debounceCnt\(19) & (!\Debouncer2|s_debounceCnt\(14) & !\Debouncer2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(18),
	datab => \Debouncer2|s_debounceCnt\(19),
	datac => \Debouncer2|s_debounceCnt\(14),
	datad => \Debouncer2|s_debounceCnt\(11),
	combout => \Debouncer2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X110_Y44_N28
\Debouncer2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~4_combout\ = (!\Debouncer2|s_debounceCnt\(7) & (!\Debouncer2|s_debounceCnt\(8) & (!\Debouncer2|s_debounceCnt\(10) & !\Debouncer2|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(7),
	datab => \Debouncer2|s_debounceCnt\(8),
	datac => \Debouncer2|s_debounceCnt\(10),
	datad => \Debouncer2|s_debounceCnt\(9),
	combout => \Debouncer2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X109_Y44_N2
\Debouncer2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~6_combout\ = (\Debouncer2|s_pulsedOut~2_combout\ & (\Debouncer2|s_pulsedOut~3_combout\ & (\Debouncer2|s_pulsedOut~5_combout\ & \Debouncer2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_pulsedOut~2_combout\,
	datab => \Debouncer2|s_pulsedOut~3_combout\,
	datac => \Debouncer2|s_pulsedOut~5_combout\,
	datad => \Debouncer2|s_pulsedOut~4_combout\,
	combout => \Debouncer2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y44_N18
\Debouncer2|s_debounceCnt[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[0]~29_combout\ = ((\Debouncer2|s_debounceCnt\(5)) # ((\Debouncer2|s_debounceCnt\(0)) # (!\Debouncer2|s_pulsedOut~6_combout\))) # (!\Debouncer2|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_pulsedOut~7_combout\,
	datab => \Debouncer2|s_debounceCnt\(5),
	datac => \Debouncer2|s_debounceCnt\(0),
	datad => \Debouncer2|s_pulsedOut~6_combout\,
	combout => \Debouncer2|s_debounceCnt[0]~29_combout\);

-- Location: LCCOMB_X110_Y44_N30
\Debouncer2|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[0]~4_combout\ = ((\Debouncer2|s_debounceCnt\(22)) # ((\Debouncer2|s_debounceCnt[0]~29_combout\) # (!\Debouncer2|s_dirtyIn~q\))) # (!\Debouncer2|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datab => \Debouncer2|s_debounceCnt\(22),
	datac => \Debouncer2|s_dirtyIn~q\,
	datad => \Debouncer2|s_debounceCnt[0]~29_combout\,
	combout => \Debouncer2|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X109_Y43_N20
\Debouncer2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~42_combout\ = (\Debouncer2|s_debounceCnt\(21) & (\Debouncer2|Add0~41\ & VCC)) # (!\Debouncer2|s_debounceCnt\(21) & (!\Debouncer2|Add0~41\))
-- \Debouncer2|Add0~43\ = CARRY((!\Debouncer2|s_debounceCnt\(21) & !\Debouncer2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(21),
	datad => VCC,
	cin => \Debouncer2|Add0~41\,
	combout => \Debouncer2|Add0~42_combout\,
	cout => \Debouncer2|Add0~43\);

-- Location: LCCOMB_X111_Y44_N12
\Debouncer2|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[21]~10_combout\ = (\Debouncer2|s_debounceCnt[0]~5_combout\ & (\Debouncer2|s_debounceCnt[0]~4_combout\ & \Debouncer2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt[0]~5_combout\,
	datac => \Debouncer2|s_debounceCnt[0]~4_combout\,
	datad => \Debouncer2|Add0~42_combout\,
	combout => \Debouncer2|s_debounceCnt[21]~10_combout\);

-- Location: FF_X111_Y44_N13
\Debouncer2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y43_N22
\Debouncer2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~44_combout\ = \Debouncer2|s_debounceCnt\(22) $ (\Debouncer2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(22),
	cin => \Debouncer2|Add0~43\,
	combout => \Debouncer2|Add0~44_combout\);

-- Location: LCCOMB_X110_Y44_N16
\Debouncer2|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[22]~27_combout\ = (\Debouncer2|s_debounceCnt\(22) & (((!\Debouncer2|LessThan0~5_combout\)))) # (!\Debouncer2|s_debounceCnt\(22) & (((\Debouncer2|s_debounceCnt[0]~29_combout\)) # (!\Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datab => \Debouncer2|s_debounceCnt\(22),
	datac => \Debouncer2|LessThan0~5_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~29_combout\,
	combout => \Debouncer2|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X110_Y44_N22
\Debouncer2|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[22]~28_combout\ = (\Debouncer2|s_dirtyIn~q\ & (\Debouncer2|s_debounceCnt[22]~27_combout\ & ((\Debouncer2|Add0~44_combout\) # (!\Debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_previousIn~q\,
	datab => \Debouncer2|s_dirtyIn~q\,
	datac => \Debouncer2|Add0~44_combout\,
	datad => \Debouncer2|s_debounceCnt[22]~27_combout\,
	combout => \Debouncer2|s_debounceCnt[22]~28_combout\);

-- Location: FF_X110_Y44_N23
\Debouncer2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y44_N4
\Debouncer2|s_debounceCnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt[0]~5_combout\ = (\Debouncer2|s_dirtyIn~q\ & (\Debouncer2|s_previousIn~q\ & ((!\Debouncer2|LessThan0~5_combout\) # (!\Debouncer2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_dirtyIn~q\,
	datab => \Debouncer2|s_debounceCnt\(22),
	datac => \Debouncer2|s_previousIn~q\,
	datad => \Debouncer2|LessThan0~5_combout\,
	combout => \Debouncer2|s_debounceCnt[0]~5_combout\);

-- Location: LCCOMB_X110_Y44_N8
\Debouncer2|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~26_combout\ = (\Debouncer2|Add0~0_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|Add0~0_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~26_combout\);

-- Location: FF_X110_Y44_N9
\Debouncer2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~26_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y44_N12
\Debouncer2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~2_combout\ = (\Debouncer2|s_debounceCnt\(1) & (\Debouncer2|Add0~1\ & VCC)) # (!\Debouncer2|s_debounceCnt\(1) & (!\Debouncer2|Add0~1\))
-- \Debouncer2|Add0~3\ = CARRY((!\Debouncer2|s_debounceCnt\(1) & !\Debouncer2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_debounceCnt\(1),
	datad => VCC,
	cin => \Debouncer2|Add0~1\,
	combout => \Debouncer2|Add0~2_combout\,
	cout => \Debouncer2|Add0~3\);

-- Location: LCCOMB_X110_Y44_N14
\Debouncer2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~21_combout\ = (\Debouncer2|Add0~2_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|Add0~2_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~21_combout\);

-- Location: FF_X110_Y44_N15
\Debouncer2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~21_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y44_N14
\Debouncer2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~4_combout\ = (\Debouncer2|s_debounceCnt\(2) & ((GND) # (!\Debouncer2|Add0~3\))) # (!\Debouncer2|s_debounceCnt\(2) & (\Debouncer2|Add0~3\ $ (GND)))
-- \Debouncer2|Add0~5\ = CARRY((\Debouncer2|s_debounceCnt\(2)) # (!\Debouncer2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(2),
	datad => VCC,
	cin => \Debouncer2|Add0~3\,
	combout => \Debouncer2|Add0~4_combout\,
	cout => \Debouncer2|Add0~5\);

-- Location: LCCOMB_X110_Y44_N4
\Debouncer2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~22_combout\ = (\Debouncer2|Add0~4_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|Add0~4_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~22_combout\);

-- Location: FF_X110_Y44_N5
\Debouncer2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~22_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y44_N16
\Debouncer2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|Add0~6_combout\ = (\Debouncer2|s_debounceCnt\(3) & (\Debouncer2|Add0~5\ & VCC)) # (!\Debouncer2|s_debounceCnt\(3) & (!\Debouncer2|Add0~5\))
-- \Debouncer2|Add0~7\ = CARRY((!\Debouncer2|s_debounceCnt\(3) & !\Debouncer2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(3),
	datad => VCC,
	cin => \Debouncer2|Add0~5\,
	combout => \Debouncer2|Add0~6_combout\,
	cout => \Debouncer2|Add0~7\);

-- Location: LCCOMB_X110_Y44_N2
\Debouncer2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~23_combout\ = (\Debouncer2|Add0~6_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|Add0~6_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~23_combout\);

-- Location: FF_X110_Y44_N3
\Debouncer2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~23_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(3));

-- Location: LCCOMB_X110_Y44_N12
\Debouncer2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_debounceCnt~24_combout\ = (\Debouncer2|Add0~8_combout\ & \Debouncer2|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|Add0~8_combout\,
	datad => \Debouncer2|s_debounceCnt[0]~5_combout\,
	combout => \Debouncer2|s_debounceCnt~24_combout\);

-- Location: FF_X110_Y44_N13
\Debouncer2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_debounceCnt~24_combout\,
	ena => \Debouncer2|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y44_N6
\Debouncer2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~7_combout\ = (!\Debouncer2|s_debounceCnt\(4) & (!\Debouncer2|s_debounceCnt\(1) & (!\Debouncer2|s_debounceCnt\(2) & !\Debouncer2|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_debounceCnt\(4),
	datab => \Debouncer2|s_debounceCnt\(1),
	datac => \Debouncer2|s_debounceCnt\(2),
	datad => \Debouncer2|s_debounceCnt\(3),
	combout => \Debouncer2|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X109_Y44_N0
\Debouncer2|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~9_combout\ = (\Debouncer2|s_dirtyIn~q\ & (!\Debouncer2|s_debounceCnt\(22) & (\Debouncer2|s_debounceCnt\(0) & \Debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_dirtyIn~q\,
	datab => \Debouncer2|s_debounceCnt\(22),
	datac => \Debouncer2|s_debounceCnt\(0),
	datad => \Debouncer2|s_previousIn~q\,
	combout => \Debouncer2|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X109_Y44_N4
\Debouncer2|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer2|s_pulsedOut~10_combout\ = (\Debouncer2|s_pulsedOut~7_combout\ & (\Debouncer2|s_pulsedOut~6_combout\ & (!\Debouncer2|s_debounceCnt\(5) & \Debouncer2|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_pulsedOut~7_combout\,
	datab => \Debouncer2|s_pulsedOut~6_combout\,
	datac => \Debouncer2|s_debounceCnt\(5),
	datad => \Debouncer2|s_pulsedOut~9_combout\,
	combout => \Debouncer2|s_pulsedOut~10_combout\);

-- Location: FF_X109_Y44_N5
\Debouncer2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer2|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer2|s_pulsedOut~q\);

-- Location: LCCOMB_X106_Y24_N28
\MenuModule|Menu|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector4~1_combout\ = (!\MenuModule|Timer|exp_time~q\ & \MenuModule|Menu|pState.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|exp_time~q\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Menu|Selector4~1_combout\);

-- Location: LCCOMB_X106_Y24_N8
\MenuModule|Menu|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|comb_proc~0_combout\ = (\c_door~q\ & \Debouncer1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_door~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|comb_proc~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y28_N12
\Debouncer0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \Debouncer0|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y28_N13
\Debouncer0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_dirtyIn~q\);

-- Location: FF_X105_Y28_N5
\Debouncer0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Debouncer0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_previousIn~q\);

-- Location: LCCOMB_X106_Y29_N10
\Debouncer0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~0_combout\ = \Debouncer0|s_debounceCnt\(0) $ (VCC)
-- \Debouncer0|Add0~1\ = CARRY(\Debouncer0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(0),
	datad => VCC,
	combout => \Debouncer0|Add0~0_combout\,
	cout => \Debouncer0|Add0~1\);

-- Location: LCCOMB_X107_Y28_N8
\Debouncer0|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~26_combout\ = (\Debouncer0|Add0~0_combout\ & \Debouncer0|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|Add0~0_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~5_combout\,
	combout => \Debouncer0|s_debounceCnt~26_combout\);

-- Location: FF_X107_Y28_N9
\Debouncer0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~26_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(0));

-- Location: LCCOMB_X106_Y29_N12
\Debouncer0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~2_combout\ = (\Debouncer0|s_debounceCnt\(1) & (\Debouncer0|Add0~1\ & VCC)) # (!\Debouncer0|s_debounceCnt\(1) & (!\Debouncer0|Add0~1\))
-- \Debouncer0|Add0~3\ = CARRY((!\Debouncer0|s_debounceCnt\(1) & !\Debouncer0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(1),
	datad => VCC,
	cin => \Debouncer0|Add0~1\,
	combout => \Debouncer0|Add0~2_combout\,
	cout => \Debouncer0|Add0~3\);

-- Location: LCCOMB_X108_Y28_N20
\Debouncer0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~21_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~2_combout\,
	combout => \Debouncer0|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y28_N21
\Debouncer0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~21_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(1));

-- Location: LCCOMB_X106_Y29_N14
\Debouncer0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~4_combout\ = (\Debouncer0|s_debounceCnt\(2) & ((GND) # (!\Debouncer0|Add0~3\))) # (!\Debouncer0|s_debounceCnt\(2) & (\Debouncer0|Add0~3\ $ (GND)))
-- \Debouncer0|Add0~5\ = CARRY((\Debouncer0|s_debounceCnt\(2)) # (!\Debouncer0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(2),
	datad => VCC,
	cin => \Debouncer0|Add0~3\,
	combout => \Debouncer0|Add0~4_combout\,
	cout => \Debouncer0|Add0~5\);

-- Location: LCCOMB_X106_Y29_N16
\Debouncer0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~6_combout\ = (\Debouncer0|s_debounceCnt\(3) & (\Debouncer0|Add0~5\ & VCC)) # (!\Debouncer0|s_debounceCnt\(3) & (!\Debouncer0|Add0~5\))
-- \Debouncer0|Add0~7\ = CARRY((!\Debouncer0|s_debounceCnt\(3) & !\Debouncer0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(3),
	datad => VCC,
	cin => \Debouncer0|Add0~5\,
	combout => \Debouncer0|Add0~6_combout\,
	cout => \Debouncer0|Add0~7\);

-- Location: LCCOMB_X108_Y28_N0
\Debouncer0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~23_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~6_combout\,
	combout => \Debouncer0|s_debounceCnt~23_combout\);

-- Location: FF_X108_Y28_N1
\Debouncer0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~23_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y29_N18
\Debouncer0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~8_combout\ = (\Debouncer0|s_debounceCnt\(4) & ((GND) # (!\Debouncer0|Add0~7\))) # (!\Debouncer0|s_debounceCnt\(4) & (\Debouncer0|Add0~7\ $ (GND)))
-- \Debouncer0|Add0~9\ = CARRY((\Debouncer0|s_debounceCnt\(4)) # (!\Debouncer0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(4),
	datad => VCC,
	cin => \Debouncer0|Add0~7\,
	combout => \Debouncer0|Add0~8_combout\,
	cout => \Debouncer0|Add0~9\);

-- Location: LCCOMB_X108_Y28_N22
\Debouncer0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~24_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~8_combout\,
	combout => \Debouncer0|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y28_N23
\Debouncer0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~24_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(4));

-- Location: LCCOMB_X106_Y29_N20
\Debouncer0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~10_combout\ = (\Debouncer0|s_debounceCnt\(5) & (\Debouncer0|Add0~9\ & VCC)) # (!\Debouncer0|s_debounceCnt\(5) & (!\Debouncer0|Add0~9\))
-- \Debouncer0|Add0~11\ = CARRY((!\Debouncer0|s_debounceCnt\(5) & !\Debouncer0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(5),
	datad => VCC,
	cin => \Debouncer0|Add0~9\,
	combout => \Debouncer0|Add0~10_combout\,
	cout => \Debouncer0|Add0~11\);

-- Location: LCCOMB_X108_Y28_N26
\Debouncer0|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~25_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~10_combout\,
	combout => \Debouncer0|s_debounceCnt~25_combout\);

-- Location: FF_X108_Y28_N27
\Debouncer0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~25_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(5));

-- Location: LCCOMB_X106_Y29_N22
\Debouncer0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~12_combout\ = (\Debouncer0|s_debounceCnt\(6) & ((GND) # (!\Debouncer0|Add0~11\))) # (!\Debouncer0|s_debounceCnt\(6) & (\Debouncer0|Add0~11\ $ (GND)))
-- \Debouncer0|Add0~13\ = CARRY((\Debouncer0|s_debounceCnt\(6)) # (!\Debouncer0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(6),
	datad => VCC,
	cin => \Debouncer0|Add0~11\,
	combout => \Debouncer0|Add0~12_combout\,
	cout => \Debouncer0|Add0~13\);

-- Location: LCCOMB_X106_Y28_N0
\Debouncer0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~22_combout\ = (\Debouncer0|s_debounceCnt\(11) & (\Debouncer0|Add0~21\ & VCC)) # (!\Debouncer0|s_debounceCnt\(11) & (!\Debouncer0|Add0~21\))
-- \Debouncer0|Add0~23\ = CARRY((!\Debouncer0|s_debounceCnt\(11) & !\Debouncer0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(11),
	datad => VCC,
	cin => \Debouncer0|Add0~21\,
	combout => \Debouncer0|Add0~22_combout\,
	cout => \Debouncer0|Add0~23\);

-- Location: LCCOMB_X106_Y28_N2
\Debouncer0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~24_combout\ = (\Debouncer0|s_debounceCnt\(12) & ((GND) # (!\Debouncer0|Add0~23\))) # (!\Debouncer0|s_debounceCnt\(12) & (\Debouncer0|Add0~23\ $ (GND)))
-- \Debouncer0|Add0~25\ = CARRY((\Debouncer0|s_debounceCnt\(12)) # (!\Debouncer0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(12),
	datad => VCC,
	cin => \Debouncer0|Add0~23\,
	combout => \Debouncer0|Add0~24_combout\,
	cout => \Debouncer0|Add0~25\);

-- Location: LCCOMB_X107_Y28_N30
\Debouncer0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~11_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~24_combout\,
	combout => \Debouncer0|s_debounceCnt~11_combout\);

-- Location: FF_X107_Y28_N31
\Debouncer0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~11_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(12));

-- Location: LCCOMB_X106_Y28_N4
\Debouncer0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~26_combout\ = (\Debouncer0|s_debounceCnt\(13) & (\Debouncer0|Add0~25\ & VCC)) # (!\Debouncer0|s_debounceCnt\(13) & (!\Debouncer0|Add0~25\))
-- \Debouncer0|Add0~27\ = CARRY((!\Debouncer0|s_debounceCnt\(13) & !\Debouncer0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(13),
	datad => VCC,
	cin => \Debouncer0|Add0~25\,
	combout => \Debouncer0|Add0~26_combout\,
	cout => \Debouncer0|Add0~27\);

-- Location: LCCOMB_X107_Y28_N24
\Debouncer0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~12_combout\ = (\Debouncer0|Add0~26_combout\ & \Debouncer0|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|Add0~26_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~5_combout\,
	combout => \Debouncer0|s_debounceCnt~12_combout\);

-- Location: FF_X107_Y28_N25
\Debouncer0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~12_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(13));

-- Location: LCCOMB_X106_Y28_N6
\Debouncer0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~28_combout\ = (\Debouncer0|s_debounceCnt\(14) & ((GND) # (!\Debouncer0|Add0~27\))) # (!\Debouncer0|s_debounceCnt\(14) & (\Debouncer0|Add0~27\ $ (GND)))
-- \Debouncer0|Add0~29\ = CARRY((\Debouncer0|s_debounceCnt\(14)) # (!\Debouncer0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(14),
	datad => VCC,
	cin => \Debouncer0|Add0~27\,
	combout => \Debouncer0|Add0~28_combout\,
	cout => \Debouncer0|Add0~29\);

-- Location: LCCOMB_X105_Y28_N16
\Debouncer0|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~18_combout\ = (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~28_combout\) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|Add0~28_combout\,
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt~18_combout\);

-- Location: FF_X105_Y28_N17
\Debouncer0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~18_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(14));

-- Location: LCCOMB_X106_Y28_N8
\Debouncer0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~30_combout\ = (\Debouncer0|s_debounceCnt\(15) & (\Debouncer0|Add0~29\ & VCC)) # (!\Debouncer0|s_debounceCnt\(15) & (!\Debouncer0|Add0~29\))
-- \Debouncer0|Add0~31\ = CARRY((!\Debouncer0|s_debounceCnt\(15) & !\Debouncer0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(15),
	datad => VCC,
	cin => \Debouncer0|Add0~29\,
	combout => \Debouncer0|Add0~30_combout\,
	cout => \Debouncer0|Add0~31\);

-- Location: LCCOMB_X107_Y28_N16
\Debouncer0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~6_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~30_combout\,
	combout => \Debouncer0|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y28_N17
\Debouncer0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~6_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(15));

-- Location: LCCOMB_X106_Y28_N10
\Debouncer0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~32_combout\ = (\Debouncer0|s_debounceCnt\(16) & ((GND) # (!\Debouncer0|Add0~31\))) # (!\Debouncer0|s_debounceCnt\(16) & (\Debouncer0|Add0~31\ $ (GND)))
-- \Debouncer0|Add0~33\ = CARRY((\Debouncer0|s_debounceCnt\(16)) # (!\Debouncer0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(16),
	datad => VCC,
	cin => \Debouncer0|Add0~31\,
	combout => \Debouncer0|Add0~32_combout\,
	cout => \Debouncer0|Add0~33\);

-- Location: LCCOMB_X106_Y28_N24
\Debouncer0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~7_combout\ = (\Debouncer0|Add0~32_combout\ & \Debouncer0|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|Add0~32_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~5_combout\,
	combout => \Debouncer0|s_debounceCnt~7_combout\);

-- Location: FF_X106_Y28_N25
\Debouncer0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~7_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(16));

-- Location: LCCOMB_X106_Y28_N12
\Debouncer0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~34_combout\ = (\Debouncer0|s_debounceCnt\(17) & (\Debouncer0|Add0~33\ & VCC)) # (!\Debouncer0|s_debounceCnt\(17) & (!\Debouncer0|Add0~33\))
-- \Debouncer0|Add0~35\ = CARRY((!\Debouncer0|s_debounceCnt\(17) & !\Debouncer0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(17),
	datad => VCC,
	cin => \Debouncer0|Add0~33\,
	combout => \Debouncer0|Add0~34_combout\,
	cout => \Debouncer0|Add0~35\);

-- Location: LCCOMB_X106_Y28_N30
\Debouncer0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~8_combout\ = (\Debouncer0|Add0~34_combout\ & \Debouncer0|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|Add0~34_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~5_combout\,
	combout => \Debouncer0|s_debounceCnt~8_combout\);

-- Location: FF_X106_Y28_N31
\Debouncer0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~8_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(17));

-- Location: LCCOMB_X106_Y28_N14
\Debouncer0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~36_combout\ = (\Debouncer0|s_debounceCnt\(18) & ((GND) # (!\Debouncer0|Add0~35\))) # (!\Debouncer0|s_debounceCnt\(18) & (\Debouncer0|Add0~35\ $ (GND)))
-- \Debouncer0|Add0~37\ = CARRY((\Debouncer0|s_debounceCnt\(18)) # (!\Debouncer0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(18),
	datad => VCC,
	cin => \Debouncer0|Add0~35\,
	combout => \Debouncer0|Add0~36_combout\,
	cout => \Debouncer0|Add0~37\);

-- Location: LCCOMB_X106_Y28_N28
\Debouncer0|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[18]~19_combout\ = (\Debouncer0|s_debounceCnt[17]~4_combout\ & (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~36_combout\) # (!\Debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_previousIn~q\,
	datab => \Debouncer0|s_debounceCnt[17]~4_combout\,
	datac => \Debouncer0|Add0~36_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt[18]~19_combout\);

-- Location: FF_X106_Y28_N29
\Debouncer0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(18));

-- Location: LCCOMB_X106_Y28_N16
\Debouncer0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~38_combout\ = (\Debouncer0|s_debounceCnt\(19) & (\Debouncer0|Add0~37\ & VCC)) # (!\Debouncer0|s_debounceCnt\(19) & (!\Debouncer0|Add0~37\))
-- \Debouncer0|Add0~39\ = CARRY((!\Debouncer0|s_debounceCnt\(19) & !\Debouncer0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(19),
	datad => VCC,
	cin => \Debouncer0|Add0~37\,
	combout => \Debouncer0|Add0~38_combout\,
	cout => \Debouncer0|Add0~39\);

-- Location: LCCOMB_X105_Y28_N14
\Debouncer0|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[19]~20_combout\ = (\Debouncer0|s_debounceCnt[17]~4_combout\ & (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~38_combout\) # (!\Debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~4_combout\,
	datab => \Debouncer0|s_previousIn~q\,
	datac => \Debouncer0|Add0~38_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt[19]~20_combout\);

-- Location: FF_X105_Y28_N15
\Debouncer0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y28_N18
\Debouncer0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~40_combout\ = (\Debouncer0|s_debounceCnt\(20) & ((GND) # (!\Debouncer0|Add0~39\))) # (!\Debouncer0|s_debounceCnt\(20) & (\Debouncer0|Add0~39\ $ (GND)))
-- \Debouncer0|Add0~41\ = CARRY((\Debouncer0|s_debounceCnt\(20)) # (!\Debouncer0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(20),
	datad => VCC,
	cin => \Debouncer0|Add0~39\,
	combout => \Debouncer0|Add0~40_combout\,
	cout => \Debouncer0|Add0~41\);

-- Location: LCCOMB_X107_Y28_N26
\Debouncer0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[20]~9_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & (\Debouncer0|s_debounceCnt[17]~4_combout\ & \Debouncer0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datab => \Debouncer0|s_debounceCnt[17]~4_combout\,
	datad => \Debouncer0|Add0~40_combout\,
	combout => \Debouncer0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X107_Y28_N27
\Debouncer0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(20));

-- Location: LCCOMB_X107_Y28_N4
\Debouncer0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~3_combout\ = (\Debouncer0|s_debounceCnt\(17)) # ((\Debouncer0|s_debounceCnt\(15)) # (\Debouncer0|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(17),
	datac => \Debouncer0|s_debounceCnt\(15),
	datad => \Debouncer0|s_debounceCnt\(16),
	combout => \Debouncer0|LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y28_N24
\Debouncer0|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~8_combout\ = (!\Debouncer0|s_debounceCnt\(5) & \Debouncer0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt\(5),
	datad => \Debouncer0|s_pulsedOut~7_combout\,
	combout => \Debouncer0|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X107_Y28_N18
\Debouncer0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~0_combout\ = (\Debouncer0|s_debounceCnt\(7)) # ((\Debouncer0|s_debounceCnt\(6) & ((\Debouncer0|s_debounceCnt\(0)) # (!\Debouncer0|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(7),
	datab => \Debouncer0|s_debounceCnt\(6),
	datac => \Debouncer0|s_debounceCnt\(0),
	datad => \Debouncer0|s_pulsedOut~8_combout\,
	combout => \Debouncer0|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y28_N0
\Debouncer0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~1_combout\ = (\Debouncer0|s_debounceCnt\(10)) # ((\Debouncer0|s_debounceCnt\(9) & (\Debouncer0|s_debounceCnt\(8) & \Debouncer0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(9),
	datab => \Debouncer0|s_debounceCnt\(10),
	datac => \Debouncer0|s_debounceCnt\(8),
	datad => \Debouncer0|LessThan0~0_combout\,
	combout => \Debouncer0|LessThan0~1_combout\);

-- Location: LCCOMB_X107_Y28_N10
\Debouncer0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~2_combout\ = (\Debouncer0|s_debounceCnt\(13)) # ((\Debouncer0|s_debounceCnt\(12)) # ((\Debouncer0|s_debounceCnt\(11) & \Debouncer0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(11),
	datab => \Debouncer0|s_debounceCnt\(13),
	datac => \Debouncer0|s_debounceCnt\(12),
	datad => \Debouncer0|LessThan0~1_combout\,
	combout => \Debouncer0|LessThan0~2_combout\);

-- Location: LCCOMB_X107_Y28_N2
\Debouncer0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~4_combout\ = (\Debouncer0|s_debounceCnt\(18) & ((\Debouncer0|LessThan0~3_combout\) # ((\Debouncer0|s_debounceCnt\(14) & \Debouncer0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(14),
	datab => \Debouncer0|s_debounceCnt\(18),
	datac => \Debouncer0|LessThan0~3_combout\,
	datad => \Debouncer0|LessThan0~2_combout\,
	combout => \Debouncer0|LessThan0~4_combout\);

-- Location: LCCOMB_X107_Y28_N28
\Debouncer0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|LessThan0~5_combout\ = (\Debouncer0|s_debounceCnt\(21)) # ((\Debouncer0|s_debounceCnt\(20)) # ((\Debouncer0|s_debounceCnt\(19) & \Debouncer0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(19),
	datab => \Debouncer0|s_debounceCnt\(21),
	datac => \Debouncer0|s_debounceCnt\(20),
	datad => \Debouncer0|LessThan0~4_combout\,
	combout => \Debouncer0|LessThan0~5_combout\);

-- Location: LCCOMB_X105_Y28_N28
\Debouncer0|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[17]~2_combout\ = (\Debouncer0|s_dirtyIn~q\ & ((!\Debouncer0|LessThan0~5_combout\) # (!\Debouncer0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(22),
	datac => \Debouncer0|s_dirtyIn~q\,
	datad => \Debouncer0|LessThan0~5_combout\,
	combout => \Debouncer0|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X105_Y28_N0
\Debouncer0|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~3_combout\ = (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~12_combout\) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|Add0~12_combout\,
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt~3_combout\);

-- Location: FF_X105_Y28_N1
\Debouncer0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~3_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(6));

-- Location: LCCOMB_X106_Y29_N24
\Debouncer0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~14_combout\ = (\Debouncer0|s_debounceCnt\(7) & (\Debouncer0|Add0~13\ & VCC)) # (!\Debouncer0|s_debounceCnt\(7) & (!\Debouncer0|Add0~13\))
-- \Debouncer0|Add0~15\ = CARRY((!\Debouncer0|s_debounceCnt\(7) & !\Debouncer0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_debounceCnt\(7),
	datad => VCC,
	cin => \Debouncer0|Add0~13\,
	combout => \Debouncer0|Add0~14_combout\,
	cout => \Debouncer0|Add0~15\);

-- Location: LCCOMB_X107_Y28_N12
\Debouncer0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~13_combout\ = (\Debouncer0|Add0~14_combout\ & \Debouncer0|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|Add0~14_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~5_combout\,
	combout => \Debouncer0|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y28_N13
\Debouncer0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~13_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(7));

-- Location: LCCOMB_X106_Y29_N26
\Debouncer0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~16_combout\ = (\Debouncer0|s_debounceCnt\(8) & ((GND) # (!\Debouncer0|Add0~15\))) # (!\Debouncer0|s_debounceCnt\(8) & (\Debouncer0|Add0~15\ $ (GND)))
-- \Debouncer0|Add0~17\ = CARRY((\Debouncer0|s_debounceCnt\(8)) # (!\Debouncer0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(8),
	datad => VCC,
	cin => \Debouncer0|Add0~15\,
	combout => \Debouncer0|Add0~16_combout\,
	cout => \Debouncer0|Add0~17\);

-- Location: LCCOMB_X105_Y28_N20
\Debouncer0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~14_combout\ = (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~16_combout\) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|Add0~16_combout\,
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt~14_combout\);

-- Location: FF_X105_Y28_N21
\Debouncer0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~14_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y29_N28
\Debouncer0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~18_combout\ = (\Debouncer0|s_debounceCnt\(9) & (\Debouncer0|Add0~17\ & VCC)) # (!\Debouncer0|s_debounceCnt\(9) & (!\Debouncer0|Add0~17\))
-- \Debouncer0|Add0~19\ = CARRY((!\Debouncer0|s_debounceCnt\(9) & !\Debouncer0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(9),
	datad => VCC,
	cin => \Debouncer0|Add0~17\,
	combout => \Debouncer0|Add0~18_combout\,
	cout => \Debouncer0|Add0~19\);

-- Location: LCCOMB_X105_Y28_N26
\Debouncer0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~15_combout\ = (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~18_combout\) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_previousIn~q\,
	datac => \Debouncer0|Add0~18_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt~15_combout\);

-- Location: FF_X105_Y28_N27
\Debouncer0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~15_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(9));

-- Location: LCCOMB_X106_Y29_N30
\Debouncer0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~20_combout\ = (\Debouncer0|s_debounceCnt\(10) & ((GND) # (!\Debouncer0|Add0~19\))) # (!\Debouncer0|s_debounceCnt\(10) & (\Debouncer0|Add0~19\ $ (GND)))
-- \Debouncer0|Add0~21\ = CARRY((\Debouncer0|s_debounceCnt\(10)) # (!\Debouncer0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(10),
	datad => VCC,
	cin => \Debouncer0|Add0~19\,
	combout => \Debouncer0|Add0~20_combout\,
	cout => \Debouncer0|Add0~21\);

-- Location: LCCOMB_X107_Y28_N14
\Debouncer0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~16_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~20_combout\,
	combout => \Debouncer0|s_debounceCnt~16_combout\);

-- Location: FF_X107_Y28_N15
\Debouncer0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~16_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(10));

-- Location: LCCOMB_X105_Y28_N22
\Debouncer0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~17_combout\ = (\Debouncer0|s_debounceCnt[17]~2_combout\ & ((\Debouncer0|Add0~22_combout\) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer0|s_previousIn~q\,
	datac => \Debouncer0|Add0~22_combout\,
	datad => \Debouncer0|s_debounceCnt[17]~2_combout\,
	combout => \Debouncer0|s_debounceCnt~17_combout\);

-- Location: FF_X105_Y28_N23
\Debouncer0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~17_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(11));

-- Location: LCCOMB_X105_Y28_N12
\Debouncer0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~5_combout\ = (!\Debouncer0|s_debounceCnt\(11) & (!\Debouncer0|s_debounceCnt\(14) & (!\Debouncer0|s_debounceCnt\(18) & !\Debouncer0|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(11),
	datab => \Debouncer0|s_debounceCnt\(14),
	datac => \Debouncer0|s_debounceCnt\(18),
	datad => \Debouncer0|s_debounceCnt\(19),
	combout => \Debouncer0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X105_Y28_N18
\Debouncer0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~2_combout\ = (!\Debouncer0|s_debounceCnt\(15) & (!\Debouncer0|s_debounceCnt\(6) & (!\Debouncer0|s_debounceCnt\(17) & !\Debouncer0|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(15),
	datab => \Debouncer0|s_debounceCnt\(6),
	datac => \Debouncer0|s_debounceCnt\(17),
	datad => \Debouncer0|s_debounceCnt\(16),
	combout => \Debouncer0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X105_Y28_N8
\Debouncer0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~4_combout\ = (!\Debouncer0|s_debounceCnt\(9) & (!\Debouncer0|s_debounceCnt\(8) & (!\Debouncer0|s_debounceCnt\(7) & !\Debouncer0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(9),
	datab => \Debouncer0|s_debounceCnt\(8),
	datac => \Debouncer0|s_debounceCnt\(7),
	datad => \Debouncer0|s_debounceCnt\(10),
	combout => \Debouncer0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y28_N22
\Debouncer0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~3_combout\ = (!\Debouncer0|s_debounceCnt\(20) & (!\Debouncer0|s_debounceCnt\(21) & (!\Debouncer0|s_debounceCnt\(12) & !\Debouncer0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(20),
	datab => \Debouncer0|s_debounceCnt\(21),
	datac => \Debouncer0|s_debounceCnt\(12),
	datad => \Debouncer0|s_debounceCnt\(13),
	combout => \Debouncer0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X105_Y28_N2
\Debouncer0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~6_combout\ = (\Debouncer0|s_pulsedOut~5_combout\ & (\Debouncer0|s_pulsedOut~2_combout\ & (\Debouncer0|s_pulsedOut~4_combout\ & \Debouncer0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~5_combout\,
	datab => \Debouncer0|s_pulsedOut~2_combout\,
	datac => \Debouncer0|s_pulsedOut~4_combout\,
	datad => \Debouncer0|s_pulsedOut~3_combout\,
	combout => \Debouncer0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X105_Y28_N30
\Debouncer0|s_debounceCnt[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[17]~29_combout\ = (\Debouncer0|s_debounceCnt\(0)) # ((\Debouncer0|s_debounceCnt\(5)) # ((!\Debouncer0|s_pulsedOut~7_combout\) # (!\Debouncer0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(0),
	datab => \Debouncer0|s_debounceCnt\(5),
	datac => \Debouncer0|s_pulsedOut~6_combout\,
	datad => \Debouncer0|s_pulsedOut~7_combout\,
	combout => \Debouncer0|s_debounceCnt[17]~29_combout\);

-- Location: LCCOMB_X105_Y28_N6
\Debouncer0|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[17]~4_combout\ = (((\Debouncer0|s_debounceCnt[17]~29_combout\) # (\Debouncer0|s_debounceCnt\(22))) # (!\Debouncer0|s_previousIn~q\)) # (!\Debouncer0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_dirtyIn~q\,
	datab => \Debouncer0|s_previousIn~q\,
	datac => \Debouncer0|s_debounceCnt[17]~29_combout\,
	datad => \Debouncer0|s_debounceCnt\(22),
	combout => \Debouncer0|s_debounceCnt[17]~4_combout\);

-- Location: LCCOMB_X106_Y28_N20
\Debouncer0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~42_combout\ = (\Debouncer0|s_debounceCnt\(21) & (\Debouncer0|Add0~41\ & VCC)) # (!\Debouncer0|s_debounceCnt\(21) & (!\Debouncer0|Add0~41\))
-- \Debouncer0|Add0~43\ = CARRY((!\Debouncer0|s_debounceCnt\(21) & !\Debouncer0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(21),
	datad => VCC,
	cin => \Debouncer0|Add0~41\,
	combout => \Debouncer0|Add0~42_combout\,
	cout => \Debouncer0|Add0~43\);

-- Location: LCCOMB_X107_Y28_N20
\Debouncer0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[21]~10_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & (\Debouncer0|s_debounceCnt[17]~4_combout\ & \Debouncer0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datab => \Debouncer0|s_debounceCnt[17]~4_combout\,
	datad => \Debouncer0|Add0~42_combout\,
	combout => \Debouncer0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X107_Y28_N21
\Debouncer0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(21));

-- Location: LCCOMB_X106_Y28_N22
\Debouncer0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|Add0~44_combout\ = \Debouncer0|Add0~43\ $ (\Debouncer0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Debouncer0|s_debounceCnt\(22),
	cin => \Debouncer0|Add0~43\,
	combout => \Debouncer0|Add0~44_combout\);

-- Location: LCCOMB_X105_Y28_N24
\Debouncer0|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[22]~27_combout\ = (\Debouncer0|s_debounceCnt\(22) & (((!\Debouncer0|LessThan0~5_combout\)))) # (!\Debouncer0|s_debounceCnt\(22) & (((\Debouncer0|s_debounceCnt[17]~29_combout\)) # (!\Debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(22),
	datab => \Debouncer0|s_previousIn~q\,
	datac => \Debouncer0|s_debounceCnt[17]~29_combout\,
	datad => \Debouncer0|LessThan0~5_combout\,
	combout => \Debouncer0|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X105_Y28_N10
\Debouncer0|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[22]~28_combout\ = (\Debouncer0|s_dirtyIn~q\ & (\Debouncer0|s_debounceCnt[22]~27_combout\ & ((\Debouncer0|Add0~44_combout\) # (!\Debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_dirtyIn~q\,
	datab => \Debouncer0|Add0~44_combout\,
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|s_debounceCnt[22]~27_combout\,
	combout => \Debouncer0|s_debounceCnt[22]~28_combout\);

-- Location: FF_X105_Y28_N11
\Debouncer0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y28_N6
\Debouncer0|s_debounceCnt[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt[17]~5_combout\ = (\Debouncer0|s_dirtyIn~q\ & (\Debouncer0|s_previousIn~q\ & ((!\Debouncer0|LessThan0~5_combout\) # (!\Debouncer0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_dirtyIn~q\,
	datab => \Debouncer0|s_debounceCnt\(22),
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|LessThan0~5_combout\,
	combout => \Debouncer0|s_debounceCnt[17]~5_combout\);

-- Location: LCCOMB_X108_Y28_N30
\Debouncer0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_debounceCnt~22_combout\ = (\Debouncer0|s_debounceCnt[17]~5_combout\ & \Debouncer0|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer0|s_debounceCnt[17]~5_combout\,
	datad => \Debouncer0|Add0~4_combout\,
	combout => \Debouncer0|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y28_N31
\Debouncer0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_debounceCnt~22_combout\,
	ena => \Debouncer0|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y28_N28
\Debouncer0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~7_combout\ = (!\Debouncer0|s_debounceCnt\(2) & (!\Debouncer0|s_debounceCnt\(3) & (!\Debouncer0|s_debounceCnt\(4) & !\Debouncer0|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_debounceCnt\(2),
	datab => \Debouncer0|s_debounceCnt\(3),
	datac => \Debouncer0|s_debounceCnt\(4),
	datad => \Debouncer0|s_debounceCnt\(1),
	combout => \Debouncer0|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X105_Y28_N4
\Debouncer0|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~9_combout\ = (\Debouncer0|s_dirtyIn~q\ & (!\Debouncer0|s_debounceCnt\(22) & (\Debouncer0|s_previousIn~q\ & \Debouncer0|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_dirtyIn~q\,
	datab => \Debouncer0|s_debounceCnt\(22),
	datac => \Debouncer0|s_previousIn~q\,
	datad => \Debouncer0|s_debounceCnt\(0),
	combout => \Debouncer0|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X101_Y28_N10
\Debouncer0|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debouncer0|s_pulsedOut~10_combout\ = (\Debouncer0|s_pulsedOut~7_combout\ & (!\Debouncer0|s_debounceCnt\(5) & (\Debouncer0|s_pulsedOut~6_combout\ & \Debouncer0|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~7_combout\,
	datab => \Debouncer0|s_debounceCnt\(5),
	datac => \Debouncer0|s_pulsedOut~6_combout\,
	datad => \Debouncer0|s_pulsedOut~9_combout\,
	combout => \Debouncer0|s_pulsedOut~10_combout\);

-- Location: FF_X101_Y28_N11
\Debouncer0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Debouncer0|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debouncer0|s_pulsedOut~q\);

-- Location: LCCOMB_X106_Y24_N2
\MenuModule|Menu|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector0~0_combout\ = (\MenuModule|Menu|pState.WASH~q\ & (\MenuModule|Timer|exp_time~q\ & (\c_door~q\ & !\Debouncer1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \c_door~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|Selector0~0_combout\);

-- Location: LCCOMB_X106_Y24_N20
\MenuModule|Menu|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|pState~12_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (!\MenuModule|Menu|Selector0~0_combout\ & ((\MenuModule|Menu|pState.PROG~q\) # (\Debouncer1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Menu|Selector0~0_combout\,
	datac => \MenuModule|Menu|pState.PROG~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|pState~12_combout\);

-- Location: FF_X106_Y24_N21
\MenuModule|Menu|pState.PROG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|pState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.PROG~q\);

-- Location: LCCOMB_X101_Y28_N0
\MenuModule|Menu|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|pState~11_combout\ = (!\Debouncer0|s_pulsedOut~q\ & !\MenuModule|Menu|pState.PROG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datad => \MenuModule|Menu|pState.PROG~q\,
	combout => \MenuModule|Menu|pState~11_combout\);

-- Location: LCCOMB_X102_Y28_N24
\MenuModule|Menu|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|pState~10_combout\ = (\Debouncer0|s_pulsedOut~q\) # (\Debouncer1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|pState~10_combout\);

-- Location: FF_X101_Y28_N1
\MenuModule|Menu|pState.TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|pState~11_combout\,
	ena => \MenuModule|Menu|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.TEMP~q\);

-- Location: LCCOMB_X101_Y28_N6
\MenuModule|Menu|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|pState~9_combout\ = (!\Debouncer0|s_pulsedOut~q\ & \MenuModule|Menu|pState.TEMP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datad => \MenuModule|Menu|pState.TEMP~q\,
	combout => \MenuModule|Menu|pState~9_combout\);

-- Location: FF_X101_Y28_N7
\MenuModule|Menu|pState.SPIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|pState~9_combout\,
	ena => \MenuModule|Menu|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.SPIN~q\);

-- Location: LCCOMB_X106_Y24_N0
\MenuModule|Menu|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector3~1_combout\ = (\MenuModule|Menu|pState.SPIN~q\ & \Debouncer1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|Selector3~1_combout\);

-- Location: LCCOMB_X106_Y24_N6
\MenuModule|Menu|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector3~2_combout\ = (\MenuModule|Menu|Selector3~1_combout\) # ((!\Debouncer2|s_pulsedOut~q\ & (!\MenuModule|Menu|comb_proc~0_combout\ & \MenuModule|Menu|pState.MODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_pulsedOut~q\,
	datab => \MenuModule|Menu|comb_proc~0_combout\,
	datac => \MenuModule|Menu|pState.MODE~q\,
	datad => \MenuModule|Menu|Selector3~1_combout\,
	combout => \MenuModule|Menu|Selector3~2_combout\);

-- Location: FF_X106_Y24_N7
\MenuModule|Menu|pState.MODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|Selector3~2_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.MODE~q\);

-- Location: LCCOMB_X106_Y24_N10
\MenuModule|Menu|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector4~2_combout\ = (\MenuModule|Menu|Selector4~1_combout\) # ((\Debouncer2|s_pulsedOut~q\ & (!\MenuModule|Menu|comb_proc~0_combout\ & \MenuModule|Menu|pState.MODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer2|s_pulsedOut~q\,
	datab => \MenuModule|Menu|Selector4~1_combout\,
	datac => \MenuModule|Menu|comb_proc~0_combout\,
	datad => \MenuModule|Menu|pState.MODE~q\,
	combout => \MenuModule|Menu|Selector4~2_combout\);

-- Location: FF_X106_Y24_N11
\MenuModule|Menu|pState.DELAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|Selector4~2_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.DELAY~q\);

-- Location: LCCOMB_X98_Y24_N4
\MenuModule|timer_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|timer_en~combout\ = (\MenuModule|Menu|pState.WASH~q\) # (\MenuModule|Menu|pState.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|timer_en~combout\);

-- Location: LCCOMB_X96_Y25_N0
\MenuModule|Timer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~0_combout\ = \MenuModule|Timer|seconds\(0) $ (VCC)
-- \MenuModule|Timer|Add0~1\ = CARRY(\MenuModule|Timer|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(0),
	datad => VCC,
	combout => \MenuModule|Timer|Add0~0_combout\,
	cout => \MenuModule|Timer|Add0~1\);

-- Location: LCCOMB_X101_Y28_N2
\MenuModule|Demux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Demux|Mux2~0_combout\ = (\Debouncer2|s_pulsedOut~q\ & !\MenuModule|Menu|pState.PROG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_pulsedOut~q\,
	datad => \MenuModule|Menu|pState.PROG~q\,
	combout => \MenuModule|Demux|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y28_N16
\MenuModule|Prog|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Prog|Selector1~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Prog|pState.P1~q\ & (!\MenuModule|Demux|Mux2~0_combout\ & \MenuModule|Prog|pState.P2~q\)) # (!\MenuModule|Prog|pState.P1~q\ & (\MenuModule|Demux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P1~q\,
	datab => \MenuModule|Demux|Mux2~0_combout\,
	datac => \MenuModule|Prog|pState.P2~q\,
	datad => \Debouncer0|s_pulsedOut~q\,
	combout => \MenuModule|Prog|Selector1~0_combout\);

-- Location: FF_X101_Y28_N17
\MenuModule|Prog|pState.P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Prog|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Prog|pState.P2~q\);

-- Location: LCCOMB_X101_Y28_N12
\MenuModule|Prog|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Prog|Selector2~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Prog|pState.P2~q\ & ((\MenuModule|Demux|Mux2~0_combout\))) # (!\MenuModule|Prog|pState.P2~q\ & (\MenuModule|Prog|pState.P3~q\ & !\MenuModule|Demux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Prog|pState.P2~q\,
	datac => \MenuModule|Prog|pState.P3~q\,
	datad => \MenuModule|Demux|Mux2~0_combout\,
	combout => \MenuModule|Prog|Selector2~0_combout\);

-- Location: FF_X101_Y28_N13
\MenuModule|Prog|pState.P3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Prog|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Prog|pState.P3~q\);

-- Location: LCCOMB_X101_Y28_N26
\MenuModule|Prog|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Prog|Selector0~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Prog|pState.P3~q\ & (!\MenuModule|Demux|Mux2~0_combout\)) # (!\MenuModule|Prog|pState.P3~q\ & ((\MenuModule|Demux|Mux2~0_combout\) # (\MenuModule|Prog|pState.P1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P3~q\,
	datab => \MenuModule|Demux|Mux2~0_combout\,
	datac => \MenuModule|Prog|pState.P1~q\,
	datad => \Debouncer0|s_pulsedOut~q\,
	combout => \MenuModule|Prog|Selector0~0_combout\);

-- Location: FF_X101_Y28_N27
\MenuModule|Prog|pState.P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Prog|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Prog|pState.P1~q\);

-- Location: LCCOMB_X101_Y32_N2
\Dec4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec4|Equal1~0_combout\ = (\MenuModule|Prog|pState.P1~q\ & \MenuModule|Prog|pState.P2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Prog|pState.P1~q\,
	datad => \MenuModule|Prog|pState.P2~q\,
	combout => \Dec4|Equal1~0_combout\);

-- Location: LCCOMB_X98_Y25_N14
\MenuModule|Timer|seconds[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[0]~12_combout\ = (\MenuModule|Timer|process_0~0_combout\ & (((!\MenuModule|Menu|pState.DELAY~q\ & \Dec4|Equal1~0_combout\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (\MenuModule|Timer|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~0_combout\,
	datab => \MenuModule|Menu|pState.DELAY~q\,
	datac => \MenuModule|Timer|process_0~0_combout\,
	datad => \Dec4|Equal1~0_combout\,
	combout => \MenuModule|Timer|seconds[0]~12_combout\);

-- Location: LCCOMB_X99_Y25_N0
\MenuModule|Timer|periods[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[0]~34_combout\ = \MenuModule|Timer|periods\(0) $ (VCC)
-- \MenuModule|Timer|periods[0]~35\ = CARRY(\MenuModule|Timer|periods\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(0),
	datad => VCC,
	combout => \MenuModule|Timer|periods[0]~34_combout\,
	cout => \MenuModule|Timer|periods[0]~35\);

-- Location: LCCOMB_X99_Y25_N2
\MenuModule|Timer|periods[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[1]~37_combout\ = (\MenuModule|Timer|periods\(1) & (!\MenuModule|Timer|periods[0]~35\)) # (!\MenuModule|Timer|periods\(1) & ((\MenuModule|Timer|periods[0]~35\) # (GND)))
-- \MenuModule|Timer|periods[1]~38\ = CARRY((!\MenuModule|Timer|periods[0]~35\) # (!\MenuModule|Timer|periods\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(1),
	datad => VCC,
	cin => \MenuModule|Timer|periods[0]~35\,
	combout => \MenuModule|Timer|periods[1]~37_combout\,
	cout => \MenuModule|Timer|periods[1]~38\);

-- Location: LCCOMB_X106_Y24_N14
\MenuModule|Menu|sync_proc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|sync_proc~7_combout\ = ((\MenuModule|Menu|pState.MODE~q\ & ((\MenuModule|Menu|comb_proc~0_combout\) # (\Debouncer2|s_pulsedOut~q\)))) # (!\MenuModule|Menu|pState.PROG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.MODE~q\,
	datab => \MenuModule|Menu|pState.PROG~q\,
	datac => \MenuModule|Menu|comb_proc~0_combout\,
	datad => \Debouncer2|s_pulsedOut~q\,
	combout => \MenuModule|Menu|sync_proc~7_combout\);

-- Location: FF_X106_Y24_N15
\MenuModule|Menu|force_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|sync_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|force_t~q\);

-- Location: LCCOMB_X98_Y24_N10
\MenuModule|Timer|seconds~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds~14_combout\ = (((!\MenuModule|Menu|pState.WASH~q\ & !\MenuModule|Menu|pState.DELAY~q\)) # (!\MenuModule|Timer|exp_time~9_combout\)) # (!\MenuModule|Timer|periods\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(0),
	datab => \MenuModule|Timer|exp_time~9_combout\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Timer|seconds~14_combout\);

-- Location: LCCOMB_X101_Y28_N8
\Dec4|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec4|Equal1~1_combout\ = (!\MenuModule|Prog|pState.P1~q\ & !\MenuModule|Prog|pState.P2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Prog|pState.P1~q\,
	datad => \MenuModule|Prog|pState.P2~q\,
	combout => \Dec4|Equal1~1_combout\);

-- Location: LCCOMB_X96_Y25_N2
\MenuModule|Timer|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~2_combout\ = (\MenuModule|Timer|seconds\(1) & (\MenuModule|Timer|Add0~1\ & VCC)) # (!\MenuModule|Timer|seconds\(1) & (!\MenuModule|Timer|Add0~1\))
-- \MenuModule|Timer|Add0~3\ = CARRY((!\MenuModule|Timer|seconds\(1) & !\MenuModule|Timer|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(1),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~1\,
	combout => \MenuModule|Timer|Add0~2_combout\,
	cout => \MenuModule|Timer|Add0~3\);

-- Location: LCCOMB_X98_Y25_N16
\MenuModule|Timer|seconds[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[1]~10_combout\ = (\MenuModule|Timer|process_0~0_combout\ & (\Dec4|Equal1~1_combout\ & ((!\MenuModule|Menu|pState.DELAY~q\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (((\MenuModule|Timer|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec4|Equal1~1_combout\,
	datab => \MenuModule|Timer|Add0~2_combout\,
	datac => \MenuModule|Timer|process_0~0_combout\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Timer|seconds[1]~10_combout\);

-- Location: LCCOMB_X98_Y25_N8
\MenuModule|Timer|seconds[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[1]~11_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(1))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & (\MenuModule|Timer|seconds[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds[1]~10_combout\,
	datac => \MenuModule|Timer|seconds\(1),
	datad => \MenuModule|Timer|seconds[3]~1_combout\,
	combout => \MenuModule|Timer|seconds[1]~11_combout\);

-- Location: FF_X98_Y25_N9
\MenuModule|Timer|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(1));

-- Location: LCCOMB_X96_Y25_N4
\MenuModule|Timer|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~4_combout\ = (\MenuModule|Timer|seconds\(2) & ((GND) # (!\MenuModule|Timer|Add0~3\))) # (!\MenuModule|Timer|seconds\(2) & (\MenuModule|Timer|Add0~3\ $ (GND)))
-- \MenuModule|Timer|Add0~5\ = CARRY((\MenuModule|Timer|seconds\(2)) # (!\MenuModule|Timer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(2),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~3\,
	combout => \MenuModule|Timer|Add0~4_combout\,
	cout => \MenuModule|Timer|Add0~5\);

-- Location: LCCOMB_X98_Y25_N2
\MenuModule|Timer|seconds[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[2]~8_combout\ = (\MenuModule|Timer|process_0~0_combout\ & (((\MenuModule|Menu|pState.DELAY~q\) # (!\MenuModule|Prog|pState.P2~q\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (\MenuModule|Timer|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~4_combout\,
	datab => \MenuModule|Prog|pState.P2~q\,
	datac => \MenuModule|Timer|process_0~0_combout\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Timer|seconds[2]~8_combout\);

-- Location: LCCOMB_X98_Y25_N22
\MenuModule|Timer|seconds[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[2]~9_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(2))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Timer|seconds[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds[3]~1_combout\,
	datac => \MenuModule|Timer|seconds\(2),
	datad => \MenuModule|Timer|seconds[2]~8_combout\,
	combout => \MenuModule|Timer|seconds[2]~9_combout\);

-- Location: FF_X98_Y25_N23
\MenuModule|Timer|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(2));

-- Location: LCCOMB_X96_Y25_N6
\MenuModule|Timer|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~6_combout\ = (\MenuModule|Timer|seconds\(3) & (\MenuModule|Timer|Add0~5\ & VCC)) # (!\MenuModule|Timer|seconds\(3) & (!\MenuModule|Timer|Add0~5\))
-- \MenuModule|Timer|Add0~7\ = CARRY((!\MenuModule|Timer|seconds\(3) & !\MenuModule|Timer|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(3),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~5\,
	combout => \MenuModule|Timer|Add0~6_combout\,
	cout => \MenuModule|Timer|Add0~7\);

-- Location: LCCOMB_X98_Y25_N28
\MenuModule|Timer|seconds[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[3]~6_combout\ = (\MenuModule|Timer|process_0~0_combout\ & ((\MenuModule|Prog|pState.P1~q\) # ((\MenuModule|Menu|pState.DELAY~q\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (((\MenuModule|Timer|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P1~q\,
	datab => \MenuModule|Timer|Add0~6_combout\,
	datac => \MenuModule|Timer|process_0~0_combout\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Timer|seconds[3]~6_combout\);

-- Location: LCCOMB_X98_Y25_N12
\MenuModule|Timer|seconds[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[3]~7_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(3))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Timer|seconds[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds[3]~1_combout\,
	datac => \MenuModule|Timer|seconds\(3),
	datad => \MenuModule|Timer|seconds[3]~6_combout\,
	combout => \MenuModule|Timer|seconds[3]~7_combout\);

-- Location: FF_X98_Y25_N13
\MenuModule|Timer|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(3));

-- Location: LCCOMB_X96_Y25_N8
\MenuModule|Timer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~8_combout\ = (\MenuModule|Timer|seconds\(4) & ((GND) # (!\MenuModule|Timer|Add0~7\))) # (!\MenuModule|Timer|seconds\(4) & (\MenuModule|Timer|Add0~7\ $ (GND)))
-- \MenuModule|Timer|Add0~9\ = CARRY((\MenuModule|Timer|seconds\(4)) # (!\MenuModule|Timer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(4),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~7\,
	combout => \MenuModule|Timer|Add0~8_combout\,
	cout => \MenuModule|Timer|Add0~9\);

-- Location: LCCOMB_X98_Y25_N18
\MenuModule|Timer|seconds[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[4]~4_combout\ = (\MenuModule|Timer|process_0~0_combout\ & (((\MenuModule|Menu|pState.DELAY~q\) # (\Dec4|Equal1~0_combout\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (\MenuModule|Timer|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~8_combout\,
	datab => \MenuModule|Menu|pState.DELAY~q\,
	datac => \MenuModule|Timer|process_0~0_combout\,
	datad => \Dec4|Equal1~0_combout\,
	combout => \MenuModule|Timer|seconds[4]~4_combout\);

-- Location: LCCOMB_X98_Y25_N26
\MenuModule|Timer|seconds[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[4]~5_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(4))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Timer|seconds[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds[3]~1_combout\,
	datac => \MenuModule|Timer|seconds\(4),
	datad => \MenuModule|Timer|seconds[4]~4_combout\,
	combout => \MenuModule|Timer|seconds[4]~5_combout\);

-- Location: FF_X98_Y25_N27
\MenuModule|Timer|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(4));

-- Location: LCCOMB_X96_Y25_N10
\MenuModule|Timer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~10_combout\ = (\MenuModule|Timer|seconds\(5) & (\MenuModule|Timer|Add0~9\ & VCC)) # (!\MenuModule|Timer|seconds\(5) & (!\MenuModule|Timer|Add0~9\))
-- \MenuModule|Timer|Add0~11\ = CARRY((!\MenuModule|Timer|seconds\(5) & !\MenuModule|Timer|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(5),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~9\,
	combout => \MenuModule|Timer|Add0~10_combout\,
	cout => \MenuModule|Timer|Add0~11\);

-- Location: LCCOMB_X97_Y25_N2
\MenuModule|Timer|seconds[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[5]~2_combout\ = (\MenuModule|Timer|process_0~0_combout\ & (((\MenuModule|Menu|pState.DELAY~q\) # (\Dec4|Equal1~1_combout\)))) # (!\MenuModule|Timer|process_0~0_combout\ & (\MenuModule|Timer|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~10_combout\,
	datab => \MenuModule|Menu|pState.DELAY~q\,
	datac => \Dec4|Equal1~1_combout\,
	datad => \MenuModule|Timer|process_0~0_combout\,
	combout => \MenuModule|Timer|seconds[5]~2_combout\);

-- Location: LCCOMB_X97_Y25_N4
\MenuModule|Timer|seconds[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[5]~3_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(5))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Timer|seconds[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~1_combout\,
	datab => \Debouncer0|s_pulsedOut~q\,
	datac => \MenuModule|Timer|seconds\(5),
	datad => \MenuModule|Timer|seconds[5]~2_combout\,
	combout => \MenuModule|Timer|seconds[5]~3_combout\);

-- Location: FF_X97_Y25_N5
\MenuModule|Timer|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(5));

-- Location: LCCOMB_X96_Y25_N12
\MenuModule|Timer|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~12_combout\ = (\MenuModule|Timer|seconds\(6) & ((GND) # (!\MenuModule|Timer|Add0~11\))) # (!\MenuModule|Timer|seconds\(6) & (\MenuModule|Timer|Add0~11\ $ (GND)))
-- \MenuModule|Timer|Add0~13\ = CARRY((\MenuModule|Timer|seconds\(6)) # (!\MenuModule|Timer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(6),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~11\,
	combout => \MenuModule|Timer|Add0~12_combout\,
	cout => \MenuModule|Timer|Add0~13\);

-- Location: LCCOMB_X97_Y25_N10
\MenuModule|Timer|seconds[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[6]~15_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(6)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~12_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(6),
	datad => \MenuModule|Timer|seconds~14_combout\,
	combout => \MenuModule|Timer|seconds[6]~15_combout\);

-- Location: FF_X97_Y25_N11
\MenuModule|Timer|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(6));

-- Location: LCCOMB_X96_Y25_N14
\MenuModule|Timer|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~14_combout\ = (\MenuModule|Timer|seconds\(7) & (\MenuModule|Timer|Add0~13\ & VCC)) # (!\MenuModule|Timer|seconds\(7) & (!\MenuModule|Timer|Add0~13\))
-- \MenuModule|Timer|Add0~15\ = CARRY((!\MenuModule|Timer|seconds\(7) & !\MenuModule|Timer|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(7),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~13\,
	combout => \MenuModule|Timer|Add0~14_combout\,
	cout => \MenuModule|Timer|Add0~15\);

-- Location: LCCOMB_X97_Y25_N12
\MenuModule|Timer|seconds[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[7]~16_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(7)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(7),
	datad => \MenuModule|Timer|seconds~14_combout\,
	combout => \MenuModule|Timer|seconds[7]~16_combout\);

-- Location: FF_X97_Y25_N13
\MenuModule|Timer|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(7));

-- Location: LCCOMB_X96_Y25_N16
\MenuModule|Timer|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~16_combout\ = (\MenuModule|Timer|seconds\(8) & ((GND) # (!\MenuModule|Timer|Add0~15\))) # (!\MenuModule|Timer|seconds\(8) & (\MenuModule|Timer|Add0~15\ $ (GND)))
-- \MenuModule|Timer|Add0~17\ = CARRY((\MenuModule|Timer|seconds\(8)) # (!\MenuModule|Timer|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(8),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~15\,
	combout => \MenuModule|Timer|Add0~16_combout\,
	cout => \MenuModule|Timer|Add0~17\);

-- Location: LCCOMB_X97_Y25_N18
\MenuModule|Timer|seconds[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[8]~17_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(8)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~16_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(8),
	datad => \MenuModule|Timer|seconds~14_combout\,
	combout => \MenuModule|Timer|seconds[8]~17_combout\);

-- Location: FF_X97_Y25_N19
\MenuModule|Timer|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(8));

-- Location: LCCOMB_X96_Y25_N18
\MenuModule|Timer|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~18_combout\ = (\MenuModule|Timer|seconds\(9) & (\MenuModule|Timer|Add0~17\ & VCC)) # (!\MenuModule|Timer|seconds\(9) & (!\MenuModule|Timer|Add0~17\))
-- \MenuModule|Timer|Add0~19\ = CARRY((!\MenuModule|Timer|seconds\(9) & !\MenuModule|Timer|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(9),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~17\,
	combout => \MenuModule|Timer|Add0~18_combout\,
	cout => \MenuModule|Timer|Add0~19\);

-- Location: LCCOMB_X97_Y25_N14
\MenuModule|Timer|seconds[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[9]~18_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(9))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(9),
	datad => \MenuModule|Timer|Add0~18_combout\,
	combout => \MenuModule|Timer|seconds[9]~18_combout\);

-- Location: FF_X97_Y25_N15
\MenuModule|Timer|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(9));

-- Location: LCCOMB_X96_Y25_N20
\MenuModule|Timer|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~20_combout\ = (\MenuModule|Timer|seconds\(10) & ((GND) # (!\MenuModule|Timer|Add0~19\))) # (!\MenuModule|Timer|seconds\(10) & (\MenuModule|Timer|Add0~19\ $ (GND)))
-- \MenuModule|Timer|Add0~21\ = CARRY((\MenuModule|Timer|seconds\(10)) # (!\MenuModule|Timer|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(10),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~19\,
	combout => \MenuModule|Timer|Add0~20_combout\,
	cout => \MenuModule|Timer|Add0~21\);

-- Location: LCCOMB_X97_Y25_N28
\MenuModule|Timer|seconds[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[10]~19_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(10))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(10),
	datad => \MenuModule|Timer|Add0~20_combout\,
	combout => \MenuModule|Timer|seconds[10]~19_combout\);

-- Location: FF_X97_Y25_N29
\MenuModule|Timer|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(10));

-- Location: LCCOMB_X96_Y25_N22
\MenuModule|Timer|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~22_combout\ = (\MenuModule|Timer|seconds\(11) & (\MenuModule|Timer|Add0~21\ & VCC)) # (!\MenuModule|Timer|seconds\(11) & (!\MenuModule|Timer|Add0~21\))
-- \MenuModule|Timer|Add0~23\ = CARRY((!\MenuModule|Timer|seconds\(11) & !\MenuModule|Timer|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(11),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~21\,
	combout => \MenuModule|Timer|Add0~22_combout\,
	cout => \MenuModule|Timer|Add0~23\);

-- Location: LCCOMB_X97_Y25_N22
\MenuModule|Timer|seconds[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[11]~20_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(11))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(11),
	datad => \MenuModule|Timer|Add0~22_combout\,
	combout => \MenuModule|Timer|seconds[11]~20_combout\);

-- Location: FF_X97_Y25_N23
\MenuModule|Timer|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(11));

-- Location: LCCOMB_X96_Y25_N24
\MenuModule|Timer|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~24_combout\ = (\MenuModule|Timer|seconds\(12) & ((GND) # (!\MenuModule|Timer|Add0~23\))) # (!\MenuModule|Timer|seconds\(12) & (\MenuModule|Timer|Add0~23\ $ (GND)))
-- \MenuModule|Timer|Add0~25\ = CARRY((\MenuModule|Timer|seconds\(12)) # (!\MenuModule|Timer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(12),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~23\,
	combout => \MenuModule|Timer|Add0~24_combout\,
	cout => \MenuModule|Timer|Add0~25\);

-- Location: LCCOMB_X97_Y25_N24
\MenuModule|Timer|seconds[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[12]~21_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(12))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(12),
	datad => \MenuModule|Timer|Add0~24_combout\,
	combout => \MenuModule|Timer|seconds[12]~21_combout\);

-- Location: FF_X97_Y25_N25
\MenuModule|Timer|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(12));

-- Location: LCCOMB_X96_Y25_N26
\MenuModule|Timer|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~26_combout\ = (\MenuModule|Timer|seconds\(13) & (\MenuModule|Timer|Add0~25\ & VCC)) # (!\MenuModule|Timer|seconds\(13) & (!\MenuModule|Timer|Add0~25\))
-- \MenuModule|Timer|Add0~27\ = CARRY((!\MenuModule|Timer|seconds\(13) & !\MenuModule|Timer|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(13),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~25\,
	combout => \MenuModule|Timer|Add0~26_combout\,
	cout => \MenuModule|Timer|Add0~27\);

-- Location: LCCOMB_X97_Y25_N8
\MenuModule|Timer|seconds[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[13]~22_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(13)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~26_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(13),
	datad => \MenuModule|Timer|seconds~14_combout\,
	combout => \MenuModule|Timer|seconds[13]~22_combout\);

-- Location: FF_X97_Y25_N9
\MenuModule|Timer|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(13));

-- Location: LCCOMB_X96_Y25_N28
\MenuModule|Timer|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~28_combout\ = (\MenuModule|Timer|seconds\(14) & ((GND) # (!\MenuModule|Timer|Add0~27\))) # (!\MenuModule|Timer|seconds\(14) & (\MenuModule|Timer|Add0~27\ $ (GND)))
-- \MenuModule|Timer|Add0~29\ = CARRY((\MenuModule|Timer|seconds\(14)) # (!\MenuModule|Timer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(14),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~27\,
	combout => \MenuModule|Timer|Add0~28_combout\,
	cout => \MenuModule|Timer|Add0~29\);

-- Location: LCCOMB_X97_Y25_N6
\MenuModule|Timer|seconds[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[14]~23_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(14))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(14),
	datad => \MenuModule|Timer|Add0~28_combout\,
	combout => \MenuModule|Timer|seconds[14]~23_combout\);

-- Location: FF_X97_Y25_N7
\MenuModule|Timer|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[14]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(14));

-- Location: LCCOMB_X96_Y25_N30
\MenuModule|Timer|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~30_combout\ = (\MenuModule|Timer|seconds\(15) & (\MenuModule|Timer|Add0~29\ & VCC)) # (!\MenuModule|Timer|seconds\(15) & (!\MenuModule|Timer|Add0~29\))
-- \MenuModule|Timer|Add0~31\ = CARRY((!\MenuModule|Timer|seconds\(15) & !\MenuModule|Timer|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(15),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~29\,
	combout => \MenuModule|Timer|Add0~30_combout\,
	cout => \MenuModule|Timer|Add0~31\);

-- Location: LCCOMB_X97_Y25_N16
\MenuModule|Timer|seconds[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[15]~24_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(15))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(15),
	datad => \MenuModule|Timer|Add0~30_combout\,
	combout => \MenuModule|Timer|seconds[15]~24_combout\);

-- Location: FF_X97_Y25_N17
\MenuModule|Timer|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(15));

-- Location: LCCOMB_X96_Y24_N0
\MenuModule|Timer|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~32_combout\ = (\MenuModule|Timer|seconds\(16) & ((GND) # (!\MenuModule|Timer|Add0~31\))) # (!\MenuModule|Timer|seconds\(16) & (\MenuModule|Timer|Add0~31\ $ (GND)))
-- \MenuModule|Timer|Add0~33\ = CARRY((\MenuModule|Timer|seconds\(16)) # (!\MenuModule|Timer|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(16),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~31\,
	combout => \MenuModule|Timer|Add0~32_combout\,
	cout => \MenuModule|Timer|Add0~33\);

-- Location: LCCOMB_X97_Y25_N26
\MenuModule|Timer|seconds[16]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[16]~25_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(16))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds~14_combout\,
	datab => \MenuModule|Timer|seconds[3]~0_combout\,
	datac => \MenuModule|Timer|seconds\(16),
	datad => \MenuModule|Timer|Add0~32_combout\,
	combout => \MenuModule|Timer|seconds[16]~25_combout\);

-- Location: FF_X97_Y25_N27
\MenuModule|Timer|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[16]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(16));

-- Location: LCCOMB_X96_Y24_N2
\MenuModule|Timer|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~34_combout\ = (\MenuModule|Timer|seconds\(17) & (\MenuModule|Timer|Add0~33\ & VCC)) # (!\MenuModule|Timer|seconds\(17) & (!\MenuModule|Timer|Add0~33\))
-- \MenuModule|Timer|Add0~35\ = CARRY((!\MenuModule|Timer|seconds\(17) & !\MenuModule|Timer|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(17),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~33\,
	combout => \MenuModule|Timer|Add0~34_combout\,
	cout => \MenuModule|Timer|Add0~35\);

-- Location: LCCOMB_X95_Y24_N4
\MenuModule|Timer|seconds[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[17]~26_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(17))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(17),
	datad => \MenuModule|Timer|Add0~34_combout\,
	combout => \MenuModule|Timer|seconds[17]~26_combout\);

-- Location: FF_X95_Y24_N5
\MenuModule|Timer|seconds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(17));

-- Location: LCCOMB_X96_Y24_N4
\MenuModule|Timer|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~36_combout\ = (\MenuModule|Timer|seconds\(18) & ((GND) # (!\MenuModule|Timer|Add0~35\))) # (!\MenuModule|Timer|seconds\(18) & (\MenuModule|Timer|Add0~35\ $ (GND)))
-- \MenuModule|Timer|Add0~37\ = CARRY((\MenuModule|Timer|seconds\(18)) # (!\MenuModule|Timer|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(18),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~35\,
	combout => \MenuModule|Timer|Add0~36_combout\,
	cout => \MenuModule|Timer|Add0~37\);

-- Location: LCCOMB_X95_Y24_N6
\MenuModule|Timer|seconds[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[18]~27_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(18))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(18),
	datad => \MenuModule|Timer|Add0~36_combout\,
	combout => \MenuModule|Timer|seconds[18]~27_combout\);

-- Location: FF_X95_Y24_N7
\MenuModule|Timer|seconds[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[18]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(18));

-- Location: LCCOMB_X96_Y24_N6
\MenuModule|Timer|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~38_combout\ = (\MenuModule|Timer|seconds\(19) & (\MenuModule|Timer|Add0~37\ & VCC)) # (!\MenuModule|Timer|seconds\(19) & (!\MenuModule|Timer|Add0~37\))
-- \MenuModule|Timer|Add0~39\ = CARRY((!\MenuModule|Timer|seconds\(19) & !\MenuModule|Timer|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(19),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~37\,
	combout => \MenuModule|Timer|Add0~38_combout\,
	cout => \MenuModule|Timer|Add0~39\);

-- Location: LCCOMB_X97_Y24_N18
\MenuModule|Timer|seconds[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[19]~28_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(19)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~38_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(19),
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[19]~28_combout\);

-- Location: FF_X97_Y24_N19
\MenuModule|Timer|seconds[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[19]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(19));

-- Location: LCCOMB_X96_Y24_N8
\MenuModule|Timer|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~40_combout\ = (\MenuModule|Timer|seconds\(20) & ((GND) # (!\MenuModule|Timer|Add0~39\))) # (!\MenuModule|Timer|seconds\(20) & (\MenuModule|Timer|Add0~39\ $ (GND)))
-- \MenuModule|Timer|Add0~41\ = CARRY((\MenuModule|Timer|seconds\(20)) # (!\MenuModule|Timer|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(20),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~39\,
	combout => \MenuModule|Timer|Add0~40_combout\,
	cout => \MenuModule|Timer|Add0~41\);

-- Location: LCCOMB_X97_Y24_N4
\MenuModule|Timer|seconds[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[20]~29_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(20)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~40_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(20),
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[20]~29_combout\);

-- Location: FF_X97_Y24_N5
\MenuModule|Timer|seconds[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[20]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(20));

-- Location: LCCOMB_X97_Y24_N30
\MenuModule|Timer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~5_combout\ = (!\MenuModule|Timer|seconds\(17) & (!\MenuModule|Timer|seconds\(20) & (!\MenuModule|Timer|seconds\(18) & !\MenuModule|Timer|seconds\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(17),
	datab => \MenuModule|Timer|seconds\(20),
	datac => \MenuModule|Timer|seconds\(18),
	datad => \MenuModule|Timer|seconds\(19),
	combout => \MenuModule|Timer|Equal0~5_combout\);

-- Location: LCCOMB_X96_Y24_N10
\MenuModule|Timer|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~42_combout\ = (\MenuModule|Timer|seconds\(21) & (\MenuModule|Timer|Add0~41\ & VCC)) # (!\MenuModule|Timer|seconds\(21) & (!\MenuModule|Timer|Add0~41\))
-- \MenuModule|Timer|Add0~43\ = CARRY((!\MenuModule|Timer|seconds\(21) & !\MenuModule|Timer|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(21),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~41\,
	combout => \MenuModule|Timer|Add0~42_combout\,
	cout => \MenuModule|Timer|Add0~43\);

-- Location: LCCOMB_X95_Y24_N16
\MenuModule|Timer|seconds[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[21]~30_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(21)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|Add0~42_combout\,
	datac => \MenuModule|Timer|seconds\(21),
	datad => \MenuModule|Timer|seconds~14_combout\,
	combout => \MenuModule|Timer|seconds[21]~30_combout\);

-- Location: FF_X95_Y24_N17
\MenuModule|Timer|seconds[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(21));

-- Location: LCCOMB_X96_Y24_N12
\MenuModule|Timer|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~44_combout\ = (\MenuModule|Timer|seconds\(22) & ((GND) # (!\MenuModule|Timer|Add0~43\))) # (!\MenuModule|Timer|seconds\(22) & (\MenuModule|Timer|Add0~43\ $ (GND)))
-- \MenuModule|Timer|Add0~45\ = CARRY((\MenuModule|Timer|seconds\(22)) # (!\MenuModule|Timer|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(22),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~43\,
	combout => \MenuModule|Timer|Add0~44_combout\,
	cout => \MenuModule|Timer|Add0~45\);

-- Location: LCCOMB_X97_Y24_N28
\MenuModule|Timer|seconds[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[22]~31_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(22)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~44_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(22),
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[22]~31_combout\);

-- Location: FF_X97_Y24_N29
\MenuModule|Timer|seconds[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[22]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(22));

-- Location: LCCOMB_X96_Y24_N14
\MenuModule|Timer|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~46_combout\ = (\MenuModule|Timer|seconds\(23) & (\MenuModule|Timer|Add0~45\ & VCC)) # (!\MenuModule|Timer|seconds\(23) & (!\MenuModule|Timer|Add0~45\))
-- \MenuModule|Timer|Add0~47\ = CARRY((!\MenuModule|Timer|seconds\(23) & !\MenuModule|Timer|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(23),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~45\,
	combout => \MenuModule|Timer|Add0~46_combout\,
	cout => \MenuModule|Timer|Add0~47\);

-- Location: LCCOMB_X97_Y24_N6
\MenuModule|Timer|seconds[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[23]~32_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(23)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~46_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(23),
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[23]~32_combout\);

-- Location: FF_X97_Y24_N7
\MenuModule|Timer|seconds[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[23]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(23));

-- Location: LCCOMB_X96_Y24_N16
\MenuModule|Timer|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~48_combout\ = (\MenuModule|Timer|seconds\(24) & ((GND) # (!\MenuModule|Timer|Add0~47\))) # (!\MenuModule|Timer|seconds\(24) & (\MenuModule|Timer|Add0~47\ $ (GND)))
-- \MenuModule|Timer|Add0~49\ = CARRY((\MenuModule|Timer|seconds\(24)) # (!\MenuModule|Timer|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(24),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~47\,
	combout => \MenuModule|Timer|Add0~48_combout\,
	cout => \MenuModule|Timer|Add0~49\);

-- Location: LCCOMB_X97_Y24_N16
\MenuModule|Timer|seconds[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[24]~33_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|seconds\(24)))) # (!\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Add0~48_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(24),
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[24]~33_combout\);

-- Location: FF_X97_Y24_N17
\MenuModule|Timer|seconds[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(24));

-- Location: LCCOMB_X97_Y24_N14
\MenuModule|Timer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~6_combout\ = (!\MenuModule|Timer|seconds\(23) & (!\MenuModule|Timer|seconds\(24) & (!\MenuModule|Timer|seconds\(21) & !\MenuModule|Timer|seconds\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(23),
	datab => \MenuModule|Timer|seconds\(24),
	datac => \MenuModule|Timer|seconds\(21),
	datad => \MenuModule|Timer|seconds\(22),
	combout => \MenuModule|Timer|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y25_N30
\MenuModule|Timer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~2_combout\ = (!\MenuModule|Timer|seconds\(11) & (!\MenuModule|Timer|seconds\(12) & (!\MenuModule|Timer|seconds\(9) & !\MenuModule|Timer|seconds\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(11),
	datab => \MenuModule|Timer|seconds\(12),
	datac => \MenuModule|Timer|seconds\(9),
	datad => \MenuModule|Timer|seconds\(10),
	combout => \MenuModule|Timer|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y25_N20
\MenuModule|Timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~0_combout\ = (!\MenuModule|Timer|seconds\(4) & (!\MenuModule|Timer|seconds\(1) & (!\MenuModule|Timer|seconds\(2) & !\MenuModule|Timer|seconds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(4),
	datab => \MenuModule|Timer|seconds\(1),
	datac => \MenuModule|Timer|seconds\(2),
	datad => \MenuModule|Timer|seconds\(3),
	combout => \MenuModule|Timer|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y25_N0
\MenuModule|Timer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~3_combout\ = (!\MenuModule|Timer|seconds\(16) & (!\MenuModule|Timer|seconds\(15) & (!\MenuModule|Timer|seconds\(13) & !\MenuModule|Timer|seconds\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(16),
	datab => \MenuModule|Timer|seconds\(15),
	datac => \MenuModule|Timer|seconds\(13),
	datad => \MenuModule|Timer|seconds\(14),
	combout => \MenuModule|Timer|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y25_N20
\MenuModule|Timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~1_combout\ = (!\MenuModule|Timer|seconds\(7) & (!\MenuModule|Timer|seconds\(8) & (!\MenuModule|Timer|seconds\(5) & !\MenuModule|Timer|seconds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(7),
	datab => \MenuModule|Timer|seconds\(8),
	datac => \MenuModule|Timer|seconds\(5),
	datad => \MenuModule|Timer|seconds\(6),
	combout => \MenuModule|Timer|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y24_N8
\MenuModule|Timer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~4_combout\ = (\MenuModule|Timer|Equal0~2_combout\ & (\MenuModule|Timer|Equal0~0_combout\ & (\MenuModule|Timer|Equal0~3_combout\ & \MenuModule|Timer|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Equal0~2_combout\,
	datab => \MenuModule|Timer|Equal0~0_combout\,
	datac => \MenuModule|Timer|Equal0~3_combout\,
	datad => \MenuModule|Timer|Equal0~1_combout\,
	combout => \MenuModule|Timer|Equal0~4_combout\);

-- Location: LCCOMB_X96_Y24_N18
\MenuModule|Timer|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~50_combout\ = (\MenuModule|Timer|seconds\(25) & (\MenuModule|Timer|Add0~49\ & VCC)) # (!\MenuModule|Timer|seconds\(25) & (!\MenuModule|Timer|Add0~49\))
-- \MenuModule|Timer|Add0~51\ = CARRY((!\MenuModule|Timer|seconds\(25) & !\MenuModule|Timer|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(25),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~49\,
	combout => \MenuModule|Timer|Add0~50_combout\,
	cout => \MenuModule|Timer|Add0~51\);

-- Location: LCCOMB_X97_Y24_N12
\MenuModule|Timer|seconds[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[25]~34_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(25))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(25),
	datad => \MenuModule|Timer|Add0~50_combout\,
	combout => \MenuModule|Timer|seconds[25]~34_combout\);

-- Location: FF_X97_Y24_N13
\MenuModule|Timer|seconds[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(25));

-- Location: LCCOMB_X96_Y24_N20
\MenuModule|Timer|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~52_combout\ = (\MenuModule|Timer|seconds\(26) & ((GND) # (!\MenuModule|Timer|Add0~51\))) # (!\MenuModule|Timer|seconds\(26) & (\MenuModule|Timer|Add0~51\ $ (GND)))
-- \MenuModule|Timer|Add0~53\ = CARRY((\MenuModule|Timer|seconds\(26)) # (!\MenuModule|Timer|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(26),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~51\,
	combout => \MenuModule|Timer|Add0~52_combout\,
	cout => \MenuModule|Timer|Add0~53\);

-- Location: LCCOMB_X95_Y24_N10
\MenuModule|Timer|seconds[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[26]~35_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(26))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(26),
	datad => \MenuModule|Timer|Add0~52_combout\,
	combout => \MenuModule|Timer|seconds[26]~35_combout\);

-- Location: FF_X95_Y24_N11
\MenuModule|Timer|seconds[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(26));

-- Location: LCCOMB_X96_Y24_N22
\MenuModule|Timer|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~54_combout\ = (\MenuModule|Timer|seconds\(27) & (\MenuModule|Timer|Add0~53\ & VCC)) # (!\MenuModule|Timer|seconds\(27) & (!\MenuModule|Timer|Add0~53\))
-- \MenuModule|Timer|Add0~55\ = CARRY((!\MenuModule|Timer|seconds\(27) & !\MenuModule|Timer|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(27),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~53\,
	combout => \MenuModule|Timer|Add0~54_combout\,
	cout => \MenuModule|Timer|Add0~55\);

-- Location: LCCOMB_X97_Y24_N22
\MenuModule|Timer|seconds[27]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[27]~36_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(27))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(27),
	datad => \MenuModule|Timer|Add0~54_combout\,
	combout => \MenuModule|Timer|seconds[27]~36_combout\);

-- Location: FF_X97_Y24_N23
\MenuModule|Timer|seconds[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[27]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(27));

-- Location: LCCOMB_X96_Y24_N24
\MenuModule|Timer|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~56_combout\ = (\MenuModule|Timer|seconds\(28) & ((GND) # (!\MenuModule|Timer|Add0~55\))) # (!\MenuModule|Timer|seconds\(28) & (\MenuModule|Timer|Add0~55\ $ (GND)))
-- \MenuModule|Timer|Add0~57\ = CARRY((\MenuModule|Timer|seconds\(28)) # (!\MenuModule|Timer|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(28),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~55\,
	combout => \MenuModule|Timer|Add0~56_combout\,
	cout => \MenuModule|Timer|Add0~57\);

-- Location: LCCOMB_X97_Y24_N0
\MenuModule|Timer|seconds[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[28]~37_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(28))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(28),
	datad => \MenuModule|Timer|Add0~56_combout\,
	combout => \MenuModule|Timer|seconds[28]~37_combout\);

-- Location: FF_X97_Y24_N1
\MenuModule|Timer|seconds[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[28]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(28));

-- Location: LCCOMB_X96_Y24_N26
\MenuModule|Timer|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~58_combout\ = (\MenuModule|Timer|seconds\(29) & (\MenuModule|Timer|Add0~57\ & VCC)) # (!\MenuModule|Timer|seconds\(29) & (!\MenuModule|Timer|Add0~57\))
-- \MenuModule|Timer|Add0~59\ = CARRY((!\MenuModule|Timer|seconds\(29) & !\MenuModule|Timer|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(29),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~57\,
	combout => \MenuModule|Timer|Add0~58_combout\,
	cout => \MenuModule|Timer|Add0~59\);

-- Location: LCCOMB_X95_Y24_N12
\MenuModule|Timer|seconds[29]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[29]~38_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(29))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(29),
	datad => \MenuModule|Timer|Add0~58_combout\,
	combout => \MenuModule|Timer|seconds[29]~38_combout\);

-- Location: FF_X95_Y24_N13
\MenuModule|Timer|seconds[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[29]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(29));

-- Location: LCCOMB_X96_Y24_N28
\MenuModule|Timer|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~60_combout\ = (\MenuModule|Timer|seconds\(30) & ((GND) # (!\MenuModule|Timer|Add0~59\))) # (!\MenuModule|Timer|seconds\(30) & (\MenuModule|Timer|Add0~59\ $ (GND)))
-- \MenuModule|Timer|Add0~61\ = CARRY((\MenuModule|Timer|seconds\(30)) # (!\MenuModule|Timer|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(30),
	datad => VCC,
	cin => \MenuModule|Timer|Add0~59\,
	combout => \MenuModule|Timer|Add0~60_combout\,
	cout => \MenuModule|Timer|Add0~61\);

-- Location: LCCOMB_X95_Y24_N26
\MenuModule|Timer|seconds[30]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[30]~39_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(30))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(30),
	datad => \MenuModule|Timer|Add0~60_combout\,
	combout => \MenuModule|Timer|seconds[30]~39_combout\);

-- Location: FF_X95_Y24_N27
\MenuModule|Timer|seconds[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[30]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(30));

-- Location: LCCOMB_X96_Y24_N30
\MenuModule|Timer|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Add0~62_combout\ = \MenuModule|Timer|Add0~61\ $ (!\MenuModule|Timer|seconds\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MenuModule|Timer|seconds\(31),
	cin => \MenuModule|Timer|Add0~61\,
	combout => \MenuModule|Timer|Add0~62_combout\);

-- Location: LCCOMB_X95_Y24_N28
\MenuModule|Timer|seconds[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[31]~40_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & ((\MenuModule|Timer|seconds~14_combout\ & (\MenuModule|Timer|seconds\(31))) # (!\MenuModule|Timer|seconds~14_combout\ & ((\MenuModule|Timer|Add0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds[3]~0_combout\,
	datab => \MenuModule|Timer|seconds~14_combout\,
	datac => \MenuModule|Timer|seconds\(31),
	datad => \MenuModule|Timer|Add0~62_combout\,
	combout => \MenuModule|Timer|seconds[31]~40_combout\);

-- Location: FF_X95_Y24_N29
\MenuModule|Timer|seconds[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(31));

-- Location: LCCOMB_X97_Y24_N10
\MenuModule|Timer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~7_combout\ = (!\MenuModule|Timer|seconds\(25) & (!\MenuModule|Timer|seconds\(28) & (!\MenuModule|Timer|seconds\(27) & !\MenuModule|Timer|seconds\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(25),
	datab => \MenuModule|Timer|seconds\(28),
	datac => \MenuModule|Timer|seconds\(27),
	datad => \MenuModule|Timer|seconds\(26),
	combout => \MenuModule|Timer|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y24_N24
\MenuModule|Timer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~8_combout\ = (!\MenuModule|Timer|seconds\(31) & (!\MenuModule|Timer|seconds\(30) & (!\MenuModule|Timer|seconds\(29) & \MenuModule|Timer|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(31),
	datab => \MenuModule|Timer|seconds\(30),
	datac => \MenuModule|Timer|seconds\(29),
	datad => \MenuModule|Timer|Equal0~7_combout\,
	combout => \MenuModule|Timer|Equal0~8_combout\);

-- Location: LCCOMB_X97_Y24_N2
\MenuModule|Timer|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|Equal0~9_combout\ = (\MenuModule|Timer|Equal0~5_combout\ & (\MenuModule|Timer|Equal0~6_combout\ & (\MenuModule|Timer|Equal0~4_combout\ & \MenuModule|Timer|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|Equal0~5_combout\,
	datab => \MenuModule|Timer|Equal0~6_combout\,
	datac => \MenuModule|Timer|Equal0~4_combout\,
	datad => \MenuModule|Timer|Equal0~8_combout\,
	combout => \MenuModule|Timer|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y24_N20
\MenuModule|Timer|seconds[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[3]~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (!\MenuModule|Menu|force_t~q\ & ((\MenuModule|Timer|seconds\(0)) # (!\MenuModule|Timer|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds\(0),
	datac => \MenuModule|Menu|force_t~q\,
	datad => \MenuModule|Timer|Equal0~9_combout\,
	combout => \MenuModule|Timer|seconds[3]~0_combout\);

-- Location: LCCOMB_X97_Y24_N26
\MenuModule|Timer|periods[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[2]~99_combout\ = (\MenuModule|Menu|pState.WASH~q\) # ((\MenuModule|Menu|pState.DELAY~q\) # (!\MenuModule|Timer|seconds[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|periods[2]~99_combout\);

-- Location: FF_X99_Y25_N3
\MenuModule|Timer|periods[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[1]~37_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(1));

-- Location: LCCOMB_X99_Y25_N4
\MenuModule|Timer|periods[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[2]~39_combout\ = (\MenuModule|Timer|periods\(2) & (\MenuModule|Timer|periods[1]~38\ $ (GND))) # (!\MenuModule|Timer|periods\(2) & (!\MenuModule|Timer|periods[1]~38\ & VCC))
-- \MenuModule|Timer|periods[2]~40\ = CARRY((\MenuModule|Timer|periods\(2) & !\MenuModule|Timer|periods[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(2),
	datad => VCC,
	cin => \MenuModule|Timer|periods[1]~38\,
	combout => \MenuModule|Timer|periods[2]~39_combout\,
	cout => \MenuModule|Timer|periods[2]~40\);

-- Location: FF_X99_Y25_N5
\MenuModule|Timer|periods[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[2]~39_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(2));

-- Location: LCCOMB_X99_Y25_N6
\MenuModule|Timer|periods[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[3]~41_combout\ = (\MenuModule|Timer|periods\(3) & (!\MenuModule|Timer|periods[2]~40\)) # (!\MenuModule|Timer|periods\(3) & ((\MenuModule|Timer|periods[2]~40\) # (GND)))
-- \MenuModule|Timer|periods[3]~42\ = CARRY((!\MenuModule|Timer|periods[2]~40\) # (!\MenuModule|Timer|periods\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(3),
	datad => VCC,
	cin => \MenuModule|Timer|periods[2]~40\,
	combout => \MenuModule|Timer|periods[3]~41_combout\,
	cout => \MenuModule|Timer|periods[3]~42\);

-- Location: FF_X99_Y25_N7
\MenuModule|Timer|periods[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[3]~41_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(3));

-- Location: LCCOMB_X99_Y25_N8
\MenuModule|Timer|periods[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[4]~43_combout\ = (\MenuModule|Timer|periods\(4) & (\MenuModule|Timer|periods[3]~42\ $ (GND))) # (!\MenuModule|Timer|periods\(4) & (!\MenuModule|Timer|periods[3]~42\ & VCC))
-- \MenuModule|Timer|periods[4]~44\ = CARRY((\MenuModule|Timer|periods\(4) & !\MenuModule|Timer|periods[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(4),
	datad => VCC,
	cin => \MenuModule|Timer|periods[3]~42\,
	combout => \MenuModule|Timer|periods[4]~43_combout\,
	cout => \MenuModule|Timer|periods[4]~44\);

-- Location: FF_X99_Y25_N9
\MenuModule|Timer|periods[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[4]~43_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(4));

-- Location: LCCOMB_X99_Y25_N10
\MenuModule|Timer|periods[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[5]~45_combout\ = (\MenuModule|Timer|periods\(5) & (!\MenuModule|Timer|periods[4]~44\)) # (!\MenuModule|Timer|periods\(5) & ((\MenuModule|Timer|periods[4]~44\) # (GND)))
-- \MenuModule|Timer|periods[5]~46\ = CARRY((!\MenuModule|Timer|periods[4]~44\) # (!\MenuModule|Timer|periods\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(5),
	datad => VCC,
	cin => \MenuModule|Timer|periods[4]~44\,
	combout => \MenuModule|Timer|periods[5]~45_combout\,
	cout => \MenuModule|Timer|periods[5]~46\);

-- Location: FF_X99_Y25_N11
\MenuModule|Timer|periods[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[5]~45_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(5));

-- Location: LCCOMB_X99_Y25_N12
\MenuModule|Timer|periods[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[6]~47_combout\ = (\MenuModule|Timer|periods\(6) & (\MenuModule|Timer|periods[5]~46\ $ (GND))) # (!\MenuModule|Timer|periods\(6) & (!\MenuModule|Timer|periods[5]~46\ & VCC))
-- \MenuModule|Timer|periods[6]~48\ = CARRY((\MenuModule|Timer|periods\(6) & !\MenuModule|Timer|periods[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(6),
	datad => VCC,
	cin => \MenuModule|Timer|periods[5]~46\,
	combout => \MenuModule|Timer|periods[6]~47_combout\,
	cout => \MenuModule|Timer|periods[6]~48\);

-- Location: FF_X99_Y25_N13
\MenuModule|Timer|periods[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[6]~47_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(6));

-- Location: LCCOMB_X99_Y25_N14
\MenuModule|Timer|periods[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[7]~49_combout\ = (\MenuModule|Timer|periods\(7) & (!\MenuModule|Timer|periods[6]~48\)) # (!\MenuModule|Timer|periods\(7) & ((\MenuModule|Timer|periods[6]~48\) # (GND)))
-- \MenuModule|Timer|periods[7]~50\ = CARRY((!\MenuModule|Timer|periods[6]~48\) # (!\MenuModule|Timer|periods\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(7),
	datad => VCC,
	cin => \MenuModule|Timer|periods[6]~48\,
	combout => \MenuModule|Timer|periods[7]~49_combout\,
	cout => \MenuModule|Timer|periods[7]~50\);

-- Location: FF_X99_Y25_N15
\MenuModule|Timer|periods[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[7]~49_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(7));

-- Location: LCCOMB_X99_Y25_N16
\MenuModule|Timer|periods[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[8]~51_combout\ = (\MenuModule|Timer|periods\(8) & (\MenuModule|Timer|periods[7]~50\ $ (GND))) # (!\MenuModule|Timer|periods\(8) & (!\MenuModule|Timer|periods[7]~50\ & VCC))
-- \MenuModule|Timer|periods[8]~52\ = CARRY((\MenuModule|Timer|periods\(8) & !\MenuModule|Timer|periods[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(8),
	datad => VCC,
	cin => \MenuModule|Timer|periods[7]~50\,
	combout => \MenuModule|Timer|periods[8]~51_combout\,
	cout => \MenuModule|Timer|periods[8]~52\);

-- Location: FF_X99_Y25_N17
\MenuModule|Timer|periods[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[8]~51_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(8));

-- Location: LCCOMB_X99_Y25_N18
\MenuModule|Timer|periods[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[9]~53_combout\ = (\MenuModule|Timer|periods\(9) & (!\MenuModule|Timer|periods[8]~52\)) # (!\MenuModule|Timer|periods\(9) & ((\MenuModule|Timer|periods[8]~52\) # (GND)))
-- \MenuModule|Timer|periods[9]~54\ = CARRY((!\MenuModule|Timer|periods[8]~52\) # (!\MenuModule|Timer|periods\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(9),
	datad => VCC,
	cin => \MenuModule|Timer|periods[8]~52\,
	combout => \MenuModule|Timer|periods[9]~53_combout\,
	cout => \MenuModule|Timer|periods[9]~54\);

-- Location: FF_X99_Y25_N19
\MenuModule|Timer|periods[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[9]~53_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(9));

-- Location: LCCOMB_X99_Y25_N20
\MenuModule|Timer|periods[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[10]~55_combout\ = (\MenuModule|Timer|periods\(10) & (\MenuModule|Timer|periods[9]~54\ $ (GND))) # (!\MenuModule|Timer|periods\(10) & (!\MenuModule|Timer|periods[9]~54\ & VCC))
-- \MenuModule|Timer|periods[10]~56\ = CARRY((\MenuModule|Timer|periods\(10) & !\MenuModule|Timer|periods[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(10),
	datad => VCC,
	cin => \MenuModule|Timer|periods[9]~54\,
	combout => \MenuModule|Timer|periods[10]~55_combout\,
	cout => \MenuModule|Timer|periods[10]~56\);

-- Location: FF_X99_Y25_N21
\MenuModule|Timer|periods[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[10]~55_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(10));

-- Location: LCCOMB_X99_Y25_N22
\MenuModule|Timer|periods[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[11]~57_combout\ = (\MenuModule|Timer|periods\(11) & (!\MenuModule|Timer|periods[10]~56\)) # (!\MenuModule|Timer|periods\(11) & ((\MenuModule|Timer|periods[10]~56\) # (GND)))
-- \MenuModule|Timer|periods[11]~58\ = CARRY((!\MenuModule|Timer|periods[10]~56\) # (!\MenuModule|Timer|periods\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(11),
	datad => VCC,
	cin => \MenuModule|Timer|periods[10]~56\,
	combout => \MenuModule|Timer|periods[11]~57_combout\,
	cout => \MenuModule|Timer|periods[11]~58\);

-- Location: FF_X99_Y25_N23
\MenuModule|Timer|periods[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[11]~57_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(11));

-- Location: LCCOMB_X99_Y25_N24
\MenuModule|Timer|periods[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[12]~59_combout\ = (\MenuModule|Timer|periods\(12) & (\MenuModule|Timer|periods[11]~58\ $ (GND))) # (!\MenuModule|Timer|periods\(12) & (!\MenuModule|Timer|periods[11]~58\ & VCC))
-- \MenuModule|Timer|periods[12]~60\ = CARRY((\MenuModule|Timer|periods\(12) & !\MenuModule|Timer|periods[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(12),
	datad => VCC,
	cin => \MenuModule|Timer|periods[11]~58\,
	combout => \MenuModule|Timer|periods[12]~59_combout\,
	cout => \MenuModule|Timer|periods[12]~60\);

-- Location: FF_X99_Y25_N25
\MenuModule|Timer|periods[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[12]~59_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(12));

-- Location: LCCOMB_X99_Y25_N26
\MenuModule|Timer|periods[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[13]~61_combout\ = (\MenuModule|Timer|periods\(13) & (!\MenuModule|Timer|periods[12]~60\)) # (!\MenuModule|Timer|periods\(13) & ((\MenuModule|Timer|periods[12]~60\) # (GND)))
-- \MenuModule|Timer|periods[13]~62\ = CARRY((!\MenuModule|Timer|periods[12]~60\) # (!\MenuModule|Timer|periods\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(13),
	datad => VCC,
	cin => \MenuModule|Timer|periods[12]~60\,
	combout => \MenuModule|Timer|periods[13]~61_combout\,
	cout => \MenuModule|Timer|periods[13]~62\);

-- Location: FF_X99_Y25_N27
\MenuModule|Timer|periods[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[13]~61_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(13));

-- Location: LCCOMB_X99_Y25_N28
\MenuModule|Timer|periods[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[14]~63_combout\ = (\MenuModule|Timer|periods\(14) & (\MenuModule|Timer|periods[13]~62\ $ (GND))) # (!\MenuModule|Timer|periods\(14) & (!\MenuModule|Timer|periods[13]~62\ & VCC))
-- \MenuModule|Timer|periods[14]~64\ = CARRY((\MenuModule|Timer|periods\(14) & !\MenuModule|Timer|periods[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(14),
	datad => VCC,
	cin => \MenuModule|Timer|periods[13]~62\,
	combout => \MenuModule|Timer|periods[14]~63_combout\,
	cout => \MenuModule|Timer|periods[14]~64\);

-- Location: FF_X99_Y25_N29
\MenuModule|Timer|periods[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[14]~63_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(14));

-- Location: LCCOMB_X99_Y25_N30
\MenuModule|Timer|periods[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[15]~65_combout\ = (\MenuModule|Timer|periods\(15) & (!\MenuModule|Timer|periods[14]~64\)) # (!\MenuModule|Timer|periods\(15) & ((\MenuModule|Timer|periods[14]~64\) # (GND)))
-- \MenuModule|Timer|periods[15]~66\ = CARRY((!\MenuModule|Timer|periods[14]~64\) # (!\MenuModule|Timer|periods\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(15),
	datad => VCC,
	cin => \MenuModule|Timer|periods[14]~64\,
	combout => \MenuModule|Timer|periods[15]~65_combout\,
	cout => \MenuModule|Timer|periods[15]~66\);

-- Location: FF_X99_Y25_N31
\MenuModule|Timer|periods[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[15]~65_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(15));

-- Location: LCCOMB_X99_Y24_N0
\MenuModule|Timer|periods[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[16]~67_combout\ = (\MenuModule|Timer|periods\(16) & (\MenuModule|Timer|periods[15]~66\ $ (GND))) # (!\MenuModule|Timer|periods\(16) & (!\MenuModule|Timer|periods[15]~66\ & VCC))
-- \MenuModule|Timer|periods[16]~68\ = CARRY((\MenuModule|Timer|periods\(16) & !\MenuModule|Timer|periods[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(16),
	datad => VCC,
	cin => \MenuModule|Timer|periods[15]~66\,
	combout => \MenuModule|Timer|periods[16]~67_combout\,
	cout => \MenuModule|Timer|periods[16]~68\);

-- Location: FF_X99_Y24_N1
\MenuModule|Timer|periods[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[16]~67_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(16));

-- Location: LCCOMB_X99_Y24_N2
\MenuModule|Timer|periods[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[17]~69_combout\ = (\MenuModule|Timer|periods\(17) & (!\MenuModule|Timer|periods[16]~68\)) # (!\MenuModule|Timer|periods\(17) & ((\MenuModule|Timer|periods[16]~68\) # (GND)))
-- \MenuModule|Timer|periods[17]~70\ = CARRY((!\MenuModule|Timer|periods[16]~68\) # (!\MenuModule|Timer|periods\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(17),
	datad => VCC,
	cin => \MenuModule|Timer|periods[16]~68\,
	combout => \MenuModule|Timer|periods[17]~69_combout\,
	cout => \MenuModule|Timer|periods[17]~70\);

-- Location: FF_X99_Y24_N3
\MenuModule|Timer|periods[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[17]~69_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(17));

-- Location: LCCOMB_X99_Y24_N4
\MenuModule|Timer|periods[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[18]~71_combout\ = (\MenuModule|Timer|periods\(18) & (\MenuModule|Timer|periods[17]~70\ $ (GND))) # (!\MenuModule|Timer|periods\(18) & (!\MenuModule|Timer|periods[17]~70\ & VCC))
-- \MenuModule|Timer|periods[18]~72\ = CARRY((\MenuModule|Timer|periods\(18) & !\MenuModule|Timer|periods[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(18),
	datad => VCC,
	cin => \MenuModule|Timer|periods[17]~70\,
	combout => \MenuModule|Timer|periods[18]~71_combout\,
	cout => \MenuModule|Timer|periods[18]~72\);

-- Location: FF_X99_Y24_N5
\MenuModule|Timer|periods[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[18]~71_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(18));

-- Location: LCCOMB_X99_Y24_N6
\MenuModule|Timer|periods[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[19]~73_combout\ = (\MenuModule|Timer|periods\(19) & (!\MenuModule|Timer|periods[18]~72\)) # (!\MenuModule|Timer|periods\(19) & ((\MenuModule|Timer|periods[18]~72\) # (GND)))
-- \MenuModule|Timer|periods[19]~74\ = CARRY((!\MenuModule|Timer|periods[18]~72\) # (!\MenuModule|Timer|periods\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(19),
	datad => VCC,
	cin => \MenuModule|Timer|periods[18]~72\,
	combout => \MenuModule|Timer|periods[19]~73_combout\,
	cout => \MenuModule|Timer|periods[19]~74\);

-- Location: FF_X99_Y24_N7
\MenuModule|Timer|periods[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[19]~73_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(19));

-- Location: LCCOMB_X99_Y24_N8
\MenuModule|Timer|periods[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[20]~75_combout\ = (\MenuModule|Timer|periods\(20) & (\MenuModule|Timer|periods[19]~74\ $ (GND))) # (!\MenuModule|Timer|periods\(20) & (!\MenuModule|Timer|periods[19]~74\ & VCC))
-- \MenuModule|Timer|periods[20]~76\ = CARRY((\MenuModule|Timer|periods\(20) & !\MenuModule|Timer|periods[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(20),
	datad => VCC,
	cin => \MenuModule|Timer|periods[19]~74\,
	combout => \MenuModule|Timer|periods[20]~75_combout\,
	cout => \MenuModule|Timer|periods[20]~76\);

-- Location: FF_X99_Y24_N9
\MenuModule|Timer|periods[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[20]~75_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(20));

-- Location: LCCOMB_X98_Y24_N22
\MenuModule|Timer|exp_time~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~5_combout\ = (\MenuModule|Timer|periods\(19) & (\MenuModule|Timer|periods\(20) & (!\MenuModule|Timer|periods\(18) & \MenuModule|Timer|periods\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(19),
	datab => \MenuModule|Timer|periods\(20),
	datac => \MenuModule|Timer|periods\(18),
	datad => \MenuModule|Timer|periods\(17),
	combout => \MenuModule|Timer|exp_time~5_combout\);

-- Location: LCCOMB_X99_Y24_N10
\MenuModule|Timer|periods[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[21]~77_combout\ = (\MenuModule|Timer|periods\(21) & (!\MenuModule|Timer|periods[20]~76\)) # (!\MenuModule|Timer|periods\(21) & ((\MenuModule|Timer|periods[20]~76\) # (GND)))
-- \MenuModule|Timer|periods[21]~78\ = CARRY((!\MenuModule|Timer|periods[20]~76\) # (!\MenuModule|Timer|periods\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(21),
	datad => VCC,
	cin => \MenuModule|Timer|periods[20]~76\,
	combout => \MenuModule|Timer|periods[21]~77_combout\,
	cout => \MenuModule|Timer|periods[21]~78\);

-- Location: FF_X99_Y24_N11
\MenuModule|Timer|periods[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[21]~77_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(21));

-- Location: LCCOMB_X99_Y24_N12
\MenuModule|Timer|periods[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[22]~79_combout\ = (\MenuModule|Timer|periods\(22) & (\MenuModule|Timer|periods[21]~78\ $ (GND))) # (!\MenuModule|Timer|periods\(22) & (!\MenuModule|Timer|periods[21]~78\ & VCC))
-- \MenuModule|Timer|periods[22]~80\ = CARRY((\MenuModule|Timer|periods\(22) & !\MenuModule|Timer|periods[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(22),
	datad => VCC,
	cin => \MenuModule|Timer|periods[21]~78\,
	combout => \MenuModule|Timer|periods[22]~79_combout\,
	cout => \MenuModule|Timer|periods[22]~80\);

-- Location: FF_X99_Y24_N13
\MenuModule|Timer|periods[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[22]~79_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(22));

-- Location: LCCOMB_X99_Y24_N14
\MenuModule|Timer|periods[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[23]~81_combout\ = (\MenuModule|Timer|periods\(23) & (!\MenuModule|Timer|periods[22]~80\)) # (!\MenuModule|Timer|periods\(23) & ((\MenuModule|Timer|periods[22]~80\) # (GND)))
-- \MenuModule|Timer|periods[23]~82\ = CARRY((!\MenuModule|Timer|periods[22]~80\) # (!\MenuModule|Timer|periods\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(23),
	datad => VCC,
	cin => \MenuModule|Timer|periods[22]~80\,
	combout => \MenuModule|Timer|periods[23]~81_combout\,
	cout => \MenuModule|Timer|periods[23]~82\);

-- Location: FF_X99_Y24_N15
\MenuModule|Timer|periods[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[23]~81_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(23));

-- Location: LCCOMB_X99_Y24_N16
\MenuModule|Timer|periods[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[24]~83_combout\ = (\MenuModule|Timer|periods\(24) & (\MenuModule|Timer|periods[23]~82\ $ (GND))) # (!\MenuModule|Timer|periods\(24) & (!\MenuModule|Timer|periods[23]~82\ & VCC))
-- \MenuModule|Timer|periods[24]~84\ = CARRY((\MenuModule|Timer|periods\(24) & !\MenuModule|Timer|periods[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(24),
	datad => VCC,
	cin => \MenuModule|Timer|periods[23]~82\,
	combout => \MenuModule|Timer|periods[24]~83_combout\,
	cout => \MenuModule|Timer|periods[24]~84\);

-- Location: FF_X99_Y24_N17
\MenuModule|Timer|periods[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[24]~83_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(24));

-- Location: LCCOMB_X98_Y24_N24
\MenuModule|Timer|exp_time~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~6_combout\ = (!\MenuModule|Timer|periods\(24) & (\MenuModule|Timer|periods\(21) & (\MenuModule|Timer|periods\(23) & \MenuModule|Timer|periods\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(24),
	datab => \MenuModule|Timer|periods\(21),
	datac => \MenuModule|Timer|periods\(23),
	datad => \MenuModule|Timer|periods\(22),
	combout => \MenuModule|Timer|exp_time~6_combout\);

-- Location: LCCOMB_X99_Y24_N18
\MenuModule|Timer|periods[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[25]~85_combout\ = (\MenuModule|Timer|periods\(25) & (!\MenuModule|Timer|periods[24]~84\)) # (!\MenuModule|Timer|periods\(25) & ((\MenuModule|Timer|periods[24]~84\) # (GND)))
-- \MenuModule|Timer|periods[25]~86\ = CARRY((!\MenuModule|Timer|periods[24]~84\) # (!\MenuModule|Timer|periods\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(25),
	datad => VCC,
	cin => \MenuModule|Timer|periods[24]~84\,
	combout => \MenuModule|Timer|periods[25]~85_combout\,
	cout => \MenuModule|Timer|periods[25]~86\);

-- Location: FF_X99_Y24_N19
\MenuModule|Timer|periods[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[25]~85_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(25));

-- Location: LCCOMB_X99_Y24_N20
\MenuModule|Timer|periods[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[26]~87_combout\ = (\MenuModule|Timer|periods\(26) & (\MenuModule|Timer|periods[25]~86\ $ (GND))) # (!\MenuModule|Timer|periods\(26) & (!\MenuModule|Timer|periods[25]~86\ & VCC))
-- \MenuModule|Timer|periods[26]~88\ = CARRY((\MenuModule|Timer|periods\(26) & !\MenuModule|Timer|periods[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(26),
	datad => VCC,
	cin => \MenuModule|Timer|periods[25]~86\,
	combout => \MenuModule|Timer|periods[26]~87_combout\,
	cout => \MenuModule|Timer|periods[26]~88\);

-- Location: FF_X99_Y24_N21
\MenuModule|Timer|periods[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[26]~87_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(26));

-- Location: LCCOMB_X99_Y24_N22
\MenuModule|Timer|periods[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[27]~89_combout\ = (\MenuModule|Timer|periods\(27) & (!\MenuModule|Timer|periods[26]~88\)) # (!\MenuModule|Timer|periods\(27) & ((\MenuModule|Timer|periods[26]~88\) # (GND)))
-- \MenuModule|Timer|periods[27]~90\ = CARRY((!\MenuModule|Timer|periods[26]~88\) # (!\MenuModule|Timer|periods\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(27),
	datad => VCC,
	cin => \MenuModule|Timer|periods[26]~88\,
	combout => \MenuModule|Timer|periods[27]~89_combout\,
	cout => \MenuModule|Timer|periods[27]~90\);

-- Location: FF_X99_Y24_N23
\MenuModule|Timer|periods[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[27]~89_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(27));

-- Location: LCCOMB_X99_Y24_N24
\MenuModule|Timer|periods[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[28]~91_combout\ = (\MenuModule|Timer|periods\(28) & (\MenuModule|Timer|periods[27]~90\ $ (GND))) # (!\MenuModule|Timer|periods\(28) & (!\MenuModule|Timer|periods[27]~90\ & VCC))
-- \MenuModule|Timer|periods[28]~92\ = CARRY((\MenuModule|Timer|periods\(28) & !\MenuModule|Timer|periods[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(28),
	datad => VCC,
	cin => \MenuModule|Timer|periods[27]~90\,
	combout => \MenuModule|Timer|periods[28]~91_combout\,
	cout => \MenuModule|Timer|periods[28]~92\);

-- Location: FF_X99_Y24_N25
\MenuModule|Timer|periods[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[28]~91_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(28));

-- Location: LCCOMB_X98_Y24_N6
\MenuModule|Timer|exp_time~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~7_combout\ = (!\MenuModule|Timer|periods\(27) & (!\MenuModule|Timer|periods\(28) & (!\MenuModule|Timer|periods\(26) & \MenuModule|Timer|periods\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(27),
	datab => \MenuModule|Timer|periods\(28),
	datac => \MenuModule|Timer|periods\(26),
	datad => \MenuModule|Timer|periods\(25),
	combout => \MenuModule|Timer|exp_time~7_combout\);

-- Location: LCCOMB_X99_Y24_N26
\MenuModule|Timer|periods[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[29]~93_combout\ = (\MenuModule|Timer|periods\(29) & (!\MenuModule|Timer|periods[28]~92\)) # (!\MenuModule|Timer|periods\(29) & ((\MenuModule|Timer|periods[28]~92\) # (GND)))
-- \MenuModule|Timer|periods[29]~94\ = CARRY((!\MenuModule|Timer|periods[28]~92\) # (!\MenuModule|Timer|periods\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(29),
	datad => VCC,
	cin => \MenuModule|Timer|periods[28]~92\,
	combout => \MenuModule|Timer|periods[29]~93_combout\,
	cout => \MenuModule|Timer|periods[29]~94\);

-- Location: FF_X99_Y24_N27
\MenuModule|Timer|periods[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[29]~93_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(29));

-- Location: LCCOMB_X99_Y24_N28
\MenuModule|Timer|periods[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[30]~95_combout\ = (\MenuModule|Timer|periods\(30) & (\MenuModule|Timer|periods[29]~94\ $ (GND))) # (!\MenuModule|Timer|periods\(30) & (!\MenuModule|Timer|periods[29]~94\ & VCC))
-- \MenuModule|Timer|periods[30]~96\ = CARRY((\MenuModule|Timer|periods\(30) & !\MenuModule|Timer|periods[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|periods\(30),
	datad => VCC,
	cin => \MenuModule|Timer|periods[29]~94\,
	combout => \MenuModule|Timer|periods[30]~95_combout\,
	cout => \MenuModule|Timer|periods[30]~96\);

-- Location: FF_X99_Y24_N29
\MenuModule|Timer|periods[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[30]~95_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(30));

-- Location: LCCOMB_X99_Y24_N30
\MenuModule|Timer|periods[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[31]~97_combout\ = \MenuModule|Timer|periods\(31) $ (\MenuModule|Timer|periods[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(31),
	cin => \MenuModule|Timer|periods[30]~96\,
	combout => \MenuModule|Timer|periods[31]~97_combout\);

-- Location: FF_X99_Y24_N31
\MenuModule|Timer|periods[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[31]~97_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(31));

-- Location: LCCOMB_X98_Y24_N8
\MenuModule|Timer|exp_time~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~8_combout\ = (\MenuModule|Timer|exp_time~7_combout\ & (!\MenuModule|Timer|periods\(30) & (!\MenuModule|Timer|periods\(31) & !\MenuModule|Timer|periods\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|exp_time~7_combout\,
	datab => \MenuModule|Timer|periods\(30),
	datac => \MenuModule|Timer|periods\(31),
	datad => \MenuModule|Timer|periods\(29),
	combout => \MenuModule|Timer|exp_time~8_combout\);

-- Location: LCCOMB_X98_Y24_N26
\MenuModule|Timer|exp_time~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~3_combout\ = (\MenuModule|Timer|periods\(14) & (!\MenuModule|Timer|periods\(16) & (\MenuModule|Timer|periods\(15) & \MenuModule|Timer|periods\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(14),
	datab => \MenuModule|Timer|periods\(16),
	datac => \MenuModule|Timer|periods\(15),
	datad => \MenuModule|Timer|periods\(13),
	combout => \MenuModule|Timer|exp_time~3_combout\);

-- Location: LCCOMB_X98_Y24_N18
\MenuModule|Timer|exp_time~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~0_combout\ = (\MenuModule|Timer|periods\(2) & (\MenuModule|Timer|periods\(4) & (\MenuModule|Timer|periods\(1) & \MenuModule|Timer|periods\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(2),
	datab => \MenuModule|Timer|periods\(4),
	datac => \MenuModule|Timer|periods\(1),
	datad => \MenuModule|Timer|periods\(3),
	combout => \MenuModule|Timer|exp_time~0_combout\);

-- Location: LCCOMB_X98_Y25_N30
\MenuModule|Timer|exp_time~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~1_combout\ = (!\MenuModule|Timer|periods\(7) & (\MenuModule|Timer|periods\(5) & (\MenuModule|Timer|periods\(6) & !\MenuModule|Timer|periods\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(7),
	datab => \MenuModule|Timer|periods\(5),
	datac => \MenuModule|Timer|periods\(6),
	datad => \MenuModule|Timer|periods\(8),
	combout => \MenuModule|Timer|exp_time~1_combout\);

-- Location: LCCOMB_X98_Y24_N20
\MenuModule|Timer|exp_time~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~2_combout\ = (!\MenuModule|Timer|periods\(11) & (!\MenuModule|Timer|periods\(9) & (\MenuModule|Timer|periods\(12) & !\MenuModule|Timer|periods\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(11),
	datab => \MenuModule|Timer|periods\(9),
	datac => \MenuModule|Timer|periods\(12),
	datad => \MenuModule|Timer|periods\(10),
	combout => \MenuModule|Timer|exp_time~2_combout\);

-- Location: LCCOMB_X98_Y24_N16
\MenuModule|Timer|exp_time~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~4_combout\ = (\MenuModule|Timer|exp_time~3_combout\ & (\MenuModule|Timer|exp_time~0_combout\ & (\MenuModule|Timer|exp_time~1_combout\ & \MenuModule|Timer|exp_time~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|exp_time~3_combout\,
	datab => \MenuModule|Timer|exp_time~0_combout\,
	datac => \MenuModule|Timer|exp_time~1_combout\,
	datad => \MenuModule|Timer|exp_time~2_combout\,
	combout => \MenuModule|Timer|exp_time~4_combout\);

-- Location: LCCOMB_X98_Y24_N14
\MenuModule|Timer|exp_time~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~9_combout\ = (\MenuModule|Timer|exp_time~5_combout\ & (\MenuModule|Timer|exp_time~6_combout\ & (\MenuModule|Timer|exp_time~8_combout\ & \MenuModule|Timer|exp_time~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|exp_time~5_combout\,
	datab => \MenuModule|Timer|exp_time~6_combout\,
	datac => \MenuModule|Timer|exp_time~8_combout\,
	datad => \MenuModule|Timer|exp_time~4_combout\,
	combout => \MenuModule|Timer|exp_time~9_combout\);

-- Location: LCCOMB_X98_Y24_N12
\MenuModule|Timer|periods[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|periods[2]~36_combout\ = ((\MenuModule|Timer|periods\(0) & \MenuModule|Timer|exp_time~9_combout\)) # (!\MenuModule|Timer|seconds[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(0),
	datac => \MenuModule|Timer|exp_time~9_combout\,
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|periods[2]~36_combout\);

-- Location: FF_X99_Y25_N1
\MenuModule|Timer|periods[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|periods[0]~34_combout\,
	sclr => \MenuModule|Timer|periods[2]~36_combout\,
	ena => \MenuModule|Timer|periods[2]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|periods\(0));

-- Location: LCCOMB_X98_Y24_N0
\MenuModule|Timer|seconds[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[3]~1_combout\ = (\MenuModule|Timer|seconds[3]~0_combout\ & (((!\MenuModule|Timer|exp_time~9_combout\) # (!\MenuModule|timer_en~combout\)) # (!\MenuModule|Timer|periods\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|periods\(0),
	datab => \MenuModule|timer_en~combout\,
	datac => \MenuModule|Timer|exp_time~9_combout\,
	datad => \MenuModule|Timer|seconds[3]~0_combout\,
	combout => \MenuModule|Timer|seconds[3]~1_combout\);

-- Location: LCCOMB_X98_Y25_N10
\MenuModule|Timer|seconds[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|seconds[0]~13_combout\ = (\MenuModule|Timer|seconds[3]~1_combout\ & (((\MenuModule|Timer|seconds\(0))))) # (!\MenuModule|Timer|seconds[3]~1_combout\ & (!\Debouncer0|s_pulsedOut~q\ & (\MenuModule|Timer|seconds[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|seconds[0]~12_combout\,
	datac => \MenuModule|Timer|seconds\(0),
	datad => \MenuModule|Timer|seconds[3]~1_combout\,
	combout => \MenuModule|Timer|seconds[0]~13_combout\);

-- Location: FF_X98_Y25_N11
\MenuModule|Timer|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|seconds[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|seconds\(0));

-- Location: LCCOMB_X98_Y25_N4
\MenuModule|Timer|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|process_0~0_combout\ = (\MenuModule|Menu|force_t~q\) # ((!\MenuModule|Timer|seconds\(0) & \MenuModule|Timer|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datac => \MenuModule|Timer|Equal0~9_combout\,
	datad => \MenuModule|Menu|force_t~q\,
	combout => \MenuModule|Timer|process_0~0_combout\);

-- Location: LCCOMB_X98_Y25_N0
\MenuModule|Timer|exp_time~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~10_combout\ = (\MenuModule|Timer|seconds\(0) & (!\MenuModule|Timer|periods\(0) & ((\MenuModule|Menu|pState.WASH~q\) # (\MenuModule|Menu|pState.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \MenuModule|Timer|periods\(0),
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Timer|exp_time~10_combout\);

-- Location: LCCOMB_X98_Y25_N6
\MenuModule|Timer|exp_time~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~11_combout\ = (\MenuModule|Timer|exp_time~10_combout\ & (\MenuModule|Timer|Equal0~9_combout\ & \MenuModule|Timer|exp_time~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|exp_time~10_combout\,
	datac => \MenuModule|Timer|Equal0~9_combout\,
	datad => \MenuModule|Timer|exp_time~9_combout\,
	combout => \MenuModule|Timer|exp_time~11_combout\);

-- Location: LCCOMB_X98_Y25_N24
\MenuModule|Timer|exp_time~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Timer|exp_time~12_combout\ = (!\MenuModule|Timer|process_0~0_combout\ & ((\MenuModule|Timer|exp_time~11_combout\) # ((!\MenuModule|timer_en~combout\ & \MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|timer_en~combout\,
	datab => \MenuModule|Timer|process_0~0_combout\,
	datac => \MenuModule|Timer|exp_time~q\,
	datad => \MenuModule|Timer|exp_time~11_combout\,
	combout => \MenuModule|Timer|exp_time~12_combout\);

-- Location: FF_X98_Y25_N25
\MenuModule|Timer|exp_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Timer|exp_time~12_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Timer|exp_time~q\);

-- Location: LCCOMB_X106_Y24_N22
\MenuModule|Menu|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector5~5_combout\ = (\MenuModule|Timer|exp_time~q\ & \MenuModule|Menu|pState.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|exp_time~q\,
	datad => \MenuModule|Menu|pState.DELAY~q\,
	combout => \MenuModule|Menu|Selector5~5_combout\);

-- Location: LCCOMB_X106_Y24_N16
\MenuModule|Menu|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector6~5_combout\ = (\c_door~q\ & (((\MenuModule|Menu|pState.WASH~q\ & \Debouncer1|s_pulsedOut~q\)))) # (!\c_door~q\ & ((\MenuModule|Menu|Selector5~5_combout\) # ((\MenuModule|Menu|pState.WASH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector5~5_combout\,
	datab => \c_door~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|Selector6~5_combout\);

-- Location: LCCOMB_X106_Y24_N24
\MenuModule|Menu|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector6~4_combout\ = (\MenuModule|Menu|pState.PAUSE~q\ & (!\MenuModule|Menu|comb_proc~0_combout\ & ((\MenuModule|Menu|Selector6~5_combout\) # (!\MenuModule|Menu|Selector5~5_combout\)))) # (!\MenuModule|Menu|pState.PAUSE~q\ & 
-- (((\MenuModule|Menu|Selector6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector5~5_combout\,
	datab => \MenuModule|Menu|comb_proc~0_combout\,
	datac => \MenuModule|Menu|pState.PAUSE~q\,
	datad => \MenuModule|Menu|Selector6~5_combout\,
	combout => \MenuModule|Menu|Selector6~4_combout\);

-- Location: FF_X106_Y24_N25
\MenuModule|Menu|pState.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|Selector6~4_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.PAUSE~q\);

-- Location: LCCOMB_X106_Y24_N12
\MenuModule|Menu|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector5~6_combout\ = (\MenuModule|Menu|pState.WASH~q\ & (((\MenuModule|Timer|exp_time~q\ & !\Debouncer1|s_pulsedOut~q\)))) # (!\MenuModule|Menu|pState.WASH~q\ & (\MenuModule|Menu|pState.MODE~q\ & ((\Debouncer1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.MODE~q\,
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \MenuModule|Timer|exp_time~q\,
	datad => \Debouncer1|s_pulsedOut~q\,
	combout => \MenuModule|Menu|Selector5~6_combout\);

-- Location: LCCOMB_X106_Y24_N18
\MenuModule|Menu|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector5~7_combout\ = (\MenuModule|Menu|Selector5~5_combout\ & (\c_door~q\)) # (!\MenuModule|Menu|Selector5~5_combout\ & (\MenuModule|Menu|pState.WASH~q\ $ (((\c_door~q\ & \MenuModule|Menu|Selector5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector5~5_combout\,
	datab => \c_door~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \MenuModule|Menu|Selector5~6_combout\,
	combout => \MenuModule|Menu|Selector5~7_combout\);

-- Location: LCCOMB_X106_Y24_N4
\MenuModule|Menu|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector5~8_combout\ = (\MenuModule|Menu|Selector5~4_combout\ & (\MenuModule|Menu|pState.PAUSE~q\ & (\MenuModule|Menu|comb_proc~0_combout\))) # (!\MenuModule|Menu|Selector5~4_combout\ & ((\MenuModule|Menu|Selector5~7_combout\) # 
-- ((\MenuModule|Menu|pState.PAUSE~q\ & \MenuModule|Menu|comb_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector5~4_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|comb_proc~0_combout\,
	datad => \MenuModule|Menu|Selector5~7_combout\,
	combout => \MenuModule|Menu|Selector5~8_combout\);

-- Location: FF_X106_Y24_N5
\MenuModule|Menu|pState.WASH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Menu|Selector5~8_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Menu|pState.WASH~q\);

-- Location: LCCOMB_X103_Y33_N0
\WashModule|TIMER|periods[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[0]~33_combout\ = \WashModule|TIMER|periods\(0) $ (VCC)
-- \WashModule|TIMER|periods[0]~34\ = CARRY(\WashModule|TIMER|periods\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(0),
	datad => VCC,
	combout => \WashModule|TIMER|periods[0]~33_combout\,
	cout => \WashModule|TIMER|periods[0]~34\);

-- Location: LCCOMB_X103_Y33_N2
\WashModule|TIMER|periods[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[1]~37_combout\ = (\WashModule|TIMER|periods\(1) & (!\WashModule|TIMER|periods[0]~34\)) # (!\WashModule|TIMER|periods\(1) & ((\WashModule|TIMER|periods[0]~34\) # (GND)))
-- \WashModule|TIMER|periods[1]~38\ = CARRY((!\WashModule|TIMER|periods[0]~34\) # (!\WashModule|TIMER|periods\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(1),
	datad => VCC,
	cin => \WashModule|TIMER|periods[0]~34\,
	combout => \WashModule|TIMER|periods[1]~37_combout\,
	cout => \WashModule|TIMER|periods[1]~38\);

-- Location: LCCOMB_X102_Y34_N4
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Debouncer0|s_pulsedOut~q\) # ((\MenuModule|Menu|pState.WASH~q\ & \MenuModule|Timer|exp_time~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Menu|pState.WASH~q\,
	datad => \MenuModule|Timer|exp_time~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X102_Y34_N20
\WashModule|TIMER|periods[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[29]~32_combout\ = (!\comb~0_combout\ & ((\WashModule|TIMER|seconds\(0)) # (!\WashModule|TIMER|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datac => \comb~0_combout\,
	datad => \WashModule|TIMER|Equal0~9_combout\,
	combout => \WashModule|TIMER|periods[29]~32_combout\);

-- Location: LCCOMB_X102_Y34_N14
\WashModule|TIMER|seconds[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[2]~0_combout\ = (\WashModule|TIMER|periods[29]~32_combout\ & (((!\WashModule|TIMER|exp_time~9_combout\) # (!\MenuModule|Menu|pState.WASH~q\)) # (!\WashModule|TIMER|periods\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(0),
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \WashModule|TIMER|exp_time~9_combout\,
	datad => \WashModule|TIMER|periods[29]~32_combout\,
	combout => \WashModule|TIMER|seconds[2]~0_combout\);

-- Location: LCCOMB_X100_Y34_N0
\WashModule|TIMER|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~0_combout\ = \WashModule|TIMER|seconds\(0) $ (VCC)
-- \WashModule|TIMER|Add0~1\ = CARRY(\WashModule|TIMER|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datad => VCC,
	combout => \WashModule|TIMER|Add0~0_combout\,
	cout => \WashModule|TIMER|Add0~1\);

-- Location: LCCOMB_X102_Y33_N24
\WashModule|FSM|pState~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~30_combout\ = (\WashModule|FSM|pState.PW2~q\ & (!\Debouncer0|s_pulsedOut~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.PW2~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \Debouncer0|s_pulsedOut~q\,
	combout => \WashModule|FSM|pState~30_combout\);

-- Location: LCCOMB_X102_Y33_N8
\WashModule|FSM|pState~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~29_combout\ = (\Debouncer0|s_pulsedOut~q\) # ((\MenuModule|Menu|pState.WASH~q\ & ((\MenuModule|Timer|exp_time~q\) # (\WashModule|TIMER|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \MenuModule|Timer|exp_time~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~29_combout\);

-- Location: FF_X102_Y33_N25
\WashModule|FSM|pState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~30_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.E2~q\);

-- Location: LCCOMB_X101_Y32_N10
\WashModule|FSM|pState~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~34_combout\ = (\WashModule|FSM|pState.SP1~q\ & ((!\WashModule|TIMER|exp_time~q\) # (!\MenuModule|Menu|pState.WASH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|FSM|pState.SP1~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~34_combout\);

-- Location: LCCOMB_X102_Y33_N2
\WashModule|FSM|pState~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~32_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (\WashModule|FSM|pState.E2~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.E2~q\,
	combout => \WashModule|FSM|pState~32_combout\);

-- Location: FF_X102_Y33_N3
\WashModule|FSM|pState.RW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~32_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.RW2~q\);

-- Location: LCCOMB_X101_Y32_N4
\WashModule|FSM|pState~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~35_combout\ = (\WashModule|FSM|pState.IDLE~q\ & (((\WashModule|FSM|pState.RW2~q\ & \WashModule|TIMER|exp_time~q\)))) # (!\WashModule|FSM|pState.IDLE~q\ & ((\MenuModule|Prog|pState.P3~q\) # ((\WashModule|FSM|pState.RW2~q\ & 
-- \WashModule|TIMER|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.IDLE~q\,
	datab => \MenuModule|Prog|pState.P3~q\,
	datac => \WashModule|FSM|pState.RW2~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~35_combout\);

-- Location: LCCOMB_X101_Y32_N16
\WashModule|FSM|pState~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~36_combout\ = (!\comb~0_combout\ & ((\WashModule|FSM|pState~34_combout\) # ((\WashModule|FSM|pState~35_combout\ & \MenuModule|Menu|pState.WASH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState~34_combout\,
	datab => \WashModule|FSM|pState~35_combout\,
	datac => \comb~0_combout\,
	datad => \MenuModule|Menu|pState.WASH~q\,
	combout => \WashModule|FSM|pState~36_combout\);

-- Location: FF_X101_Y32_N17
\WashModule|FSM|pState.SP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.SP1~q\);

-- Location: LCCOMB_X102_Y33_N20
\WashModule|FSM|pState~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~33_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (\WashModule|FSM|pState.SP1~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.SP1~q\,
	combout => \WashModule|FSM|pState~33_combout\);

-- Location: FF_X102_Y33_N21
\WashModule|FSM|pState.RW3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~33_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.RW3~q\);

-- Location: LCCOMB_X102_Y33_N6
\WashModule|FSM|pState~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~39_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (\WashModule|FSM|pState.RW3~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.RW3~q\,
	combout => \WashModule|FSM|pState~39_combout\);

-- Location: FF_X102_Y33_N7
\WashModule|FSM|pState.FINISHED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~39_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.FINISHED~q\);

-- Location: LCCOMB_X101_Y32_N6
\WashModule|FSM|pState~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~37_combout\ = (\WashModule|FSM|pState.FINISHED~q\ & (\MenuModule|Menu|pState.WASH~q\ & \WashModule|TIMER|exp_time~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.FINISHED~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~37_combout\);

-- Location: LCCOMB_X101_Y32_N12
\WashModule|FSM|pState~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~38_combout\ = (!\WashModule|FSM|pState~37_combout\ & (!\comb~0_combout\ & ((\MenuModule|Menu|pState.WASH~q\) # (\WashModule|FSM|pState.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState~37_combout\,
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \WashModule|FSM|pState.IDLE~q\,
	datad => \comb~0_combout\,
	combout => \WashModule|FSM|pState~38_combout\);

-- Location: FF_X101_Y32_N13
\WashModule|FSM|pState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.IDLE~q\);

-- Location: LCCOMB_X101_Y32_N20
\WashModule|FSM|pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~23_combout\ = (!\MenuModule|Prog|pState.P1~q\ & (!\MenuModule|Prog|pState.P2~q\ & (\MenuModule|Menu|pState.WASH~q\ & !\WashModule|FSM|pState.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P1~q\,
	datab => \MenuModule|Prog|pState.P2~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.IDLE~q\,
	combout => \WashModule|FSM|pState~23_combout\);

-- Location: LCCOMB_X101_Y32_N22
\WashModule|FSM|pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~22_combout\ = (\WashModule|FSM|pState.PW1~q\ & (((\WashModule|FSM|pState.IDLE~q\ & !\WashModule|TIMER|exp_time~q\)) # (!\MenuModule|Menu|pState.WASH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.IDLE~q\,
	datab => \WashModule|FSM|pState.PW1~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~22_combout\);

-- Location: LCCOMB_X101_Y32_N0
\WashModule|FSM|pState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~24_combout\ = (!\comb~0_combout\ & ((\WashModule|FSM|pState~23_combout\) # (\WashModule|FSM|pState~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|FSM|pState~23_combout\,
	datac => \WashModule|FSM|pState~22_combout\,
	datad => \comb~0_combout\,
	combout => \WashModule|FSM|pState~24_combout\);

-- Location: FF_X101_Y32_N1
\WashModule|FSM|pState.PW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.PW1~q\);

-- Location: LCCOMB_X102_Y33_N10
\WashModule|FSM|pState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~28_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (\WashModule|FSM|pState.PW1~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.PW1~q\,
	combout => \WashModule|FSM|pState~28_combout\);

-- Location: FF_X102_Y33_N11
\WashModule|FSM|pState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~28_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.E1~q\);

-- Location: LCCOMB_X102_Y33_N26
\WashModule|FSM|rinse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|rinse~0_combout\ = (\MenuModule|Menu|pState.WASH~q\ & ((\WashModule|FSM|pState.E2~q\) # (\WashModule|FSM|pState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|FSM|pState.E2~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.E1~q\,
	combout => \WashModule|FSM|rinse~0_combout\);

-- Location: LCCOMB_X102_Y34_N12
\WashModule|TIMER|seconds[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[0]~1_combout\ = (\WashModule|TIMER|seconds\(0) & (\WashModule|TIMER|Add0~0_combout\)) # (!\WashModule|TIMER|seconds\(0) & ((\WashModule|TIMER|Equal0~9_combout\ & ((\WashModule|FSM|rinse~0_combout\))) # 
-- (!\WashModule|TIMER|Equal0~9_combout\ & (\WashModule|TIMER|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datab => \WashModule|TIMER|Add0~0_combout\,
	datac => \WashModule|FSM|rinse~0_combout\,
	datad => \WashModule|TIMER|Equal0~9_combout\,
	combout => \WashModule|TIMER|seconds[0]~1_combout\);

-- Location: LCCOMB_X102_Y34_N6
\WashModule|TIMER|seconds[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[0]~2_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & (((\WashModule|TIMER|seconds\(0))))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & (!\comb~0_combout\ & ((\WashModule|TIMER|seconds[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \WashModule|TIMER|seconds[2]~0_combout\,
	datac => \WashModule|TIMER|seconds\(0),
	datad => \WashModule|TIMER|seconds[0]~1_combout\,
	combout => \WashModule|TIMER|seconds[0]~2_combout\);

-- Location: FF_X102_Y34_N7
\WashModule|TIMER|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(0));

-- Location: LCCOMB_X102_Y33_N30
\WashModule|TIMER|periods[29]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[29]~36_combout\ = (\Debouncer0|s_pulsedOut~q\) # ((\MenuModule|Menu|pState.WASH~q\) # ((!\WashModule|TIMER|seconds\(0) & \WashModule|TIMER|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datab => \Debouncer0|s_pulsedOut~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|Equal0~9_combout\,
	combout => \WashModule|TIMER|periods[29]~36_combout\);

-- Location: FF_X103_Y33_N3
\WashModule|TIMER|periods[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[1]~37_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(1));

-- Location: LCCOMB_X103_Y33_N4
\WashModule|TIMER|periods[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[2]~39_combout\ = (\WashModule|TIMER|periods\(2) & (\WashModule|TIMER|periods[1]~38\ $ (GND))) # (!\WashModule|TIMER|periods\(2) & (!\WashModule|TIMER|periods[1]~38\ & VCC))
-- \WashModule|TIMER|periods[2]~40\ = CARRY((\WashModule|TIMER|periods\(2) & !\WashModule|TIMER|periods[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(2),
	datad => VCC,
	cin => \WashModule|TIMER|periods[1]~38\,
	combout => \WashModule|TIMER|periods[2]~39_combout\,
	cout => \WashModule|TIMER|periods[2]~40\);

-- Location: FF_X103_Y33_N5
\WashModule|TIMER|periods[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[2]~39_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(2));

-- Location: LCCOMB_X103_Y33_N6
\WashModule|TIMER|periods[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[3]~41_combout\ = (\WashModule|TIMER|periods\(3) & (!\WashModule|TIMER|periods[2]~40\)) # (!\WashModule|TIMER|periods\(3) & ((\WashModule|TIMER|periods[2]~40\) # (GND)))
-- \WashModule|TIMER|periods[3]~42\ = CARRY((!\WashModule|TIMER|periods[2]~40\) # (!\WashModule|TIMER|periods\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(3),
	datad => VCC,
	cin => \WashModule|TIMER|periods[2]~40\,
	combout => \WashModule|TIMER|periods[3]~41_combout\,
	cout => \WashModule|TIMER|periods[3]~42\);

-- Location: FF_X103_Y33_N7
\WashModule|TIMER|periods[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[3]~41_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(3));

-- Location: LCCOMB_X103_Y33_N8
\WashModule|TIMER|periods[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[4]~43_combout\ = (\WashModule|TIMER|periods\(4) & (\WashModule|TIMER|periods[3]~42\ $ (GND))) # (!\WashModule|TIMER|periods\(4) & (!\WashModule|TIMER|periods[3]~42\ & VCC))
-- \WashModule|TIMER|periods[4]~44\ = CARRY((\WashModule|TIMER|periods\(4) & !\WashModule|TIMER|periods[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(4),
	datad => VCC,
	cin => \WashModule|TIMER|periods[3]~42\,
	combout => \WashModule|TIMER|periods[4]~43_combout\,
	cout => \WashModule|TIMER|periods[4]~44\);

-- Location: FF_X103_Y33_N9
\WashModule|TIMER|periods[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[4]~43_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(4));

-- Location: LCCOMB_X103_Y33_N10
\WashModule|TIMER|periods[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[5]~45_combout\ = (\WashModule|TIMER|periods\(5) & (!\WashModule|TIMER|periods[4]~44\)) # (!\WashModule|TIMER|periods\(5) & ((\WashModule|TIMER|periods[4]~44\) # (GND)))
-- \WashModule|TIMER|periods[5]~46\ = CARRY((!\WashModule|TIMER|periods[4]~44\) # (!\WashModule|TIMER|periods\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(5),
	datad => VCC,
	cin => \WashModule|TIMER|periods[4]~44\,
	combout => \WashModule|TIMER|periods[5]~45_combout\,
	cout => \WashModule|TIMER|periods[5]~46\);

-- Location: FF_X103_Y33_N11
\WashModule|TIMER|periods[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[5]~45_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(5));

-- Location: LCCOMB_X103_Y33_N12
\WashModule|TIMER|periods[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[6]~47_combout\ = (\WashModule|TIMER|periods\(6) & (\WashModule|TIMER|periods[5]~46\ $ (GND))) # (!\WashModule|TIMER|periods\(6) & (!\WashModule|TIMER|periods[5]~46\ & VCC))
-- \WashModule|TIMER|periods[6]~48\ = CARRY((\WashModule|TIMER|periods\(6) & !\WashModule|TIMER|periods[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(6),
	datad => VCC,
	cin => \WashModule|TIMER|periods[5]~46\,
	combout => \WashModule|TIMER|periods[6]~47_combout\,
	cout => \WashModule|TIMER|periods[6]~48\);

-- Location: FF_X103_Y33_N13
\WashModule|TIMER|periods[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[6]~47_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(6));

-- Location: LCCOMB_X103_Y33_N14
\WashModule|TIMER|periods[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[7]~49_combout\ = (\WashModule|TIMER|periods\(7) & (!\WashModule|TIMER|periods[6]~48\)) # (!\WashModule|TIMER|periods\(7) & ((\WashModule|TIMER|periods[6]~48\) # (GND)))
-- \WashModule|TIMER|periods[7]~50\ = CARRY((!\WashModule|TIMER|periods[6]~48\) # (!\WashModule|TIMER|periods\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(7),
	datad => VCC,
	cin => \WashModule|TIMER|periods[6]~48\,
	combout => \WashModule|TIMER|periods[7]~49_combout\,
	cout => \WashModule|TIMER|periods[7]~50\);

-- Location: FF_X103_Y33_N15
\WashModule|TIMER|periods[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[7]~49_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(7));

-- Location: LCCOMB_X103_Y33_N16
\WashModule|TIMER|periods[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[8]~51_combout\ = (\WashModule|TIMER|periods\(8) & (\WashModule|TIMER|periods[7]~50\ $ (GND))) # (!\WashModule|TIMER|periods\(8) & (!\WashModule|TIMER|periods[7]~50\ & VCC))
-- \WashModule|TIMER|periods[8]~52\ = CARRY((\WashModule|TIMER|periods\(8) & !\WashModule|TIMER|periods[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(8),
	datad => VCC,
	cin => \WashModule|TIMER|periods[7]~50\,
	combout => \WashModule|TIMER|periods[8]~51_combout\,
	cout => \WashModule|TIMER|periods[8]~52\);

-- Location: FF_X103_Y33_N17
\WashModule|TIMER|periods[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[8]~51_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(8));

-- Location: LCCOMB_X103_Y33_N18
\WashModule|TIMER|periods[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[9]~53_combout\ = (\WashModule|TIMER|periods\(9) & (!\WashModule|TIMER|periods[8]~52\)) # (!\WashModule|TIMER|periods\(9) & ((\WashModule|TIMER|periods[8]~52\) # (GND)))
-- \WashModule|TIMER|periods[9]~54\ = CARRY((!\WashModule|TIMER|periods[8]~52\) # (!\WashModule|TIMER|periods\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(9),
	datad => VCC,
	cin => \WashModule|TIMER|periods[8]~52\,
	combout => \WashModule|TIMER|periods[9]~53_combout\,
	cout => \WashModule|TIMER|periods[9]~54\);

-- Location: FF_X103_Y33_N19
\WashModule|TIMER|periods[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[9]~53_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(9));

-- Location: LCCOMB_X103_Y33_N20
\WashModule|TIMER|periods[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[10]~55_combout\ = (\WashModule|TIMER|periods\(10) & (\WashModule|TIMER|periods[9]~54\ $ (GND))) # (!\WashModule|TIMER|periods\(10) & (!\WashModule|TIMER|periods[9]~54\ & VCC))
-- \WashModule|TIMER|periods[10]~56\ = CARRY((\WashModule|TIMER|periods\(10) & !\WashModule|TIMER|periods[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(10),
	datad => VCC,
	cin => \WashModule|TIMER|periods[9]~54\,
	combout => \WashModule|TIMER|periods[10]~55_combout\,
	cout => \WashModule|TIMER|periods[10]~56\);

-- Location: FF_X103_Y33_N21
\WashModule|TIMER|periods[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[10]~55_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(10));

-- Location: LCCOMB_X103_Y33_N22
\WashModule|TIMER|periods[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[11]~57_combout\ = (\WashModule|TIMER|periods\(11) & (!\WashModule|TIMER|periods[10]~56\)) # (!\WashModule|TIMER|periods\(11) & ((\WashModule|TIMER|periods[10]~56\) # (GND)))
-- \WashModule|TIMER|periods[11]~58\ = CARRY((!\WashModule|TIMER|periods[10]~56\) # (!\WashModule|TIMER|periods\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(11),
	datad => VCC,
	cin => \WashModule|TIMER|periods[10]~56\,
	combout => \WashModule|TIMER|periods[11]~57_combout\,
	cout => \WashModule|TIMER|periods[11]~58\);

-- Location: FF_X103_Y33_N23
\WashModule|TIMER|periods[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[11]~57_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(11));

-- Location: LCCOMB_X103_Y33_N24
\WashModule|TIMER|periods[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[12]~59_combout\ = (\WashModule|TIMER|periods\(12) & (\WashModule|TIMER|periods[11]~58\ $ (GND))) # (!\WashModule|TIMER|periods\(12) & (!\WashModule|TIMER|periods[11]~58\ & VCC))
-- \WashModule|TIMER|periods[12]~60\ = CARRY((\WashModule|TIMER|periods\(12) & !\WashModule|TIMER|periods[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(12),
	datad => VCC,
	cin => \WashModule|TIMER|periods[11]~58\,
	combout => \WashModule|TIMER|periods[12]~59_combout\,
	cout => \WashModule|TIMER|periods[12]~60\);

-- Location: FF_X103_Y33_N25
\WashModule|TIMER|periods[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[12]~59_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(12));

-- Location: LCCOMB_X103_Y33_N26
\WashModule|TIMER|periods[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[13]~61_combout\ = (\WashModule|TIMER|periods\(13) & (!\WashModule|TIMER|periods[12]~60\)) # (!\WashModule|TIMER|periods\(13) & ((\WashModule|TIMER|periods[12]~60\) # (GND)))
-- \WashModule|TIMER|periods[13]~62\ = CARRY((!\WashModule|TIMER|periods[12]~60\) # (!\WashModule|TIMER|periods\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(13),
	datad => VCC,
	cin => \WashModule|TIMER|periods[12]~60\,
	combout => \WashModule|TIMER|periods[13]~61_combout\,
	cout => \WashModule|TIMER|periods[13]~62\);

-- Location: FF_X103_Y33_N27
\WashModule|TIMER|periods[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[13]~61_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(13));

-- Location: LCCOMB_X103_Y33_N28
\WashModule|TIMER|periods[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[14]~63_combout\ = (\WashModule|TIMER|periods\(14) & (\WashModule|TIMER|periods[13]~62\ $ (GND))) # (!\WashModule|TIMER|periods\(14) & (!\WashModule|TIMER|periods[13]~62\ & VCC))
-- \WashModule|TIMER|periods[14]~64\ = CARRY((\WashModule|TIMER|periods\(14) & !\WashModule|TIMER|periods[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(14),
	datad => VCC,
	cin => \WashModule|TIMER|periods[13]~62\,
	combout => \WashModule|TIMER|periods[14]~63_combout\,
	cout => \WashModule|TIMER|periods[14]~64\);

-- Location: FF_X103_Y33_N29
\WashModule|TIMER|periods[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[14]~63_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(14));

-- Location: LCCOMB_X103_Y33_N30
\WashModule|TIMER|periods[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[15]~65_combout\ = (\WashModule|TIMER|periods\(15) & (!\WashModule|TIMER|periods[14]~64\)) # (!\WashModule|TIMER|periods\(15) & ((\WashModule|TIMER|periods[14]~64\) # (GND)))
-- \WashModule|TIMER|periods[15]~66\ = CARRY((!\WashModule|TIMER|periods[14]~64\) # (!\WashModule|TIMER|periods\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(15),
	datad => VCC,
	cin => \WashModule|TIMER|periods[14]~64\,
	combout => \WashModule|TIMER|periods[15]~65_combout\,
	cout => \WashModule|TIMER|periods[15]~66\);

-- Location: FF_X103_Y33_N31
\WashModule|TIMER|periods[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[15]~65_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(15));

-- Location: LCCOMB_X103_Y32_N0
\WashModule|TIMER|periods[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[16]~67_combout\ = (\WashModule|TIMER|periods\(16) & (\WashModule|TIMER|periods[15]~66\ $ (GND))) # (!\WashModule|TIMER|periods\(16) & (!\WashModule|TIMER|periods[15]~66\ & VCC))
-- \WashModule|TIMER|periods[16]~68\ = CARRY((\WashModule|TIMER|periods\(16) & !\WashModule|TIMER|periods[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(16),
	datad => VCC,
	cin => \WashModule|TIMER|periods[15]~66\,
	combout => \WashModule|TIMER|periods[16]~67_combout\,
	cout => \WashModule|TIMER|periods[16]~68\);

-- Location: FF_X103_Y32_N1
\WashModule|TIMER|periods[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[16]~67_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(16));

-- Location: LCCOMB_X103_Y32_N2
\WashModule|TIMER|periods[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[17]~69_combout\ = (\WashModule|TIMER|periods\(17) & (!\WashModule|TIMER|periods[16]~68\)) # (!\WashModule|TIMER|periods\(17) & ((\WashModule|TIMER|periods[16]~68\) # (GND)))
-- \WashModule|TIMER|periods[17]~70\ = CARRY((!\WashModule|TIMER|periods[16]~68\) # (!\WashModule|TIMER|periods\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(17),
	datad => VCC,
	cin => \WashModule|TIMER|periods[16]~68\,
	combout => \WashModule|TIMER|periods[17]~69_combout\,
	cout => \WashModule|TIMER|periods[17]~70\);

-- Location: FF_X103_Y32_N3
\WashModule|TIMER|periods[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[17]~69_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(17));

-- Location: LCCOMB_X103_Y32_N4
\WashModule|TIMER|periods[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[18]~71_combout\ = (\WashModule|TIMER|periods\(18) & (\WashModule|TIMER|periods[17]~70\ $ (GND))) # (!\WashModule|TIMER|periods\(18) & (!\WashModule|TIMER|periods[17]~70\ & VCC))
-- \WashModule|TIMER|periods[18]~72\ = CARRY((\WashModule|TIMER|periods\(18) & !\WashModule|TIMER|periods[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(18),
	datad => VCC,
	cin => \WashModule|TIMER|periods[17]~70\,
	combout => \WashModule|TIMER|periods[18]~71_combout\,
	cout => \WashModule|TIMER|periods[18]~72\);

-- Location: FF_X103_Y32_N5
\WashModule|TIMER|periods[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[18]~71_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(18));

-- Location: LCCOMB_X103_Y32_N6
\WashModule|TIMER|periods[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[19]~73_combout\ = (\WashModule|TIMER|periods\(19) & (!\WashModule|TIMER|periods[18]~72\)) # (!\WashModule|TIMER|periods\(19) & ((\WashModule|TIMER|periods[18]~72\) # (GND)))
-- \WashModule|TIMER|periods[19]~74\ = CARRY((!\WashModule|TIMER|periods[18]~72\) # (!\WashModule|TIMER|periods\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(19),
	datad => VCC,
	cin => \WashModule|TIMER|periods[18]~72\,
	combout => \WashModule|TIMER|periods[19]~73_combout\,
	cout => \WashModule|TIMER|periods[19]~74\);

-- Location: FF_X103_Y32_N7
\WashModule|TIMER|periods[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[19]~73_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(19));

-- Location: LCCOMB_X103_Y32_N8
\WashModule|TIMER|periods[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[20]~75_combout\ = (\WashModule|TIMER|periods\(20) & (\WashModule|TIMER|periods[19]~74\ $ (GND))) # (!\WashModule|TIMER|periods\(20) & (!\WashModule|TIMER|periods[19]~74\ & VCC))
-- \WashModule|TIMER|periods[20]~76\ = CARRY((\WashModule|TIMER|periods\(20) & !\WashModule|TIMER|periods[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(20),
	datad => VCC,
	cin => \WashModule|TIMER|periods[19]~74\,
	combout => \WashModule|TIMER|periods[20]~75_combout\,
	cout => \WashModule|TIMER|periods[20]~76\);

-- Location: FF_X103_Y32_N9
\WashModule|TIMER|periods[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[20]~75_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(20));

-- Location: LCCOMB_X103_Y32_N10
\WashModule|TIMER|periods[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[21]~77_combout\ = (\WashModule|TIMER|periods\(21) & (!\WashModule|TIMER|periods[20]~76\)) # (!\WashModule|TIMER|periods\(21) & ((\WashModule|TIMER|periods[20]~76\) # (GND)))
-- \WashModule|TIMER|periods[21]~78\ = CARRY((!\WashModule|TIMER|periods[20]~76\) # (!\WashModule|TIMER|periods\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(21),
	datad => VCC,
	cin => \WashModule|TIMER|periods[20]~76\,
	combout => \WashModule|TIMER|periods[21]~77_combout\,
	cout => \WashModule|TIMER|periods[21]~78\);

-- Location: FF_X103_Y32_N11
\WashModule|TIMER|periods[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[21]~77_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(21));

-- Location: LCCOMB_X103_Y32_N12
\WashModule|TIMER|periods[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[22]~79_combout\ = (\WashModule|TIMER|periods\(22) & (\WashModule|TIMER|periods[21]~78\ $ (GND))) # (!\WashModule|TIMER|periods\(22) & (!\WashModule|TIMER|periods[21]~78\ & VCC))
-- \WashModule|TIMER|periods[22]~80\ = CARRY((\WashModule|TIMER|periods\(22) & !\WashModule|TIMER|periods[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(22),
	datad => VCC,
	cin => \WashModule|TIMER|periods[21]~78\,
	combout => \WashModule|TIMER|periods[22]~79_combout\,
	cout => \WashModule|TIMER|periods[22]~80\);

-- Location: FF_X103_Y32_N13
\WashModule|TIMER|periods[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[22]~79_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(22));

-- Location: LCCOMB_X103_Y32_N14
\WashModule|TIMER|periods[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[23]~81_combout\ = (\WashModule|TIMER|periods\(23) & (!\WashModule|TIMER|periods[22]~80\)) # (!\WashModule|TIMER|periods\(23) & ((\WashModule|TIMER|periods[22]~80\) # (GND)))
-- \WashModule|TIMER|periods[23]~82\ = CARRY((!\WashModule|TIMER|periods[22]~80\) # (!\WashModule|TIMER|periods\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(23),
	datad => VCC,
	cin => \WashModule|TIMER|periods[22]~80\,
	combout => \WashModule|TIMER|periods[23]~81_combout\,
	cout => \WashModule|TIMER|periods[23]~82\);

-- Location: FF_X103_Y32_N15
\WashModule|TIMER|periods[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[23]~81_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(23));

-- Location: LCCOMB_X103_Y32_N16
\WashModule|TIMER|periods[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[24]~83_combout\ = (\WashModule|TIMER|periods\(24) & (\WashModule|TIMER|periods[23]~82\ $ (GND))) # (!\WashModule|TIMER|periods\(24) & (!\WashModule|TIMER|periods[23]~82\ & VCC))
-- \WashModule|TIMER|periods[24]~84\ = CARRY((\WashModule|TIMER|periods\(24) & !\WashModule|TIMER|periods[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(24),
	datad => VCC,
	cin => \WashModule|TIMER|periods[23]~82\,
	combout => \WashModule|TIMER|periods[24]~83_combout\,
	cout => \WashModule|TIMER|periods[24]~84\);

-- Location: FF_X103_Y32_N17
\WashModule|TIMER|periods[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[24]~83_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(24));

-- Location: LCCOMB_X102_Y32_N12
\WashModule|TIMER|exp_time~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~6_combout\ = (\WashModule|TIMER|periods\(23) & (\WashModule|TIMER|periods\(22) & (\WashModule|TIMER|periods\(21) & !\WashModule|TIMER|periods\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(23),
	datab => \WashModule|TIMER|periods\(22),
	datac => \WashModule|TIMER|periods\(21),
	datad => \WashModule|TIMER|periods\(24),
	combout => \WashModule|TIMER|exp_time~6_combout\);

-- Location: LCCOMB_X103_Y32_N18
\WashModule|TIMER|periods[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[25]~85_combout\ = (\WashModule|TIMER|periods\(25) & (!\WashModule|TIMER|periods[24]~84\)) # (!\WashModule|TIMER|periods\(25) & ((\WashModule|TIMER|periods[24]~84\) # (GND)))
-- \WashModule|TIMER|periods[25]~86\ = CARRY((!\WashModule|TIMER|periods[24]~84\) # (!\WashModule|TIMER|periods\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(25),
	datad => VCC,
	cin => \WashModule|TIMER|periods[24]~84\,
	combout => \WashModule|TIMER|periods[25]~85_combout\,
	cout => \WashModule|TIMER|periods[25]~86\);

-- Location: FF_X103_Y32_N19
\WashModule|TIMER|periods[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[25]~85_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(25));

-- Location: LCCOMB_X103_Y32_N20
\WashModule|TIMER|periods[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[26]~87_combout\ = (\WashModule|TIMER|periods\(26) & (\WashModule|TIMER|periods[25]~86\ $ (GND))) # (!\WashModule|TIMER|periods\(26) & (!\WashModule|TIMER|periods[25]~86\ & VCC))
-- \WashModule|TIMER|periods[26]~88\ = CARRY((\WashModule|TIMER|periods\(26) & !\WashModule|TIMER|periods[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(26),
	datad => VCC,
	cin => \WashModule|TIMER|periods[25]~86\,
	combout => \WashModule|TIMER|periods[26]~87_combout\,
	cout => \WashModule|TIMER|periods[26]~88\);

-- Location: FF_X103_Y32_N21
\WashModule|TIMER|periods[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[26]~87_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(26));

-- Location: LCCOMB_X103_Y32_N22
\WashModule|TIMER|periods[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[27]~89_combout\ = (\WashModule|TIMER|periods\(27) & (!\WashModule|TIMER|periods[26]~88\)) # (!\WashModule|TIMER|periods\(27) & ((\WashModule|TIMER|periods[26]~88\) # (GND)))
-- \WashModule|TIMER|periods[27]~90\ = CARRY((!\WashModule|TIMER|periods[26]~88\) # (!\WashModule|TIMER|periods\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(27),
	datad => VCC,
	cin => \WashModule|TIMER|periods[26]~88\,
	combout => \WashModule|TIMER|periods[27]~89_combout\,
	cout => \WashModule|TIMER|periods[27]~90\);

-- Location: FF_X103_Y32_N23
\WashModule|TIMER|periods[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[27]~89_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(27));

-- Location: LCCOMB_X103_Y32_N24
\WashModule|TIMER|periods[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[28]~91_combout\ = (\WashModule|TIMER|periods\(28) & (\WashModule|TIMER|periods[27]~90\ $ (GND))) # (!\WashModule|TIMER|periods\(28) & (!\WashModule|TIMER|periods[27]~90\ & VCC))
-- \WashModule|TIMER|periods[28]~92\ = CARRY((\WashModule|TIMER|periods\(28) & !\WashModule|TIMER|periods[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(28),
	datad => VCC,
	cin => \WashModule|TIMER|periods[27]~90\,
	combout => \WashModule|TIMER|periods[28]~91_combout\,
	cout => \WashModule|TIMER|periods[28]~92\);

-- Location: FF_X103_Y32_N25
\WashModule|TIMER|periods[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[28]~91_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(28));

-- Location: LCCOMB_X103_Y32_N26
\WashModule|TIMER|periods[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[29]~93_combout\ = (\WashModule|TIMER|periods\(29) & (!\WashModule|TIMER|periods[28]~92\)) # (!\WashModule|TIMER|periods\(29) & ((\WashModule|TIMER|periods[28]~92\) # (GND)))
-- \WashModule|TIMER|periods[29]~94\ = CARRY((!\WashModule|TIMER|periods[28]~92\) # (!\WashModule|TIMER|periods\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(29),
	datad => VCC,
	cin => \WashModule|TIMER|periods[28]~92\,
	combout => \WashModule|TIMER|periods[29]~93_combout\,
	cout => \WashModule|TIMER|periods[29]~94\);

-- Location: FF_X103_Y32_N27
\WashModule|TIMER|periods[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[29]~93_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(29));

-- Location: LCCOMB_X103_Y32_N28
\WashModule|TIMER|periods[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[30]~95_combout\ = (\WashModule|TIMER|periods\(30) & (\WashModule|TIMER|periods[29]~94\ $ (GND))) # (!\WashModule|TIMER|periods\(30) & (!\WashModule|TIMER|periods[29]~94\ & VCC))
-- \WashModule|TIMER|periods[30]~96\ = CARRY((\WashModule|TIMER|periods\(30) & !\WashModule|TIMER|periods[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|periods\(30),
	datad => VCC,
	cin => \WashModule|TIMER|periods[29]~94\,
	combout => \WashModule|TIMER|periods[30]~95_combout\,
	cout => \WashModule|TIMER|periods[30]~96\);

-- Location: FF_X103_Y32_N29
\WashModule|TIMER|periods[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[30]~95_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(30));

-- Location: LCCOMB_X103_Y32_N30
\WashModule|TIMER|periods[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[31]~97_combout\ = \WashModule|TIMER|periods\(31) $ (\WashModule|TIMER|periods[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(31),
	cin => \WashModule|TIMER|periods[30]~96\,
	combout => \WashModule|TIMER|periods[31]~97_combout\);

-- Location: FF_X103_Y32_N31
\WashModule|TIMER|periods[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[31]~97_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(31));

-- Location: LCCOMB_X102_Y32_N10
\WashModule|TIMER|exp_time~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~7_combout\ = (!\WashModule|TIMER|periods\(26) & (\WashModule|TIMER|periods\(25) & (!\WashModule|TIMER|periods\(27) & !\WashModule|TIMER|periods\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(26),
	datab => \WashModule|TIMER|periods\(25),
	datac => \WashModule|TIMER|periods\(27),
	datad => \WashModule|TIMER|periods\(28),
	combout => \WashModule|TIMER|exp_time~7_combout\);

-- Location: LCCOMB_X102_Y32_N28
\WashModule|TIMER|exp_time~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~8_combout\ = (!\WashModule|TIMER|periods\(29) & (!\WashModule|TIMER|periods\(30) & (!\WashModule|TIMER|periods\(31) & \WashModule|TIMER|exp_time~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(29),
	datab => \WashModule|TIMER|periods\(30),
	datac => \WashModule|TIMER|periods\(31),
	datad => \WashModule|TIMER|exp_time~7_combout\,
	combout => \WashModule|TIMER|exp_time~8_combout\);

-- Location: LCCOMB_X102_Y32_N22
\WashModule|TIMER|exp_time~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~5_combout\ = (!\WashModule|TIMER|periods\(18) & (\WashModule|TIMER|periods\(20) & (\WashModule|TIMER|periods\(17) & \WashModule|TIMER|periods\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(18),
	datab => \WashModule|TIMER|periods\(20),
	datac => \WashModule|TIMER|periods\(17),
	datad => \WashModule|TIMER|periods\(19),
	combout => \WashModule|TIMER|exp_time~5_combout\);

-- Location: LCCOMB_X102_Y32_N30
\WashModule|TIMER|exp_time~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~3_combout\ = (\WashModule|TIMER|periods\(15) & (!\WashModule|TIMER|periods\(16) & (\WashModule|TIMER|periods\(13) & \WashModule|TIMER|periods\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(15),
	datab => \WashModule|TIMER|periods\(16),
	datac => \WashModule|TIMER|periods\(13),
	datad => \WashModule|TIMER|periods\(14),
	combout => \WashModule|TIMER|exp_time~3_combout\);

-- Location: LCCOMB_X102_Y32_N24
\WashModule|TIMER|exp_time~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~0_combout\ = (\WashModule|TIMER|periods\(2) & (\WashModule|TIMER|periods\(4) & (\WashModule|TIMER|periods\(1) & \WashModule|TIMER|periods\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(2),
	datab => \WashModule|TIMER|periods\(4),
	datac => \WashModule|TIMER|periods\(1),
	datad => \WashModule|TIMER|periods\(3),
	combout => \WashModule|TIMER|exp_time~0_combout\);

-- Location: LCCOMB_X102_Y32_N4
\WashModule|TIMER|exp_time~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~2_combout\ = (!\WashModule|TIMER|periods\(11) & (!\WashModule|TIMER|periods\(10) & (\WashModule|TIMER|periods\(12) & !\WashModule|TIMER|periods\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(11),
	datab => \WashModule|TIMER|periods\(10),
	datac => \WashModule|TIMER|periods\(12),
	datad => \WashModule|TIMER|periods\(9),
	combout => \WashModule|TIMER|exp_time~2_combout\);

-- Location: LCCOMB_X102_Y32_N18
\WashModule|TIMER|exp_time~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~1_combout\ = (!\WashModule|TIMER|periods\(8) & (\WashModule|TIMER|periods\(6) & (\WashModule|TIMER|periods\(5) & !\WashModule|TIMER|periods\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(8),
	datab => \WashModule|TIMER|periods\(6),
	datac => \WashModule|TIMER|periods\(5),
	datad => \WashModule|TIMER|periods\(7),
	combout => \WashModule|TIMER|exp_time~1_combout\);

-- Location: LCCOMB_X102_Y32_N16
\WashModule|TIMER|exp_time~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~4_combout\ = (\WashModule|TIMER|exp_time~3_combout\ & (\WashModule|TIMER|exp_time~0_combout\ & (\WashModule|TIMER|exp_time~2_combout\ & \WashModule|TIMER|exp_time~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|exp_time~3_combout\,
	datab => \WashModule|TIMER|exp_time~0_combout\,
	datac => \WashModule|TIMER|exp_time~2_combout\,
	datad => \WashModule|TIMER|exp_time~1_combout\,
	combout => \WashModule|TIMER|exp_time~4_combout\);

-- Location: LCCOMB_X102_Y32_N26
\WashModule|TIMER|exp_time~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~9_combout\ = (\WashModule|TIMER|exp_time~6_combout\ & (\WashModule|TIMER|exp_time~8_combout\ & (\WashModule|TIMER|exp_time~5_combout\ & \WashModule|TIMER|exp_time~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|exp_time~6_combout\,
	datab => \WashModule|TIMER|exp_time~8_combout\,
	datac => \WashModule|TIMER|exp_time~5_combout\,
	datad => \WashModule|TIMER|exp_time~4_combout\,
	combout => \WashModule|TIMER|exp_time~9_combout\);

-- Location: LCCOMB_X102_Y34_N8
\WashModule|TIMER|periods[29]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|periods[29]~35_combout\ = ((\WashModule|TIMER|periods\(0) & \WashModule|TIMER|exp_time~9_combout\)) # (!\WashModule|TIMER|periods[29]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(0),
	datac => \WashModule|TIMER|exp_time~9_combout\,
	datad => \WashModule|TIMER|periods[29]~32_combout\,
	combout => \WashModule|TIMER|periods[29]~35_combout\);

-- Location: FF_X103_Y33_N1
\WashModule|TIMER|periods[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|periods[0]~33_combout\,
	sclr => \WashModule|TIMER|periods[29]~35_combout\,
	ena => \WashModule|TIMER|periods[29]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|periods\(0));

-- Location: LCCOMB_X102_Y34_N30
\WashModule|TIMER|seconds[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[31]~10_combout\ = (\WashModule|TIMER|periods\(0) & (\MenuModule|Menu|pState.WASH~q\ & (\WashModule|TIMER|exp_time~9_combout\ & \WashModule|TIMER|periods[29]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|periods\(0),
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \WashModule|TIMER|exp_time~9_combout\,
	datad => \WashModule|TIMER|periods[29]~32_combout\,
	combout => \WashModule|TIMER|seconds[31]~10_combout\);

-- Location: LCCOMB_X100_Y34_N2
\WashModule|TIMER|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~2_combout\ = (\WashModule|TIMER|seconds\(1) & (\WashModule|TIMER|Add0~1\ & VCC)) # (!\WashModule|TIMER|seconds\(1) & (!\WashModule|TIMER|Add0~1\))
-- \WashModule|TIMER|Add0~3\ = CARRY((!\WashModule|TIMER|seconds\(1) & !\WashModule|TIMER|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(1),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~1\,
	combout => \WashModule|TIMER|Add0~2_combout\,
	cout => \WashModule|TIMER|Add0~3\);

-- Location: LCCOMB_X102_Y33_N4
\WashModule|FSM|pState~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~31_combout\ = (!\Debouncer0|s_pulsedOut~q\ & (\WashModule|FSM|pState.E1~q\ & ((!\MenuModule|Menu|pState.WASH~q\) # (!\MenuModule|Timer|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Timer|exp_time~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.E1~q\,
	combout => \WashModule|FSM|pState~31_combout\);

-- Location: FF_X102_Y33_N5
\WashModule|FSM|pState.RW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~31_combout\,
	ena => \WashModule|FSM|pState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.RW1~q\);

-- Location: LCCOMB_X102_Y33_N14
\WashModule|TIMER|seconds[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[1]~3_combout\ = (!\WashModule|FSM|pState.RW3~q\ & (!\WashModule|FSM|pState.RW1~q\ & !\WashModule|FSM|pState.RW2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|FSM|pState.RW3~q\,
	datac => \WashModule|FSM|pState.RW1~q\,
	datad => \WashModule|FSM|pState.RW2~q\,
	combout => \WashModule|TIMER|seconds[1]~3_combout\);

-- Location: LCCOMB_X102_Y34_N22
\WashModule|TIMER|seconds[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[1]~4_combout\ = (!\WashModule|TIMER|seconds\(0) & (\WashModule|FSM|pState.IDLE~q\ & (\MenuModule|Menu|pState.WASH~q\ & \WashModule|TIMER|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datab => \WashModule|FSM|pState.IDLE~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|Equal0~9_combout\,
	combout => \WashModule|TIMER|seconds[1]~4_combout\);

-- Location: LCCOMB_X102_Y34_N28
\WashModule|TIMER|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~10_combout\ = (!\WashModule|TIMER|seconds\(0) & \WashModule|TIMER|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(0),
	datad => \WashModule|TIMER|Equal0~9_combout\,
	combout => \WashModule|TIMER|Equal0~10_combout\);

-- Location: LCCOMB_X102_Y34_N18
\WashModule|TIMER|seconds[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[1]~5_combout\ = (\WashModule|TIMER|Add0~2_combout\ & (((\WashModule|TIMER|seconds[1]~3_combout\ & \WashModule|TIMER|seconds[1]~4_combout\)) # (!\WashModule|TIMER|Equal0~10_combout\))) # (!\WashModule|TIMER|Add0~2_combout\ & 
-- (\WashModule|TIMER|seconds[1]~3_combout\ & (\WashModule|TIMER|seconds[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~2_combout\,
	datab => \WashModule|TIMER|seconds[1]~3_combout\,
	datac => \WashModule|TIMER|seconds[1]~4_combout\,
	datad => \WashModule|TIMER|Equal0~10_combout\,
	combout => \WashModule|TIMER|seconds[1]~5_combout\);

-- Location: LCCOMB_X102_Y34_N16
\WashModule|TIMER|seconds[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[1]~6_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & (((\WashModule|TIMER|seconds\(1))))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & (!\comb~0_combout\ & ((\WashModule|TIMER|seconds[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \WashModule|TIMER|seconds[2]~0_combout\,
	datac => \WashModule|TIMER|seconds\(1),
	datad => \WashModule|TIMER|seconds[1]~5_combout\,
	combout => \WashModule|TIMER|seconds[1]~6_combout\);

-- Location: FF_X102_Y34_N17
\WashModule|TIMER|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(1));

-- Location: LCCOMB_X100_Y34_N4
\WashModule|TIMER|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~4_combout\ = (\WashModule|TIMER|seconds\(2) & ((GND) # (!\WashModule|TIMER|Add0~3\))) # (!\WashModule|TIMER|seconds\(2) & (\WashModule|TIMER|Add0~3\ $ (GND)))
-- \WashModule|TIMER|Add0~5\ = CARRY((\WashModule|TIMER|seconds\(2)) # (!\WashModule|TIMER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(2),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~3\,
	combout => \WashModule|TIMER|Add0~4_combout\,
	cout => \WashModule|TIMER|Add0~5\);

-- Location: LCCOMB_X102_Y33_N0
\WashModule|TIMER|seconds[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[2]~7_combout\ = (!\WashModule|FSM|pState.FINISHED~q\ & (!\WashModule|FSM|pState.PW2~q\ & !\WashModule|FSM|pState.PW1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.FINISHED~q\,
	datac => \WashModule|FSM|pState.PW2~q\,
	datad => \WashModule|FSM|pState.PW1~q\,
	combout => \WashModule|TIMER|seconds[2]~7_combout\);

-- Location: LCCOMB_X102_Y34_N0
\WashModule|TIMER|seconds[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[2]~8_combout\ = (\WashModule|TIMER|Add0~4_combout\ & (((\WashModule|TIMER|seconds[2]~7_combout\ & \WashModule|TIMER|seconds[1]~4_combout\)) # (!\WashModule|TIMER|Equal0~10_combout\))) # (!\WashModule|TIMER|Add0~4_combout\ & 
-- (\WashModule|TIMER|seconds[2]~7_combout\ & (\WashModule|TIMER|seconds[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~4_combout\,
	datab => \WashModule|TIMER|seconds[2]~7_combout\,
	datac => \WashModule|TIMER|seconds[1]~4_combout\,
	datad => \WashModule|TIMER|Equal0~10_combout\,
	combout => \WashModule|TIMER|seconds[2]~8_combout\);

-- Location: LCCOMB_X102_Y34_N10
\WashModule|TIMER|seconds[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[2]~9_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & (((\WashModule|TIMER|seconds\(2))))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & (!\comb~0_combout\ & ((\WashModule|TIMER|seconds[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \WashModule|TIMER|seconds[2]~0_combout\,
	datac => \WashModule|TIMER|seconds\(2),
	datad => \WashModule|TIMER|seconds[2]~8_combout\,
	combout => \WashModule|TIMER|seconds[2]~9_combout\);

-- Location: FF_X102_Y34_N11
\WashModule|TIMER|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(2));

-- Location: LCCOMB_X100_Y34_N6
\WashModule|TIMER|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~6_combout\ = (\WashModule|TIMER|seconds\(3) & (\WashModule|TIMER|Add0~5\ & VCC)) # (!\WashModule|TIMER|seconds\(3) & (!\WashModule|TIMER|Add0~5\))
-- \WashModule|TIMER|Add0~7\ = CARRY((!\WashModule|TIMER|seconds\(3) & !\WashModule|TIMER|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(3),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~5\,
	combout => \WashModule|TIMER|Add0~6_combout\,
	cout => \WashModule|TIMER|Add0~7\);

-- Location: LCCOMB_X102_Y34_N24
\WashModule|TIMER|seconds[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[3]~11_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~6_combout\) # ((\WashModule|TIMER|seconds\(3) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(3) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|Add0~6_combout\,
	datac => \WashModule|TIMER|seconds\(3),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[3]~11_combout\);

-- Location: FF_X102_Y34_N25
\WashModule|TIMER|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(3));

-- Location: LCCOMB_X100_Y34_N8
\WashModule|TIMER|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~8_combout\ = (\WashModule|TIMER|seconds\(4) & ((GND) # (!\WashModule|TIMER|Add0~7\))) # (!\WashModule|TIMER|seconds\(4) & (\WashModule|TIMER|Add0~7\ $ (GND)))
-- \WashModule|TIMER|Add0~9\ = CARRY((\WashModule|TIMER|seconds\(4)) # (!\WashModule|TIMER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(4),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~7\,
	combout => \WashModule|TIMER|Add0~8_combout\,
	cout => \WashModule|TIMER|Add0~9\);

-- Location: LCCOMB_X101_Y34_N24
\WashModule|TIMER|seconds[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[4]~12_combout\ = (\WashModule|TIMER|Add0~8_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(4) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~8_combout\ & 
-- (((\WashModule|TIMER|seconds\(4) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~8_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(4),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[4]~12_combout\);

-- Location: FF_X101_Y34_N25
\WashModule|TIMER|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(4));

-- Location: LCCOMB_X100_Y34_N10
\WashModule|TIMER|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~10_combout\ = (\WashModule|TIMER|seconds\(5) & (\WashModule|TIMER|Add0~9\ & VCC)) # (!\WashModule|TIMER|seconds\(5) & (!\WashModule|TIMER|Add0~9\))
-- \WashModule|TIMER|Add0~11\ = CARRY((!\WashModule|TIMER|seconds\(5) & !\WashModule|TIMER|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(5),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~9\,
	combout => \WashModule|TIMER|Add0~10_combout\,
	cout => \WashModule|TIMER|Add0~11\);

-- Location: LCCOMB_X101_Y34_N2
\WashModule|TIMER|seconds[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[5]~13_combout\ = (\WashModule|TIMER|Add0~10_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(5) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(5) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~10_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(5),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[5]~13_combout\);

-- Location: FF_X101_Y34_N3
\WashModule|TIMER|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(5));

-- Location: LCCOMB_X100_Y34_N12
\WashModule|TIMER|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~12_combout\ = (\WashModule|TIMER|seconds\(6) & ((GND) # (!\WashModule|TIMER|Add0~11\))) # (!\WashModule|TIMER|seconds\(6) & (\WashModule|TIMER|Add0~11\ $ (GND)))
-- \WashModule|TIMER|Add0~13\ = CARRY((\WashModule|TIMER|seconds\(6)) # (!\WashModule|TIMER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(6),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~11\,
	combout => \WashModule|TIMER|Add0~12_combout\,
	cout => \WashModule|TIMER|Add0~13\);

-- Location: LCCOMB_X101_Y34_N20
\WashModule|TIMER|seconds[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[6]~14_combout\ = (\WashModule|TIMER|Add0~12_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(6) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~12_combout\ & 
-- (((\WashModule|TIMER|seconds\(6) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~12_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(6),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[6]~14_combout\);

-- Location: FF_X101_Y34_N21
\WashModule|TIMER|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(6));

-- Location: LCCOMB_X100_Y34_N14
\WashModule|TIMER|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~14_combout\ = (\WashModule|TIMER|seconds\(7) & (\WashModule|TIMER|Add0~13\ & VCC)) # (!\WashModule|TIMER|seconds\(7) & (!\WashModule|TIMER|Add0~13\))
-- \WashModule|TIMER|Add0~15\ = CARRY((!\WashModule|TIMER|seconds\(7) & !\WashModule|TIMER|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(7),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~13\,
	combout => \WashModule|TIMER|Add0~14_combout\,
	cout => \WashModule|TIMER|Add0~15\);

-- Location: LCCOMB_X101_Y34_N10
\WashModule|TIMER|seconds[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[7]~15_combout\ = (\WashModule|TIMER|Add0~14_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(7) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~14_combout\ & 
-- (((\WashModule|TIMER|seconds\(7) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~14_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(7),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[7]~15_combout\);

-- Location: FF_X101_Y34_N11
\WashModule|TIMER|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(7));

-- Location: LCCOMB_X100_Y34_N16
\WashModule|TIMER|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~16_combout\ = (\WashModule|TIMER|seconds\(8) & ((GND) # (!\WashModule|TIMER|Add0~15\))) # (!\WashModule|TIMER|seconds\(8) & (\WashModule|TIMER|Add0~15\ $ (GND)))
-- \WashModule|TIMER|Add0~17\ = CARRY((\WashModule|TIMER|seconds\(8)) # (!\WashModule|TIMER|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(8),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~15\,
	combout => \WashModule|TIMER|Add0~16_combout\,
	cout => \WashModule|TIMER|Add0~17\);

-- Location: LCCOMB_X101_Y34_N0
\WashModule|TIMER|seconds[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[8]~16_combout\ = (\WashModule|TIMER|Add0~16_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(8) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~16_combout\ & 
-- (((\WashModule|TIMER|seconds\(8) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~16_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(8),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[8]~16_combout\);

-- Location: FF_X101_Y34_N1
\WashModule|TIMER|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(8));

-- Location: LCCOMB_X100_Y34_N18
\WashModule|TIMER|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~18_combout\ = (\WashModule|TIMER|seconds\(9) & (\WashModule|TIMER|Add0~17\ & VCC)) # (!\WashModule|TIMER|seconds\(9) & (!\WashModule|TIMER|Add0~17\))
-- \WashModule|TIMER|Add0~19\ = CARRY((!\WashModule|TIMER|seconds\(9) & !\WashModule|TIMER|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(9),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~17\,
	combout => \WashModule|TIMER|Add0~18_combout\,
	cout => \WashModule|TIMER|Add0~19\);

-- Location: LCCOMB_X101_Y33_N12
\WashModule|TIMER|seconds[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[9]~17_combout\ = (\WashModule|TIMER|Add0~18_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(9) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~18_combout\ & 
-- (((\WashModule|TIMER|seconds\(9) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~18_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(9),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[9]~17_combout\);

-- Location: FF_X101_Y33_N13
\WashModule|TIMER|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(9));

-- Location: LCCOMB_X100_Y34_N20
\WashModule|TIMER|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~20_combout\ = (\WashModule|TIMER|seconds\(10) & ((GND) # (!\WashModule|TIMER|Add0~19\))) # (!\WashModule|TIMER|seconds\(10) & (\WashModule|TIMER|Add0~19\ $ (GND)))
-- \WashModule|TIMER|Add0~21\ = CARRY((\WashModule|TIMER|seconds\(10)) # (!\WashModule|TIMER|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(10),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~19\,
	combout => \WashModule|TIMER|Add0~20_combout\,
	cout => \WashModule|TIMER|Add0~21\);

-- Location: LCCOMB_X101_Y33_N10
\WashModule|TIMER|seconds[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[10]~18_combout\ = (\WashModule|TIMER|Add0~20_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(10) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~20_combout\ & 
-- (((\WashModule|TIMER|seconds\(10) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~20_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(10),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[10]~18_combout\);

-- Location: FF_X101_Y33_N11
\WashModule|TIMER|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(10));

-- Location: LCCOMB_X100_Y34_N22
\WashModule|TIMER|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~22_combout\ = (\WashModule|TIMER|seconds\(11) & (\WashModule|TIMER|Add0~21\ & VCC)) # (!\WashModule|TIMER|seconds\(11) & (!\WashModule|TIMER|Add0~21\))
-- \WashModule|TIMER|Add0~23\ = CARRY((!\WashModule|TIMER|seconds\(11) & !\WashModule|TIMER|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(11),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~21\,
	combout => \WashModule|TIMER|Add0~22_combout\,
	cout => \WashModule|TIMER|Add0~23\);

-- Location: LCCOMB_X101_Y33_N0
\WashModule|TIMER|seconds[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[11]~19_combout\ = (\WashModule|TIMER|Add0~22_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(11) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~22_combout\ & 
-- (((\WashModule|TIMER|seconds\(11) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~22_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(11),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[11]~19_combout\);

-- Location: FF_X101_Y33_N1
\WashModule|TIMER|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(11));

-- Location: LCCOMB_X100_Y34_N24
\WashModule|TIMER|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~24_combout\ = (\WashModule|TIMER|seconds\(12) & ((GND) # (!\WashModule|TIMER|Add0~23\))) # (!\WashModule|TIMER|seconds\(12) & (\WashModule|TIMER|Add0~23\ $ (GND)))
-- \WashModule|TIMER|Add0~25\ = CARRY((\WashModule|TIMER|seconds\(12)) # (!\WashModule|TIMER|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(12),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~23\,
	combout => \WashModule|TIMER|Add0~24_combout\,
	cout => \WashModule|TIMER|Add0~25\);

-- Location: LCCOMB_X101_Y33_N30
\WashModule|TIMER|seconds[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[12]~20_combout\ = (\WashModule|TIMER|Add0~24_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(12) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~24_combout\ & 
-- (((\WashModule|TIMER|seconds\(12) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~24_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(12),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[12]~20_combout\);

-- Location: FF_X101_Y33_N31
\WashModule|TIMER|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(12));

-- Location: LCCOMB_X100_Y34_N26
\WashModule|TIMER|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~26_combout\ = (\WashModule|TIMER|seconds\(13) & (\WashModule|TIMER|Add0~25\ & VCC)) # (!\WashModule|TIMER|seconds\(13) & (!\WashModule|TIMER|Add0~25\))
-- \WashModule|TIMER|Add0~27\ = CARRY((!\WashModule|TIMER|seconds\(13) & !\WashModule|TIMER|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(13),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~25\,
	combout => \WashModule|TIMER|Add0~26_combout\,
	cout => \WashModule|TIMER|Add0~27\);

-- Location: LCCOMB_X101_Y34_N8
\WashModule|TIMER|seconds[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[13]~21_combout\ = (\WashModule|TIMER|Add0~26_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(13) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~26_combout\ & 
-- (((\WashModule|TIMER|seconds\(13) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~26_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(13),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[13]~21_combout\);

-- Location: FF_X101_Y34_N9
\WashModule|TIMER|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(13));

-- Location: LCCOMB_X100_Y34_N28
\WashModule|TIMER|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~28_combout\ = (\WashModule|TIMER|seconds\(14) & ((GND) # (!\WashModule|TIMER|Add0~27\))) # (!\WashModule|TIMER|seconds\(14) & (\WashModule|TIMER|Add0~27\ $ (GND)))
-- \WashModule|TIMER|Add0~29\ = CARRY((\WashModule|TIMER|seconds\(14)) # (!\WashModule|TIMER|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(14),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~27\,
	combout => \WashModule|TIMER|Add0~28_combout\,
	cout => \WashModule|TIMER|Add0~29\);

-- Location: LCCOMB_X101_Y34_N26
\WashModule|TIMER|seconds[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[14]~22_combout\ = (\WashModule|TIMER|Add0~28_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(14) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~28_combout\ & 
-- (((\WashModule|TIMER|seconds\(14) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~28_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(14),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[14]~22_combout\);

-- Location: FF_X101_Y34_N27
\WashModule|TIMER|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(14));

-- Location: LCCOMB_X100_Y34_N30
\WashModule|TIMER|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~30_combout\ = (\WashModule|TIMER|seconds\(15) & (\WashModule|TIMER|Add0~29\ & VCC)) # (!\WashModule|TIMER|seconds\(15) & (!\WashModule|TIMER|Add0~29\))
-- \WashModule|TIMER|Add0~31\ = CARRY((!\WashModule|TIMER|seconds\(15) & !\WashModule|TIMER|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(15),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~29\,
	combout => \WashModule|TIMER|Add0~30_combout\,
	cout => \WashModule|TIMER|Add0~31\);

-- Location: LCCOMB_X101_Y34_N28
\WashModule|TIMER|seconds[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[15]~23_combout\ = (\WashModule|TIMER|Add0~30_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(15) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~30_combout\ & 
-- (((\WashModule|TIMER|seconds\(15) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~30_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(15),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[15]~23_combout\);

-- Location: FF_X101_Y34_N29
\WashModule|TIMER|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(15));

-- Location: LCCOMB_X100_Y33_N0
\WashModule|TIMER|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~32_combout\ = (\WashModule|TIMER|seconds\(16) & ((GND) # (!\WashModule|TIMER|Add0~31\))) # (!\WashModule|TIMER|seconds\(16) & (\WashModule|TIMER|Add0~31\ $ (GND)))
-- \WashModule|TIMER|Add0~33\ = CARRY((\WashModule|TIMER|seconds\(16)) # (!\WashModule|TIMER|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(16),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~31\,
	combout => \WashModule|TIMER|Add0~32_combout\,
	cout => \WashModule|TIMER|Add0~33\);

-- Location: LCCOMB_X101_Y34_N6
\WashModule|TIMER|seconds[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[16]~24_combout\ = (\WashModule|TIMER|Add0~32_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(16) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~32_combout\ & 
-- (((\WashModule|TIMER|seconds\(16) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~32_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(16),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[16]~24_combout\);

-- Location: FF_X101_Y34_N7
\WashModule|TIMER|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[16]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(16));

-- Location: LCCOMB_X100_Y33_N2
\WashModule|TIMER|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~34_combout\ = (\WashModule|TIMER|seconds\(17) & (\WashModule|TIMER|Add0~33\ & VCC)) # (!\WashModule|TIMER|seconds\(17) & (!\WashModule|TIMER|Add0~33\))
-- \WashModule|TIMER|Add0~35\ = CARRY((!\WashModule|TIMER|seconds\(17) & !\WashModule|TIMER|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(17),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~33\,
	combout => \WashModule|TIMER|Add0~34_combout\,
	cout => \WashModule|TIMER|Add0~35\);

-- Location: LCCOMB_X99_Y33_N12
\WashModule|TIMER|seconds[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[17]~25_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~34_combout\) # ((\WashModule|TIMER|seconds\(17) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(17) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|Add0~34_combout\,
	datac => \WashModule|TIMER|seconds\(17),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[17]~25_combout\);

-- Location: FF_X99_Y33_N13
\WashModule|TIMER|seconds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(17));

-- Location: LCCOMB_X100_Y33_N4
\WashModule|TIMER|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~36_combout\ = (\WashModule|TIMER|seconds\(18) & ((GND) # (!\WashModule|TIMER|Add0~35\))) # (!\WashModule|TIMER|seconds\(18) & (\WashModule|TIMER|Add0~35\ $ (GND)))
-- \WashModule|TIMER|Add0~37\ = CARRY((\WashModule|TIMER|seconds\(18)) # (!\WashModule|TIMER|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(18),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~35\,
	combout => \WashModule|TIMER|Add0~36_combout\,
	cout => \WashModule|TIMER|Add0~37\);

-- Location: LCCOMB_X99_Y33_N10
\WashModule|TIMER|seconds[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[18]~26_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~36_combout\) # ((\WashModule|TIMER|seconds\(18) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(18) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|Add0~36_combout\,
	datac => \WashModule|TIMER|seconds\(18),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[18]~26_combout\);

-- Location: FF_X99_Y33_N11
\WashModule|TIMER|seconds[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[18]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(18));

-- Location: LCCOMB_X100_Y33_N6
\WashModule|TIMER|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~38_combout\ = (\WashModule|TIMER|seconds\(19) & (\WashModule|TIMER|Add0~37\ & VCC)) # (!\WashModule|TIMER|seconds\(19) & (!\WashModule|TIMER|Add0~37\))
-- \WashModule|TIMER|Add0~39\ = CARRY((!\WashModule|TIMER|seconds\(19) & !\WashModule|TIMER|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(19),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~37\,
	combout => \WashModule|TIMER|Add0~38_combout\,
	cout => \WashModule|TIMER|Add0~39\);

-- Location: LCCOMB_X99_Y33_N16
\WashModule|TIMER|seconds[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[19]~27_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~38_combout\) # ((\WashModule|TIMER|seconds\(19) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(19) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|Add0~38_combout\,
	datac => \WashModule|TIMER|seconds\(19),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[19]~27_combout\);

-- Location: FF_X99_Y33_N17
\WashModule|TIMER|seconds[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(19));

-- Location: LCCOMB_X100_Y33_N8
\WashModule|TIMER|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~40_combout\ = (\WashModule|TIMER|seconds\(20) & ((GND) # (!\WashModule|TIMER|Add0~39\))) # (!\WashModule|TIMER|seconds\(20) & (\WashModule|TIMER|Add0~39\ $ (GND)))
-- \WashModule|TIMER|Add0~41\ = CARRY((\WashModule|TIMER|seconds\(20)) # (!\WashModule|TIMER|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(20),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~39\,
	combout => \WashModule|TIMER|Add0~40_combout\,
	cout => \WashModule|TIMER|Add0~41\);

-- Location: LCCOMB_X99_Y33_N22
\WashModule|TIMER|seconds[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[20]~28_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~40_combout\) # ((\WashModule|TIMER|seconds\(20) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (((\WashModule|TIMER|seconds\(20) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|Add0~40_combout\,
	datac => \WashModule|TIMER|seconds\(20),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[20]~28_combout\);

-- Location: FF_X99_Y33_N23
\WashModule|TIMER|seconds[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(20));

-- Location: LCCOMB_X99_Y33_N24
\WashModule|TIMER|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~5_combout\ = (!\WashModule|TIMER|seconds\(18) & (!\WashModule|TIMER|seconds\(19) & (!\WashModule|TIMER|seconds\(20) & !\WashModule|TIMER|seconds\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(18),
	datab => \WashModule|TIMER|seconds\(19),
	datac => \WashModule|TIMER|seconds\(20),
	datad => \WashModule|TIMER|seconds\(17),
	combout => \WashModule|TIMER|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y33_N10
\WashModule|TIMER|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~42_combout\ = (\WashModule|TIMER|seconds\(21) & (\WashModule|TIMER|Add0~41\ & VCC)) # (!\WashModule|TIMER|seconds\(21) & (!\WashModule|TIMER|Add0~41\))
-- \WashModule|TIMER|Add0~43\ = CARRY((!\WashModule|TIMER|seconds\(21) & !\WashModule|TIMER|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(21),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~41\,
	combout => \WashModule|TIMER|Add0~42_combout\,
	cout => \WashModule|TIMER|Add0~43\);

-- Location: LCCOMB_X101_Y33_N16
\WashModule|TIMER|seconds[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[21]~29_combout\ = (\WashModule|TIMER|Add0~42_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(21) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~42_combout\ & 
-- (((\WashModule|TIMER|seconds\(21) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~42_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(21),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[21]~29_combout\);

-- Location: FF_X101_Y33_N17
\WashModule|TIMER|seconds[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(21));

-- Location: LCCOMB_X100_Y33_N12
\WashModule|TIMER|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~44_combout\ = (\WashModule|TIMER|seconds\(22) & ((GND) # (!\WashModule|TIMER|Add0~43\))) # (!\WashModule|TIMER|seconds\(22) & (\WashModule|TIMER|Add0~43\ $ (GND)))
-- \WashModule|TIMER|Add0~45\ = CARRY((\WashModule|TIMER|seconds\(22)) # (!\WashModule|TIMER|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(22),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~43\,
	combout => \WashModule|TIMER|Add0~44_combout\,
	cout => \WashModule|TIMER|Add0~45\);

-- Location: LCCOMB_X101_Y33_N26
\WashModule|TIMER|seconds[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[22]~30_combout\ = (\WashModule|TIMER|Add0~44_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(22) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~44_combout\ & 
-- (((\WashModule|TIMER|seconds\(22) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~44_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(22),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[22]~30_combout\);

-- Location: FF_X101_Y33_N27
\WashModule|TIMER|seconds[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[22]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(22));

-- Location: LCCOMB_X100_Y33_N14
\WashModule|TIMER|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~46_combout\ = (\WashModule|TIMER|seconds\(23) & (\WashModule|TIMER|Add0~45\ & VCC)) # (!\WashModule|TIMER|seconds\(23) & (!\WashModule|TIMER|Add0~45\))
-- \WashModule|TIMER|Add0~47\ = CARRY((!\WashModule|TIMER|seconds\(23) & !\WashModule|TIMER|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(23),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~45\,
	combout => \WashModule|TIMER|Add0~46_combout\,
	cout => \WashModule|TIMER|Add0~47\);

-- Location: LCCOMB_X101_Y33_N24
\WashModule|TIMER|seconds[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[23]~31_combout\ = (\WashModule|TIMER|Add0~46_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(23) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~46_combout\ & 
-- (((\WashModule|TIMER|seconds\(23) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~46_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(23),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[23]~31_combout\);

-- Location: FF_X101_Y33_N25
\WashModule|TIMER|seconds[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(23));

-- Location: LCCOMB_X100_Y33_N16
\WashModule|TIMER|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~48_combout\ = (\WashModule|TIMER|seconds\(24) & ((GND) # (!\WashModule|TIMER|Add0~47\))) # (!\WashModule|TIMER|seconds\(24) & (\WashModule|TIMER|Add0~47\ $ (GND)))
-- \WashModule|TIMER|Add0~49\ = CARRY((\WashModule|TIMER|seconds\(24)) # (!\WashModule|TIMER|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(24),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~47\,
	combout => \WashModule|TIMER|Add0~48_combout\,
	cout => \WashModule|TIMER|Add0~49\);

-- Location: LCCOMB_X101_Y33_N22
\WashModule|TIMER|seconds[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[24]~32_combout\ = (\WashModule|TIMER|Add0~48_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(24) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~48_combout\ & 
-- (((\WashModule|TIMER|seconds\(24) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~48_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(24),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[24]~32_combout\);

-- Location: FF_X101_Y33_N23
\WashModule|TIMER|seconds[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(24));

-- Location: LCCOMB_X101_Y33_N20
\WashModule|TIMER|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~6_combout\ = (!\WashModule|TIMER|seconds\(24) & (!\WashModule|TIMER|seconds\(21) & (!\WashModule|TIMER|seconds\(22) & !\WashModule|TIMER|seconds\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(24),
	datab => \WashModule|TIMER|seconds\(21),
	datac => \WashModule|TIMER|seconds\(22),
	datad => \WashModule|TIMER|seconds\(23),
	combout => \WashModule|TIMER|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y33_N18
\WashModule|TIMER|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~50_combout\ = (\WashModule|TIMER|seconds\(25) & (\WashModule|TIMER|Add0~49\ & VCC)) # (!\WashModule|TIMER|seconds\(25) & (!\WashModule|TIMER|Add0~49\))
-- \WashModule|TIMER|Add0~51\ = CARRY((!\WashModule|TIMER|seconds\(25) & !\WashModule|TIMER|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(25),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~49\,
	combout => \WashModule|TIMER|Add0~50_combout\,
	cout => \WashModule|TIMER|Add0~51\);

-- Location: LCCOMB_X101_Y34_N14
\WashModule|TIMER|seconds[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[25]~33_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & ((\WashModule|TIMER|seconds\(25)) # ((\WashModule|TIMER|seconds[31]~10_combout\ & \WashModule|TIMER|Add0~50_combout\)))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & 
-- (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[2]~0_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(25),
	datad => \WashModule|TIMER|Add0~50_combout\,
	combout => \WashModule|TIMER|seconds[25]~33_combout\);

-- Location: FF_X101_Y34_N15
\WashModule|TIMER|seconds[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(25));

-- Location: LCCOMB_X100_Y33_N20
\WashModule|TIMER|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~52_combout\ = (\WashModule|TIMER|seconds\(26) & ((GND) # (!\WashModule|TIMER|Add0~51\))) # (!\WashModule|TIMER|seconds\(26) & (\WashModule|TIMER|Add0~51\ $ (GND)))
-- \WashModule|TIMER|Add0~53\ = CARRY((\WashModule|TIMER|seconds\(26)) # (!\WashModule|TIMER|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(26),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~51\,
	combout => \WashModule|TIMER|Add0~52_combout\,
	cout => \WashModule|TIMER|Add0~53\);

-- Location: LCCOMB_X101_Y34_N16
\WashModule|TIMER|seconds[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[26]~34_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & ((\WashModule|TIMER|seconds\(26)) # ((\WashModule|TIMER|seconds[31]~10_combout\ & \WashModule|TIMER|Add0~52_combout\)))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & 
-- (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[2]~0_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(26),
	datad => \WashModule|TIMER|Add0~52_combout\,
	combout => \WashModule|TIMER|seconds[26]~34_combout\);

-- Location: FF_X101_Y34_N17
\WashModule|TIMER|seconds[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(26));

-- Location: LCCOMB_X100_Y33_N22
\WashModule|TIMER|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~54_combout\ = (\WashModule|TIMER|seconds\(27) & (\WashModule|TIMER|Add0~53\ & VCC)) # (!\WashModule|TIMER|seconds\(27) & (!\WashModule|TIMER|Add0~53\))
-- \WashModule|TIMER|Add0~55\ = CARRY((!\WashModule|TIMER|seconds\(27) & !\WashModule|TIMER|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(27),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~53\,
	combout => \WashModule|TIMER|Add0~54_combout\,
	cout => \WashModule|TIMER|Add0~55\);

-- Location: LCCOMB_X101_Y34_N18
\WashModule|TIMER|seconds[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[27]~35_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~54_combout\) # ((\WashModule|TIMER|seconds[2]~0_combout\ & \WashModule|TIMER|seconds\(27))))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (\WashModule|TIMER|seconds[2]~0_combout\ & (\WashModule|TIMER|seconds\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|seconds[2]~0_combout\,
	datac => \WashModule|TIMER|seconds\(27),
	datad => \WashModule|TIMER|Add0~54_combout\,
	combout => \WashModule|TIMER|seconds[27]~35_combout\);

-- Location: FF_X101_Y34_N19
\WashModule|TIMER|seconds[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(27));

-- Location: LCCOMB_X100_Y33_N24
\WashModule|TIMER|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~56_combout\ = (\WashModule|TIMER|seconds\(28) & ((GND) # (!\WashModule|TIMER|Add0~55\))) # (!\WashModule|TIMER|seconds\(28) & (\WashModule|TIMER|Add0~55\ $ (GND)))
-- \WashModule|TIMER|Add0~57\ = CARRY((\WashModule|TIMER|seconds\(28)) # (!\WashModule|TIMER|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(28),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~55\,
	combout => \WashModule|TIMER|Add0~56_combout\,
	cout => \WashModule|TIMER|Add0~57\);

-- Location: LCCOMB_X101_Y34_N12
\WashModule|TIMER|seconds[28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[28]~36_combout\ = (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~56_combout\) # ((\WashModule|TIMER|seconds[2]~0_combout\ & \WashModule|TIMER|seconds\(28))))) # (!\WashModule|TIMER|seconds[31]~10_combout\ & 
-- (\WashModule|TIMER|seconds[2]~0_combout\ & (\WashModule|TIMER|seconds\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[31]~10_combout\,
	datab => \WashModule|TIMER|seconds[2]~0_combout\,
	datac => \WashModule|TIMER|seconds\(28),
	datad => \WashModule|TIMER|Add0~56_combout\,
	combout => \WashModule|TIMER|seconds[28]~36_combout\);

-- Location: FF_X101_Y34_N13
\WashModule|TIMER|seconds[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[28]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(28));

-- Location: LCCOMB_X100_Y33_N26
\WashModule|TIMER|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~58_combout\ = (\WashModule|TIMER|seconds\(29) & (\WashModule|TIMER|Add0~57\ & VCC)) # (!\WashModule|TIMER|seconds\(29) & (!\WashModule|TIMER|Add0~57\))
-- \WashModule|TIMER|Add0~59\ = CARRY((!\WashModule|TIMER|seconds\(29) & !\WashModule|TIMER|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(29),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~57\,
	combout => \WashModule|TIMER|Add0~58_combout\,
	cout => \WashModule|TIMER|Add0~59\);

-- Location: LCCOMB_X101_Y33_N18
\WashModule|TIMER|seconds[29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[29]~37_combout\ = (\WashModule|TIMER|Add0~58_combout\ & ((\WashModule|TIMER|seconds[31]~10_combout\) # ((\WashModule|TIMER|seconds\(29) & \WashModule|TIMER|seconds[2]~0_combout\)))) # (!\WashModule|TIMER|Add0~58_combout\ & 
-- (((\WashModule|TIMER|seconds\(29) & \WashModule|TIMER|seconds[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Add0~58_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(29),
	datad => \WashModule|TIMER|seconds[2]~0_combout\,
	combout => \WashModule|TIMER|seconds[29]~37_combout\);

-- Location: FF_X101_Y33_N19
\WashModule|TIMER|seconds[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[29]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(29));

-- Location: LCCOMB_X100_Y33_N28
\WashModule|TIMER|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~60_combout\ = (\WashModule|TIMER|seconds\(30) & ((GND) # (!\WashModule|TIMER|Add0~59\))) # (!\WashModule|TIMER|seconds\(30) & (\WashModule|TIMER|Add0~59\ $ (GND)))
-- \WashModule|TIMER|Add0~61\ = CARRY((\WashModule|TIMER|seconds\(30)) # (!\WashModule|TIMER|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|TIMER|seconds\(30),
	datad => VCC,
	cin => \WashModule|TIMER|Add0~59\,
	combout => \WashModule|TIMER|Add0~60_combout\,
	cout => \WashModule|TIMER|Add0~61\);

-- Location: LCCOMB_X101_Y33_N4
\WashModule|TIMER|seconds[30]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[30]~38_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & ((\WashModule|TIMER|seconds\(30)) # ((\WashModule|TIMER|seconds[31]~10_combout\ & \WashModule|TIMER|Add0~60_combout\)))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & 
-- (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[2]~0_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(30),
	datad => \WashModule|TIMER|Add0~60_combout\,
	combout => \WashModule|TIMER|seconds[30]~38_combout\);

-- Location: FF_X101_Y33_N5
\WashModule|TIMER|seconds[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(30));

-- Location: LCCOMB_X100_Y33_N30
\WashModule|TIMER|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Add0~62_combout\ = \WashModule|TIMER|Add0~61\ $ (!\WashModule|TIMER|seconds\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \WashModule|TIMER|seconds\(31),
	cin => \WashModule|TIMER|Add0~61\,
	combout => \WashModule|TIMER|Add0~62_combout\);

-- Location: LCCOMB_X101_Y33_N6
\WashModule|TIMER|seconds[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|seconds[31]~39_combout\ = (\WashModule|TIMER|seconds[2]~0_combout\ & ((\WashModule|TIMER|seconds\(31)) # ((\WashModule|TIMER|seconds[31]~10_combout\ & \WashModule|TIMER|Add0~62_combout\)))) # (!\WashModule|TIMER|seconds[2]~0_combout\ & 
-- (\WashModule|TIMER|seconds[31]~10_combout\ & ((\WashModule|TIMER|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds[2]~0_combout\,
	datab => \WashModule|TIMER|seconds[31]~10_combout\,
	datac => \WashModule|TIMER|seconds\(31),
	datad => \WashModule|TIMER|Add0~62_combout\,
	combout => \WashModule|TIMER|seconds[31]~39_combout\);

-- Location: FF_X101_Y33_N7
\WashModule|TIMER|seconds[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|seconds[31]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|seconds\(31));

-- Location: LCCOMB_X101_Y34_N22
\WashModule|TIMER|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~7_combout\ = (!\WashModule|TIMER|seconds\(28) & (!\WashModule|TIMER|seconds\(26) & (!\WashModule|TIMER|seconds\(25) & !\WashModule|TIMER|seconds\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(28),
	datab => \WashModule|TIMER|seconds\(26),
	datac => \WashModule|TIMER|seconds\(25),
	datad => \WashModule|TIMER|seconds\(27),
	combout => \WashModule|TIMER|Equal0~7_combout\);

-- Location: LCCOMB_X101_Y33_N8
\WashModule|TIMER|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~8_combout\ = (!\WashModule|TIMER|seconds\(31) & (!\WashModule|TIMER|seconds\(29) & (!\WashModule|TIMER|seconds\(30) & \WashModule|TIMER|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(31),
	datab => \WashModule|TIMER|seconds\(29),
	datac => \WashModule|TIMER|seconds\(30),
	datad => \WashModule|TIMER|Equal0~7_combout\,
	combout => \WashModule|TIMER|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y34_N30
\WashModule|TIMER|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~1_combout\ = (!\WashModule|TIMER|seconds\(7) & (!\WashModule|TIMER|seconds\(8) & (!\WashModule|TIMER|seconds\(5) & !\WashModule|TIMER|seconds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(7),
	datab => \WashModule|TIMER|seconds\(8),
	datac => \WashModule|TIMER|seconds\(5),
	datad => \WashModule|TIMER|seconds\(6),
	combout => \WashModule|TIMER|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y33_N28
\WashModule|TIMER|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~2_combout\ = (!\WashModule|TIMER|seconds\(10) & (!\WashModule|TIMER|seconds\(11) & (!\WashModule|TIMER|seconds\(12) & !\WashModule|TIMER|seconds\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(10),
	datab => \WashModule|TIMER|seconds\(11),
	datac => \WashModule|TIMER|seconds\(12),
	datad => \WashModule|TIMER|seconds\(9),
	combout => \WashModule|TIMER|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y34_N4
\WashModule|TIMER|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~3_combout\ = (!\WashModule|TIMER|seconds\(16) & (!\WashModule|TIMER|seconds\(13) & (!\WashModule|TIMER|seconds\(14) & !\WashModule|TIMER|seconds\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(16),
	datab => \WashModule|TIMER|seconds\(13),
	datac => \WashModule|TIMER|seconds\(14),
	datad => \WashModule|TIMER|seconds\(15),
	combout => \WashModule|TIMER|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y34_N26
\WashModule|TIMER|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~0_combout\ = (!\WashModule|TIMER|seconds\(2) & (!\WashModule|TIMER|seconds\(3) & (!\WashModule|TIMER|seconds\(1) & !\WashModule|TIMER|seconds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|seconds\(2),
	datab => \WashModule|TIMER|seconds\(3),
	datac => \WashModule|TIMER|seconds\(1),
	datad => \WashModule|TIMER|seconds\(4),
	combout => \WashModule|TIMER|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y33_N2
\WashModule|TIMER|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~4_combout\ = (\WashModule|TIMER|Equal0~1_combout\ & (\WashModule|TIMER|Equal0~2_combout\ & (\WashModule|TIMER|Equal0~3_combout\ & \WashModule|TIMER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Equal0~1_combout\,
	datab => \WashModule|TIMER|Equal0~2_combout\,
	datac => \WashModule|TIMER|Equal0~3_combout\,
	datad => \WashModule|TIMER|Equal0~0_combout\,
	combout => \WashModule|TIMER|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y33_N14
\WashModule|TIMER|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|Equal0~9_combout\ = (\WashModule|TIMER|Equal0~5_combout\ & (\WashModule|TIMER|Equal0~6_combout\ & (\WashModule|TIMER|Equal0~8_combout\ & \WashModule|TIMER|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Equal0~5_combout\,
	datab => \WashModule|TIMER|Equal0~6_combout\,
	datac => \WashModule|TIMER|Equal0~8_combout\,
	datad => \WashModule|TIMER|Equal0~4_combout\,
	combout => \WashModule|TIMER|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y33_N12
\WashModule|TIMER|exp_time~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~10_combout\ = (\WashModule|TIMER|Equal0~9_combout\ & (!\WashModule|TIMER|periods\(0) & (\WashModule|TIMER|seconds\(0) & \WashModule|TIMER|exp_time~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|Equal0~9_combout\,
	datab => \WashModule|TIMER|periods\(0),
	datac => \WashModule|TIMER|seconds\(0),
	datad => \WashModule|TIMER|exp_time~9_combout\,
	combout => \WashModule|TIMER|exp_time~10_combout\);

-- Location: LCCOMB_X102_Y33_N18
\WashModule|TIMER|exp_time~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|TIMER|exp_time~11_combout\ = (\WashModule|TIMER|periods[29]~32_combout\ & ((\MenuModule|Menu|pState.WASH~q\ & (\WashModule|TIMER|exp_time~10_combout\)) # (!\MenuModule|Menu|pState.WASH~q\ & ((\WashModule|TIMER|exp_time~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|TIMER|exp_time~10_combout\,
	datab => \MenuModule|Menu|pState.WASH~q\,
	datac => \WashModule|TIMER|exp_time~q\,
	datad => \WashModule|TIMER|periods[29]~32_combout\,
	combout => \WashModule|TIMER|exp_time~11_combout\);

-- Location: FF_X102_Y33_N19
\WashModule|TIMER|exp_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|TIMER|exp_time~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|TIMER|exp_time~q\);

-- Location: LCCOMB_X101_Y32_N26
\WashModule|FSM|pState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~25_combout\ = (\WashModule|FSM|pState.PW2~q\ & ((!\WashModule|TIMER|exp_time~q\) # (!\MenuModule|Menu|pState.WASH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WashModule|FSM|pState.PW2~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~25_combout\);

-- Location: LCCOMB_X101_Y32_N28
\WashModule|FSM|pState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~26_combout\ = (\WashModule|FSM|pState.IDLE~q\ & (((\WashModule|FSM|pState.RW1~q\ & \WashModule|TIMER|exp_time~q\)))) # (!\WashModule|FSM|pState.IDLE~q\ & ((\Dec4|Equal1~0_combout\) # ((\WashModule|FSM|pState.RW1~q\ & 
-- \WashModule|TIMER|exp_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.IDLE~q\,
	datab => \Dec4|Equal1~0_combout\,
	datac => \WashModule|FSM|pState.RW1~q\,
	datad => \WashModule|TIMER|exp_time~q\,
	combout => \WashModule|FSM|pState~26_combout\);

-- Location: LCCOMB_X101_Y32_N18
\WashModule|FSM|pState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|pState~27_combout\ = (!\comb~0_combout\ & ((\WashModule|FSM|pState~25_combout\) # ((\WashModule|FSM|pState~26_combout\ & \MenuModule|Menu|pState.WASH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState~25_combout\,
	datab => \WashModule|FSM|pState~26_combout\,
	datac => \comb~0_combout\,
	datad => \MenuModule|Menu|pState.WASH~q\,
	combout => \WashModule|FSM|pState~27_combout\);

-- Location: FF_X101_Y32_N19
\WashModule|FSM|pState.PW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \WashModule|FSM|pState~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WashModule|FSM|pState.PW2~q\);

-- Location: LCCOMB_X102_Y33_N28
\WashModule|FSM|w_valve~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|w_valve~0_combout\ = (\MenuModule|Menu|pState.WASH~q\ & ((\WashModule|FSM|pState.PW2~q\) # (\WashModule|FSM|pState.PW1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.PW2~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.PW1~q\,
	combout => \WashModule|FSM|w_valve~0_combout\);

-- Location: LCCOMB_X102_Y33_N22
\WashModule|FSM|w_pump~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|w_pump~0_combout\ = (\MenuModule|Menu|pState.WASH~q\ & ((\WashModule|FSM|pState.RW1~q\) # ((\WashModule|FSM|pState.RW3~q\) # (\WashModule|FSM|pState.RW2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WashModule|FSM|pState.RW1~q\,
	datab => \WashModule|FSM|pState.RW3~q\,
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.RW2~q\,
	combout => \WashModule|FSM|w_pump~0_combout\);

-- Location: LCCOMB_X102_Y33_N16
\WashModule|FSM|spin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WashModule|FSM|spin~0_combout\ = (\MenuModule|Menu|pState.WASH~q\ & \WashModule|FSM|pState.SP1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Menu|pState.WASH~q\,
	datad => \WashModule|FSM|pState.SP1~q\,
	combout => \WashModule|FSM|spin~0_combout\);

-- Location: LCCOMB_X101_Y28_N18
\MenuModule|Demux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Demux|Mux1~0_combout\ = (\Debouncer2|s_pulsedOut~q\ & \MenuModule|Menu|pState.TEMP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debouncer2|s_pulsedOut~q\,
	datad => \MenuModule|Menu|pState.TEMP~q\,
	combout => \MenuModule|Demux|Mux1~0_combout\);

-- Location: LCCOMB_X101_Y28_N24
\MenuModule|Temp|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Temp|Selector0~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Temp|pState.T60~q\ & ((!\MenuModule|Demux|Mux1~0_combout\))) # (!\MenuModule|Temp|pState.T60~q\ & ((\MenuModule|Temp|pState.COLD~q\) # 
-- (\MenuModule|Demux|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Temp|pState.T60~q\,
	datac => \MenuModule|Temp|pState.COLD~q\,
	datad => \MenuModule|Demux|Mux1~0_combout\,
	combout => \MenuModule|Temp|Selector0~0_combout\);

-- Location: FF_X101_Y28_N25
\MenuModule|Temp|pState.COLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Temp|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Temp|pState.COLD~q\);

-- Location: LCCOMB_X101_Y28_N28
\MenuModule|Temp|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Temp|Selector1~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Temp|pState.COLD~q\ & (\MenuModule|Temp|pState.T40~q\ & !\MenuModule|Demux|Mux1~0_combout\)) # (!\MenuModule|Temp|pState.COLD~q\ & 
-- ((\MenuModule|Demux|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Temp|pState.COLD~q\,
	datac => \MenuModule|Temp|pState.T40~q\,
	datad => \MenuModule|Demux|Mux1~0_combout\,
	combout => \MenuModule|Temp|Selector1~0_combout\);

-- Location: FF_X101_Y28_N29
\MenuModule|Temp|pState.T40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Temp|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Temp|pState.T40~q\);

-- Location: LCCOMB_X101_Y28_N22
\MenuModule|Temp|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Temp|Selector2~0_combout\ = (!\Debouncer0|s_pulsedOut~q\ & ((\MenuModule|Temp|pState.T40~q\ & ((\MenuModule|Demux|Mux1~0_combout\))) # (!\MenuModule|Temp|pState.T40~q\ & (\MenuModule|Temp|pState.T60~q\ & !\MenuModule|Demux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debouncer0|s_pulsedOut~q\,
	datab => \MenuModule|Temp|pState.T40~q\,
	datac => \MenuModule|Temp|pState.T60~q\,
	datad => \MenuModule|Demux|Mux1~0_combout\,
	combout => \MenuModule|Temp|Selector2~0_combout\);

-- Location: FF_X101_Y28_N23
\MenuModule|Temp|pState.T60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Temp|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Temp|pState.T60~q\);

-- Location: LCCOMB_X101_Y28_N20
\MenuModule|Spin|nState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Spin|nState~0_combout\ = \MenuModule|Spin|pState~q\ $ (((\Debouncer2|s_pulsedOut~q\ & \MenuModule|Menu|pState.SPIN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debouncer2|s_pulsedOut~q\,
	datac => \MenuModule|Spin|pState~q\,
	datad => \MenuModule|Menu|pState.SPIN~q\,
	combout => \MenuModule|Spin|nState~0_combout\);

-- Location: FF_X101_Y28_N21
\MenuModule|Spin|pState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MenuModule|Spin|nState~0_combout\,
	sclr => \Debouncer0|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MenuModule|Spin|pState~q\);

-- Location: LCCOMB_X101_Y28_N14
\MenuModule|Menu|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector8~0_combout\ = ((\MenuModule|Menu|pState.TEMP~q\ & \MenuModule|Temp|pState.COLD~q\)) # (!\MenuModule|Menu|pState.PROG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Menu|pState.TEMP~q\,
	datac => \MenuModule|Temp|pState.COLD~q\,
	datad => \MenuModule|Menu|pState.PROG~q\,
	combout => \MenuModule|Menu|Selector8~0_combout\);

-- Location: LCCOMB_X106_Y27_N18
\MenuModule|Menu|disp_1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|disp_1\(2) = (\MenuModule|Menu|pState.DELAY~q\) # (\MenuModule|Menu|pState.PAUSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|pState.PAUSE~q\,
	combout => \MenuModule|Menu|disp_1\(2));

-- Location: LCCOMB_X106_Y27_N6
\MenuModule|Menu|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector9~0_combout\ = (\MenuModule|Menu|pState.TEMP~q\ & \MenuModule|Temp|pState.T60~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Menu|pState.TEMP~q\,
	datac => \MenuModule|Temp|pState.T60~q\,
	combout => \MenuModule|Menu|Selector9~0_combout\);

-- Location: LCCOMB_X106_Y27_N8
\MenuModule|Menu|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector9~1_combout\ = (\MenuModule|Menu|Selector9~0_combout\) # ((\MenuModule|Menu|disp_1\(2)) # ((\MenuModule|Spin|pState~q\ & \MenuModule|Menu|pState.SPIN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector9~0_combout\,
	datab => \MenuModule|Spin|pState~q\,
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \MenuModule|Menu|disp_1\(2),
	combout => \MenuModule|Menu|Selector9~1_combout\);

-- Location: LCCOMB_X106_Y27_N0
\MenuModule|Menu|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|Selector10~0_combout\ = (\MenuModule|Menu|pState.WASH~q\) # ((\MenuModule|Menu|pState.PAUSE~q\) # ((!\MenuModule|Spin|pState~q\ & \MenuModule|Menu|pState.SPIN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datab => \MenuModule|Spin|pState~q\,
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \MenuModule|Menu|pState.PAUSE~q\,
	combout => \MenuModule|Menu|Selector10~0_combout\);

-- Location: LCCOMB_X109_Y28_N0
\Dec3|h0[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[0]~4_combout\ = (!\MenuModule|Menu|pState.TEMP~q\ & !\MenuModule|Menu|pState.SPIN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.TEMP~q\,
	datad => \MenuModule|Menu|pState.SPIN~q\,
	combout => \Dec3|h0[0]~4_combout\);

-- Location: LCCOMB_X109_Y27_N20
\Dec3|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|Equal4~0_combout\ = (!\MenuModule|Menu|Selector9~1_combout\ & (!\MenuModule|Menu|Selector10~0_combout\ & (\Dec3|h0[0]~4_combout\ & \MenuModule|Menu|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector9~1_combout\,
	datab => \MenuModule|Menu|Selector10~0_combout\,
	datac => \Dec3|h0[0]~4_combout\,
	datad => \MenuModule|Menu|Selector8~0_combout\,
	combout => \Dec3|Equal4~0_combout\);

-- Location: LCCOMB_X106_Y27_N28
\MenuModule|Menu|disp_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|disp_0~0_combout\ = (\MenuModule|Menu|pState.WASH~q\) # (\MenuModule|Menu|pState.PAUSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datad => \MenuModule|Menu|pState.PAUSE~q\,
	combout => \MenuModule|Menu|disp_0~0_combout\);

-- Location: LCCOMB_X106_Y27_N10
\Dec3|h0[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[0]~5_combout\ = (\MenuModule|Menu|disp_0~0_combout\ & ((\MenuModule|Menu|Selector8~0_combout\) # ((\MenuModule|Menu|disp_1\(2))))) # (!\MenuModule|Menu|disp_0~0_combout\ & (((!\Dec3|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector8~0_combout\,
	datab => \MenuModule|Menu|disp_1\(2),
	datac => \Dec3|Equal4~0_combout\,
	datad => \MenuModule|Menu|disp_0~0_combout\,
	combout => \Dec3|h0[0]~5_combout\);

-- Location: LCCOMB_X106_Y27_N14
\Dec3|h0[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[0]~18_combout\ = (\MenuModule|Menu|pState.SPIN~q\ & (!\MenuModule|Spin|pState~q\)) # (!\MenuModule|Menu|pState.SPIN~q\ & (((!\MenuModule|Menu|pState.TEMP~q\ & \Dec3|h0[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Spin|pState~q\,
	datac => \MenuModule|Menu|pState.TEMP~q\,
	datad => \Dec3|h0[0]~5_combout\,
	combout => \Dec3|h0[0]~18_combout\);

-- Location: LCCOMB_X106_Y27_N4
\Dec3|h0[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[1]~6_combout\ = (\MenuModule|Menu|pState.SPIN~q\) # ((\MenuModule|Menu|pState.TEMP~q\) # (\MenuModule|Menu|disp_0~0_combout\ $ (\MenuModule|Menu|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|disp_0~0_combout\,
	datac => \MenuModule|Menu|pState.TEMP~q\,
	datad => \MenuModule|Menu|Selector9~1_combout\,
	combout => \Dec3|h0[1]~6_combout\);

-- Location: LCCOMB_X106_Y27_N2
\Dec3|h0[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[2]~7_combout\ = (\MenuModule|Menu|disp_0~0_combout\) # ((\MenuModule|Menu|Selector8~0_combout\ & ((!\Dec3|Equal4~0_combout\))) # (!\MenuModule|Menu|Selector8~0_combout\ & (!\MenuModule|Menu|disp_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector8~0_combout\,
	datab => \MenuModule|Menu|disp_1\(2),
	datac => \Dec3|Equal4~0_combout\,
	datad => \MenuModule|Menu|disp_0~0_combout\,
	combout => \Dec3|h0[2]~7_combout\);

-- Location: LCCOMB_X106_Y27_N20
\Dec3|h0[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[2]~19_combout\ = (\MenuModule|Menu|pState.TEMP~q\ & (!\MenuModule|Menu|Selector8~0_combout\ & (\MenuModule|Temp|pState.T60~q\))) # (!\MenuModule|Menu|pState.TEMP~q\ & (((\Dec3|h0[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector8~0_combout\,
	datab => \MenuModule|Menu|pState.TEMP~q\,
	datac => \MenuModule|Temp|pState.T60~q\,
	datad => \Dec3|h0[2]~7_combout\,
	combout => \Dec3|h0[2]~19_combout\);

-- Location: LCCOMB_X106_Y27_N16
\Dec3|h0[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[2]~8_combout\ = (\MenuModule|Menu|pState.SPIN~q\ & (\MenuModule|Spin|pState~q\)) # (!\MenuModule|Menu|pState.SPIN~q\ & ((\Dec3|h0[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Spin|pState~q\,
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \Dec3|h0[2]~19_combout\,
	combout => \Dec3|h0[2]~8_combout\);

-- Location: LCCOMB_X109_Y28_N4
\Dec3|h0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0~9_combout\ = (\Dec3|h0[0]~4_combout\ & ((\MenuModule|Menu|Selector10~0_combout\ & (!\MenuModule|Menu|Selector8~0_combout\ & \MenuModule|Menu|Selector9~1_combout\)) # (!\MenuModule|Menu|Selector10~0_combout\ & 
-- (\MenuModule|Menu|Selector8~0_combout\ & !\MenuModule|Menu|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector10~0_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Menu|Selector9~1_combout\,
	datad => \Dec3|h0[0]~4_combout\,
	combout => \Dec3|h0~9_combout\);

-- Location: LCCOMB_X109_Y28_N2
\Dec3|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|Equal4~1_combout\ = (!\MenuModule|Menu|Selector10~0_combout\ & (!\MenuModule|Menu|Selector8~0_combout\ & (\MenuModule|Menu|Selector9~1_combout\ & \Dec3|h0[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector10~0_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Menu|Selector9~1_combout\,
	datad => \Dec3|h0[0]~4_combout\,
	combout => \Dec3|Equal4~1_combout\);

-- Location: LCCOMB_X109_Y28_N18
\Dec3|h0[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[5]~10_combout\ = (!\Dec3|h0~9_combout\ & !\Dec3|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec3|h0~9_combout\,
	datad => \Dec3|Equal4~1_combout\,
	combout => \Dec3|h0[5]~10_combout\);

-- Location: LCCOMB_X109_Y28_N30
\Dec3|h0[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[3]~12_combout\ = (\MenuModule|Menu|Selector9~1_combout\ & (!\MenuModule|Menu|pState.SPIN~q\ & ((\Dec3|h0[5]~10_combout\)))) # (!\MenuModule|Menu|Selector9~1_combout\ & (((\MenuModule|Menu|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|Selector9~1_combout\,
	datac => \MenuModule|Menu|Selector10~0_combout\,
	datad => \Dec3|h0[5]~10_combout\,
	combout => \Dec3|h0[3]~12_combout\);

-- Location: LCCOMB_X109_Y28_N28
\Dec3|h0[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[3]~11_combout\ = (!\MenuModule|Menu|pState.PROG~q\ & ((\MenuModule|Menu|pState.SPIN~q\ & (!\MenuModule|Spin|pState~q\)) # (!\MenuModule|Menu|pState.SPIN~q\ & ((\Dec3|h0[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|pState.PROG~q\,
	datac => \MenuModule|Spin|pState~q\,
	datad => \Dec3|h0[5]~10_combout\,
	combout => \Dec3|h0[3]~11_combout\);

-- Location: LCCOMB_X109_Y28_N12
\Dec3|h0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[3]~13_combout\ = (!\MenuModule|Menu|pState.TEMP~q\ & ((\Dec3|h0[3]~11_combout\) # ((\MenuModule|Menu|pState.PROG~q\ & \Dec3|h0[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.TEMP~q\,
	datab => \MenuModule|Menu|pState.PROG~q\,
	datac => \Dec3|h0[3]~12_combout\,
	datad => \Dec3|h0[3]~11_combout\,
	combout => \Dec3|h0[3]~13_combout\);

-- Location: LCCOMB_X106_Y27_N22
\Dec3|h0[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[4]~14_combout\ = (!\MenuModule|Menu|disp_0~0_combout\ & ((\MenuModule|Menu|disp_1\(2) & (!\MenuModule|Menu|pState.SPIN~q\)) # (!\MenuModule|Menu|disp_1\(2) & (\MenuModule|Menu|pState.SPIN~q\ & !\MenuModule|Spin|pState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|disp_0~0_combout\,
	datab => \MenuModule|Menu|disp_1\(2),
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \MenuModule|Spin|pState~q\,
	combout => \Dec3|h0[4]~14_combout\);

-- Location: LCCOMB_X109_Y28_N22
\Dec3|h0[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[5]~15_combout\ = (\MenuModule|Menu|pState.SPIN~q\) # ((!\Dec3|h0~9_combout\ & (\MenuModule|Menu|Selector9~1_combout\ & !\Dec3|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \Dec3|h0~9_combout\,
	datac => \MenuModule|Menu|Selector9~1_combout\,
	datad => \Dec3|Equal4~1_combout\,
	combout => \Dec3|h0[5]~15_combout\);

-- Location: LCCOMB_X109_Y28_N20
\Dec3|h0[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[5]~16_combout\ = (!\MenuModule|Menu|pState.TEMP~q\ & ((\Dec3|h0[3]~11_combout\) # ((\MenuModule|Menu|pState.PROG~q\ & \Dec3|h0[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.TEMP~q\,
	datab => \MenuModule|Menu|pState.PROG~q\,
	datac => \Dec3|h0[5]~15_combout\,
	datad => \Dec3|h0[3]~11_combout\,
	combout => \Dec3|h0[5]~16_combout\);

-- Location: LCCOMB_X109_Y28_N14
\Dec3|h0[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h0[6]~17_combout\ = (\MenuModule|Menu|pState.SPIN~q\ & (!\MenuModule|Menu|Selector8~0_combout\ & (!\MenuModule|Spin|pState~q\ & !\MenuModule|Menu|pState.TEMP~q\))) # (!\MenuModule|Menu|pState.SPIN~q\ & ((\MenuModule|Menu|Selector8~0_combout\) # 
-- ((\MenuModule|Menu|pState.TEMP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Spin|pState~q\,
	datad => \MenuModule|Menu|pState.TEMP~q\,
	combout => \Dec3|h0[6]~17_combout\);

-- Location: LCCOMB_X109_Y27_N2
\Dec3|h1[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[0]~10_combout\ = (\MenuModule|Menu|Selector10~0_combout\ & ((\Dec3|h0[0]~4_combout\ $ (!\MenuModule|Menu|Selector8~0_combout\)))) # (!\MenuModule|Menu|Selector10~0_combout\ & ((\MenuModule|Menu|Selector9~1_combout\) # ((!\Dec3|h0[0]~4_combout\ & 
-- !\MenuModule|Menu|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector9~1_combout\,
	datab => \MenuModule|Menu|Selector10~0_combout\,
	datac => \Dec3|h0[0]~4_combout\,
	datad => \MenuModule|Menu|Selector8~0_combout\,
	combout => \Dec3|h1[0]~10_combout\);

-- Location: LCCOMB_X109_Y28_N24
\Dec3|h1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[1]~11_combout\ = (\MenuModule|Menu|pState.SPIN~q\) # (\MenuModule|Menu|pState.TEMP~q\ $ (((\MenuModule|Menu|Selector9~1_combout\ & !\MenuModule|Menu|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|Selector9~1_combout\,
	datac => \MenuModule|Menu|Selector10~0_combout\,
	datad => \MenuModule|Menu|pState.TEMP~q\,
	combout => \Dec3|h1[1]~11_combout\);

-- Location: LCCOMB_X108_Y27_N4
\Dec3|h1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[2]~12_combout\ = (\MenuModule|Menu|pState.PROG~q\ & (!\MenuModule|Menu|Selector9~1_combout\ & (!\MenuModule|Menu|pState.TEMP~q\ & !\MenuModule|Menu|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.PROG~q\,
	datab => \MenuModule|Menu|Selector9~1_combout\,
	datac => \MenuModule|Menu|pState.TEMP~q\,
	datad => \MenuModule|Menu|Selector10~0_combout\,
	combout => \Dec3|h1[2]~12_combout\);

-- Location: LCCOMB_X106_Y27_N12
\Dec3|h1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[3]~13_combout\ = (\MenuModule|Menu|pState.SPIN~q\) # ((\MenuModule|Menu|pState.TEMP~q\ & ((\MenuModule|Temp|pState.T60~q\) # (!\MenuModule|Menu|Selector8~0_combout\))) # (!\MenuModule|Menu|pState.TEMP~q\ & 
-- ((\MenuModule|Menu|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Temp|pState.T60~q\,
	datab => \MenuModule|Menu|pState.TEMP~q\,
	datac => \MenuModule|Menu|pState.SPIN~q\,
	datad => \MenuModule|Menu|Selector8~0_combout\,
	combout => \Dec3|h1[3]~13_combout\);

-- Location: LCCOMB_X106_Y27_N26
\Dec3|h1[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[3]~20_combout\ = (\MenuModule|Menu|pState.PAUSE~q\) # ((\MenuModule|Menu|pState.DELAY~q\) # ((!\MenuModule|Menu|pState.WASH~q\ & !\Dec3|h1[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \Dec3|h1[3]~13_combout\,
	combout => \Dec3|h1[3]~20_combout\);

-- Location: LCCOMB_X109_Y28_N26
\Dec3|h1[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[4]~14_combout\ = (!\Dec3|h0[0]~4_combout\ & (((!\MenuModule|Menu|Selector10~0_combout\ & !\MenuModule|Menu|Selector9~1_combout\)) # (!\MenuModule|Menu|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector10~0_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Menu|Selector9~1_combout\,
	datad => \Dec3|h0[0]~4_combout\,
	combout => \Dec3|h1[4]~14_combout\);

-- Location: LCCOMB_X109_Y28_N10
\Dec3|h1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1~19_combout\ = (\MenuModule|Menu|pState.SPIN~q\ & (\MenuModule|Menu|Selector8~0_combout\ & (\MenuModule|Menu|Selector10~0_combout\))) # (!\MenuModule|Menu|pState.SPIN~q\ & (((\MenuModule|Menu|Selector8~0_combout\ & 
-- \MenuModule|Menu|Selector10~0_combout\)) # (!\MenuModule|Menu|pState.TEMP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.SPIN~q\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Menu|Selector10~0_combout\,
	datad => \MenuModule|Menu|pState.TEMP~q\,
	combout => \Dec3|h1~19_combout\);

-- Location: LCCOMB_X109_Y28_N8
\Dec3|h1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1~15_combout\ = ((\Dec3|h1~19_combout\ & (!\MenuModule|Menu|Selector8~0_combout\ & !\MenuModule|Menu|Selector9~1_combout\)) # (!\Dec3|h1~19_combout\ & (\MenuModule|Menu|Selector8~0_combout\ & \MenuModule|Menu|Selector9~1_combout\))) # 
-- (!\Dec3|h0[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec3|h1~19_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \MenuModule|Menu|Selector9~1_combout\,
	datad => \Dec3|h0[5]~10_combout\,
	combout => \Dec3|h1~15_combout\);

-- Location: LCCOMB_X109_Y28_N6
\Dec3|h1[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[4]~16_combout\ = (\Dec3|h1[4]~14_combout\ & (\MenuModule|Menu|Selector8~0_combout\)) # (!\Dec3|h1[4]~14_combout\ & ((!\Dec3|h1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec3|h1[4]~14_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \Dec3|h1~15_combout\,
	combout => \Dec3|h1[4]~16_combout\);

-- Location: LCCOMB_X109_Y26_N28
\Dec3|h1[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[5]~17_combout\ = (\MenuModule|Menu|Selector10~0_combout\ & (((\MenuModule|Menu|Selector8~0_combout\) # (\Dec3|h0[0]~4_combout\)))) # (!\MenuModule|Menu|Selector10~0_combout\ & (\Dec3|h0[0]~4_combout\ & ((\MenuModule|Menu|Selector8~0_combout\) # 
-- (!\MenuModule|Menu|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|Selector10~0_combout\,
	datab => \MenuModule|Menu|Selector9~1_combout\,
	datac => \MenuModule|Menu|Selector8~0_combout\,
	datad => \Dec3|h0[0]~4_combout\,
	combout => \Dec3|h1[5]~17_combout\);

-- Location: LCCOMB_X109_Y28_N16
\Dec3|h1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec3|h1[6]~18_combout\ = (\Dec3|h1[4]~14_combout\ & (\MenuModule|Menu|Selector8~0_combout\)) # (!\Dec3|h1[4]~14_combout\ & ((\Dec3|h1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec3|h1[4]~14_combout\,
	datab => \MenuModule|Menu|Selector8~0_combout\,
	datac => \Dec3|h1~15_combout\,
	combout => \Dec3|h1[6]~18_combout\);

-- Location: LCCOMB_X107_Y24_N10
\MenuModule|Menu|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|WideOr2~0_combout\ = (!\MenuModule|Menu|pState.SPIN~q\ & (!\MenuModule|Menu|pState.DELAY~q\ & \MenuModule|Menu|pState.PROG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Menu|pState.SPIN~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|pState.PROG~q\,
	combout => \MenuModule|Menu|WideOr2~0_combout\);

-- Location: LCCOMB_X107_Y24_N24
\MenuModule|Menu|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MenuModule|Menu|WideOr1~0_combout\ = (\MenuModule|Menu|pState.SPIN~q\) # ((\MenuModule|Menu|pState.MODE~q\) # (\MenuModule|Menu|pState.WASH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Menu|pState.SPIN~q\,
	datac => \MenuModule|Menu|pState.MODE~q\,
	datad => \MenuModule|Menu|pState.WASH~q\,
	combout => \MenuModule|Menu|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y24_N14
\Dec2|h0[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h0[0]~12_combout\ = (\MenuModule|Menu|pState.PAUSE~q\) # ((\MenuModule|Menu|pState.DELAY~q\) # (\MenuModule|Menu|WideOr2~0_combout\ $ (!\MenuModule|Menu|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h0[0]~12_combout\);

-- Location: LCCOMB_X107_Y24_N16
\Dec2|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|Equal4~2_combout\ = (\MenuModule|Menu|WideOr2~0_combout\ & (!\MenuModule|Menu|WideOr1~0_combout\ & ((\MenuModule|Menu|pState.PAUSE~q\) # (\MenuModule|Menu|pState.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|Equal4~2_combout\);

-- Location: LCCOMB_X107_Y24_N22
\Dec2|h0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h0[3]~13_combout\ = (\MenuModule|Menu|pState.PAUSE~q\ & (((\MenuModule|Menu|WideOr1~0_combout\)))) # (!\MenuModule|Menu|pState.PAUSE~q\ & ((\MenuModule|Menu|pState.DELAY~q\ & ((\MenuModule|Menu|WideOr1~0_combout\))) # 
-- (!\MenuModule|Menu|pState.DELAY~q\ & ((!\MenuModule|Menu|WideOr1~0_combout\) # (!\MenuModule|Menu|WideOr2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h0[3]~13_combout\);

-- Location: LCCOMB_X107_Y24_N4
\Dec2|h0[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h0[4]~14_combout\ = (\MenuModule|Menu|WideOr1~0_combout\ & ((\MenuModule|Menu|pState.PAUSE~q\) # (\MenuModule|Menu|pState.DELAY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h0[4]~14_combout\);

-- Location: LCCOMB_X107_Y24_N30
\Dec2|h0[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h0[5]~15_combout\ = (\MenuModule|Menu|WideOr2~0_combout\ & (!\MenuModule|Menu|pState.PAUSE~q\ & (!\MenuModule|Menu|pState.DELAY~q\))) # (!\MenuModule|Menu|WideOr2~0_combout\ & (\MenuModule|Menu|WideOr1~0_combout\ $ 
-- (((\MenuModule|Menu|pState.PAUSE~q\) # (\MenuModule|Menu|pState.DELAY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h0[5]~15_combout\);

-- Location: LCCOMB_X107_Y24_N28
\Dec2|h0[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h0[6]~16_combout\ = (\MenuModule|Menu|WideOr2~0_combout\ & (((!\MenuModule|Menu|pState.PAUSE~q\ & !\MenuModule|Menu|pState.DELAY~q\)) # (!\MenuModule|Menu|WideOr1~0_combout\))) # (!\MenuModule|Menu|WideOr2~0_combout\ & 
-- (!\MenuModule|Menu|pState.PAUSE~q\ & (!\MenuModule|Menu|pState.DELAY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h0[6]~16_combout\);

-- Location: LCCOMB_X107_Y24_N2
\Dec2|h1[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h1[0]~14_combout\ = (\MenuModule|Menu|WideOr2~0_combout\ & (\MenuModule|Menu|WideOr1~0_combout\ $ (((!\MenuModule|Menu|pState.PAUSE~q\ & !\MenuModule|Menu|pState.DELAY~q\))))) # (!\MenuModule|Menu|WideOr2~0_combout\ & 
-- ((\MenuModule|Menu|pState.PAUSE~q\) # ((\MenuModule|Menu|pState.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h1[0]~14_combout\);

-- Location: LCCOMB_X107_Y24_N0
\Dec2|h1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h1[1]~15_combout\ = (\MenuModule|Menu|pState.WASH~q\) # ((\MenuModule|Menu|pState.SPIN~q\) # ((\MenuModule|Menu|pState.MODE~q\) # (\MenuModule|Menu|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|pState.WASH~q\,
	datab => \MenuModule|Menu|pState.SPIN~q\,
	datac => \MenuModule|Menu|pState.MODE~q\,
	datad => \MenuModule|Menu|WideOr2~0_combout\,
	combout => \Dec2|h1[1]~15_combout\);

-- Location: LCCOMB_X107_Y24_N26
\Dec2|h1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h1~16_combout\ = (\MenuModule|Menu|WideOr1~0_combout\ & (((!\MenuModule|Menu|pState.PAUSE~q\ & !\MenuModule|Menu|pState.DELAY~q\)))) # (!\MenuModule|Menu|WideOr1~0_combout\ & (!\MenuModule|Menu|WideOr2~0_combout\ & 
-- ((\MenuModule|Menu|pState.PAUSE~q\) # (\MenuModule|Menu|pState.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h1~16_combout\);

-- Location: LCCOMB_X107_Y24_N12
\Dec2|h1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h1[3]~17_combout\ = (\MenuModule|Menu|pState.PAUSE~q\ & (((\MenuModule|Menu|WideOr1~0_combout\)))) # (!\MenuModule|Menu|pState.PAUSE~q\ & ((\MenuModule|Menu|pState.DELAY~q\ & ((\MenuModule|Menu|WideOr1~0_combout\))) # 
-- (!\MenuModule|Menu|pState.DELAY~q\ & (!\MenuModule|Menu|WideOr2~0_combout\ & !\MenuModule|Menu|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h1[3]~17_combout\);

-- Location: LCCOMB_X107_Y24_N18
\Dec2|h1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec2|h1[6]~18_combout\ = (\MenuModule|Menu|WideOr2~0_combout\ & ((\MenuModule|Menu|pState.PAUSE~q\) # ((\MenuModule|Menu|pState.DELAY~q\)))) # (!\MenuModule|Menu|WideOr2~0_combout\ & (\MenuModule|Menu|WideOr1~0_combout\ & 
-- ((\MenuModule|Menu|pState.PAUSE~q\) # (\MenuModule|Menu|pState.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Menu|WideOr2~0_combout\,
	datab => \MenuModule|Menu|pState.PAUSE~q\,
	datac => \MenuModule|Menu|pState.DELAY~q\,
	datad => \MenuModule|Menu|WideOr1~0_combout\,
	combout => \Dec2|h1[6]~18_combout\);

-- Location: LCCOMB_X94_Y16_N10
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \MenuModule|Timer|seconds\(3) $ (VCC)
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\MenuModule|Timer|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(3),
	datad => VCC,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X94_Y16_N12
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\MenuModule|Timer|seconds\(4) & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\MenuModule|Timer|seconds\(4) & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\MenuModule|Timer|seconds\(4) & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(4),
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X94_Y16_N14
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\MenuModule|Timer|seconds\(5) & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\MenuModule|Timer|seconds\(5) & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\MenuModule|Timer|seconds\(5) & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(5),
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X94_Y16_N16
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X94_Y16_N18
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X94_Y16_N20
\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X94_Y14_N0
\Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\);

-- Location: LCCOMB_X94_Y14_N6
\Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\);

-- Location: LCCOMB_X94_Y16_N26
\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\);

-- Location: LCCOMB_X94_Y16_N24
\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\ = (\MenuModule|Timer|seconds\(5) & \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(5),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\);

-- Location: LCCOMB_X94_Y16_N6
\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\);

-- Location: LCCOMB_X94_Y16_N28
\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\ = (\MenuModule|Timer|seconds\(4) & \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(4),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\);

-- Location: LCCOMB_X94_Y16_N0
\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ = (\MenuModule|Timer|seconds\(3) & \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(3),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\);

-- Location: LCCOMB_X94_Y16_N22
\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\);

-- Location: LCCOMB_X94_Y14_N30
\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \MenuModule|Timer|seconds\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \MenuModule|Timer|seconds\(2),
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\);

-- Location: LCCOMB_X94_Y14_N4
\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \MenuModule|Timer|seconds\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \MenuModule|Timer|seconds\(2),
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\);

-- Location: LCCOMB_X94_Y14_N8
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\) # (\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\) # (\Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[40]~38_combout\,
	datad => VCC,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X94_Y14_N10
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ & 
-- !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X94_Y14_N12
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\)))))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~35_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[42]~34_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X94_Y14_N14
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\ & 
-- !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~33_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[43]~32_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X94_Y14_N16
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\ & ((GND) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[44]~31_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X94_Y14_N18
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[45]~30_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X94_Y14_N20
\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X94_Y16_N8
\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\);

-- Location: LCCOMB_X94_Y14_N26
\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X92_Y13_N30
\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\);

-- Location: LCCOMB_X92_Y13_N24
\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\);

-- Location: LCCOMB_X94_Y16_N30
\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\MenuModule|Timer|seconds\(5))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(5),
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\);

-- Location: LCCOMB_X94_Y14_N28
\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\);

-- Location: LCCOMB_X94_Y16_N4
\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\MenuModule|Timer|seconds\(4)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \MenuModule|Timer|seconds\(4),
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\);

-- Location: LCCOMB_X92_Y13_N22
\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\);

-- Location: LCCOMB_X94_Y16_N2
\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\MenuModule|Timer|seconds\(3)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \MenuModule|Timer|seconds\(3),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\);

-- Location: LCCOMB_X94_Y14_N2
\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\);

-- Location: LCCOMB_X92_Y13_N4
\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ = (\MenuModule|Timer|seconds\(2) & \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(2),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\);

-- Location: LCCOMB_X94_Y14_N24
\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\);

-- Location: LCCOMB_X92_Y13_N14
\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\ = (\MenuModule|Timer|seconds\(1) & \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(1),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\);

-- Location: LCCOMB_X92_Y12_N0
\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\ = (\MenuModule|Timer|seconds\(1) & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(1),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\);

-- Location: LCCOMB_X92_Y12_N10
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\) # (\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\) # (\Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~47_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[48]~48_combout\,
	datad => VCC,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X92_Y12_N12
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\ & 
-- !\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X92_Y12_N14
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X92_Y12_N16
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ & 
-- !\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X92_Y12_N18
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\))))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\) # 
-- ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # (GND))))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\) # ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\) # 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X92_Y12_N20
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\)))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\ & 
-- !\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~54_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[53]~41_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X92_Y12_N22
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\))))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\) # 
-- ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # (GND))))
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\) # ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~53_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datad => VCC,
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X92_Y12_N24
\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X92_Y12_N26
\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\MenuModule|Timer|seconds\(1))) # 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \MenuModule|Timer|seconds\(1),
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\);

-- Location: LCCOMB_X92_Y12_N28
\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\);

-- Location: LCCOMB_X92_Y12_N2
\Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\) # 
-- ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\);

-- Location: LCCOMB_X92_Y12_N6
\Dec1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~0_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\) # ((!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Dec1|Equal2~0_combout\);

-- Location: LCCOMB_X92_Y13_N12
\Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\);

-- Location: LCCOMB_X94_Y14_N22
\Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((!\Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\);

-- Location: LCCOMB_X92_Y12_N4
\Dec1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~1_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\) # ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\) # (\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~56_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[63]~49_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~57_combout\,
	combout => \Dec1|Equal2~1_combout\);

-- Location: LCCOMB_X92_Y12_N30
\Dec1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~2_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\) # ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\) # ((\Dec1|Equal2~1_combout\) # 
-- (\Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\,
	datac => \Dec1|Equal2~1_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|StageOut[52]~42_combout\,
	combout => \Dec1|Equal2~2_combout\);

-- Location: LCCOMB_X92_Y12_N8
\Dec1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~3_combout\ = (\Dec1|Equal2~0_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\Dec1|Equal2~2_combout\)) # (!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((!\Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Equal2~0_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Dec1|Equal2~2_combout\,
	datad => \Dec1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Dec1|Equal2~3_combout\);

-- Location: LCCOMB_X87_Y4_N12
\Dec1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~4_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & \Dec1|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datad => \Dec1|Equal2~3_combout\,
	combout => \Dec1|Equal2~4_combout\);

-- Location: LCCOMB_X87_Y4_N14
\Dec1|h0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[0]~0_combout\ = (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (\Dec1|Equal2~4_combout\ & (\MenuModule|Timer|seconds\(0) $ (\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0[0]~0_combout\);

-- Location: LCCOMB_X87_Y4_N0
\Dec1|h0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0~1_combout\ = ((\MenuModule|Timer|seconds\(0) $ (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\)) # (!\Dec1|Equal2~4_combout\)) # (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0~1_combout\);

-- Location: LCCOMB_X87_Y4_N26
\Dec1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal7~0_combout\ = (!\MenuModule|Timer|seconds\(0) & (\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ & \Dec1|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|Equal7~0_combout\);

-- Location: LCCOMB_X87_Y4_N24
\Dec1|h0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[3]~2_combout\ = (\Dec1|Equal2~4_combout\ & ((\MenuModule|Timer|seconds\(0) & (\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ $ (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\))) # 
-- (!\MenuModule|Timer|seconds\(0) & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0[3]~2_combout\);

-- Location: LCCOMB_X87_Y4_N10
\Dec1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal8~0_combout\ = (\MenuModule|Timer|seconds\(0) & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ & \Dec1|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|Equal8~0_combout\);

-- Location: LCCOMB_X87_Y4_N18
\Dec1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal0~0_combout\ = (\Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ & 
-- \Dec1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~3_combout\,
	combout => \Dec1|Equal0~0_combout\);

-- Location: LCCOMB_X87_Y4_N20
\Dec1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal0~1_combout\ = (\MenuModule|Timer|seconds\(0) & \Dec1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(0),
	datad => \Dec1|Equal0~0_combout\,
	combout => \Dec1|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y4_N2
\Dec1|h0[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[4]~4_combout\ = (\Dec1|Equal2~4_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\) # ((\MenuModule|Timer|seconds\(0) & \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0[4]~4_combout\);

-- Location: LCCOMB_X87_Y4_N4
\Dec1|h0[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[4]~5_combout\ = (\Dec1|Equal7~0_combout\) # ((\Dec1|h0[4]~4_combout\) # ((!\MenuModule|Timer|seconds\(0) & \Dec1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Equal0~0_combout\,
	datac => \Dec1|Equal7~0_combout\,
	datad => \Dec1|h0[4]~4_combout\,
	combout => \Dec1|h0[4]~5_combout\);

-- Location: LCCOMB_X87_Y4_N16
\Dec1|h0[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[4]~3_combout\ = (\Dec1|Equal2~4_combout\ & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (\MenuModule|Timer|seconds\(0))) # (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & 
-- ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0[4]~3_combout\);

-- Location: LCCOMB_X87_Y4_N22
\Dec1|h0[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[4]~6_combout\ = (\Dec1|Equal8~0_combout\) # ((\Dec1|h0[4]~5_combout\ & ((\Dec1|h0[4]~3_combout\))) # (!\Dec1|h0[4]~5_combout\ & (\Dec1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Equal8~0_combout\,
	datab => \Dec1|Equal0~1_combout\,
	datac => \Dec1|h0[4]~5_combout\,
	datad => \Dec1|h0[4]~3_combout\,
	combout => \Dec1|h0[4]~6_combout\);

-- Location: LCCOMB_X87_Y4_N28
\Dec1|h0[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[5]~7_combout\ = (\Dec1|Equal2~4_combout\ & ((\MenuModule|Timer|seconds\(0) & ((\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\) # (!\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\))) # 
-- (!\MenuModule|Timer|seconds\(0) & (\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & !\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|h0[5]~7_combout\);

-- Location: LCCOMB_X87_Y4_N6
\Dec1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal2~5_combout\ = (\MenuModule|Timer|seconds\(0) & (\Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\ & (\Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ & \Dec1|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(0),
	datab => \Dec1|Mod0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datac => \Dec1|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \Dec1|Equal2~4_combout\,
	combout => \Dec1|Equal2~5_combout\);

-- Location: LCCOMB_X87_Y4_N8
\Dec1|h0[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h0[6]~8_combout\ = (\Dec1|Equal8~0_combout\) # ((\Dec1|h0[4]~5_combout\ & (\Dec1|Equal2~5_combout\)) # (!\Dec1|h0[4]~5_combout\ & ((!\Dec1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Equal2~5_combout\,
	datab => \Dec1|Equal0~1_combout\,
	datac => \Dec1|h0[4]~5_combout\,
	datad => \Dec1|Equal8~0_combout\,
	combout => \Dec1|h0[6]~8_combout\);

-- Location: LCCOMB_X92_Y20_N22
\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \MenuModule|Timer|seconds\(3) $ (VCC)
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\MenuModule|Timer|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(3),
	datad => VCC,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X92_Y20_N24
\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\MenuModule|Timer|seconds\(4) & (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\MenuModule|Timer|seconds\(4) & 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\MenuModule|Timer|seconds\(4) & !\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MenuModule|Timer|seconds\(4),
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X92_Y20_N26
\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\MenuModule|Timer|seconds\(5) & (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\MenuModule|Timer|seconds\(5) & 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\MenuModule|Timer|seconds\(5) & !\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(5),
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X92_Y20_N28
\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y20_N30
\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X92_Y20_N10
\Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17_combout\);

-- Location: LCCOMB_X92_Y20_N0
\Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ = (\MenuModule|Timer|seconds\(5) & \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(5),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16_combout\);

-- Location: LCCOMB_X92_Y20_N6
\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\ = (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\);

-- Location: LCCOMB_X92_Y20_N4
\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \MenuModule|Timer|seconds\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \MenuModule|Timer|seconds\(4),
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\);

-- Location: LCCOMB_X92_Y20_N2
\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\);

-- Location: LCCOMB_X92_Y20_N8
\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ = (\MenuModule|Timer|seconds\(3) & \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(3),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\);

-- Location: LCCOMB_X92_Y17_N18
\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\ = (\MenuModule|Timer|seconds\(2) & !\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(2),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\);

-- Location: LCCOMB_X92_Y17_N20
\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\ = (\MenuModule|Timer|seconds\(2) & \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(2),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\);

-- Location: LCCOMB_X92_Y20_N12
\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\) # (\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\)))
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\) # (\Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~23_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[25]~22_combout\,
	datad => VCC,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X92_Y20_N14
\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\) # 
-- (\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\)))) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ & 
-- (!\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\)))
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~21_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[26]~20_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X92_Y20_N16
\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\)))) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\)))))
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~19_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[27]~18_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X92_Y20_N18
\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~17_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[28]~16_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y20_N20
\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X92_Y17_N30
\Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\MenuModule|Timer|seconds\(4))) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(4),
	datab => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30_combout\);

-- Location: LCCOMB_X92_Y17_N2
\Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24_combout\);

-- Location: LCCOMB_X92_Y17_N0
\Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25_combout\);

-- Location: LCCOMB_X92_Y17_N28
\Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\MenuModule|Timer|seconds\(3)))) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \MenuModule|Timer|seconds\(3),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31_combout\);

-- Location: LCCOMB_X92_Y17_N26
\Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ = (\MenuModule|Timer|seconds\(2) & \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MenuModule|Timer|seconds\(2),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26_combout\);

-- Location: LCCOMB_X92_Y17_N24
\Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27_combout\);

-- Location: LCCOMB_X92_Y17_N22
\Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28_combout\ = (\MenuModule|Timer|seconds\(1) & \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(1),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28_combout\);

-- Location: LCCOMB_X92_Y17_N16
\Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29_combout\ = (\MenuModule|Timer|seconds\(1) & !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Timer|seconds\(1),
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29_combout\);

-- Location: LCCOMB_X92_Y17_N4
\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28_combout\) # (\Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~28_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[30]~29_combout\,
	datad => VCC,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X92_Y17_N6
\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~26_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[31]~27_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X92_Y17_N8
\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25_combout\) # 
-- (\Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~25_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[32]~31_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X92_Y17_N10
\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~30_combout\,
	datab => \Dec1|Div0|auto_generated|divider|divider|StageOut[33]~24_combout\,
	datad => VCC,
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y17_N12
\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X92_Y13_N8
\Dec1|h1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1[0]~0_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1[0]~0_combout\);

-- Location: LCCOMB_X92_Y13_N26
\Dec1|h1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1~1_combout\ = (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1~1_combout\);

-- Location: LCCOMB_X92_Y13_N20
\Dec1|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|Equal16~0_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|Equal16~0_combout\);

-- Location: LCCOMB_X92_Y13_N6
\Dec1|h1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1[3]~2_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1[3]~2_combout\);

-- Location: LCCOMB_X92_Y13_N0
\Dec1|h1[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1[4]~3_combout\ = ((!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1[4]~3_combout\);

-- Location: LCCOMB_X92_Y13_N10
\Dec1|h1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1[5]~4_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1[5]~4_combout\);

-- Location: LCCOMB_X92_Y13_N28
\Dec1|h1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec1|h1[6]~5_combout\ = (\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dec1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Dec1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dec1|h1[6]~5_combout\);

-- Location: LCCOMB_X101_Y28_N30
\Dec4|h0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec4|h0~0_combout\ = (\MenuModule|Prog|pState.P3~q\) # ((\MenuModule|Prog|pState.P1~q\ & \MenuModule|Prog|pState.P2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P3~q\,
	datac => \MenuModule|Prog|pState.P1~q\,
	datad => \MenuModule|Prog|pState.P2~q\,
	combout => \Dec4|h0~0_combout\);

-- Location: LCCOMB_X101_Y28_N4
\Dec4|h0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec4|h0[1]~1_combout\ = (\MenuModule|Prog|pState.P3~q\) # (\MenuModule|Prog|pState.P1~q\ $ (!\MenuModule|Prog|pState.P2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MenuModule|Prog|pState.P3~q\,
	datac => \MenuModule|Prog|pState.P1~q\,
	datad => \MenuModule|Prog|pState.P2~q\,
	combout => \Dec4|h0[1]~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


