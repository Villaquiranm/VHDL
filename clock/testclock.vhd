LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity testclock is
end testclock;

ARCHITECTURE behavior of testclock is
  COMPONENT clock_8_bits
  Port(
  clk: in std_logic;
  outsignal: out std_logic_vector(7 downto 0)
  );
  END COMPONENT;
  signal clk : std_logic;
  signal outsignal : std_logic_vector(7 downto 0);
  BEGIN
  uut:clock_8_bits PORT MAP(
    clk => clk,
    outsignal => outsignal
  );

  clkk : process
    begin
      clk <= '0';
      while TRUE loop
        clk <= '1';
        wait for 2 ns;
        clk <= '0';
        wait for 2 ns;
      end loop;
    wait;
  end process clkk;
end behavior;
