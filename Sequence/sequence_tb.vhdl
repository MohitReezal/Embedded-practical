library ieee;
use ieee.std_logic_1164.all;

entity sequence_tb is
end entity sequence_tb;

architecture testbench of sequence_tb is
    signal clk, rst, data_in, sequence_detected : std_logic := '0';

    component sequence
        Port (
            clk, rst : in std_logic;
            data_in : in std_logic;
            sequence_detected : out std_logic
        );
    end component sequence;

begin
    uut: sequence port map (clk, rst, data_in, sequence_detected);

    clk_process: process
    begin
        while now < 100 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process clk_process;

    stimulus_process: process
    begin
        wait for 15 ns; -- Allow some time before starting sequence
        rst <= '0';
        data_in <= '1';
        wait for 10 ns;
        data_in <= '0';
        wait for 10 ns;
        data_in <= '1';
        wait for 10 ns;
        data_in <= '1'; -- Sequence detected
        wait;
    end process stimulus_process;

end architecture testbench;

