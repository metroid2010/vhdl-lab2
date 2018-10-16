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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/16/2018 08:31:46"
                                                                        
-- Vhdl Self-Checking Test Bench (with test vectors) for design :       elevator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevator_vhd_vec_tst IS
END elevator_vhd_vec_tst;
ARCHITECTURE elevator_arch OF elevator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BUSY : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL FLOOR : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MOTOR : STD_LOGIC;
SIGNAL OPENING : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL SENSE : STD_LOGIC;
SIGNAL TARGET : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT elevator
	PORT (
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BUSY : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	FLOOR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MOTOR : OUT STD_LOGIC;
	OPENING : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : IN STD_LOGIC;
	SENSE : OUT STD_LOGIC;
	TARGET : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : elevator
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	BUSY => BUSY,
	CLK => CLK,
	FLOOR => FLOOR,
	MOTOR => MOTOR,
	OPENING => OPENING,
	RESET => RESET,
	S => S,
	SENSE => SENSE,
	TARGET => TARGET
	);
END elevator_arch;
