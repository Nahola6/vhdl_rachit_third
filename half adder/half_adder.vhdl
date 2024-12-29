
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity halfadder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end halfadder;

-- Architecture Definition
architecture Behavioral of halfadder is
begin
    -- XOR gate for Sum
    Sum <= A xor B;

    -- AND gate for Carry
    Carry <= A and B;
end Behavioral;