library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end entity mux_tb;

architecture testbench of mux_tb is
    signal a, b, y : std_logic;
    signal sel : std_logic := '0';

    component mux
        Port (
            a, b : in std_logic;
            sel : in std_logic;
            y : out std_logic
        );
    end component mux;

begin
    uut: mux port map (a, b, sel, y);

    process
    begin
        -- Test case 1: sel = '0'
        a <= '1';
        b <= '0';
        sel <= '0';
        wait for 10 ns;

        -- Test case 2: sel = '1'
        a <= '0';
        b <= '1';
        sel <= '1';
        wait for 10 ns;

        -- Additional test cases can be added here

        wait;
    end process;
end architecture testbench;

