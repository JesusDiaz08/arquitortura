library IEEE;
library work; -- Carpeta dónde está el proyecto
use IEEE.STD_LOGIC_1164.ALL;
use work.Mi_Paquete.ALL;

entity PRINCIPAL is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           INI : in  STD_LOGIC;
           DATOS : in  STD_LOGIC_VECTOR (7 downto 0);
           DISPLAY : out  STD_LOGIC_VECTOR (6 downto 0));
end PRINCIPAL;

architecture PROGRAMA of PRINCIPAL is
signal QA: STD_LOGIC_VECTOR(7 downto 0);
signal CODIGO: STD_LOGIC_VECTOR(6 downto 0);
signal QB: STD_LOGIC_VECTOR(3 downto 0);
signal LA, LB, IB, SH, SD: STD_LOGIC;
signal Z: std_logic;

begin
	CONT: contador PORT MAP(x"0", QB, LB, IB, CLK, CLR);
	REG: registro PORT MAP(DATOS, QA, LA, SH, CLK, CLR);
	COD: convertidor PORT MAP( QB, CODIGO  );
	CONTR: control PORT MAP(CLK, CLR, INI, Z, QA(0), LA, SH, LB, IB, SD);
	--INSTANCIA DE CONTROL
	
	DISPLAY <= "1111110" WHEN SD = '0' ELSE CODIGO;
	
	Z <= '1' when  QA = "00000000" else '0';
	
end PROGRAMA;

