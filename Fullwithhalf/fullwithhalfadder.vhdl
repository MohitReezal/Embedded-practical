library ieee;
use ieee.std_logic_1164.all;

entity fullwithhalfadder is
    Port (
        A, B, Cin : in std_logic;
        Sum, Cout : out std_logic
    );
end entity fullwithhalfadder;

architecture behavioral of fullwithhalfadder is
    signal S1, C1, C2 : std_logic;

    component half_adder
        Port (
            A, B : in std_logic;
            Sum, Cout : out std_logic
        );
    end component half_adder;

begin
    -- First half adder
    half1: half_adder port map (A, B, S1, C1);

    -- Second half adder
    half2: half_adder port map (S1, Cin, Sum, C2);

    -- OR gate for final carry-out
    Cout <= C1 or C2;

end architecture behavioral;

