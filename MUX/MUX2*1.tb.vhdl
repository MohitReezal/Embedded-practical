library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture testbench of mux_tb is
    signal a0, a1, s, en, q : std_logic := '0';
begin
    -- Instantiate the mux
    UUT: entity work.mux
        port map (
            a0 => a0,
            a1 => a1,
            s => s,
            en => en,
            q => q
        );

    -- Stimulus process
    process
    begin
        en <= '1'; s <= '0'; a0 <= '0'; a1 <= '1'; wait for 10 ns;
        en <= '1'; s <= '1'; a0 <= '0'; a1 <= '1'; wait for 10 ns;
        en <= '1'; s <= '0'; a0 <= '1'; a1 <= '0'; wait for 10 ns;
        en <= '0'; wait for 10 ns;
        en <= '1'; s <= '1'; a0 <= '1'; a1 <= '0'; wait for 10 ns;
        -- Add more test cases if needed

        wait;
    end process;
end architecture testbench;
