-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- edge detector

library ieee;
use ieee.std_logic_1164.all;

entity edge_det is
port (
    input,clk,reset : in std_logic; 
    output : out std_logic
    );
end edge_det;

architecture a_edge_det of edge_det is
    signal q : std_logic;
begin
    process (reset,clk)
    begin
        if reset = '1' then
            q <= '0';
        elsif clk'EVENT and clk='1' then
            q <= input;
        end if;
    end process;

    output <= '1' when input = '1' and q ='0' else '0';
end a_edge_det;
