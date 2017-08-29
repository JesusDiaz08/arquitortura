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
		variable C0PI : STD_LOGIC;
		variable PK : STD_LOGIC;
		variable GJ : STD_LOGIC;
	BEGIN
	   C(0) := C0;
		FOR i IN 0 TO 3 LOOP
			G(i) := (A(i) AND B(i));
			FOR i2 IN 0 TO i LOOP
				C0PI := C0PI AND P(i);
			END LOOP;
			FOR j IN 0 TO i-1 LOOP
				FOR k IN j+1 TO i LOOP
					PK := PK AND (A(k) XOR B(k));
				END LOOP;
				GJ := G(j) and PK;
			END LOOP;
			C(i+1) := G(i) or (C0 and C0PI); 
		END LOOP;
		FOR I IN 0 TO 3 LOOP
			EB(I) := B(I) XOR BINVERT;
			S(I) <= A(I) XOR EB(I) XOR C(I);
		END LOOP;
		C4 <= C(4);
	END PROCESS PALU;
end Behavioral;

