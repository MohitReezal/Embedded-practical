library ieee;
use ieee.std_logic_1164.all;

entity seq1011_tb is
end seq1011_tb;

architecture testbench of seq1011_tb is
    signal x, y, clk, rst: std_logic := '0';
begin
    -- Instantiate the seq1011
    UUT: entity work.seq1011
        port map (
            x => x,
            y => y,
            clk => clk,
            rst => rst
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
        rst <= '0'; x <= '1'; wait for 10 ns;
        x <= '0'; wait for 10 ns;
        x <= '1'; wait for 10 ns;
        x <= '0'; wait for 10 ns;
        x <= '1'; wait for 10 ns;
        x <= '1'; wait for 10 ns;
        -- Add more test cases if needed

        wait;
    end process;
end architecture testbench;
