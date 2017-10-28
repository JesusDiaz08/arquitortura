----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:59 10/23/2017 
-- Design Name: 
-- Module Name:    Pila - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pila is Port ( 
	 	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	 	SEL : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0); -- Para mostar SP(?
	 	WPC,CLR,CLK,UP,DW : IN STD_LOGIC
		);
end Pila;

	architecture Behavioral of Pila is
TYPE REGISTRO IS ARRAY (0 to 2**3-1) OF STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

PPILA: PROCESS(CLK, CLR)
VARIABLE SP : INTEGER RANGE 0 TO 7;
VARIABLE PC : REGISTRO;
	BEGIN
		IF (CLR='1') THEN
			SP := 0;
			PC := (OTHERS => (OTHERS => '0'));
		ELSIF(RISING_EDGE(CLK)) THEN
			IF(WPC='1' AND UP='0' AND DW ='0') THEN --brincos
				PC(SP):=D;
			ELSIF(WPC='1' AND UP='1' AND DW ='0') THEN --call 
				SP := SP+1;
				PC(SP):=D;
			ELSIF(WPC='0' AND UP='0' AND DW ='1') THEN --return
				SP := SP-1;
				PC(SP):= PC(SP)+1;
			ELSIF(WPC='0' AND UP='0' AND DW ='0') THEN --return
				PC(SP):= PC(SP)+1;
			END IF;
		END IF;
		Q <= PC(SP);
		SEL <= std_logic_vector(to_unsigned(SP, SEL'length));
END PROCESS PPILA;


end Behavioral;

