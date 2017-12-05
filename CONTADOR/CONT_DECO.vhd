----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:33 12/04/2017 
-- Design Name: 
-- Module Name:    CONT_DECO - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONT_DECO is
    Port ( OSC_CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           DISPLAY : out  STD_LOGIC_VECTOR (6 downto 0));
end CONT_DECO;

architecture Behavioral of CONT_DECO is
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
--SIGNAL Q_CONT : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL Q_CONT : INTEGER RANGE 0 TO 50000000-1;
														   --ABCDEFG
CONSTANT DIG0: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0000001"; --numero 0
CONSTANT DIG1: STD_LOGIC_VECTOR(6 DOWNTO 0) :="1001111"; --numero 1
CONSTANT DIG2: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0010010"; --numero 2
CONSTANT DIG3: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0000110"; --numero 3
CONSTANT DIG4: STD_LOGIC_VECTOR(6 DOWNTO 0) :="1001100"; --numero 4
CONSTANT DIG5: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0100100"; --numero 5
CONSTANT DIG6: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0100000"; --numero 6
CONSTANT DIG7: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0001110"; --numero 7
CONSTANT DIG8: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0000000"; --numero 8
CONSTANT DIG9: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0000100"; --numero 9

CONSTANT DIGA: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0001000"; --numero A
CONSTANT DIGB: STD_LOGIC_VECTOR(6 DOWNTO 0) :="1100000"; --numero B
CONSTANT DIGC: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0110001"; --numero C
CONSTANT DIGD: STD_LOGIC_VECTOR(6 DOWNTO 0) :="1000010"; --numero D
CONSTANT DIGE: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0110000"; --numero E
CONSTANT DIGF: STD_LOGIC_VECTOR(6 DOWNTO 0) :="0111000"; --numero F
CONSTANT nada: STD_LOGIC_VECTOR(6 DOWNTO 0) :="1111110"; --nada	
begin

	DIVISOR : PROCESS(CLR, OSC_CLK)
	BEGIN
		IF (CLR = '1') THEN
			Q_CONT <= 0;
		ELSIF(RISING_EDGE(OSC_CLK)) THEN
			Q_CONT <= Q_CONT + 1;
			IF (Q_CONT = 0) THEN
			--IF (Q_CONT = 50000000) THEN
			--IF (Q_CONT = "10" & X"FAF080") THEN
				CLK <= NOT CLK;
				--Q_CONT <= 0;
			END IF;
		END IF;
	END PROCESS DIVISOR;
	
	CONTADOR : PROCESS(CLR, CLK)
	BEGIN
		IF (CLR = '1') THEN
			Q <= (OTHERS => '0');
		ELSIF (RISING_EDGE(CLK)) THEN
			Q <= Q + 1;
		END IF;
	END PROCESS CONTADOR;
	
	-- FALTA PONER HASTA F
	DISPLAY <= DIG0 WHEN (Q=X"0") ELSE
			DIG1 WHEN (Q=X"1") ELSE
			DIG2 WHEN (Q=X"2") ELSE
			DIG3 WHEN (Q=X"3") ELSE
			DIG4 WHEN (Q=X"4") ELSE
			DIG5 WHEN (Q=X"5") ELSE
			DIG6 WHEN (Q=X"6") ELSE
			DIG7 WHEN (Q=X"7") ELSE
			DIG8 WHEN (Q=X"8") ELSE
			DIG9 WHEN (Q=X"9") ELSE
			DIGA WHEN (Q=X"A") ELSE
			DIGB WHEN (Q=X"B") ELSE
			DIGC WHEN (Q=X"C") ELSE
			DIGD WHEN (Q=X"D") ELSE
			DIGE WHEN (Q=X"E") ELSE
			DIGF WHEN (Q=X"F") ELSE
			nada;

end Behavioral;

