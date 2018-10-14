-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- register 2 bit
-- active on rising edge, enable pin

library ieee;
use ieee.std_logic_1164.all;

entity regist is
port (
    reset,clk,enable : in std_logic;
    input : in std_logic_vector(1 downto 0);
    output : out std_logic_vector(1 downto 0)
    );
end regist;

architecture a_counter of regist is
    signal s_out: std_logic_vector(1 downto 0);
begin
    process (reset, clk, enable)
    begin
        if reset = '1' then -- asynchronous
            s_out <= "00";
            
--enable signal is needed for cases in which the elevator is moving and a user presses a button,
--so that the system ignores said signal and keeps moving to the target
        elsif clk'EVENT and clk = '1' and enable = '1' then
            s_out <= input;
        end if;
    end process;

    --assign local variables to physical pins
    output <= s_out;
end a_counter;

