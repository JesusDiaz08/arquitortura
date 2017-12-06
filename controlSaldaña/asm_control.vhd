library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMCONTROL is
    Port ( SM 		: out  STD_LOGIC;
           SDOPC 	: out  STD_LOGIC;
           TIPOR 	: in  STD_LOGIC;
           BEQI  	: in  STD_LOGIC;
           BNEQI 	: in  STD_LOGIC;
           BLTI  	: in  STD_LOGIC;
           BLETI 	: in  STD_LOGIC;
           BGTI 	: in  STD_LOGIC;
           BGETI 	: in  STD_LOGIC;
           NA 		: in  STD_LOGIC;
           EQ 		: in  STD_LOGIC;
           NEQ 	: in  STD_LOGIC;
           LT : in  STD_LOGIC;
           LE : in  STD_LOGIC;
           GTI : in  STD_LOGIC;
           GET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end FSMCONTROL;

architecture PROGRAMA of FSMCONTROL is
TYPE ESTADOS IS (A);
SIGNAL EDO_ACT, EDO_SGTE : ESTADOS;
begin
	
	AUTOMATA:PROCESS(EDO_ACT, TIPOR, BEQI, BNEQI, BLTI, BLETI, BGTI, BGETI, NA, EQ, NEQ, LT, LE, GTI, GET)
	BEGIN
		SM <= '0';
		SDOPC <= '0';
		CASE EDO_ACT IS
			WHEN A => 
				IF (TIPOR = '1') THEN
					EDO_SGTE <= A;
				ELSE
					IF(BEQI = '1' ) THEN
						IF(NA = '1' ) THEN
							SM <= '1';
							EDO_SGTE <= A;
						ELSE
							IF(EQ = '1') THEN
								SDOPC <= '1';
								SM <= '1';
								EDO_SGTE <= A;
							ELSE
								SM <= '1';
								EDO_SGTE <= A;
							END IF;
						END IF;
					
					ELSE
						IF (BNEQI = '1') THEN
							IF(NA = '1') THEN
								SM <= '1';
								EDO_SGTE <= A;
							ELSE
								IF(NEQ = '1') THEN
									SDOPC <= '1';
									SM <= '1';
									EDO_SGTE <= A;
								ELSE
									SM <= '1';
									EDO_SGTE <= A;
								END IF;
							END IF;					
						
						ELSE
							IF (BLTI = '1') THEN
								IF(NA = '1') THEN
									SM <= '1';
									EDO_SGTE <= A;
								ELSE
									IF(LT = '1') THEN
										SDOPC <= '1';
										SM <= '1';
										EDO_SGTE <= A;
									ELSE
										SM <= '1';
										EDO_SGTE <= A;
									END IF;
								END IF;					
							
							ELSE
								IF (BLETI = '1') THEN
									IF(NA = '1') THEN
										SM <= '1';
										EDO_SGTE <= A;
									ELSE
										IF(LE = '1') THEN	
											SDOPC <= '1';
											SM <= '1';
											EDO_SGTE <= A;
										ELSE
											SM <= '1';
											EDO_SGTE <= A;
										END IF;
									END IF;						
								
								ELSE
									IF (BGTI = '1') THEN	
										IF(NA = '1') THEN
											SM <= '1';
											EDO_SGTE <= A;
										ELSE
											IF(GTI = '1') THEN
												SDOPC <= '1';
												SM <= '1';
												EDO_SGTE <= A;
											ELSE
												SM <= '1';
												EDO_SGTE <= A;
											END IF;
										END IF;						
									
									ELSE
										IF (BGETI = '1') THEN					
											IF(NA = '1') THEN
												SM <= '1';
												EDO_SGTE <= A;
											ELSE
												IF(GET = '1') THEN
													SDOPC <= '1';
													SM <= '1';
													EDO_SGTE <= A;
												ELSE
													SM <= '1';
													EDO_SGTE <= A;
												END IF;
											END IF;						
										
										ELSE
											SDOPC <= '1';
											SM <= '1';
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
	
	TRANSICION:PROCESS(CLK, CLR)
	BEGIN
		IF( CLR = '1') THEN
			EDO_ACT <= A;
		ELSIF( rising_edge(CLK) ) THEN
			EDO_ACT <= EDO_SGTE;
		END IF;
	END PROCESS TRANSICION;


end PROGRAMA;

