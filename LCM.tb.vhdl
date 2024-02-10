library ieee;
use ieee.std_logic_1164.all;

entity LCM_FSM_tb is
end LCM_FSM_tb;

architecture testbench of LCM_FSM_tb is
    signal clk, rst, start : std_logic := '0';
    signal w, input_data, result : positive := 0;
begin
    -- Instantiate the LCM_FSM
    UUT: entity work.LCM_FSM
        port map (
            clk => clk,
            rst => rst,
            start => start,
            w => w,
            input_data => input_data,
            result => result
        );

    -- Clock process
    process
    begin
        clk <= not clk after 5 ns;
        wait for 10 ns;
    end process;

    -- Stimulus process
    process
    begin
        rst <= '1'; wait for 10 ns;
        rst <= '0'; wait for 10 ns;

        start <= '1'; w <= 5; input_data <= 2; wait for 10 ns;
        wait for 10 ns;
        wait for 10 ns;
        wait for 10 ns;
        wait;

    end process;
end architecture testbench;
