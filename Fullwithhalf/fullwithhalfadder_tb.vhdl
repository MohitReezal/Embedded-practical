library ieee;
use ieee.std_logic_1164.all;

entity fullwithhalfadder_tb is
end entity fullwithhalfadder_tb;

architecture testbench of fullwithhalfadder_tb is
    signal A, B, Cin, Sum, Cout : std_logic := '0';

    component fullwithhalfadder
        Port (
            A, B, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component fullwithhalfadder;

begin
    uut: fullwithhalfadder port map (A, B, Cin, Sum, Cout);

    stimulus_process: process
    begin
        wait for 10 ns;
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        wait;
    end process stimulus_process;

end architecture testbench;
