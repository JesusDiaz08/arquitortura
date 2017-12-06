library IEEE;
LIBRARY WORK;		--NO es necesario ponerla
use work.PAQUETE_CONTROL.all; --Ligar o importar 
use IEEE.STD_LOGIC_1164.ALL;

entity UNIDAD_CONTROL is
    Port ( CODE_FUN : in  STD_LOGIC_VECTOR (3 downto 0);
           CODE_OPE : in  STD_LOGIC_VECTOR (4 downto 0);
			  BANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
			  LF: 		 in  STD_LOGIC;
           S : 		 out STD_LOGIC_VECTOR (19 downto 0);
           CLK : 		 in  STD_LOGIC; 
           CLR : 		 in  STD_LOGIC
			 );
end UNIDAD_CONTROL;

	architecture Principal of UNIDAD_CONTROL is

	SIGNAL RBANDERAS: 									  STD_LOGIC_VECTOR (3 downto 0);
	SIGNAL EQ,NEQ,LT,LE,GTI,GET,NA:  				  STD_LOGIC;
	SIGNAL TIPOR,BEQI,BNEQI,BLTI,BLETI,BGTI,BGETI: STD_LOGIC; 
	SIGNAL A: 												  STD_LOGIC_VECTOR (4 downto 0);
	SIGNAL D, SELEC: 										  STD_LOGIC_VECTOR (19 downto 0);
	SIGNAL SM,SDOPC:										  STD_LOGIC;

begin

	CONDI: CONDICION PORT MAP( 
			RBANDERAS =>RBANDERAS,
			EQ=>EQ,
			NEQ=>NEQ,
			LT=>LT,
			LE=>LE,
			GTI=>GTI,
			GET=>GET);
	
	ESTAD: ESTADO PORT MAP( 
			BANDERAS=>BANDERAS,
			RBANDERAS=>RBANDERAS,
			LF=>LF,
			CLK=>CLK,
			CLR=>CLR);
	
	MEMOP: MEMORIAOPERACION PORT MAP( 
			A=>A, 
			D=>D);
	
	MEMFUN: MEMORIAFUNCION PORT MAP( 
			A=>CODE_FUN, 
			D=>SELEC);	
	NIVELUC : NIVEL PORT MAP( 
			CLK=>CLK, 
			CLR=>CLR, 
			NA=>NA);
	
	DECOD: INSTRUCCION PORT MAP( 
			OPCODE=>CODE_OPE, 
			TIPOR=>TIPOR, 
			BEQI=>BEQI, 
			BNEQI=>BNEQI, 
			BLTI=>BLTI, 
			BLETI=>BLETI, 
			BGTI=>BGTI, 
			BGETI=>BGETI);
	
	CONTROL: FSMCONTROL PORT MAP( 
			SM=>SM, 
			SDOPC=>SDOPC, 
			TIPOR=>TIPOR, 
			BEQI=>BEQI, 
			BNEQI=>BNEQI, 
			BLTI=>BLTI, 
			BLETI=>BLETI, 
			BGTI=>BGTI, 
			BGETI=>BGETI, 
			NA=>NA, 
			EQ=>EQ, 
			NEQ=>NEQ, 
			LT=>LT, 
			LE=>LE, 
			GTI=>GTI, 
			GET=>GET, 
			CLK=>CLK, 
			CLR=>CLR);
	
	A <= "00000" WHEN (SDOPC = '0') ELSE
			  CODE_OPE;
	
	S <= SELEC WHEN (SM = '0') ELSE
		  D;		

end Principal;

