----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:N5:N-12 08/28/2017 
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
	 GENERIC(N: integer:=4);
    Port ( CN : out  STD_LOGIC;
			  BINVERT : in  STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR (N-1 downto 0);
           A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
	PALU : PROCESS(A, B, BINVERT)
		variable G : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable P : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable EB : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable C : STD_LOGIC_VECTOR(N DOWNTO 0);
		variable PI,PK,GJ : STD_LOGIC;
	BEGIN
	   C(0) := BINVERT;
		FOR i IN 0 TO N-1 LOOP --1
			EB(i) := B(i) XOR BINVERT;
			G(i) := (A(i) AND EB(i));
			P(i) := (A(i) xor EB(i)); 
			S(i) <= A(i) XOR EB(i) XOR C(i);
			
			PI :='1';
			FOR i2 IN 1 TO i LOOP --2
				PI := PI AND P(i2);
			END LOOP;--2

			GJ :='0';	
			FOR j IN 0 TO i-1 LOOP --3
				PK:='1';
				FOR k IN j+1 TO i LOOP --4
					PK := PK AND P(k);
				END LOOP;--4
				GJ := (G(j) and PK) or GJ;
			END LOOP;--3
	
			C(i+1) := G(i) or PI or GJ; 
			
			END LOOP;--1
		CN <= C(N);
	END PROCESS PALU;
end Behavioral;

