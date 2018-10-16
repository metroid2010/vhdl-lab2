-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Web Edition"

-- DATE "10/16/2018 12:05:43"

-- 
-- Device: Altera EPM7064SLC44-10 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	elevator IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	S : IN std_logic;
	B : IN std_logic_vector(3 DOWNTO 0);
	SENSE : OUT std_logic;
	MOTOR : OUT std_logic;
	OPENING : OUT std_logic;
	BUSY : OUT std_logic;
	FLOOR : OUT std_logic_vector(1 DOWNTO 0);
	TARGET : OUT std_logic_vector(1 DOWNTO 0)
	);
END elevator;

-- Design Ports Information
-- CLK	=>  Location: PIN_43
-- RESET	=>  Location: PIN_5
-- S	=>  Location: PIN_4
-- B[0]	=>  Location: PIN_28
-- B[1]	=>  Location: PIN_27
-- B[2]	=>  Location: PIN_9
-- B[3]	=>  Location: PIN_2
-- FLOOR[0]	=>  Location: PIN_21
-- TARGET[0]	=>  Location: PIN_17
-- FLOOR[1]	=>  Location: PIN_40
-- BUSY	=>  Location: PIN_16
-- TARGET[1]	=>  Location: PIN_14
-- MOTOR	=>  Location: PIN_20
-- SENSE	=>  Location: PIN_18
-- OPENING	=>  Location: PIN_19

ARCHITECTURE structure OF elevator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SENSE : std_logic;
SIGNAL ww_MOTOR : std_logic;
SIGNAL ww_OPENING : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_FLOOR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_TARGET : std_logic_vector(1 DOWNTO 0);
SIGNAL \ed|q_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[8]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[9]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[10]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[11]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[12]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[13]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[14]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[15]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[16]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[17]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[18]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[19]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[20]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[21]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[22]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[23]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[24]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[25]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[26]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[27]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[28]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[29]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[30]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs[31]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \busy_s~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s1~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~67_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \en|Mux0~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~34_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~8_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_2~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~10sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~15sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~15sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~15sexp3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_1~15sexp4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~8sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~8sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.state_bit_0~8sexp3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~68_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \curr_state.s2~69_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \RESET~dataout\ : std_logic;
SIGNAL \S~dataout\ : std_logic;
SIGNAL \ed|q~dataout\ : std_logic;
SIGNAL \curr_state.s2~34_dataout\ : std_logic;
SIGNAL \curr_state.s2~68_dataout\ : std_logic;
SIGNAL \curr_state.s2~69_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~6_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~10sexp_dataout\ : std_logic;
SIGNAL \en|Mux0~11_pexpout\ : std_logic;
SIGNAL \curr_state.state_bit_1~15sexp1_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~15sexp2_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~15sexp3_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~15sexp4_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_0~8sexp1_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_0~8sexp2_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_0~8sexp3_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_1~dataout\ : std_logic;
SIGNAL \curr_state.state_bit_0~16_pexpout\ : std_logic;
SIGNAL \curr_state.state_bit_0~dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~6_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~7_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~8_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~9_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~5_dataout\ : std_logic;
SIGNAL \curr_state.state_bit_2~dataout\ : std_logic;
SIGNAL \comb~19_pexpout\ : std_logic;
SIGNAL \busy_s~3_dataout\ : std_logic;
SIGNAL \curr_state.s1~3_dataout\ : std_logic;
SIGNAL \curr_state.s2~67_dataout\ : std_logic;
SIGNAL \ct|s_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r0|s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \B~dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|dffs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ed|ALT_INV_q~dataout\ : std_logic;
SIGNAL \ct|ALT_INV_s_count\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \r1|ALT_INV_s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r0|ALT_INV_s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tim|elapsed_s_rtl_0|ALT_INV_dffs\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ALT_INV_curr_state.state_bit_1~dataout\ : std_logic;
SIGNAL \ALT_INV_curr_state.state_bit_2~5_dataout\ : std_logic;
SIGNAL \ALT_INV_curr_state.state_bit_2~dataout\ : std_logic;
SIGNAL \ALT_INV_curr_state.state_bit_0~dataout\ : std_logic;
SIGNAL \ALT_INV_B~dataout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_S <= S;
ww_B <= B;
SENSE <= ww_SENSE;
MOTOR <= ww_MOTOR;
OPENING <= ww_OPENING;
BUSY <= ww_BUSY;
FLOOR <= ww_FLOOR;
TARGET <= ww_TARGET;

\ed|q_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S~dataout\);

\ed|q_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ed|q_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ed|q_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~34_dataout\);

\tim|elapsed_s_rtl_0|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(0));

\ct|s_count[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ed|q~dataout\ & \S~dataout\);

\ct|s_count[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ct|s_count[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(0));

\tim|elapsed_s_rtl_0|dffs[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~34_dataout\);

\tim|elapsed_s_rtl_0|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(0));

\r1|s_out[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r1|s_out[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r1|s_out[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & \r0|s_out\(0) & \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1));

\r0|s_out[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(0) & NOT \B~dataout\(2) & \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\r0|s_out[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & \r0|s_out\(0) & NOT \B~dataout\(2) & \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1));

\r0|s_out[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(0) & \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\r0|s_out[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r0|s_out[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r0|s_out[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1));

\tim|elapsed_s_rtl_0|dffs[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~34_dataout\);

\tim|elapsed_s_rtl_0|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[3]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~34_dataout\);

\tim|elapsed_s_rtl_0|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[4]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[5]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & 
\tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[6]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & 
\tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[7]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0)
& \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[8]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[8]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[8]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[8]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & 
\tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[9]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[9]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[9]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[9]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & 
\tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[10]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[10]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[10]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[10]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & 
\tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[11]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[11]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[11]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[11]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & 
\tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[12]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[12]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[12]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[12]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & 
\tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[13]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[13]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[13]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[13]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7)
& \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[14]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[14]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[14]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[14]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & 
\tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & 
\tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[15]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[15]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[15]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[15]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & 
\tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & 
\tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[16]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[16]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[16]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[16]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & 
\tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & 
\tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[17]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[17]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[17]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~68_dataout\);

\tim|elapsed_s_rtl_0|dffs[17]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & 
\tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & 
\tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[18]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[18]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[18]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[18]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & 
\tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & 
\tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[19]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[19]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[19]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[19]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & 
\tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & 
\tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[20]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[20]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[20]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[20]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & 
\tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & 
\tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[21]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[21]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[21]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[21]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & 
\tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & 
\tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & 
\tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[22]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[22]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[22]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[22]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(22) & 
\tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & 
\tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & 
\tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & 
\tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[23]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[23]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[23]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[23]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(23) & 
\tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & 
\tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & 
\tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & 
\tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[24]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[24]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[24]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[24]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(24) & 
\tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & 
\tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & 
\tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & 
\tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[25]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[25]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[25]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[25]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(25) & 
\tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & 
\tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & 
\tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & 
\tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[26]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[26]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[26]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[26]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(26) & 
\tim|elapsed_s_rtl_0|dffs\(25) & \tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & 
\tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & 
\tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & 
\tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[27]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[27]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[27]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[27]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(27) & \tim|elapsed_s_rtl_0|dffs\(26)
& \tim|elapsed_s_rtl_0|dffs\(25) & \tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & 
\tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & 
\tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & 
\tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[28]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[28]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[28]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[28]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(28) & \tim|elapsed_s_rtl_0|dffs\(27) & 
\tim|elapsed_s_rtl_0|dffs\(26) & \tim|elapsed_s_rtl_0|dffs\(25) & \tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & 
\tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & 
\tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & 
\tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[29]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[29]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[29]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[29]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(29) & \tim|elapsed_s_rtl_0|dffs\(28) & 
\tim|elapsed_s_rtl_0|dffs\(27) & \tim|elapsed_s_rtl_0|dffs\(26) & \tim|elapsed_s_rtl_0|dffs\(25) & \tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & \tim|elapsed_s_rtl_0|dffs\(21) & 
\tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & \tim|elapsed_s_rtl_0|dffs\(14) & 
\tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & \tim|elapsed_s_rtl_0|dffs\(7) & 
\tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & \tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[30]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[30]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[30]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[30]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(30) & \tim|elapsed_s_rtl_0|dffs\(29) & 
\tim|elapsed_s_rtl_0|dffs\(28) & \tim|elapsed_s_rtl_0|dffs\(27) & \tim|elapsed_s_rtl_0|dffs\(26) & \tim|elapsed_s_rtl_0|dffs\(25) & \tim|elapsed_s_rtl_0|dffs\(24) & \tim|elapsed_s_rtl_0|dffs\(23) & \tim|elapsed_s_rtl_0|dffs\(22) & 
\tim|elapsed_s_rtl_0|dffs\(21) & \tim|elapsed_s_rtl_0|dffs\(20) & \tim|elapsed_s_rtl_0|dffs\(19) & \tim|elapsed_s_rtl_0|dffs\(18) & \tim|elapsed_s_rtl_0|dffs\(17) & \tim|elapsed_s_rtl_0|dffs\(16) & \tim|elapsed_s_rtl_0|dffs\(15) & 
\tim|elapsed_s_rtl_0|dffs\(14) & \tim|elapsed_s_rtl_0|dffs\(13) & \tim|elapsed_s_rtl_0|dffs\(12) & \tim|elapsed_s_rtl_0|dffs\(11) & \tim|elapsed_s_rtl_0|dffs\(10) & \tim|elapsed_s_rtl_0|dffs\(9) & \tim|elapsed_s_rtl_0|dffs\(8) & 
\tim|elapsed_s_rtl_0|dffs\(7) & \tim|elapsed_s_rtl_0|dffs\(6) & \tim|elapsed_s_rtl_0|dffs\(5) & \tim|elapsed_s_rtl_0|dffs\(4) & \tim|elapsed_s_rtl_0|dffs\(3) & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & 
\tim|elapsed_s_rtl_0|dffs\(2));

\tim|elapsed_s_rtl_0|dffs[31]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\tim|elapsed_s_rtl_0|dffs[31]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\tim|elapsed_s_rtl_0|dffs[31]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.s2~69_dataout\);

\tim|elapsed_s_rtl_0|dffs[31]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \tim|elapsed_s_rtl_0|dffs\(0) & \tim|elapsed_s_rtl_0|dffs\(1) & NOT 
\tim|elapsed_s_rtl_0|dffs\(2) & NOT \tim|elapsed_s_rtl_0|dffs\(3) & NOT \tim|elapsed_s_rtl_0|dffs\(4) & NOT \tim|elapsed_s_rtl_0|dffs\(5) & NOT \tim|elapsed_s_rtl_0|dffs\(6) & NOT \tim|elapsed_s_rtl_0|dffs\(7) & NOT 
\tim|elapsed_s_rtl_0|dffs\(8) & NOT \tim|elapsed_s_rtl_0|dffs\(9) & NOT \tim|elapsed_s_rtl_0|dffs\(10) & NOT \tim|elapsed_s_rtl_0|dffs\(11) & NOT \tim|elapsed_s_rtl_0|dffs\(12) & NOT \tim|elapsed_s_rtl_0|dffs\(13) & NOT 
\tim|elapsed_s_rtl_0|dffs\(14) & NOT \tim|elapsed_s_rtl_0|dffs\(15) & NOT \tim|elapsed_s_rtl_0|dffs\(16) & NOT \tim|elapsed_s_rtl_0|dffs\(17) & NOT \tim|elapsed_s_rtl_0|dffs\(18) & NOT \tim|elapsed_s_rtl_0|dffs\(19) & NOT 
\tim|elapsed_s_rtl_0|dffs\(20) & NOT \tim|elapsed_s_rtl_0|dffs\(21) & NOT \tim|elapsed_s_rtl_0|dffs\(22) & NOT \tim|elapsed_s_rtl_0|dffs\(23) & NOT \tim|elapsed_s_rtl_0|dffs\(24) & NOT \tim|elapsed_s_rtl_0|dffs\(25) & NOT 
\tim|elapsed_s_rtl_0|dffs\(26) & NOT \tim|elapsed_s_rtl_0|dffs\(27) & NOT \tim|elapsed_s_rtl_0|dffs\(28) & NOT \tim|elapsed_s_rtl_0|dffs\(29) & NOT \tim|elapsed_s_rtl_0|dffs\(30) & NOT \tim|elapsed_s_rtl_0|dffs\(31));

\curr_state.state_bit_1~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_1~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\);

\curr_state.state_bit_1~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_1~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_0~8sexp3_dataout\ & \curr_state.state_bit_0~8sexp2_dataout\ & \curr_state.state_bit_0~8sexp1_dataout\ & \curr_state.state_bit_1~15sexp4_dataout\ & \curr_state.state_bit_1~15sexp3_dataout\
& \curr_state.state_bit_1~15sexp2_dataout\ & \curr_state.state_bit_1~15sexp1_dataout\ & \curr_state.state_bit_1~10sexp_dataout\ & \curr_state.state_bit_1~6_dataout\);

\curr_state.state_bit_1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\curr_state.state_bit_1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(0) & \curr_state.state_bit_1~dataout\);

\ct|s_count[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(0) & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\ct|s_count[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(0) & NOT \curr_state.state_bit_0~dataout\);

\ct|s_count[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ed|q~dataout\ & \S~dataout\);

\ct|s_count[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ct|s_count[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(1));

\r1|s_out[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r1|s_out[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r1|s_out[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & \tim|elapsed_s_rtl_0|dffs\(0)
& \tim|elapsed_s_rtl_0|dffs\(1) & NOT \tim|elapsed_s_rtl_0|dffs\(2) & NOT \tim|elapsed_s_rtl_0|dffs\(3) & NOT \tim|elapsed_s_rtl_0|dffs\(4) & NOT \tim|elapsed_s_rtl_0|dffs\(5) & NOT \tim|elapsed_s_rtl_0|dffs\(6) & NOT 
\tim|elapsed_s_rtl_0|dffs\(7) & NOT \tim|elapsed_s_rtl_0|dffs\(8) & NOT \tim|elapsed_s_rtl_0|dffs\(9) & NOT \tim|elapsed_s_rtl_0|dffs\(10) & NOT \tim|elapsed_s_rtl_0|dffs\(11) & NOT \tim|elapsed_s_rtl_0|dffs\(12) & NOT 
\tim|elapsed_s_rtl_0|dffs\(13) & NOT \tim|elapsed_s_rtl_0|dffs\(14) & NOT \tim|elapsed_s_rtl_0|dffs\(15) & NOT \tim|elapsed_s_rtl_0|dffs\(16) & NOT \tim|elapsed_s_rtl_0|dffs\(17) & NOT \tim|elapsed_s_rtl_0|dffs\(18) & NOT 
\tim|elapsed_s_rtl_0|dffs\(19) & NOT \tim|elapsed_s_rtl_0|dffs\(20) & NOT \tim|elapsed_s_rtl_0|dffs\(21) & NOT \tim|elapsed_s_rtl_0|dffs\(22) & NOT \tim|elapsed_s_rtl_0|dffs\(23) & NOT \tim|elapsed_s_rtl_0|dffs\(24) & NOT 
\tim|elapsed_s_rtl_0|dffs\(25) & NOT \tim|elapsed_s_rtl_0|dffs\(26) & NOT \tim|elapsed_s_rtl_0|dffs\(27) & NOT \tim|elapsed_s_rtl_0|dffs\(28) & NOT \tim|elapsed_s_rtl_0|dffs\(29) & NOT \tim|elapsed_s_rtl_0|dffs\(30) & NOT 
\tim|elapsed_s_rtl_0|dffs\(31));

\curr_state.state_bit_2~5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_2~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_2~5_dataout\ & \curr_state.state_bit_2~9_dataout\ & \curr_state.state_bit_2~8_dataout\ & \curr_state.state_bit_2~7_dataout\ & \curr_state.state_bit_2~6_dataout\
);

\curr_state.state_bit_2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\curr_state.state_bit_2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\);

\busy_s~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_2~dataout\);

\busy_s~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\busy_s~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\busy_s~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & \B~dataout\(0) & NOT \B~dataout\(1));

\r0|s_out[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\r0|s_out[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & \B~dataout\(1));

\r0|s_out[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & \B~dataout\(0) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\r0|s_out[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r0|s_out[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r0|s_out[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_0~dataout\ & NOT \curr_state.state_bit_2~dataout\ & \r1|s_out\(1) & NOT \r0|s_out\(0));

\curr_state.state_bit_0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(0) & \r1|s_out\(1) & \r0|s_out\(1) & \r0|s_out\(0));

\curr_state.state_bit_0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(0) & \r1|s_out\(1) & \r0|s_out\(1) & NOT \r0|s_out\(0));

\curr_state.state_bit_0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_0~dataout\ & NOT \curr_state.state_bit_2~dataout\ & \r1|s_out\(1) & NOT \r0|s_out\(1));

\curr_state.state_bit_0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\curr_state.state_bit_0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.s1~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.s1~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s1~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\);

\curr_state.s2~67_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.s2~67_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~67_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\comb~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & \B~dataout\(3) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\comb~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & \B~dataout\(1));

\comb~19_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & \B~dataout\(3) & NOT \B~dataout\(1));

\comb~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\comb~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\en|Mux0~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & NOT \B~dataout\(2) & \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1) & \curr_state.state_bit_2~dataout\);

\en|Mux0~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & NOT \r0|s_out\(1) & \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1));

\en|Mux0~11_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\ & NOT \r0|s_out\(1) & NOT \B~dataout\(2) & \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1));

\en|Mux0~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\en|Mux0~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\en|Mux0~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \curr_state.state_bit_0~dataout\ & NOT \curr_state.state_bit_2~dataout\ & \curr_state.state_bit_1~dataout\);

\curr_state.state_bit_0~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(0) & NOT \r1|s_out\(1) & NOT \r0|s_out\(1) & \r0|s_out\(0));

\curr_state.state_bit_0~16_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(0) & NOT \r1|s_out\(1) & NOT \r0|s_out\(1) & NOT \r0|s_out\(0));

\curr_state.state_bit_0~16_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & NOT \r0|s_out\(0) & NOT \curr_state.state_bit_0~dataout\ & NOT \curr_state.state_bit_2~dataout\);

\curr_state.state_bit_0~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\curr_state.state_bit_0~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.state_bit_0~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\curr_state.s2~34_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_2~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & NOT \r0|s_out\(0) & NOT \r1|s_out\(1) & NOT \r1|s_out\(0) & \curr_state.state_bit_2~dataout\);

\curr_state.state_bit_2~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & \r0|s_out\(0) & NOT \r1|s_out\(1) & \r1|s_out\(0) & \curr_state.state_bit_2~dataout\);

\curr_state.state_bit_2~8_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \r0|s_out\(0) & \r1|s_out\(1) & NOT \r1|s_out\(0) & \curr_state.state_bit_2~dataout\);

\curr_state.state_bit_2~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & \r0|s_out\(0) & \r1|s_out\(1) & \r1|s_out\(0) & \curr_state.state_bit_2~dataout\);

\curr_state.state_bit_1~10sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_1~15sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & NOT \r0|s_out\(1) & NOT \r1|s_out\(0) & NOT \r0|s_out\(0) & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_1~15sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & \r0|s_out\(1) & NOT \r1|s_out\(0) & NOT \r0|s_out\(0) & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_1~15sexp3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & NOT \r0|s_out\(1) & \r1|s_out\(0) & \r0|s_out\(0) & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_1~15sexp4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & \r0|s_out\(1) & \r1|s_out\(0) & \r0|s_out\(0) & NOT \curr_state.state_bit_1~dataout\ & \curr_state.state_bit_0~dataout\);

\curr_state.state_bit_0~8sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_2~dataout\ & NOT \r0|s_out\(1) & \r1|s_out\(0) & NOT \r0|s_out\(0));

\curr_state.state_bit_0~8sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_2~dataout\ & \r1|s_out\(1) & \r1|s_out\(0) & NOT \r0|s_out\(0));

\curr_state.state_bit_0~8sexp3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_2~dataout\ & NOT \r0|s_out\(1) & \r1|s_out\(1));

\curr_state.s2~68_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\);

\curr_state.s2~69_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \curr_state.state_bit_1~dataout\ & NOT \curr_state.state_bit_0~dataout\);
\ed|ALT_INV_q~dataout\ <= NOT \ed|q~dataout\;
\ct|ALT_INV_s_count\(0) <= NOT \ct|s_count\(0);
\r1|ALT_INV_s_out\(0) <= NOT \r1|s_out\(0);
\r0|ALT_INV_s_out\(0) <= NOT \r0|s_out\(0);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(2) <= NOT \tim|elapsed_s_rtl_0|dffs\(2);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(3) <= NOT \tim|elapsed_s_rtl_0|dffs\(3);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(4) <= NOT \tim|elapsed_s_rtl_0|dffs\(4);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(5) <= NOT \tim|elapsed_s_rtl_0|dffs\(5);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(6) <= NOT \tim|elapsed_s_rtl_0|dffs\(6);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(7) <= NOT \tim|elapsed_s_rtl_0|dffs\(7);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(8) <= NOT \tim|elapsed_s_rtl_0|dffs\(8);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(9) <= NOT \tim|elapsed_s_rtl_0|dffs\(9);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(10) <= NOT \tim|elapsed_s_rtl_0|dffs\(10);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(11) <= NOT \tim|elapsed_s_rtl_0|dffs\(11);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(12) <= NOT \tim|elapsed_s_rtl_0|dffs\(12);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(13) <= NOT \tim|elapsed_s_rtl_0|dffs\(13);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(14) <= NOT \tim|elapsed_s_rtl_0|dffs\(14);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(15) <= NOT \tim|elapsed_s_rtl_0|dffs\(15);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(16) <= NOT \tim|elapsed_s_rtl_0|dffs\(16);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(17) <= NOT \tim|elapsed_s_rtl_0|dffs\(17);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(18) <= NOT \tim|elapsed_s_rtl_0|dffs\(18);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(19) <= NOT \tim|elapsed_s_rtl_0|dffs\(19);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(20) <= NOT \tim|elapsed_s_rtl_0|dffs\(20);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(21) <= NOT \tim|elapsed_s_rtl_0|dffs\(21);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(22) <= NOT \tim|elapsed_s_rtl_0|dffs\(22);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(23) <= NOT \tim|elapsed_s_rtl_0|dffs\(23);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(24) <= NOT \tim|elapsed_s_rtl_0|dffs\(24);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(25) <= NOT \tim|elapsed_s_rtl_0|dffs\(25);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(26) <= NOT \tim|elapsed_s_rtl_0|dffs\(26);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(27) <= NOT \tim|elapsed_s_rtl_0|dffs\(27);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(28) <= NOT \tim|elapsed_s_rtl_0|dffs\(28);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(29) <= NOT \tim|elapsed_s_rtl_0|dffs\(29);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(30) <= NOT \tim|elapsed_s_rtl_0|dffs\(30);
\tim|elapsed_s_rtl_0|ALT_INV_dffs\(31) <= NOT \tim|elapsed_s_rtl_0|dffs\(31);
\ALT_INV_curr_state.state_bit_1~dataout\ <= NOT \curr_state.state_bit_1~dataout\;
\r1|ALT_INV_s_out\(1) <= NOT \r1|s_out\(1);
\ALT_INV_curr_state.state_bit_2~5_dataout\ <= NOT \curr_state.state_bit_2~5_dataout\;
\ALT_INV_curr_state.state_bit_2~dataout\ <= NOT \curr_state.state_bit_2~dataout\;
\r0|ALT_INV_s_out\(1) <= NOT \r0|s_out\(1);
\ALT_INV_curr_state.state_bit_0~dataout\ <= NOT \curr_state.state_bit_0~dataout\;
\ALT_INV_B~dataout\(0) <= NOT \B~dataout\(0);
\ALT_INV_B~dataout\(1) <= NOT \B~dataout\(1);
\ALT_INV_B~dataout\(2) <= NOT \B~dataout\(2);
\ALT_INV_B~dataout\(3) <= NOT \B~dataout\(3);

-- Location: PIN_43
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	dataout => \CLK~dataout\);

-- Location: PIN_5
\RESET~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RESET,
	dataout => \RESET~dataout\);

-- Location: PIN_4
\S~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_S,
	dataout => \S~dataout\);

-- Location: LC49
\ed|q\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \ed|q_pterm0_bus\,
	pterm1 => \ed|q_pterm1_bus\,
	pterm2 => \ed|q_pterm2_bus\,
	pterm3 => \ed|q_pterm3_bus\,
	pterm4 => \ed|q_pterm4_bus\,
	pterm5 => \ed|q_pterm5_bus\,
	pxor => \ed|q_pxor_bus\,
	pclk => \ed|q_pclk_bus\,
	papre => \ed|q_papre_bus\,
	paclr => \ed|q_paclr_bus\,
	pena => \ed|q_pena_bus\,
	dataout => \ed|q~dataout\);

-- Location: LC46
\ct|s_count[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \ct|s_count[0]_pterm0_bus\,
	pterm1 => \ct|s_count[0]_pterm1_bus\,
	pterm2 => \ct|s_count[0]_pterm2_bus\,
	pterm3 => \ct|s_count[0]_pterm3_bus\,
	pterm4 => \ct|s_count[0]_pterm4_bus\,
	pterm5 => \ct|s_count[0]_pterm5_bus\,
	pxor => \ct|s_count[0]_pxor_bus\,
	pclk => \ct|s_count[0]_pclk_bus\,
	papre => \ct|s_count[0]_papre_bus\,
	paclr => \ct|s_count[0]_paclr_bus\,
	pena => \ct|s_count[0]_pena_bus\,
	dataout => \ct|s_count\(0));

-- Location: LC17
\r1|s_out[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r1|s_out[0]_pterm0_bus\,
	pterm1 => \r1|s_out[0]_pterm1_bus\,
	pterm2 => \r1|s_out[0]_pterm2_bus\,
	pterm3 => \r1|s_out[0]_pterm3_bus\,
	pterm4 => \r1|s_out[0]_pterm4_bus\,
	pterm5 => \r1|s_out[0]_pterm5_bus\,
	pxor => \r1|s_out[0]_pxor_bus\,
	pclk => \r1|s_out[0]_pclk_bus\,
	papre => \r1|s_out[0]_papre_bus\,
	paclr => \r1|s_out[0]_paclr_bus\,
	pena => \r1|s_out[0]_pena_bus\,
	dataout => \r1|s_out\(0));

-- Location: SEXP31
\curr_state.s2~34\ : max_sexp
PORT MAP (
	datain => \curr_state.s2~34_datain_bus\,
	dataout => \curr_state.s2~34_dataout\);

-- Location: LC31
\tim|elapsed_s_rtl_0|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[0]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[0]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[0]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[0]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[0]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[0]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[0]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[0]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[0]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[0]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[0]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(0));

-- Location: LC32
\tim|elapsed_s_rtl_0|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[1]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[1]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[1]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[1]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[1]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[1]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[1]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[1]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[1]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[1]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[1]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(1));

-- Location: LC22
\tim|elapsed_s_rtl_0|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[2]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[2]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[2]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[2]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[2]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[2]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[2]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[2]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[2]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[2]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[2]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(2));

-- Location: LC27
\tim|elapsed_s_rtl_0|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[3]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[3]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[3]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[3]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[3]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[3]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[3]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[3]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[3]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[3]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[3]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(3));

-- Location: SEXP33
\curr_state.s2~68\ : max_sexp
PORT MAP (
	datain => \curr_state.s2~68_datain_bus\,
	dataout => \curr_state.s2~68_dataout\);

-- Location: LC45
\tim|elapsed_s_rtl_0|dffs[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[4]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[4]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[4]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[4]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[4]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[4]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[4]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[4]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[4]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[4]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[4]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(4));

-- Location: LC35
\tim|elapsed_s_rtl_0|dffs[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[5]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[5]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[5]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[5]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[5]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[5]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[5]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[5]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[5]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[5]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[5]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(5));

-- Location: LC33
\tim|elapsed_s_rtl_0|dffs[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[6]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[6]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[6]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[6]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[6]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[6]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[6]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[6]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[6]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[6]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[6]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(6));

-- Location: LC34
\tim|elapsed_s_rtl_0|dffs[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[7]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[7]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[7]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[7]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[7]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[7]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[7]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[7]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[7]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[7]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[7]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(7));

-- Location: LC36
\tim|elapsed_s_rtl_0|dffs[8]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[8]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[8]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[8]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[8]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[8]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[8]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[8]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[8]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[8]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[8]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[8]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(8));

-- Location: LC37
\tim|elapsed_s_rtl_0|dffs[9]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[9]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[9]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[9]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[9]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[9]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[9]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[9]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[9]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[9]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[9]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[9]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(9));

-- Location: LC39
\tim|elapsed_s_rtl_0|dffs[10]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[10]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[10]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[10]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[10]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[10]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[10]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[10]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[10]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[10]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[10]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[10]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(10));

-- Location: LC40
\tim|elapsed_s_rtl_0|dffs[11]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[11]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[11]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[11]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[11]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[11]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[11]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[11]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[11]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[11]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[11]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[11]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(11));

-- Location: LC42
\tim|elapsed_s_rtl_0|dffs[12]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[12]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[12]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[12]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[12]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[12]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[12]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[12]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[12]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[12]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[12]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[12]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(12));

-- Location: LC44
\tim|elapsed_s_rtl_0|dffs[13]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[13]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[13]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[13]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[13]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[13]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[13]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[13]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[13]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[13]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[13]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[13]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(13));

-- Location: LC38
\tim|elapsed_s_rtl_0|dffs[14]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[14]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[14]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[14]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[14]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[14]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[14]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[14]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[14]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[14]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[14]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[14]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(14));

-- Location: LC48
\tim|elapsed_s_rtl_0|dffs[15]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[15]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[15]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[15]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[15]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[15]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[15]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[15]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[15]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[15]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[15]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[15]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(15));

-- Location: LC41
\tim|elapsed_s_rtl_0|dffs[16]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[16]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[16]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[16]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[16]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[16]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[16]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[16]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[16]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[16]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[16]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[16]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(16));

-- Location: LC47
\tim|elapsed_s_rtl_0|dffs[17]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[17]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[17]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[17]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[17]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[17]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[17]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[17]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[17]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[17]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[17]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[17]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(17));

-- Location: SEXP1
\curr_state.s2~69\ : max_sexp
PORT MAP (
	datain => \curr_state.s2~69_datain_bus\,
	dataout => \curr_state.s2~69_dataout\);

-- Location: LC9
\tim|elapsed_s_rtl_0|dffs[18]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[18]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[18]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[18]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[18]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[18]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[18]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[18]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[18]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[18]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[18]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[18]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(18));

-- Location: LC16
\tim|elapsed_s_rtl_0|dffs[19]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[19]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[19]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[19]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[19]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[19]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[19]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[19]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[19]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[19]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[19]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[19]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(19));

-- Location: LC15
\tim|elapsed_s_rtl_0|dffs[20]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[20]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[20]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[20]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[20]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[20]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[20]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[20]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[20]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[20]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[20]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[20]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(20));

-- Location: LC14
\tim|elapsed_s_rtl_0|dffs[21]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[21]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[21]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[21]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[21]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[21]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[21]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[21]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[21]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[21]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[21]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[21]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(21));

-- Location: LC5
\tim|elapsed_s_rtl_0|dffs[22]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[22]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[22]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[22]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[22]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[22]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[22]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[22]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[22]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[22]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[22]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[22]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(22));

-- Location: LC11
\tim|elapsed_s_rtl_0|dffs[23]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[23]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[23]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[23]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[23]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[23]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[23]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[23]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[23]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[23]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[23]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[23]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(23));

-- Location: LC10
\tim|elapsed_s_rtl_0|dffs[24]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[24]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[24]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[24]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[24]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[24]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[24]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[24]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[24]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[24]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[24]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[24]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(24));

-- Location: LC4
\tim|elapsed_s_rtl_0|dffs[25]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[25]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[25]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[25]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[25]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[25]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[25]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[25]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[25]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[25]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[25]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[25]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(25));

-- Location: LC6
\tim|elapsed_s_rtl_0|dffs[26]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[26]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[26]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[26]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[26]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[26]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[26]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[26]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[26]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[26]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[26]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[26]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(26));

-- Location: LC13
\tim|elapsed_s_rtl_0|dffs[27]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[27]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[27]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[27]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[27]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[27]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[27]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[27]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[27]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[27]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[27]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[27]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(27));

-- Location: LC8
\tim|elapsed_s_rtl_0|dffs[28]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[28]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[28]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[28]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[28]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[28]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[28]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[28]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[28]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[28]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[28]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[28]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(28));

-- Location: LC7
\tim|elapsed_s_rtl_0|dffs[29]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[29]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[29]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[29]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[29]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[29]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[29]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[29]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[29]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[29]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[29]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[29]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(29));

-- Location: LC3
\tim|elapsed_s_rtl_0|dffs[30]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[30]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[30]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[30]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[30]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[30]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[30]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[30]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[30]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[30]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[30]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[30]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(30));

-- Location: LC2
\tim|elapsed_s_rtl_0|dffs[31]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \tim|elapsed_s_rtl_0|dffs[31]_pterm0_bus\,
	pterm1 => \tim|elapsed_s_rtl_0|dffs[31]_pterm1_bus\,
	pterm2 => \tim|elapsed_s_rtl_0|dffs[31]_pterm2_bus\,
	pterm3 => \tim|elapsed_s_rtl_0|dffs[31]_pterm3_bus\,
	pterm4 => \tim|elapsed_s_rtl_0|dffs[31]_pterm4_bus\,
	pterm5 => \tim|elapsed_s_rtl_0|dffs[31]_pterm5_bus\,
	pxor => \tim|elapsed_s_rtl_0|dffs[31]_pxor_bus\,
	pclk => \tim|elapsed_s_rtl_0|dffs[31]_pclk_bus\,
	papre => \tim|elapsed_s_rtl_0|dffs[31]_papre_bus\,
	paclr => \tim|elapsed_s_rtl_0|dffs[31]_paclr_bus\,
	pena => \tim|elapsed_s_rtl_0|dffs[31]_pena_bus\,
	dataout => \tim|elapsed_s_rtl_0|dffs\(31));

-- Location: LC1
\curr_state.state_bit_1~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \curr_state.state_bit_1~6_pterm0_bus\,
	pterm1 => \curr_state.state_bit_1~6_pterm1_bus\,
	pterm2 => \curr_state.state_bit_1~6_pterm2_bus\,
	pterm3 => \curr_state.state_bit_1~6_pterm3_bus\,
	pterm4 => \curr_state.state_bit_1~6_pterm4_bus\,
	pterm5 => \curr_state.state_bit_1~6_pterm5_bus\,
	pxor => \curr_state.state_bit_1~6_pxor_bus\,
	pclk => \curr_state.state_bit_1~6_pclk_bus\,
	papre => \curr_state.state_bit_1~6_papre_bus\,
	paclr => \curr_state.state_bit_1~6_paclr_bus\,
	pena => \curr_state.state_bit_1~6_pena_bus\,
	dataout => \curr_state.state_bit_1~6_dataout\);

-- Location: SEXP28
\curr_state.state_bit_1~10sexp\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_1~10sexp_datain_bus\,
	dataout => \curr_state.state_bit_1~10sexp_dataout\);

-- Location: PIN_27
\B[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	dataout => \B~dataout\(1));

-- Location: PIN_28
\B[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	dataout => \B~dataout\(0));

-- Location: PIN_2
\B[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	dataout => \B~dataout\(3));

-- Location: PIN_9
\B[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	dataout => \B~dataout\(2));

-- Location: LC29
\en|Mux0~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \en|Mux0~11_pterm0_bus\,
	pterm1 => \en|Mux0~11_pterm1_bus\,
	pterm2 => \en|Mux0~11_pterm2_bus\,
	pterm3 => \en|Mux0~11_pterm3_bus\,
	pterm4 => \en|Mux0~11_pterm4_bus\,
	pterm5 => \en|Mux0~11_pterm5_bus\,
	pxor => \en|Mux0~11_pxor_bus\,
	pclk => \en|Mux0~11_pclk_bus\,
	papre => \en|Mux0~11_papre_bus\,
	paclr => \en|Mux0~11_paclr_bus\,
	pena => \en|Mux0~11_pena_bus\,
	pexpout => \en|Mux0~11_pexpout\);

-- Location: LC30
\r0|s_out[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pexpin => \en|Mux0~11_pexpout\,
	pterm0 => \r0|s_out[1]_pterm0_bus\,
	pterm1 => \r0|s_out[1]_pterm1_bus\,
	pterm2 => \r0|s_out[1]_pterm2_bus\,
	pterm3 => \r0|s_out[1]_pterm3_bus\,
	pterm4 => \r0|s_out[1]_pterm4_bus\,
	pterm5 => \r0|s_out[1]_pterm5_bus\,
	pxor => \r0|s_out[1]_pxor_bus\,
	pclk => \r0|s_out[1]_pclk_bus\,
	papre => \r0|s_out[1]_papre_bus\,
	paclr => \r0|s_out[1]_paclr_bus\,
	pena => \r0|s_out[1]_pena_bus\,
	dataout => \r0|s_out\(1));

-- Location: SEXP29
\curr_state.state_bit_1~15sexp1\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_1~15sexp1_datain_bus\,
	dataout => \curr_state.state_bit_1~15sexp1_dataout\);

-- Location: SEXP17
\curr_state.state_bit_1~15sexp2\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_1~15sexp2_datain_bus\,
	dataout => \curr_state.state_bit_1~15sexp2_dataout\);

-- Location: SEXP18
\curr_state.state_bit_1~15sexp3\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_1~15sexp3_datain_bus\,
	dataout => \curr_state.state_bit_1~15sexp3_dataout\);

-- Location: SEXP20
\curr_state.state_bit_1~15sexp4\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_1~15sexp4_datain_bus\,
	dataout => \curr_state.state_bit_1~15sexp4_dataout\);

-- Location: SEXP21
\curr_state.state_bit_0~8sexp1\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_0~8sexp1_datain_bus\,
	dataout => \curr_state.state_bit_0~8sexp1_dataout\);

-- Location: SEXP22
\curr_state.state_bit_0~8sexp2\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_0~8sexp2_datain_bus\,
	dataout => \curr_state.state_bit_0~8sexp2_dataout\);

-- Location: SEXP23
\curr_state.state_bit_0~8sexp3\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_0~8sexp3_datain_bus\,
	dataout => \curr_state.state_bit_0~8sexp3_dataout\);

-- Location: LC26
\curr_state.state_bit_1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \curr_state.state_bit_1_pterm0_bus\,
	pterm1 => \curr_state.state_bit_1_pterm1_bus\,
	pterm2 => \curr_state.state_bit_1_pterm2_bus\,
	pterm3 => \curr_state.state_bit_1_pterm3_bus\,
	pterm4 => \curr_state.state_bit_1_pterm4_bus\,
	pterm5 => \curr_state.state_bit_1_pterm5_bus\,
	pxor => \curr_state.state_bit_1_pxor_bus\,
	pclk => \curr_state.state_bit_1_pclk_bus\,
	papre => \curr_state.state_bit_1_papre_bus\,
	paclr => \curr_state.state_bit_1_paclr_bus\,
	pena => \curr_state.state_bit_1_pena_bus\,
	dataout => \curr_state.state_bit_1~dataout\);

-- Location: LC18
\curr_state.state_bit_0~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \curr_state.state_bit_0~16_pterm0_bus\,
	pterm1 => \curr_state.state_bit_0~16_pterm1_bus\,
	pterm2 => \curr_state.state_bit_0~16_pterm2_bus\,
	pterm3 => \curr_state.state_bit_0~16_pterm3_bus\,
	pterm4 => \curr_state.state_bit_0~16_pterm4_bus\,
	pterm5 => \curr_state.state_bit_0~16_pterm5_bus\,
	pxor => \curr_state.state_bit_0~16_pxor_bus\,
	pclk => \curr_state.state_bit_0~16_pclk_bus\,
	papre => \curr_state.state_bit_0~16_papre_bus\,
	paclr => \curr_state.state_bit_0~16_paclr_bus\,
	pena => \curr_state.state_bit_0~16_pena_bus\,
	pexpout => \curr_state.state_bit_0~16_pexpout\);

-- Location: LC19
\curr_state.state_bit_0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pexpin => \curr_state.state_bit_0~16_pexpout\,
	pterm0 => \curr_state.state_bit_0_pterm0_bus\,
	pterm1 => \curr_state.state_bit_0_pterm1_bus\,
	pterm2 => \curr_state.state_bit_0_pterm2_bus\,
	pterm3 => \curr_state.state_bit_0_pterm3_bus\,
	pterm4 => \curr_state.state_bit_0_pterm4_bus\,
	pterm5 => \curr_state.state_bit_0_pterm5_bus\,
	pxor => \curr_state.state_bit_0_pxor_bus\,
	pclk => \curr_state.state_bit_0_pclk_bus\,
	papre => \curr_state.state_bit_0_papre_bus\,
	paclr => \curr_state.state_bit_0_paclr_bus\,
	pena => \curr_state.state_bit_0_pena_bus\,
	dataout => \curr_state.state_bit_0~dataout\);

-- Location: LC43
\ct|s_count[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \ct|s_count[1]_pterm0_bus\,
	pterm1 => \ct|s_count[1]_pterm1_bus\,
	pterm2 => \ct|s_count[1]_pterm2_bus\,
	pterm3 => \ct|s_count[1]_pterm3_bus\,
	pterm4 => \ct|s_count[1]_pterm4_bus\,
	pterm5 => \ct|s_count[1]_pterm5_bus\,
	pxor => \ct|s_count[1]_pxor_bus\,
	pclk => \ct|s_count[1]_pclk_bus\,
	papre => \ct|s_count[1]_papre_bus\,
	paclr => \ct|s_count[1]_paclr_bus\,
	pena => \ct|s_count[1]_pena_bus\,
	dataout => \ct|s_count\(1));

-- Location: LC62
\r1|s_out[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r1|s_out[1]_pterm0_bus\,
	pterm1 => \r1|s_out[1]_pterm1_bus\,
	pterm2 => \r1|s_out[1]_pterm2_bus\,
	pterm3 => \r1|s_out[1]_pterm3_bus\,
	pterm4 => \r1|s_out[1]_pterm4_bus\,
	pterm5 => \r1|s_out[1]_pterm5_bus\,
	pxor => \r1|s_out[1]_pxor_bus\,
	pclk => \r1|s_out[1]_pclk_bus\,
	papre => \r1|s_out[1]_papre_bus\,
	paclr => \r1|s_out[1]_paclr_bus\,
	pena => \r1|s_out[1]_pena_bus\,
	dataout => \r1|s_out\(1));

-- Location: SEXP27
\curr_state.state_bit_2~6\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_2~6_datain_bus\,
	dataout => \curr_state.state_bit_2~6_dataout\);

-- Location: SEXP26
\curr_state.state_bit_2~7\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_2~7_datain_bus\,
	dataout => \curr_state.state_bit_2~7_dataout\);

-- Location: SEXP32
\curr_state.state_bit_2~8\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_2~8_datain_bus\,
	dataout => \curr_state.state_bit_2~8_dataout\);

-- Location: SEXP25
\curr_state.state_bit_2~9\ : max_sexp
PORT MAP (
	datain => \curr_state.state_bit_2~9_datain_bus\,
	dataout => \curr_state.state_bit_2~9_dataout\);

-- Location: LC12
\curr_state.state_bit_2~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \curr_state.state_bit_2~5_pterm0_bus\,
	pterm1 => \curr_state.state_bit_2~5_pterm1_bus\,
	pterm2 => \curr_state.state_bit_2~5_pterm2_bus\,
	pterm3 => \curr_state.state_bit_2~5_pterm3_bus\,
	pterm4 => \curr_state.state_bit_2~5_pterm4_bus\,
	pterm5 => \curr_state.state_bit_2~5_pterm5_bus\,
	pxor => \curr_state.state_bit_2~5_pxor_bus\,
	pclk => \curr_state.state_bit_2~5_pclk_bus\,
	papre => \curr_state.state_bit_2~5_papre_bus\,
	paclr => \curr_state.state_bit_2~5_paclr_bus\,
	pena => \curr_state.state_bit_2~5_pena_bus\,
	dataout => \curr_state.state_bit_2~5_dataout\);

-- Location: LC28
\curr_state.state_bit_2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \curr_state.state_bit_2_pterm0_bus\,
	pterm1 => \curr_state.state_bit_2_pterm1_bus\,
	pterm2 => \curr_state.state_bit_2_pterm2_bus\,
	pterm3 => \curr_state.state_bit_2_pterm3_bus\,
	pterm4 => \curr_state.state_bit_2_pterm4_bus\,
	pterm5 => \curr_state.state_bit_2_pterm5_bus\,
	pxor => \curr_state.state_bit_2_pxor_bus\,
	pclk => \curr_state.state_bit_2_pclk_bus\,
	papre => \curr_state.state_bit_2_papre_bus\,
	paclr => \curr_state.state_bit_2_paclr_bus\,
	pena => \curr_state.state_bit_2_pena_bus\,
	dataout => \curr_state.state_bit_2~dataout\);

-- Location: LC23
\comb~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \comb~19_pterm0_bus\,
	pterm1 => \comb~19_pterm1_bus\,
	pterm2 => \comb~19_pterm2_bus\,
	pterm3 => \comb~19_pterm3_bus\,
	pterm4 => \comb~19_pterm4_bus\,
	pterm5 => \comb~19_pterm5_bus\,
	pxor => \comb~19_pxor_bus\,
	pclk => \comb~19_pclk_bus\,
	papre => \comb~19_papre_bus\,
	paclr => \comb~19_paclr_bus\,
	pena => \comb~19_pena_bus\,
	pexpout => \comb~19_pexpout\);

-- Location: LC24
\r0|s_out[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pexpin => \comb~19_pexpout\,
	pterm0 => \r0|s_out[0]_pterm0_bus\,
	pterm1 => \r0|s_out[0]_pterm1_bus\,
	pterm2 => \r0|s_out[0]_pterm2_bus\,
	pterm3 => \r0|s_out[0]_pterm3_bus\,
	pterm4 => \r0|s_out[0]_pterm4_bus\,
	pterm5 => \r0|s_out[0]_pterm5_bus\,
	pxor => \r0|s_out[0]_pxor_bus\,
	pclk => \r0|s_out[0]_pclk_bus\,
	papre => \r0|s_out[0]_papre_bus\,
	paclr => \r0|s_out[0]_paclr_bus\,
	pena => \r0|s_out[0]_pena_bus\,
	dataout => \r0|s_out\(0));

-- Location: LC25
\busy_s~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \busy_s~3_pterm0_bus\,
	pterm1 => \busy_s~3_pterm1_bus\,
	pterm2 => \busy_s~3_pterm2_bus\,
	pterm3 => \busy_s~3_pterm3_bus\,
	pterm4 => \busy_s~3_pterm4_bus\,
	pterm5 => \busy_s~3_pterm5_bus\,
	pxor => \busy_s~3_pxor_bus\,
	pclk => \busy_s~3_pclk_bus\,
	papre => \busy_s~3_papre_bus\,
	paclr => \busy_s~3_paclr_bus\,
	pena => \busy_s~3_pena_bus\,
	dataout => \busy_s~3_dataout\);

-- Location: LC21
\curr_state.s1~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \curr_state.s1~3_pterm0_bus\,
	pterm1 => \curr_state.s1~3_pterm1_bus\,
	pterm2 => \curr_state.s1~3_pterm2_bus\,
	pterm3 => \curr_state.s1~3_pterm3_bus\,
	pterm4 => \curr_state.s1~3_pterm4_bus\,
	pterm5 => \curr_state.s1~3_pterm5_bus\,
	pxor => \curr_state.s1~3_pxor_bus\,
	pclk => \curr_state.s1~3_pclk_bus\,
	papre => \curr_state.s1~3_papre_bus\,
	paclr => \curr_state.s1~3_paclr_bus\,
	pena => \curr_state.s1~3_pena_bus\,
	dataout => \curr_state.s1~3_dataout\);

-- Location: LC20
\curr_state.s2~67\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \curr_state.s2~67_pterm0_bus\,
	pterm1 => \curr_state.s2~67_pterm1_bus\,
	pterm2 => \curr_state.s2~67_pterm2_bus\,
	pterm3 => \curr_state.s2~67_pterm3_bus\,
	pterm4 => \curr_state.s2~67_pterm4_bus\,
	pterm5 => \curr_state.s2~67_pterm5_bus\,
	pxor => \curr_state.s2~67_pxor_bus\,
	pclk => \curr_state.s2~67_pclk_bus\,
	papre => \curr_state.s2~67_papre_bus\,
	paclr => \curr_state.s2~67_paclr_bus\,
	pena => \curr_state.s2~67_pena_bus\,
	dataout => \curr_state.s2~67_dataout\);

-- Location: PIN_21
\FLOOR[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r1|s_out\(0),
	oe => VCC,
	padio => ww_FLOOR(0));

-- Location: PIN_17
\TARGET[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r0|s_out\(0),
	oe => VCC,
	padio => ww_TARGET(0));

-- Location: PIN_40
\FLOOR[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r1|s_out\(1),
	oe => VCC,
	padio => ww_FLOOR(1));

-- Location: PIN_16
\BUSY~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \busy_s~3_dataout\,
	oe => VCC,
	padio => ww_BUSY);

-- Location: PIN_14
\TARGET[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r0|s_out\(1),
	oe => VCC,
	padio => ww_TARGET(1));

-- Location: PIN_20
\MOTOR~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \curr_state.state_bit_0~dataout\,
	oe => VCC,
	padio => ww_MOTOR);

-- Location: PIN_18
\SENSE~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \curr_state.s1~3_dataout\,
	oe => VCC,
	padio => ww_SENSE);

-- Location: PIN_19
\OPENING~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \curr_state.s2~67_dataout\,
	oe => VCC,
	padio => ww_OPENING);
END structure;


