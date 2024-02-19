library ieee;
use ieee.std_logic_1164.all;

entity sequence is
    Port (
        clk, rst : in std_logic;
        data_in : in std_logic;
        sequence_detected : out std_logic
    );
end entity sequence;

architecture behavioral of sequence is
    type state_type is (IDLE, S1, S10, S101, DETECTED);
    signal state : state_type := IDLE;
    
begin
    process (clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if data_in = '1' then
                        state <= S1;
                    else
                        state <= IDLE;
                    end if;
                when S1 =>
                    if data_in = '0' then
                        state <= IDLE;
                    else
                        state <= S10;
                    end if;
                when S10 =>
                    if data_in = '1' then
                        state <= S101;
                    else
                        state <= IDLE;
                    end if;
                when S101 =>
                    if data_in = '1' then
                        state <= DETECTED;
                    else
                        state <= IDLE;
                    end if;
                when DETECTED =>
                    state <= IDLE;
            end case;
        end if;
    end process;
    
    sequence_detected <= '1' when state = DETECTED else '0';

end architecture behavioral;

