library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture testbench of full_adder_tb is
    signal A, B, Cin, S, Cout: std_logic;
begin
    -- Instantiate the full_adder
    UUT: entity work.full_adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            S => S,
            Cout => Cout
        );

    -- Stimulus process
    process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        -- Add more test cases if needed

        wait;
    end process;
end architecture testbench;
