
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_ARITH.ALL;



entity Pila is Port ( 
	 	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	--SEL : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0); 
	 	WPC,CLR,CLK,UP,DW : IN STD_LOGIC
		);
end Pila;

	architecture Behavioral of Pila is
TYPE REGISTRO IS ARRAY (0 to 2**3-1) OF STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

PPILA: PROCESS(CLK, CLR)
VARIABLE SP : INTEGER RANGE 0 TO 7;
VARIABLE PC : REGISTRO;
	BEGIN
		IF (CLR='1') THEN
			SP := 0;
			PC := (OTHERS => (OTHERS => '0'));
		ELSIF(RISING_EDGE(CLK)) THEN
			IF(UP='0' AND DW ='0' AND WPC='1') THEN --brincos
				PC(SP):=D;
			ELSIF(UP='1' AND DW ='0' AND WPC='1') THEN --call 
				SP := SP+1;
				PC(SP):=D;
			ELSIF(UP='0' AND DW ='1' AND WPC='0') THEN --return
				SP := SP-1;
				PC(SP):= PC(SP)+1;
			ELSIF(UP='0'  AND DW ='0' AND WPC='0') THEN --return
				PC(SP):= PC(SP)+1;
			END IF;
		END IF;
		Q <= PC(SP);
END PROCESS PPILA;


end Behavioral;

