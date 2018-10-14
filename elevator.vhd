-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- session 2
-- design by Roberto Uceda Gomez - NIA 100346538
-- elevator - main entity 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator is
port (
    CLK,RESET,S: in std_logic;
    B: in std_logic_vector(3 downto 0);
    SENSE,MOTOR,OPENING: out std_logic;
    FLOOR,TARGET: out std_logic_vector(1 downto 0)
    );
end elevator;

architecture a_elevator of elevator is
	
	-- type and signals for state machine
	type state is (s0,s1,s2,s3,s4);
	signal curr_state, next_state: state;
	
	-- waiting time for the door, adjustable
	constant clk_period : time := 1 ms; -- equal to a 1Khz clock
	constant opening_time : time := 3000 * CLKPeriod; -- equal to 3s
	
	-- declaring needed blocks
	-- REGISTER --------------------------
	component regist is
	port (
		reset,clk,enable : in std_logic;
		input : in std_logic_vector(1 downto 0);
		output : out std_logic_vector(1 downto 0)
		);
	end component;

	-- EDGE DETECTOR ---------------------
	component edge_det is
	port (
		input,clk,reset : in std_logic; 
		output : out std_logic
		);
	end component;

	-- ENCODER ---------------------------
	component encoder is
	port (
		input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(1 downto 0);
		act : out std_logic
		);
	end component
	
	-- COUNTER ---------------------------
	component counter is
	port (
		sensor,reset,clk,enable,sense: in std_logic;
		count : out std_logic_vector(1 downto 0);
		carry_out : out std_logic
		);
	end component;
	
	-- TIMER -----------------------------
	entity timer is
	port (
		clk, reset, enable: in std_logic;
		elapsed: out time;
	);
	end timer;
	-- internal signal declarations to link components
    signal pcod_s, floor_s, target_s: std_logic_vector(1 downto 0);
    signal count_s: std_logic_vector(1 downto 0);
    signal sense_s, pressed_s, floor_pass_s, enable_s: std_logic;
    signal elapsed_s: time;
    signal opening_s: std_logic;
	enable_s <= '1';
	
begin
	
	-- instantiating button encoder component
	-- mapping all components with their signals	
	en: encoder port map ( 
		input => B,
		output => pcod_s,
		act => pressed_s );
	ed: edge_det port map (
		input => S,
		output => floor_pass_s,
		clk => CLK,
		reset => RESET );
	r0: regist port map (
		input => pcod_s,
		output => target_s,
		enable => pressed_s,
		clk => CLK,
		reset => RESET );
	r1: regist port map (
		input => count_s,
		output => floor_s,
		enable => not busy,
		clk => CLK,
		reset => RESET );
	ct: counter port map (
		sensor => floor_pass_s,
		sense => sense_s,
		count => count_s,
		enable => enable_s,
		clk => CLK,
		reset => RESET );
	tim: timer port map (
		elapsed => elapsed_s;
		clk => clk;
		enable => opening );
	
		
	process (clk, reset)
	begin
		if reset='1' then
			curr_state <= '0';
		elsif rising_edge(clk) then
			curr_state <= next_state;
		end if;
	end process;
	
	process (curr_state, B, S)
	begin
		case curr_state is
			when s0 =>
				MOTOR <= '0';
				FLOOR <= "00";
				SENSE <= '0';
				TARGET <= "00";
				OPENING <= '0';
				BUSY <= '0';
				if target_s > floor_s then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
			when s1 =>
				MOTOR <= '1';
				sense_s <= '1';
				SENSE <= sense_s;
				BUSY <= '1';
				if target_s = floor_s then
					next_state <= s2;
				else
					next_state <= s1;
				end if;
			when s2 =>
				MOTOR <= '0';
				OPENING <= '0';
				
				
				
		
				
					
					
					
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
