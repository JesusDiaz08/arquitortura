library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemoriaD is
    Port ( DIN   : in  STD_LOGIC_VECTOR (7 downto 0);
			  DOUT  : out  STD_LOGIC_VECTOR (7 downto 0);
           ADR_WR : in  STD_LOGIC_VECTOR (15 downto 0);
           WREN  : in  STD_LOGIC; --WRITE ENABLE
           CLK   : in  STD_LOGIC
           );
end MemoriaD;

architecture Behavioral of MemoriaD is
TYPE MEMORIA IS ARRAY (0 to 2**16-1) OF STD_LOGIC_VECTOR (7 DOWNTO 0); --checar la organizacion, por el momento es 16x8
SIGNAL RAM_DIST : MEMORIA;
begin
	PRAM: PROCESS(CLK)
	begin
	 IF(RISING_EDGE(CLK))THEN 
		IF(WREN = '1') THEN
			RAM_DIST(CONV_INTEGER(ADR_WR)) <= DIN;
		END IF;
	 END IF;
	 END PROCESS PRAM;
			DOUT<= RAM_DIST(CONV_INTEGER(ADR_WR));
end Behavioral;

