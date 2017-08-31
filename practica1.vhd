----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:45:32 08/28/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( C4 : out  STD_LOGIC;
			  C0 : IN STD_LOGIC;
			  BINVERT : in  STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
	PALU : PROCESS(A, B, BINVERT)
		variable G : STD_LOGIC_VECTOR(3 DOWNTO 0);
		variable P : STD_LOGIC_VECTOR(3 DOWNTO 0);
		variable EB : STD_LOGIC_VECTOR(3 DOWNTO 0);
		variable C : STD_LOGIC_VECTOR(4 DOWNTO 0);
		variable PI : STD_LOGIC;
		variable PK : STD_LOGIC;
		variable GJ : STD_LOGIC;
		variable Saux : STD_LOGIC_VECTOR (3 downto 0);
	BEGIN
	   C(0) := C0;
		GJ :='0';
		FOR i IN 0 TO 3 LOOP --1
		
			G(i) := (A(i) AND B(i));
			P(i) := (A(i) xor B(i)); -- meter al for y 0 to i
			PI := P(0);
			
			FOR i2 IN 1 TO i LOOP --2
				PI := PI AND P(i2);
			END LOOP;--2
			
			FOR j IN 0 TO i-1 LOOP --3
				PK := P(j+1);
				FOR k IN j+2 TO i LOOP --4
					PK := PK AND P(k);
				END LOOP;--4
				GJ := (G(j) and PK) or GJ;
			END LOOP;--3
			
			C(i+1) := G(i) or (C0 and PI) or GJ; 
			EB(i) := B(i) XOR BINVERT;
			Saux(i) := A(i) XOR EB(i) XOR C(i);
		END LOOP;--1
		C4 <= C(4);
		S <= Saux;
	END PROCESS PALU;
end Behavioral;

