----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:48:47 08/31/2017 
-- Design Name: 
-- Module Name:    practica1v2 - Behavioral 
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

entity practica1v2 is
	 GENERIC(N: integer:=4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           BINVERT : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (N-1 downto 0);
           CN : out  STD_LOGIC);
end practica1v2;

architecture Behavioral of practica1v2 is
begin
	PALU : PROCESS(A, B, BINVERT)
		variable G : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable P : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable EB : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable C : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		variable P1 : STD_LOGIC;
		variable P2 : STD_LOGIC;
	begin
	   C(0) := BINVERT;
		
		FOR i IN 0 TO N-1 LOOP
			G(i) := (A(i) AND B(i)); 
			P(i) := (A(i) xor B(i)); 
			PI := P(0);
		END LOOP;
		
		FOR i IN 0 TO N-1 LOOP --1
			
			FOR j IN 0 TO i LOOP --2
				P1:= P1 and P(j);
			END LOOP;--2

			FOR k IN 0 TO i-1 LOOP --3
				P2:=or G(k);
				FOR m IN 1+k TO i LOOP
					P2:= P2 and P(m);
				END LOOP;
			END LOOP;--3
			
		END LOOP;--1
		EB(i) := B(i) XOR BINVERT;
		S(i) := A(i) XOR EB(i) XOR C(i);
		IF i<='0' then		
		C(i+1):=G(i) or  C(0) and P(0);
		END IF;
		C(i+1):=G(i) or C(0) and P1 or P2;
		CN <= C(N);
	END PROCESS PALU;
	
end Behavioral;

