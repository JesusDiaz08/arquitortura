----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:41:21 09/07/2017 
-- Design Name: 
-- Module Name:    ALUpractica - Behavioral 
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

entity ALUpractica is
	 GENERIC(N: integer:=4);
    Port ( CN : out  STD_LOGIC;
		BINVERT : in  STD_LOGIC;
		AINVERT : in  STD_LOGIC;
		OP : in  STD_LOGIC_VECTOR(1 downto 0);
		RES : out  STD_LOGIC_VECTOR(N-1 downto 0);
		A : in  STD_LOGIC_VECTOR (N-1 downto 0);
      B : in  STD_LOGIC_VECTOR (N-1 downto 0);
		--Banderas
		BZ,BC,BN, BOV: in  STD_LOGIC
		);
end ALUpractica;

architecture Behavioral of ALUpractica is
begin
	PALU : PROCESS(A, B, AINVERT, BINVERT, OP)
			variable G : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable P : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable MUXA,MUXB : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable C : STD_LOGIC_VECTOR(N DOWNTO 0);
			variable PI,PK,GJ : STD_LOGIC;
		BEGIN
			C:= (OTHERS => '0'); --OTHERS nos indica que el valor es cero para todos sus bits
			P:= (OTHERS => '0');
			G:= (OTHERS => '0');
			C(0) := BINVERT;
			FOR i IN 0 TO N-1 LOOP --1
			
				MUXB(i) := B(i) XOR BINVERT;
				MUXA(i) := A(i) XOR AINVERT;
					
				CASE OP IS
				
					--operaciones
					WHEN "00"=>
						RES(i)<=MUXA(i) AND MUXB(i);
					WHEN "01"=>
						RES(i)<=MUXA(i) OR MUXB(i);
					WHEN "10"=>
						RES(i)<=MUXA(i) XOR MUXB(i);
					WHEN OTHERS =>
						
						G(i) := (MUXA(i) AND MUXB(i));
						P(i) := (MUXA(i) xor MUXB(i)); 
						RES(i) <= MUXA(i) XOR MUXB(i) XOR C(i);
						
						GJ :='0';	
						FOR j IN 0 TO i-1 LOOP --2
							PK:='1';
							FOR k IN j+1 TO i LOOP --3
								PK := PK AND P(k);
							END LOOP;--3
							GJ := GJ or (G(j) and PK);
						END LOOP;--2
						
						PI :='1';
						FOR i2 IN 0 TO i LOOP --4
							PI := PI AND P(i2);
						END LOOP;--4
				
						C(i+1) := G(i) or GJ or (C(0) AND PI);
										
				END CASE;
			END LOOP;--1
			CN <= C(N);
			--Banderas--
			--Bandera carry
			if(CN<='0') then
				BC<='0';
			else BC<='1';
			end if;
			--Bandera negative
			if(RES(N)<='0') then
				BN<='0';
			else BN<='1';
			end if;
			--Bandera overflow
			if((C(N) xor C(N-1))<='1') then
				BOV<='1';
			else BOV<='0';
			end if;
			--Bandera zero
			if(RES<="00000") then
				BZ<='1';
			else BZ<='0';
			end if;				
			
				
			
		END PROCESS PALU;
END Behavioral;

