library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemoriaD is
    Port ( DIN   : in  STD_LOGIC_VECTOR (7 downto 0);
			  DOUT  : out  STD_LOGIC_VECTOR (7 downto 0);
           ADR_W : in  STD_LOGIC_VECTOR (3 downto 0);
			  ADR_R : in  STD_LOGIC_VECTOR (3 downto 0);
           WREN  : in  STD_LOGIC; --WRITE ENABLE
			  --REN  : in  STD_LOGIC;	 --READ ENABLE
           CLK   : in  STD_LOGIC
           );
end MemoriaD;

architecture Behavioral of MemoriaD is
TYPE MEMORIA IS ARRAY (0 to 15) OF STD_LOGIC_VECTOR (7 DOWNTO 0); --checar la organizacion, por el momento es 16x8
SIGNAL RAM_DIST : MEMORIA;
begin
	PRAM: PROCESS(CLK)
	begin
	 IF(RISING_EDGE(CLK))THEN 
		IF(WREN = '1') THEN
			RAM_DIST(CONV_INTEGER(ADR_W)) <= DIN;
		END IF;
	 END IF;
	 END PROCESS PRAM;
		--IF(REN = '1') THEN --NO SE SI SEA NECESARIO ESTE, PERO EN EL DIRAGRAMA TIENE TANTO WD COMO RD
			DOUT<= RAM_DIST(CONV_INTEGER(ADR_R));
		--END IF;
end Behavioral;

