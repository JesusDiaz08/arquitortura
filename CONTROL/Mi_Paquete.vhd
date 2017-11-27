library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Mi_Paquete is

COMPONENT FSMCONTROL is
 Port ( SM 					: out  STD_LOGIC;
		  SDOPC 				: out  STD_LOGIC;
		  TIPOR 				: in  STD_LOGIC;
		  BEQI 				: in  STD_LOGIC;
		  BNEQI 				: in  STD_LOGIC;
		  BLTI 				: in  STD_LOGIC;
		  BLETI 				: in  STD_LOGIC;
		  BGTI 				: in  STD_LOGIC;
		  BGETI 				: in  STD_LOGIC;
		  EQ 					: in  STD_LOGIC;
		  NEQ 				: in  STD_LOGIC;
		  LT 				: in  STD_LOGIC;
		  LE 					: in  STD_LOGIC;
		  GTI 				: in  STD_LOGIC;
		  GET 				: in  STD_LOGIC;
		  NA					: in  STD_LOGIC;
		  CLK 				: in  STD_LOGIC;
		  CLR		 			: in  STD_LOGIC);
end COMPONENT;
	
COMPONENT INSTRUCCIONES is
 Port ( OPCODE 			: in  STD_LOGIC_VECTOR (4 downto 0);
		  TIPOR 				: out  STD_LOGIC;
		  BEQI 				: out  STD_LOGIC;
		  BNEQI 				: out  STD_LOGIC;
		  BLTI 				: out  STD_LOGIC;
		  BLETI 				: out  STD_LOGIC;
		  BGTI 				: out  STD_LOGIC;
		  BGETI 				: out  STD_LOGIC);
end COMPONENT;

COMPONENT NIVEL is
 Port ( CLK 		: in  STD_LOGIC;
		  CLR 		: in  STD_LOGIC;
		  NA 			: out  STD_LOGIC);
end COMPONENT;

COMPONENT ESTADO is
 Port ( BANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
		  RBANDERAS : out  STD_LOGIC_VECTOR (3 downto 0);
		  LF : in  STD_LOGIC;
		  CLK : in  STD_LOGIC;
		  CLR : in  STD_LOGIC);
end COMPONENT;

COMPONENT CONDICION is
 Port ( RBANDERAS : 				in  STD_LOGIC_VECTOR (3 downto 0);
		  EQ : 						out  STD_LOGIC;
		  NEQ : 						out  STD_LOGIC;
		  LT : 						out  STD_LOGIC;
		  LE : 						out  STD_LOGIC;
		  GTI : 						out  STD_LOGIC;
		  GET : 						out  STD_LOGIC);
end COMPONENT;

COMPONENT OPERACION is
 Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
		  D : out  STD_LOGIC_VECTOR (19 downto 0));
end COMPONENT;

COMPONENT FUNCION is
 Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
		  D : out  STD_LOGIC_VECTOR (19 downto 0));
end COMPONENT;

	

end Mi_Paquete;

package body Mi_Paquete is
 
end Mi_Paquete;
