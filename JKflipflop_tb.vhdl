library ieee;
use ieee.std_logic_1164.all;

entity jkflipflop_tb is
end jkflipflop_tb;

architecture testbench of jkflipflop_tb is
    signal clk, clr, j, k, q, nq : std_logic := '0';
begin
    -- Instantiate the jkflipflop
    UUT: entity work.jkflipflop
        port map (
            clk => clk,
            clr => clr,
            j => j,
            k => k,
            q => q,
            nq => nq
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
        clr <= '1'; j <= '0'; k <= '0'; wait for 10 ns;
        clr <= '0'; j <= '0'; k <= '0'; wait for 10 ns;
        j <= '1'; k <= '0'; wait for 10 ns;
        j <= '0'; k <= '1'; wait for 10 ns;
        j <= '1'; k <= '1'; wait for 10 ns;
        -- Add more test cases if needed

        wait;
    end process;
end architecture testbench;
