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
    SENSE,MOTOR,OPENING,BUSY: out std_logic;
    FLOOR,TARGET: out std_logic_vector(1 downto 0)
    );
end elevator;

architecture a_elevator of elevator is
	
	-- type and signals for state machine
	type state is (s0,s1,s2,s3,s4);
	signal curr_state, next_state: state;
	
	-- waiting time for the door, adjustable
	constant opening_time : integer := 3; -- equal to 3s
	
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
	end component;
	
	-- COUNTER ---------------------------
	component counter is
	port (
		sensor,reset,clk,enable,sense: in std_logic;
		count : out std_logic_vector(1 downto 0);
		carry_out : out std_logic
		);
	end component;
	
	-- TIMER -----------------------------
	component timer is
	port (
		clk, reset, enable: in std_logic;
		elapsed: out integer
	);
	end component;
	-- internal signal declarations to link components
    signal pcod_s, floor_s, target_s: std_logic_vector(1 downto 0);
    signal count_s: std_logic_vector(1 downto 0);
    signal sense_s, pressed_s, floor_pass_s, busy_s: std_logic;
    signal elapsed_s: integer;
    signal opening_s: std_logic;
	signal enable_s : std_logic;
	
begin
	
	enable_s <= '1';
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
		enable => enable_s,
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
		elapsed => elapsed_s,
		clk => clk,
		reset => not enable_s,
		enable => opening_s ); -- the timer starts when opening_s is active
	
		
	sync_process: process (clk, reset)
	begin
		if reset='1' then
			curr_state <= s0;
		elsif rising_edge(clk) then
			curr_state <= next_state;
		end if;
	end process sync_process;
	state_change: process (curr_state, B, S)
	begin
		case curr_state is
			when s0 =>
                MOTOR <= '0';
				opening_s <= '0';
				busy_s <= '0';
				if target_s > floor_s then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
			when s1 =>
				MOTOR <= '1';
				sense_s <= '1';
				busy_s <= '1';
				if target_s = floor_s then
					next_state <= s2;
				else
					next_state <= s1;
				end if;
			when s2 =>
				MOTOR <= '0';
				opening_s <= '1';
				busy_s <= '1';
                OPENING <= opening_s;
                if elapsed_s = opening_time then
                    next_state <= s3;
                else
                    next_state <= s2;
                end if;
            when s3 =>
                MOTOR <= '0';
                opening_s <= '0';
                OPENING <= opening_s;
                busy_s <= '0';
                if target_s > floor_s then
                    next_state <= s1;
                elsif target_s < floor_s then
                    next_state <= s4;
                else
                    next_state <= s3;
                end if;
            when s4 => 
                MOTOR <= '1';
                sense_s <= '0';
                busy_s <= '1';
                if target_s = floor_s then
                    next_state <= s2;
                else
                    next_state <= s4;
                end if;
            when others =>
                MOTOR <= '0';
                next_state <= s3;
        end case;
    end process state_change;
    TARGET <= target_s;
    FLOOR <= floor_s;
    SENSE <= sense_s;
    BUSY <= busy_s;
    
end a_elevator;
