-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- counter 0-3
-- 2 bit output, invertible count (sense signal)
-- sensor signal, counter counts on high

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
port (
    sensor,reset,clk,enable,sense: in std_logic; --sense: 1 when up, 0 when down
    count : out std_logic_vector(1 downto 0);
    carry_out : out std_logic
    );
end counter;

architecture a_counter of counter is
    signal s_count: unsigned(1 downto 0);
begin
    process (reset, clk, enable)
    begin
        if reset = '1' or enable = '0' then --asynchronous
            s_count <= "00";
        elsif clk'EVENT and clk='1' and sensor='1' then
            if sense = '1' then
                s_count <= s_count + 1;
            elsif sense = '0' then
                s_count <= s_count - 1;
            end if;
        end if;
    end process;
    process (s_count)
    begin
        if s_count = "11" then
            carry_out <= '1';       
        elsif s_count = "00" then
            carry_out <= '1';
        else
            carry_out <= '0';
        end if;
    end process;
    
    --assign local variables to physical pins
    count <= std_logic_vector(s_count); --automagical type conversion
end a_counter;

