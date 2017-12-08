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

architecture PROGRAMA of CONDICION is
--RBANDERAS(0) = C		RBANDERAS(1) = Z
--RBANDERAS(2) = N		RBANDERAS(3) = OV
begin
	EQ 	<= RBANDERAS(1) or (RBANDERAS(0) XOR RBANDERAS(0));																	
	NEQ 	<= NOT RBANDERAS(1);															
	LT 	<= (RBANDERAS(2) XOR RBANDERAS(3)) AND NOT RBANDERAS(1);					
	LE 	<= RBANDERAS(1) OR (RBANDERAS(2) XOR RBANDERAS(3)); 					
	GTI 	<=(NOT RBANDERAS(1)) AND (NOT (RBANDERAS(2) XOR RBANDERAS(3)));	
	GET 	<=(NOT (RBANDERAS(2) XOR RBANDERAS(3))) OR RBANDERAS(1);			
end PROGRAMA;

