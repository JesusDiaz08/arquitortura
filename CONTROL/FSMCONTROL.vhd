----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:26 11/23/2017 
-- Design Name: 
-- Module Name:    FSMCONTROL - PROGRAMA 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMCONTROL is
    Port ( SM : out  STD_LOGIC;
           SDOPC : out  STD_LOGIC;
           TIPOR : in  STD_LOGIC;
           BEQI : in  STD_LOGIC;
           BNEQI : in  STD_LOGIC;
           BLTI : in  STD_LOGIC;
           BLETI : in  STD_LOGIC;
           BGTI : in  STD_LOGIC;
           BGETI : in  STD_LOGIC;
           NA : in  STD_LOGIC;
           EQ : in  STD_LOGIC;
           NEQ : in  STD_LOGIC;
           LT : in  STD_LOGIC;
           LE : in  STD_LOGIC;
           GTI : in  STD_LOGIC;
           GET : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end FSMCONTROL;

architecture PROGRAMA of FSMCONTROL is
TYPE ESTADOS IS(A);
SIGNAL EDO_ACT, EDO_STE:ESTADOS;
begin
	AUTOMATA : PROCESS(EDO_ACT, TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI, NA, EQ, NEQ, LT, LE, GTI, GET)--TODAS LAS ENTRADAS DE INSTRUCCIONES
	BEGIN
		--INICIALIZAR
		SM <= '0';
		SDOPC <= '0';
		--CONTINUARA...LISTO
		CASE EDO_ACT IS
			WHEN A =>
				IF (TIPOR = '1') THEN
					--SDOPC NO IMPORTA QUE TENGA
					EDO_SGTE <= A;
				ELSE -- TIPOR = 0
					IF(BEQI = '1') THEN
						IF(NA = '1') THEN
							SM <= '1'; --SOPC YA ESTA EN 0
							EDO_SGTE <= A;
						ELSE --NA = 0
							IF(EQ = '1') THEN
								SM <= '1';
								SDOPC <= '1';
								EDO_SGTE <= A;
							ELSE -- EQ = 0
								SM <= '1'; --SOPC YA ESTA EN 0
								EDO_SGTE <= A;
							END IF;--EQ
						END IF;--NA
					ELSE	--BEQI = 0
						IF(BNEQI = '1') THEN
							IF(NA = '1') THEN
								SM <= '1'; --SOPC YA ESTA EN 0
								EDO_SGTE <= A;
							ELSE --NA = 0
								IF(NEQ = '1') THEN
									SM <= '1';
									SDOPC <= '1';
									EDO_SGTE <= A;
								ELSE -- NEQ = 0
									SM <= '1'; --SOPC YA ESTA EN 0
									EDO_SGTE <= A;
								END IF;-- NEQ	
							END IF;--NA
						ELSE --BNEQI = 0
							IF(BLTI = '1') THEN
								IF(NA = '1') THEN
									SM <= '1'; --SOPC YA ESTA EN 0
									EDO_SGTE <= A;
								ELSE --NA = 0
									IF(LT = '1') THEN
										SM <= '1';
										SDOPC <= '1';
										EDO_SGTE <= A;
									ELSE--LT = 0
										SM <= '1'; --SOPC YA ESTA EN 0
										EDO_SGTE <= A;
									END IF;-- LT	
								END IF;--NA
							ELSE -- BLTI = 0
								IF(BLETI = '1') THEN
									IF(NA = '1') THEN
										SM <= '1'; --SOPC YA ESTA EN 0
										EDO_SGTE <= A;
									ELSE --NA = 0
										IF(LE = '1') THEN
											SM <= '1';
											SDOPC <= '1';
											EDO_SGTE <= A;
										ELSE-- LE = 0
											SM <= '1'; --SOPC YA ESTA EN 0
											EDO_SGTE <= A;
										END IF;-- LE
									END IF;--NA
								ELSE--BLETI = 0
									IF(BGTI = '1') THEN
										IF(NA = '1') THEN
											SM <= '1'; --SOPC YA ESTA EN 0
											EDO_SGTE <= A;
										ELSE --NA = 0
											IF(GTI = '1') THEN
												SM <= '1';
												SDOPC <= '1';
												EDO_SGTE <= A;
											ELSE--GTI = 0
												SM <= '1'; --SOPC YA ESTA EN 0
												EDO_SGTE <= A;
											END IF;-- GTI	
										END IF;--NA
									ELSE --BGTI = 0
										IF(BGETI = '1') THEN
											IF(NA = '1') THEN
												SM <= '1'; --SOPC YA ESTA EN 0
												EDO_SGTE <= A;
											ELSE --NA = 0
												IF(GET = '1') THEN
													SM <= '1';
													SDOPC <= '1';
													EDO_SGTE <= A;
												ELSE--GET = 0
													SM <= '1'; --SOPC YA ESTA EN 0
													EDO_SGTE <= A;
												END IF;-- GET
											END IF;--NA
										ELSE--BGETI = 0 
											SM <= '1';
											SDOPC <= '1';
											EDO_SGTE <= A;
										END IF;
									END IF;
								END IF;
							END IF;
						END IF;
					END IF;
				END IF;
			END CASE;
	END PROCESS AUTOMATA;

	TRANSICION : PROCESS(CLK, CLR)
	BEGIN
		IF(CLR = '1') THEN
			EDO_ACT <= A;
		ELSIF(RISING_EDGE(CLK)) THEN
			EDO_ACT <= EDO_SGTE;
		END IF;
	END PROCESS TRANSICION;

end PROGRAMA;

