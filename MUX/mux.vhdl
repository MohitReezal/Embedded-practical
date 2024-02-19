library ieee;
use ieee.std_logic_1164.all;

entity mux is
    Port (
        a, b : in std_logic;
        sel : in std_logic;
        y : out std_logic
    );
end entity mux;

architecture behavioral of mux is
begin
    process (a, b, sel)
    begin
        if sel = '0' then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end architecture behavioral;

