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
	EQ 	<= RBANDERAS(1) or (RBANDERAS(0) XOR RBANDERAS(0));																	--Z
	NEQ <= NOT RBANDERAS(1);															--NOT Z
	LT 	<= (RBANDERAS(2) XOR RBANDERAS(3)) AND NOT RBANDERAS(1);				--(N xor OV)*(Z)complemento	--menor	
	LE 	<= RBANDERAS(1) OR (RBANDERAS(2) XOR RBANDERAS(3)); 					--Z+(N xor OV)	--igual o menor
	GTI <=(NOT RBANDERAS(1)) AND (NOT (RBANDERAS(2) XOR RBANDERAS(3)));	--(Z)complemento*(N xor OV)complemento
	GET <=(NOT (RBANDERAS(2) XOR RBANDERAS(3))) OR RBANDERAS(1);			--(N xor OV)complemento + Z
end Behavioral;

