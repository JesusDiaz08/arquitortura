----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use WORK.PAQUETE_CONTROL.ALL;


entity MEMORIAFUNCION is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (DATA_FUN_N-1 downto 0));
end MEMORIAFUNCION;

architecture Behavioral of MEMORIAFUNCION is

	SIGNAL MFUNC: MEMORIA := FILLMEMO("DATOSMEMFUN.txt");

begin

	MEMP: PROCESS (A, MFUNC)
	BEGIN
	
		D <= MFUNC(CONV_INTEGER(A));	
	
	END PROCESS MEMP;

end Behavioral;
