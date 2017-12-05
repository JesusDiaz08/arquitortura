----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:27:51 11/26/2017 
-- Design Name: 
-- Module Name:    PRINCIPAL - Behavioral 
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
library WORK;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.Mi_Paquete.all;


entity PRINCIPAL is port(
	CLK, CLR , OV, N, C, Z, LF : IN STD_LOGIC;
	OPCODE : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	FUNCODE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
	);
end PRINCIPAL;

architecture PROGRAMA of PRINCIPAL is
	SIGNAL RBANDERAS		 												: STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SIGNAL SEL			 													: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL BUSFUNC , BUSOP		 										: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
	SIGNAL SDOPC , SM , NIV_ALTO		 								: STD_LOGIC;
	SIGNAL EQ , NEQ , LT , LE , GTI , GET							: STD_LOGIC;
	SIGNAL TIPOR , BEQI , BNEQI , BLTI , BLETI , BGTI , BGETI	: STD_LOGIC;

begin
	
	NIV	:	NIVEL PORT MAP (
	 		CLK		 => CLK,
	 		CLR 		 => CLR,
	 		NIV_ALTO  => NIV_ALTO);

	EST : 	ESTADO PORT MAP (
			OV 	    => OV, 
			N      	 => N,
			C 		 	 => C,
			Z  	  	 => Z,  
			RBANDERAS => RBANDERAS, 
			LF  	  	 => LF,
			CLK	  	 => CLK,
			CLR 	  	 => CLR);

	COND: 	CONDICION PORT MAP (
	 		RBANDERAS	=> RBANDERAS,
	 		EQ   		=> EQ,
	 		NEQ 		=> NEQ,
	 		LT 		=> LT,
	 		LE 		=> LE,
	 		GTI 		=> GTI,
	 		GET 		=> GET);

	INST	: INSTRUCCIONES PORT MAP (
			 OPCODE	=> OPCODE,
			 TIPOR 	=> TIPOR,
			 BEQI 	=> BEQI,
			 BNEQI 	=> BNEQI,
			 BLTI 	=> BLTI,
			 BLETI 	=> BLETI,
			 BGTI 	=> BGTI,
			 BGETI 	=>	BGETI);
	 
	UCONT	: FSMCONTROL PORT MAP (
			SDOPC		=> SDOPC,
			SM			=> SM,
			TIPOR 	=> TIPOR,
			BEQI 		=> BEQI,
			BNEQI 	=> BNEQI,
			BLTI 		=> BLTI,
			BLETI 	=> BLETI,
			BGTI 		=> BGTI,
			BGETI 	=>	BGETI,
			NA			=> NIV_ALTO,
			EQ   		=> EQ,
	 		NEQ 		=> NEQ,
	 		LT 		=> LT,
	 		LE 		=> LE,
	 		GTI 		=> GTI,
	 		GET 		=> GET,
			CLK	  	=> CLK,
			CLR 	  	=> CLR
	);	

	FUNC	: FUNCION PORT MAP ( 
			A 	=> FUNCODE,
			D	=> BUSFUNC
	);
	
	--BUS DE 0'S , MUX DE SDOPC
	SEL <= "00000" WHEN SDOPC = '0' ELSE OPCODE;
	
	CODOP	: OPERACION PORT MAP (
			A 	=> SEL,
			D	=> BUSOP
	);
	

	--BUS DE SALIDA "S", MUX
	S <= BUSFUNC WHEN SM = '0' ELSE BUSOP;
	
	
end PROGRAMA;