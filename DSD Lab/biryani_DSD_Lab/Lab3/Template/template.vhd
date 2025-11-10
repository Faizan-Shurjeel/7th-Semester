--------------------------------------------------------------------
-- FSM Template in VHDL (with enumerated states)
--------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fsm_example IS
    PORT (
        clk    : IN  STD_LOGIC;
        rst    : IN  STD_LOGIC;
        input  : IN  STD_LOGIC;
        output : OUT STD_LOGIC
    );
END fsm_example;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF fsm_example IS

    -- Define enumerated states
    TYPE state IS (A, B, C);
    SIGNAL pr_state, nx_state : state;

    -- Optional attribute to specify state encoding
    ATTRIBUTE ENUM_ENCODING : STRING;
    ATTRIBUTE ENUM_ENCODING OF state : TYPE IS "sequential";

BEGIN

    ----------------------------------------------------------------
    -- Lower section of FSM: State register (sequential part)
    ----------------------------------------------------------------
    PROCESS (clk, rst)
    BEGIN
        IF (rst = '1') THEN
            pr_state <= A;                  -- reset to initial state
        ELSIF (clk'EVENT AND clk = '1') THEN
            pr_state <= nx_state;           -- update state on clock edge
        END IF;
    END PROCESS;

    ----------------------------------------------------------------
    -- Upper section of FSM: Next-state logic (combinational part)
    ----------------------------------------------------------------
    PROCESS (pr_state, input)
    BEGIN
        CASE pr_state IS
            WHEN A =>
                output <= '0';
                IF (input = '1') THEN
                    nx_state <= B;
                ELSE
                    nx_state <= A;
                END IF;

            WHEN B =>
                output <= '1';
                IF (input = '1') THEN
                    nx_state <= C;
                ELSE
                    nx_state <= B;
                END IF;

            WHEN C =>
                output <= '0';
                IF (input = '1') THEN
                    nx_state <= A;
                ELSE
                    nx_state <= C;
                END IF;

            WHEN OTHERS =>
                nx_state <= A;
        END CASE;
    END PROCESS;

    ----------------------------------------------------------------
    -- Optional: Separate output process (Moore-type FSM style)
    ----------------------------------------------------------------
    -- PROCESS (clk, rst)
    -- BEGIN
    --     IF (rst = '1') THEN
    --         output <= '0';
    --     ELSIF (clk'EVENT AND clk = '1') THEN
    --         output <= output;  -- update logic here if needed
    --     END IF;
    -- END PROCESS;

END behavioral;
--------------------------------------------------------------------
