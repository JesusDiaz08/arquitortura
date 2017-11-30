library IEEE;
library WORK;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.Mi_Paquete.all;

entity PRINCIPAL is
end PRINCIPAL;

architecture PROGRAMA of PRINCIPAL is

	SIGNAL RBANDERAS		 									: STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SIGNAL SEL			 										: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL S1 , S2					 							: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
	SIGNAL SDOPC , SM , NIV_ALTO	, CLK , CLR	 		: STD_LOGIC;
	SIGNAL EQ , NEQ, LT, LE, GTI, GET ,OV, N, C, Z	: STD_LOGIC;
	SIGNAL TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI	: STD_LOGIC;
	
begin
	NIV	:	NIVEL PORT MAP (
	 		CLK => CLK,
	 		CLR => CLR,
	 		NIV_ALTO  => NIV_ALTO);

	EST : 	ESTADO PORT MAP (
			OV 		  => OV, --checar
			N         => N,
			C 		  => C,
			Z  		  => Z,  --checar
			RBANDERAS => RBANDERAS, 
			LF  	  => S1(10),  --checar
			CLK		  => CLK,
			CLR 	  => CLR);

	COND: 	CONDICION PORT MAP (
	 		RBANDERAS	=> RBANDERAS,
	 		EQ   		=> EQ,
	 		NEQ 		=> NEQ,
	 		LT 		=> LT,
	 		LE 		=> LE,
	 		GTI 		=> GTI,
	 		GET 		=> GET);

--	INST	: INSTRUCCIONES PORT MAP ( I(24)&I(23)&I(22)&I(21)&I(20) , TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI );
--	CONT	: FSMCONTROL PORT MAP ( SM , SDOPC , TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI , EQ , NEQ , LT , LE , GTI , GET , NA , CLK , CLR );	
--	--SDOPC
--	SEL <= "00000" WHEN SDOPC = '0' ELSE I(24)&I(23)&I(22)&I(21)&I(20);	
--	FUNCION	: FUNCION PORT MAP ( I(3)&I(2)&I(1)&I(0) , S1 );
--	OPCODE	: OPERACION PORT MAP ( SEL , S2 );
--	--SM
--	S1 <= S1 WHEN SM = '0' ELSE S2;
--	S  <= S1;

end PROGRAMA;

