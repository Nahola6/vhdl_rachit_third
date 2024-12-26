library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate_tb is
end or_gate_tb;

architecture behavior of or_gate_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component or_gate
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
    end component;

    -- Signal Declarations to connect to UUT
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: or_gate Port map (
          A => A,
          B => B,
          Y => Y
        );

    -- Stimulus process
    stim_proc: process
    begin	
        -- Test Case 1
        A <= '0';
        B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test Case 1 Failed" severity error;

        -- Test Case 2
        A <= '0';
        B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test Case 2 Failed" severity error;

        -- Test Case 3
        A <= '1';
        B <= '0';
        wait for 10 ns;
        assert (Y = '1') report "Test Case 3 Failed" severity error;

        -- Test Case 4
        A <= '1';
        B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test Case 4 Failed" severity error;

        -- End simulation
        wait;
    end process;

end behavior;
