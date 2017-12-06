library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXTADD is port(
	DIN: in std_logic_vector(11 downto 0);
	DOUT: out std_logic_vector(15 downto 0)
);
end EXTADD;

architecture Behavioral of EXTADD is
begin
	DOUT <= "0000"&DIN;
end Behavioral;


