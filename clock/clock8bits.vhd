library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_8_bits is
  Port(
  clk: in STD_LOGIC;
  outsignal : out std_logic_vector(7 downto 0)
  );
end clock_8_bits;

architecture clock of clock_8_bits is
  signal counter : std_logic_vector(7 downto 0) := (others => '0');
  begin
    outsignal <= counter;
    process(clk)
    begin
      if rising_edge(clk) then
        counter <= counter+1;
      end if;
    end process;
  end clock;
