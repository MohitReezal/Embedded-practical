library ieee;
use ieee.std_logic_1164.all;

entity fulladder_tb is
end entity fulladder_tb;

architecture testbench of fulladder_tb is
    signal A, B, Cin, Sum, Cout : std_logic := '0';

    component fulladder
        Port (
            A, B, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component fulladder;

begin
    uut: fulladder port map (A, B, Cin, Sum, Cout);

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

