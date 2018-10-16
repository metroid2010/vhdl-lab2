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
-- Generated on "10/16/2018 07:36:01"
                                                                        
-- Vhdl Self-Checking Test Bench (with test vectors) for design :       elevator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

PACKAGE elevator_vhd_tb_types IS
-- input port types                                                       
-- output port names                                                     
CONSTANT BUSY_name : STRING (1 TO 4) := "BUSY";
CONSTANT FLOOR_name : STRING (1 TO 5) := "FLOOR";
CONSTANT MOTOR_name : STRING (1 TO 5) := "MOTOR";
CONSTANT OPENING_name : STRING (1 TO 7) := "OPENING";
CONSTANT SENSE_name : STRING (1 TO 5) := "SENSE";
CONSTANT TARGET_name : STRING (1 TO 6) := "TARGET";
-- n(outputs)                                                            
CONSTANT o_num : INTEGER := 6;
-- mismatches vector type                                                
TYPE mmvec IS ARRAY (0 to (o_num - 1)) OF INTEGER;
-- exp o/ first change track vector type                                     
TYPE trackvec IS ARRAY (1 to o_num) OF BIT;
-- sampler type                                                            
SUBTYPE sample_type IS STD_LOGIC;                                          
-- utility functions                                                     
FUNCTION std_logic_to_char (a: STD_LOGIC) RETURN CHARACTER;              
FUNCTION std_logic_vector_to_string (a: STD_LOGIC_VECTOR) RETURN STRING; 
PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0);                                               
PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC_VECTOR; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0);                                        
PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC; real_value : IN STD_LOGIC);                                   
PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC_VECTOR; real_value : IN STD_LOGIC_VECTOR);                     

END elevator_vhd_tb_types;

PACKAGE BODY elevator_vhd_tb_types IS
        FUNCTION std_logic_to_char (a: STD_LOGIC)  
                RETURN CHARACTER IS                
        BEGIN                                      
        CASE a IS                                  
         WHEN 'U' =>                               
          RETURN 'U';                              
         WHEN 'X' =>                               
          RETURN 'X';                              
         WHEN '0' =>                               
          RETURN '0';                              
         WHEN '1' =>                               
          RETURN '1';                              
         WHEN 'Z' =>                               
          RETURN 'Z';                              
         WHEN 'W' =>                               
          RETURN 'W';                              
         WHEN 'L' =>                               
          RETURN 'L';                              
         WHEN 'H' =>                               
          RETURN 'H';                              
         WHEN '-' =>                               
          RETURN 'D';                              
        END CASE;                                  
        END;                                       

        FUNCTION std_logic_vector_to_string (a: STD_LOGIC_VECTOR)       
                RETURN STRING IS                                        
        VARIABLE result : STRING(1 TO a'LENGTH);                        
        VARIABLE j : NATURAL := 1;                                      
        BEGIN                                                           
                FOR i IN a'RANGE LOOP                                   
                        result(j) := std_logic_to_char(a(i));           
                        j := j + 1;                                     
                END LOOP;                                               
                RETURN result;                                          
        END;                                                            

        PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC; justified: IN SIDE:=RIGHT; field:IN WIDTH:=0) IS 
        BEGIN                                                           
                write(L,std_logic_to_char(VALUE),JUSTIFIED,field);      
        END;                                                            
                                                                        
        PROCEDURE write (l:INOUT LINE; value:IN STD_LOGIC_VECTOR; justified: IN SIDE:= RIGHT; field:IN WIDTH:=0) IS                           
        BEGIN                                                               
                write(L,std_logic_vector_to_string(VALUE),JUSTIFIED,field); 
        END;                                                                

        PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC; real_value : IN STD_LOGIC) IS                               
        VARIABLE txt : LINE;                                              
        BEGIN                                                             
        write(txt,string'("ERROR! Vector Mismatch for output port "));  
        write(txt,output_port_name);                                      
        write(txt,string'(" :: @time = "));                             
        write(txt,NOW);                                                   
		writeline(output,txt);                                            
        write(txt,string'("     Expected value = "));                   
        write(txt,expected_value);                                        
		writeline(output,txt);                                            
        write(txt,string'("     Real value = "));                       
        write(txt,real_value);                                            
        writeline(output,txt);                                            
        END;                                                              

        PROCEDURE throw_error(output_port_name: IN STRING; expected_value : IN STD_LOGIC_VECTOR; real_value : IN STD_LOGIC_VECTOR) IS                 
        VARIABLE txt : LINE;                                              
        BEGIN                                                             
        write(txt,string'("ERROR! Vector Mismatch for output port "));  
        write(txt,output_port_name);                                      
        write(txt,string'(" :: @time = "));                             
        write(txt,NOW);                                                   
		writeline(output,txt);                                            
        write(txt,string'("     Expected value = "));                   
        write(txt,expected_value);                                        
		writeline(output,txt);                                            
        write(txt,string'("     Real value = "));                       
        write(txt,real_value);                                            
        writeline(output,txt);                                            
        END;                                                              

END elevator_vhd_tb_types;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

USE WORK.elevator_vhd_tb_types.ALL;                                         

ENTITY elevator_vhd_sample_tst IS
PORT (
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : IN STD_LOGIC;
	sampler : OUT sample_type
	);
END elevator_vhd_sample_tst;

ARCHITECTURE sample_arch OF elevator_vhd_sample_tst IS
SIGNAL tbo_int_sample_clk : sample_type := '-';
SIGNAL current_time : TIME := 0 ps;
BEGIN
t_prcs_sample : PROCESS ( B , CLK , RESET , S )
BEGIN
	IF (NOW > 0 ps) THEN
		IF (NOW > 0 ps) AND (NOW /= current_time) THEN
			IF (tbo_int_sample_clk = '-') THEN
				tbo_int_sample_clk <= '0';
			ELSE
				tbo_int_sample_clk <= NOT tbo_int_sample_clk ;
			END IF;
		END IF;
		current_time <= NOW;
	END IF;
END PROCESS t_prcs_sample;
sampler <= tbo_int_sample_clk;
END sample_arch;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

USE WORK.elevator_vhd_tb_types.ALL;                                         

ENTITY elevator_vhd_check_tst IS 
GENERIC (
	debug_tbench : BIT := '0'
);
PORT ( 
	BUSY : IN STD_LOGIC;
	FLOOR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	MOTOR : IN STD_LOGIC;
	OPENING : IN STD_LOGIC;
	SENSE : IN STD_LOGIC;
	TARGET : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	sampler : IN sample_type
);
END elevator_vhd_check_tst;
ARCHITECTURE ovec_arch OF elevator_vhd_check_tst IS
SIGNAL BUSY_expected,BUSY_expected_prev,BUSY_prev : STD_LOGIC;
SIGNAL FLOOR_expected,FLOOR_expected_prev,FLOOR_prev : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MOTOR_expected,MOTOR_expected_prev,MOTOR_prev : STD_LOGIC;
SIGNAL OPENING_expected,OPENING_expected_prev,OPENING_prev : STD_LOGIC;
SIGNAL SENSE_expected,SENSE_expected_prev,SENSE_prev : STD_LOGIC;
SIGNAL TARGET_expected,TARGET_expected_prev,TARGET_prev : STD_LOGIC_VECTOR(1 DOWNTO 0);

SIGNAL trigger : BIT := '0';
SIGNAL trigger_e : BIT := '0';
SIGNAL trigger_r : BIT := '0';
SIGNAL trigger_i : BIT := '0';
SIGNAL num_mismatches : mmvec := (OTHERS => 0);

BEGIN

-- Update history buffers  expected /o
t_prcs_update_o_expected_hist : PROCESS (trigger) 
BEGIN
	BUSY_expected_prev <= BUSY_expected;
	FLOOR_expected_prev <= FLOOR_expected;
	MOTOR_expected_prev <= MOTOR_expected;
	OPENING_expected_prev <= OPENING_expected;
	SENSE_expected_prev <= SENSE_expected;
	TARGET_expected_prev <= TARGET_expected;
END PROCESS t_prcs_update_o_expected_hist;


-- Update history buffers  real /o
t_prcs_update_o_real_hist : PROCESS (trigger) 
BEGIN
	BUSY_prev <= BUSY;
	FLOOR_prev <= FLOOR;
	MOTOR_prev <= MOTOR;
	OPENING_prev <= OPENING;
	SENSE_prev <= SENSE;
	TARGET_prev <= TARGET;
END PROCESS t_prcs_update_o_real_hist;


-- expected FLOOR[1]
t_prcs_FLOOR_1: PROCESS
BEGIN
	FLOOR_expected(1) <= '0';
	WAIT FOR 155000 ps;
	FLOOR_expected(1) <= '1';
	WAIT FOR 250000 ps;
	FLOOR_expected(1) <= '0';
WAIT;
END PROCESS t_prcs_FLOOR_1;
-- expected FLOOR[0]
t_prcs_FLOOR_0: PROCESS
BEGIN
	FLOOR_expected(0) <= '0';
	WAIT FOR 105000 ps;
	FLOOR_expected(0) <= '1';
	WAIT FOR 50000 ps;
	FLOOR_expected(0) <= '0';
	WAIT FOR 50000 ps;
	FLOOR_expected(0) <= '1';
	WAIT FOR 140000 ps;
	FLOOR_expected(0) <= '0';
	WAIT FOR 60000 ps;
	FLOOR_expected(0) <= '1';
WAIT;
END PROCESS t_prcs_FLOOR_0;

-- expected MOTOR
t_prcs_MOTOR: PROCESS
BEGIN
	MOTOR_expected <= '0';
	WAIT FOR 55000 ps;
	MOTOR_expected <= '1';
	WAIT FOR 160000 ps;
	MOTOR_expected <= '0';
	WAIT FOR 90000 ps;
	MOTOR_expected <= '1';
	WAIT FOR 110000 ps;
	MOTOR_expected <= '0';
WAIT;
END PROCESS t_prcs_MOTOR;

-- expected OPENING
t_prcs_OPENING: PROCESS
BEGIN
	OPENING_expected <= '0';
	WAIT FOR 215000 ps;
	OPENING_expected <= '1';
	WAIT FOR 40000 ps;
	OPENING_expected <= '0';
	WAIT FOR 160000 ps;
	OPENING_expected <= '1';
	WAIT FOR 40000 ps;
	OPENING_expected <= '0';
WAIT;
END PROCESS t_prcs_OPENING;

-- expected SENSE
t_prcs_SENSE: PROCESS
BEGIN
	SENSE_expected <= 'X';
	WAIT FOR 55000 ps;
	SENSE_expected <= '1';
	WAIT FOR 250000 ps;
	SENSE_expected <= '0';
	WAIT FOR 110000 ps;
	SENSE_expected <= '1';
WAIT;
END PROCESS t_prcs_SENSE;

-- expected TARGET[0]
t_prcs_TARGET_0: PROCESS
BEGIN
	TARGET_expected(0) <= '0';
	WAIT FOR 45000 ps;
	TARGET_expected(0) <= '1';
WAIT;
END PROCESS t_prcs_TARGET_0;

-- expected TARGET[1]
t_prcs_TARGET_1: PROCESS
BEGIN
	TARGET_expected(1) <= '0';
	WAIT FOR 45000 ps;
	TARGET_expected(1) <= '1';
	WAIT FOR 250000 ps;
	TARGET_expected(1) <= '0';
WAIT;
END PROCESS t_prcs_TARGET_1;

-- expected BUSY
t_prcs_BUSY: PROCESS
BEGIN
	BUSY_expected <= '0';
	WAIT FOR 55000 ps;
	BUSY_expected <= '1';
	WAIT FOR 200000 ps;
	BUSY_expected <= '0';
	WAIT FOR 50000 ps;
	BUSY_expected <= '1';
	WAIT FOR 150000 ps;
	BUSY_expected <= '0';
WAIT;
END PROCESS t_prcs_BUSY;

-- Set trigger on real/expected o/ pattern changes                        

t_prcs_trigger_e : PROCESS(BUSY_expected,FLOOR_expected,MOTOR_expected,OPENING_expected,SENSE_expected,TARGET_expected)
BEGIN
	trigger_e <= NOT trigger_e;
END PROCESS t_prcs_trigger_e;

t_prcs_trigger_r : PROCESS(BUSY,FLOOR,MOTOR,OPENING,SENSE,TARGET)
BEGIN
	trigger_r <= NOT trigger_r;
END PROCESS t_prcs_trigger_r;


t_prcs_selfcheck : PROCESS
VARIABLE i : INTEGER := 1;
VARIABLE txt : LINE;

VARIABLE last_BUSY_exp : STD_LOGIC := 'U';
VARIABLE last_FLOOR_exp : STD_LOGIC_VECTOR(1 DOWNTO 0) := "UU";
VARIABLE last_MOTOR_exp : STD_LOGIC := 'U';
VARIABLE last_OPENING_exp : STD_LOGIC := 'U';
VARIABLE last_SENSE_exp : STD_LOGIC := 'U';
VARIABLE last_TARGET_exp : STD_LOGIC_VECTOR(1 DOWNTO 0) := "UU";

VARIABLE on_first_change : trackvec := "111111";
BEGIN

WAIT UNTIL (sampler'LAST_VALUE = '1'OR sampler'LAST_VALUE = '0')
	AND sampler'EVENT;
IF (debug_tbench = '1') THEN
	write(txt,string'("Scanning pattern "));
	write(txt,i);
	writeline(output,txt);
	write(txt,string'("| expected "));write(txt,BUSY_name);write(txt,string'(" = "));write(txt,BUSY_expected_prev);
	write(txt,string'("| expected "));write(txt,FLOOR_name);write(txt,string'(" = "));write(txt,FLOOR_expected_prev);
	write(txt,string'("| expected "));write(txt,MOTOR_name);write(txt,string'(" = "));write(txt,MOTOR_expected_prev);
	write(txt,string'("| expected "));write(txt,OPENING_name);write(txt,string'(" = "));write(txt,OPENING_expected_prev);
	write(txt,string'("| expected "));write(txt,SENSE_name);write(txt,string'(" = "));write(txt,SENSE_expected_prev);
	write(txt,string'("| expected "));write(txt,TARGET_name);write(txt,string'(" = "));write(txt,TARGET_expected_prev);
	writeline(output,txt);
	write(txt,string'("| real "));write(txt,BUSY_name);write(txt,string'(" = "));write(txt,BUSY_prev);
	write(txt,string'("| real "));write(txt,FLOOR_name);write(txt,string'(" = "));write(txt,FLOOR_prev);
	write(txt,string'("| real "));write(txt,MOTOR_name);write(txt,string'(" = "));write(txt,MOTOR_prev);
	write(txt,string'("| real "));write(txt,OPENING_name);write(txt,string'(" = "));write(txt,OPENING_prev);
	write(txt,string'("| real "));write(txt,SENSE_name);write(txt,string'(" = "));write(txt,SENSE_prev);
	write(txt,string'("| real "));write(txt,TARGET_name);write(txt,string'(" = "));write(txt,TARGET_prev);
	writeline(output,txt);
	i := i + 1;
END IF;
IF ( BUSY_expected_prev /= 'X' ) AND (BUSY_expected_prev /= 'U' ) AND (BUSY_prev /= BUSY_expected_prev) AND (
	(BUSY_expected_prev /= last_BUSY_exp) OR
	(on_first_change(1) = '1')
		) THEN
	throw_error("BUSY",BUSY_expected_prev,BUSY_prev);
	num_mismatches(0) <= num_mismatches(0) + 1;
	on_first_change(1) := '0';
	last_BUSY_exp := BUSY_expected_prev;
END IF;
IF ( FLOOR_expected_prev /= "XX" ) AND (FLOOR_expected_prev /= "UU" ) AND (FLOOR_prev /= FLOOR_expected_prev) AND (
	(FLOOR_expected_prev /= last_FLOOR_exp) OR
	(on_first_change(2) = '1')
		) THEN
	throw_error("FLOOR",FLOOR_expected_prev,FLOOR_prev);
	num_mismatches(1) <= num_mismatches(1) + 1;
	on_first_change(2) := '0';
	last_FLOOR_exp := FLOOR_expected_prev;
END IF;
IF ( MOTOR_expected_prev /= 'X' ) AND (MOTOR_expected_prev /= 'U' ) AND (MOTOR_prev /= MOTOR_expected_prev) AND (
	(MOTOR_expected_prev /= last_MOTOR_exp) OR
	(on_first_change(3) = '1')
		) THEN
	throw_error("MOTOR",MOTOR_expected_prev,MOTOR_prev);
	num_mismatches(2) <= num_mismatches(2) + 1;
	on_first_change(3) := '0';
	last_MOTOR_exp := MOTOR_expected_prev;
END IF;
IF ( OPENING_expected_prev /= 'X' ) AND (OPENING_expected_prev /= 'U' ) AND (OPENING_prev /= OPENING_expected_prev) AND (
	(OPENING_expected_prev /= last_OPENING_exp) OR
	(on_first_change(4) = '1')
		) THEN
	throw_error("OPENING",OPENING_expected_prev,OPENING_prev);
	num_mismatches(3) <= num_mismatches(3) + 1;
	on_first_change(4) := '0';
	last_OPENING_exp := OPENING_expected_prev;
END IF;
IF ( SENSE_expected_prev /= 'X' ) AND (SENSE_expected_prev /= 'U' ) AND (SENSE_prev /= SENSE_expected_prev) AND (
	(SENSE_expected_prev /= last_SENSE_exp) OR
	(on_first_change(5) = '1')
		) THEN
	throw_error("SENSE",SENSE_expected_prev,SENSE_prev);
	num_mismatches(4) <= num_mismatches(4) + 1;
	on_first_change(5) := '0';
	last_SENSE_exp := SENSE_expected_prev;
END IF;
IF ( TARGET_expected_prev /= "XX" ) AND (TARGET_expected_prev /= "UU" ) AND (TARGET_prev /= TARGET_expected_prev) AND (
	(TARGET_expected_prev /= last_TARGET_exp) OR
	(on_first_change(6) = '1')
		) THEN
	throw_error("TARGET",TARGET_expected_prev,TARGET_prev);
	num_mismatches(5) <= num_mismatches(5) + 1;
	on_first_change(6) := '0';
	last_TARGET_exp := TARGET_expected_prev;
END IF;
    trigger_i <= NOT trigger_i;
END PROCESS t_prcs_selfcheck;


t_prcs_trigger_res : PROCESS(trigger_e,trigger_i,trigger_r)
BEGIN
	trigger <= trigger_i XOR trigger_e XOR trigger_r;
END PROCESS t_prcs_trigger_res;

t_prcs_endsim : PROCESS
VARIABLE txt : LINE;
VARIABLE total_mismatches : INTEGER := 0;
BEGIN
WAIT FOR 1000000 ps;
total_mismatches := num_mismatches(0) + num_mismatches(1) + num_mismatches(2) + num_mismatches(3) + num_mismatches(4) + num_mismatches(5);
IF (total_mismatches = 0) THEN                                              
        write(txt,string'("Simulation passed !"));                        
        writeline(output,txt);                                              
ELSE                                                                        
        write(txt,total_mismatches);                                        
        write(txt,string'(" mismatched vectors : Simulation failed !"));  
        writeline(output,txt);                                              
END IF;                                                                     
WAIT;
END PROCESS t_prcs_endsim;

END ovec_arch;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY STD;                                                            
USE STD.textio.ALL;                                                     

USE WORK.elevator_vhd_tb_types.ALL;                                         

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
SIGNAL sampler : sample_type;

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
COMPONENT elevator_vhd_check_tst
PORT ( 
	BUSY : IN STD_LOGIC;
	FLOOR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	MOTOR : IN STD_LOGIC;
	OPENING : IN STD_LOGIC;
	SENSE : IN STD_LOGIC;
	TARGET : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	sampler : IN sample_type
);
END COMPONENT;
COMPONENT elevator_vhd_sample_tst
PORT (
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : IN STD_LOGIC;
	sampler : OUT sample_type
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
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 40000 ps;
	B(3) <= '1';
	WAIT FOR 10000 ps;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
	WAIT FOR 290000 ps;
	B(1) <= '1';
	WAIT FOR 10000 ps;
	B(1) <= '0';
	WAIT FOR 180000 ps;
	B(1) <= '1';
	WAIT FOR 20000 ps;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 20000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- S
t_prcs_S: PROCESS
BEGIN
	S <= '0';
	WAIT FOR 90000 ps;
	S <= '1';
	WAIT FOR 10000 ps;
	S <= '0';
	WAIT FOR 40000 ps;
	S <= '1';
	WAIT FOR 10000 ps;
	S <= '0';
	WAIT FOR 40000 ps;
	S <= '1';
	WAIT FOR 10000 ps;
	S <= '0';
	WAIT FOR 130000 ps;
	S <= '1';
	WAIT FOR 10000 ps;
	S <= '0';
	WAIT FOR 50000 ps;
	S <= '1';
	WAIT FOR 10000 ps;
	S <= '0';
WAIT;
END PROCESS t_prcs_S;
tb_sample : elevator_vhd_sample_tst
PORT MAP (
	B => B,
	CLK => CLK,
	RESET => RESET,
	S => S,
	sampler => sampler
	);

tb_out : elevator_vhd_check_tst
PORT MAP (
	BUSY => BUSY,
	FLOOR => FLOOR,
	MOTOR => MOTOR,
	OPENING => OPENING,
	SENSE => SENSE,
	TARGET => TARGET,
	sampler => sampler
	);
END elevator_arch;
