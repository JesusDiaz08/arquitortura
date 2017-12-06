library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXTENSORSIG is port(
	DIN: in std_logic_vector(11 downto 0);
	DOUT: out std_logic_vector(15 downto 0)
);
end EXTENSORSIG;

architecture Behavioral of EXTENSORSIG is
begin
	DOUT <= "0000"&DIN WHEN (DIN(11) = '0') ELSE "1111"&DIN;
end Behavioral;

