library IEEE;

USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;

use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

package PAQUETE_CONTROL is
	CONSTANT ADDR_FUN_N : INTEGER := 4;
	CONSTANT ADDR_OPE_N : INTEGER := 5;
	CONSTANT DATA_FUN_N : INTEGER := 20;

	TYPE MEMORIA IS ARRAY(0 TO 2**ADDR_FUN_N-1) OF STD_LOGIC_VECTOR(DATA_FUN_N-1 DOWNTO 0);
	impure function FILLMEMO(ARCHIVO : in string) return MEMORIA;

	TYPE MEMORIA2 IS ARRAY(0 TO 2**ADDR_OPE_N-1) OF STD_LOGIC_VECTOR(DATA_FUN_N-1 DOWNTO 0);
	impure function FILLMEMO2(ARCHIVO2 : in string) return MEMORIA2;

COMPONENT CONDICION is
    Port ( RBANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
           EQ : out  STD_LOGIC;
           NEQ : out  STD_LOGIC;
           LT : out  STD_LOGIC;
           LE : out  STD_LOGIC;
           GTI : out  STD_LOGIC;
           GET : out  STD_LOGIC);
end COMPONENT;

COMPONENT ESTADO is
    Port ( BANDERAS : in  STD_LOGIC_VECTOR (3 downto 0);
           RBANDERAS : out  STD_LOGIC_VECTOR (3 downto 0);
           LF : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end COMPONENT;

COMPONENT FSMCONTROL is
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
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end COMPONENT;

COMPONENT INSTRUCCION is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           TIPOR : out  STD_LOGIC;
           BEQI : out  STD_LOGIC;
           BNEQI : out  STD_LOGIC;
           BLTI : out  STD_LOGIC;
           BLETI : out  STD_LOGIC;
           BGTI : out  STD_LOGIC;
           BGETI : out  STD_LOGIC);
end COMPONENT;

COMPONENT NIVEL is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           NA : out  STD_LOGIC);
end COMPONENT;

COMPONENT MEMORIAFUNCION is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (19 downto 0));
end COMPONENT;

COMPONENT MEMORIAOPERACION is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (19 downto 0));
end COMPONENT;

end PAQUETE_CONTROL;

package body PAQUETE_CONTROL is

	impure function FILLMEMO(ARCHIVO : in string) return MEMORIA is 
		FILE ARCH_MEMO			:	text is in ARCHIVO;
		VARIABLE LINEA_MEMO		:	line;
		VARIABLE MEM_ROM			:	MEMORIA;
		VARIABLE I					: INTEGER;
	begin
		for I in MEMORIA'range loop
			readline(ARCH_MEMO, LINEA_MEMO);
			read(LINEA_MEMO, MEM_ROM(I));
		end loop;	
			return MEM_ROM;
	end function;


	impure function FILLMEMO2(ARCHIVO2 : in string) return MEMORIA2 is 
		FILE ARCH_MEMO2			:	text is in ARCHIVO2;
		VARIABLE LINEA_MEMO2	:	line;
		VARIABLE MEM_ROM2			:	MEMORIA2;
		VARIABLE I2					: INTEGER;
	begin
		for I2 in MEMORIA2'range loop
			readline(ARCH_MEMO2, LINEA_MEMO2);
			read(LINEA_MEMO2, MEM_ROM2(I2));
		end loop;	
			return MEM_ROM2;
	end function;
end PAQUETE_CONTROL;
