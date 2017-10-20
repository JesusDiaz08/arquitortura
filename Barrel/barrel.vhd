library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity barrel is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           SHIFT : in  STD_LOGIC_VECTOR (2 downto 0);
			  LEFTSHIFT: in STD_LOGIC -- 1 hace corrimiento a la izquierda, 0 a la derecha
			  );
end barrel;

architecture Behavioral of barrel is
BEGIN
PSHIFT : PROCESS( SHIFT, DATA_IN )
VARIABLE SHIFT_DATA: STD_LOGIC_VECTOR(7 DOWNTO 0);
VARIABLE INDICE : INTEGER RANGE -8 TO 7;
BEGIN
IF(LEFTSHIFT='0') THEN 						--es corrimiento a la derecha
	SHIFT_DATA:= DATA_IN;
		FOR I IN 0 TO 2 LOOP
			FOR J IN 7 DOWNTO 0 LOOP
				IF(SHIFT(I)='1') THEN
					INDICE:= J-2**I; -- J + 2**I
					IF (INDICE < 0)THEN -- > 7
						SHIFT_DATA(J):='0';
					ELSE
					SHIFT_DATA(J):= SHIFT_DATA(INDICE);
					END IF;
				END IF;	
			END LOOP;
		END LOOP;
		DATA_OUT <= SHIFT_DATA;
ELSE												--es corrimiento a la izquierda
	SHIFT_DATA:= DATA_IN;
		FOR I IN 0 TO 2 LOOP
			FOR J IN 0 TO 7 LOOP
				IF(SHIFT(I)='1') THEN
					INDICE:= J+2**I; -- J + 2**I
					IF (INDICE > 7)THEN -- > 7
						SHIFT_DATA(J):='0';
					ELSE
					SHIFT_DATA(J):= SHIFT_DATA(INDICE);
					END IF;
				END IF;	
			END LOOP;
		END LOOP;
		DATA_OUT <= SHIFT_DATA;
END IF;
END PROCESS PSHIFT;
end Behavioral;

