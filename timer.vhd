-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- session 2
-- design by Roberto Uceda Gomez - NIA 100346538
-- timer 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port (
		clk, reset, enable: in std_logic;
		elapsed: out integer
	);
end timer;

architecture a_timer of timer is
	signal elapsed_s: integer;
begin
	process(reset, clk)
	begin
		if reset = '1' or enable = '0' then
			elapsed_s <= 0;
		elsif rising_edge(clk) then
			elapsed_s <= elapsed_s + 1;
		end if;
	end process;
	elapsed <= elapsed_s;
end a_timer;