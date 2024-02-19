library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
    Port (
        A, B, Cin : in std_logic;
        Sum, Cout : out std_logic
    );
end entity fulladder;

architecture behavioral of fulladder is
begin
    Sum <= (A xor B) xor Cin;
    Cout <= (A and B) or ((A xor B) and Cin);
end architecture behavioral;

