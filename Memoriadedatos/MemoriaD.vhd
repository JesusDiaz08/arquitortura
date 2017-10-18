library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemoriaD is
	 GENERIC(
		DATA_N: INTEGER:=16;
		ADDR_N: INTEGER:=8
	 );
    Port ( Di    : in  STD_LOGIC_VECTOR (DATA_N-1 downto 0);
			  Do   : out  STD_LOGIC_VECTOR (DATA_N-1 downto 0);
           ADDR : in  STD_LOGIC_VECTOR (ADDR_N-1 downto 0);
           WD   : in  STD_LOGIC; --WRITE DATA
           CLK    : in  STD_LOGIC
           );
end MemoriaD;

architecture Behavioral of MemoriaD is
TYPE MEMORIA IS ARRAY (0 to 2**ADDR_N-1) OF STD_LOGIC_VECTOR (Di'RANGE); --checar la organizacion, por el momento es 16x8
SIGNAL RAM_DIST : MEMORIA;
begin
	PRAM: PROCESS(CLK)
	begin
	 IF(RISING_EDGE(CLK))THEN 
		IF(WD = '1') THEN
			RAM_DIST(CONV_INTEGER(ADDR)) <= Di;
		END IF;
	 END IF;
	 END PROCESS PRAM;
			Do<= RAM_DIST(CONV_INTEGER(ADDR));
end Behavioral;

