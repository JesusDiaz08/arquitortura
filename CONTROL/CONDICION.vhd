library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CONDICION is
    Port ( RBANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
           EQ : out  STD_LOGIC;
           NEQ : out  STD_LOGIC;
           LT : out  STD_LOGIC;
           LE : out  STD_LOGIC;
           GTI : out  STD_LOGIC;
           GET : out  STD_LOGIC);
end CONDICION;

architecture Behavioral of CONDICION is
--BANDERAS(3):OV,BANDERAS(2):N
--BANDERAS(1):C,BANDERAS(0):Z

begin
	EQ <= RBANDERAS(0);
	NEQ <= NOT RBANDERAS(0);
	LT <= (RBANDERAS(2) XOR RBANDERAS(3)) AND NOT RBANDERAS(0); --L <= (N XOR OV) AND NOT Z
	LE <= RBANDERAS(0) OR (RBANDERAS(2) XOR RBANDERAS(3));
	GTI <= (NOT RBANDERAS(0)) AND (NOT (RBANDERAS(2) XOR RBANDERAS(3)));
	GET <= (NOT (RBANDERAS(2) XOR RBANDERAS(3))) OR RBANDERAS(0);
end Behavioral;

