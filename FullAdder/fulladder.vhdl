<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
=======
#test
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
>>>>>>> 6f888ef533052e1574fd3741f70b1ad6d6ea1743

entity fulladder is
    Port (
        A, B, Cin : in std_logic;
        Sum, Cout : out std_logic
    );
end entity fulladder;

architecture behavioral of fulladder is
begin
<<<<<<< HEAD
    Sum <= (A xor B) xor Cin;
    Cout <= (A and B) or ((A xor B) and Cin);
end architecture behavioral;

=======
    process (A, B, Cin)
    begin
        S <= A XOR B XOR Cin;
        Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B);
    end process;
end gate_level;
>>>>>>> 6f888ef533052e1574fd3741f70b1ad6d6ea1743
