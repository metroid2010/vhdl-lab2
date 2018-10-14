-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- encoder 4-2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder is
port (
    input : in std_logic_vector(3 downto 0); --buttons: floor 3 -> msb, floor 0 -> lsb
    output : out std_logic_vector(1 downto 0); --encoded signal from the buttons
    act : out std_logic --indicates if some button was pressed (ACTive)
    );
end encoder;

architecture a_encoder of encoder is
    signal s_output: std_logic_vector(1 downto 0);
    signal s_act: std_logic;
begin
    process(input)
    begin
        case input is
            when "0001" => s_output <= "00"; s_act <= '1';  --floor 0
            when "0010" => s_output <= "01"; s_act <= '1';
            when "0100" => s_output <= "10"; s_act <= '1';
            when "1000" => s_output <= "11"; s_act <= '1'; --floor 3
            
            --failsafe for when two different buttons are pressed at the same time
            when others => s_output <= "XX"; s_act <= '0';
        end case;
    end process;
    
    --assign local variables to physical pins
    output <= s_output;
    act <= s_act;
end a_encoder;
