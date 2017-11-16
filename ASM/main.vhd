library IEEE;
library WORK;
use IEEE.STD_LOGIC_1164.all;
use WORK.MI_PAQUETE.all;

entity main is
    Port ( DATOS : in  STD_LOGIC_VECTOR (7 downto 0);
           INI : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DISP : out  STD_LOGIC_VECTOR (6 downto 0));
end main;

architecture Behavioral of main is
signal QB:STD_LOGIC_VECTOR(3 DOWNTO 0);
signal QA:STD_LOGIC_VECTOR(7 DOWNTO 0);
signal CODIG: STD_LOGIC_VECTOR (6 downto 0);
signal LB, IB, LA, SH, SD, Z: STD_LOGIC;

begin
	CON: control PORT MAP(CLK, CLR, INI, Z, QA(0), LA, SH, LB, IB, SD);
	CONT: contador PORT MAP(X"0", QB, LB, IB, CLK, CLR);
	REG: registro PORT MAP(DATOS, QA, LA, SH, CLK, CLR);
	COD: codigo PORT MAP(QB, CODIG); 

	--mux
	DISP <= "1111110" WHEN SD = '0' ELSE CODIG;
	--bandera cero
	Z <= '1' when  QA = X"00" else '0';
	
end Behavioral;

