library IEEE;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;

use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

package Paquete_Maestro is
--------------------------------------------------------ALU
COMPONENT ALU is
		GENERIC(N: integer:=16);	
    Port (
		BINVERT : in  STD_LOGIC;
		AINVERT : in  STD_LOGIC;
		OP : in  STD_LOGIC_VECTOR(1 downto 0);
		RES : out  STD_LOGIC_VECTOR(N-1 downto 0);
		A : in  STD_LOGIC_VECTOR (N-1 downto 0);
      B : in  STD_LOGIC_VECTOR (N-1 downto 0);
		BZ,BC,BN, BOV: out  STD_LOGIC		
	 );
end COMPONENT;
--------------------------------------------------------Archivo de registros
COMPONENT ArchivoDeRegistros is
 GENERIC( 
	  NBITS_ADDR : INTEGER := 4;
	  NBITS_DATA : INTEGER := 16
 ); 
 Port (
	  -------------------------barrel-----------------------------
--	  DATA_OUT  : inout  STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); 
	  SHAMT     : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0);
	  DIR          : in STD_LOGIC;
	  -------------------------registros--------------------------
	  CLK       : in  STD_LOGIC;
	  WR           : in  STD_LOGIC; 
	  ADDR_WR  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- WRITE_REGISTER
	  ADDR_RD1  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- READ_REGISTER1
	  ADDR_RD2  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- READ_REGISTER2
	  WD            : in  STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- WRITE_DATA
	  DINOUT1  : inout STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- READ_DATA1
	  DOUT2         : out STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- READ_DATA2
	  SHE           : in  STD_LOGIC --shift enable
	 );
end COMPONENT;
------------------------------------------------------Extensor de direccion
COMPONENT EXTADD is
    Port (
		DIN: in std_logic_vector(11 downto 0);
		DOUT: out std_logic_vector(15 downto 0)		
	 );
end COMPONENT;
------------------------------------------------------Extensor de signo
COMPONENT EXTENSORSIG is
    Port (
		DIN: in std_logic_vector(11 downto 0);
		DOUT: out std_logic_vector(15 downto 0)		
	 );
end COMPONENT;
------------------------------------------------------Memoria de datos
COMPONENT MemoriaD is
	 GENERIC(
		DATA_N: INTEGER:=16;
		ADDR_N: INTEGER:=16
	 );
    Port ( 
		Di    : in  STD_LOGIC_VECTOR (DATA_N-1 downto 0);
	   Do   : out  STD_LOGIC_VECTOR (DATA_N-1 downto 0);
	   ADDR : in  STD_LOGIC_VECTOR (DATA_N-1 downto 0);
	   WD   : in  STD_LOGIC; 
	   CLK    : in  STD_LOGIC
	 );
end COMPONENT;
-------------------------------------------------------Pila
COMPONENT Pila is
    Port ( 
	 	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	--SEL : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
	 	WPC,CLR,CLK,UP,DW : IN STD_LOGIC
	 );
end COMPONENT;
-------------------------------------------------------Unidad de control
COMPONENT UNIDAD_CONTROL is
    Port ( CODE_FUN : in  STD_LOGIC_VECTOR (3 downto 0);
           CODE_OPE : in  STD_LOGIC_VECTOR (4 downto 0);
			  BANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
			  LF: 		 in  STD_LOGIC;
           S : 		 out STD_LOGIC_VECTOR (19 downto 0);
           CLK : 		 in  STD_LOGIC; 
           CLR : 		 in  STD_LOGIC
			 );
end COMPONENT;
-------------------------------------------------------Memoria del programa
COMPONENT programa is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           Q : out  STD_LOGIC_VECTOR (24 downto 0)
			 );
end COMPONENT;

end Paquete_Maestro;

package body Paquete_Maestro is
end Paquete_Maestro;
