library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GRAY_TB is
end entity GRAY_TB;

architecture Simulation of GRAY_TB is
    signal B : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal G : STD_LOGIC_VECTOR (3 downto 0);
begin
    DUT: entity work.BIN_TO_GRAY
        port map (
            B => B,
            G => G
        );
    STIMULUS: process
    begin
      B <= "0000"; wait for 10 ns; -- 0 -> 0000
      B <= "0001"; wait for 10 ns; -- 1 -> 0001
      B <= "0010"; wait for 10 ns; -- 2 -> 0011
      B <= "0011"; wait for 10 ns; -- 3 -> 0010
      B <= "0100"; wait for 10 ns; -- 4 -> 0110
      B <= "1111"; wait for 10 ns; -- 15 -> 1000
      wait;
    end process;
end architecture Simulation;