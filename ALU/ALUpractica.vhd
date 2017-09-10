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
		RES : out  STD_LOGIC_VECTOR(N-1 downto 0); --inout
		A : in  STD_LOGIC_VECTOR (N-1 downto 0);
      B : in  STD_LOGIC_VECTOR (N-1 downto 0);
		--Banderas
		BOV,BN,BZ,BC: out  STD_LOGIC
		);
end ALUpractica;

architecture Behavioral of ALUpractica is
begin
	PALU : PROCESS(A, B, AINVERT, BINVERT, OP)
			variable G : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			--Variable para banderas.
			variable VRES : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable P : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable MUXA,MUXB : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable C : STD_LOGIC_VECTOR(N DOWNTO 0);
			variable PI,PK,GJ,VNOR : STD_LOGIC;
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
						VRES(i):=MUXA(i) AND MUXB(i);
					WHEN "01"=>
						VRES(i):=MUXA(i) OR MUXB(i);
					WHEN "10"=>
						VRES(i):=MUXA(i) XOR MUXB(i);
					WHEN OTHERS =>
						G(i) := (MUXA(i) AND MUXB(i));
						P(i) := (MUXA(i) xor MUXB(i)); 
						VRES(i):= MUXA(i) XOR MUXB(i) XOR C(i);
						--RES(i) <= VRES(i);
						
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
			
			--Valores finales
			RES <= VRES;
			
			CN <= C(N); -- Creo que CN ya lo la necesitamos ño, solo lo dejare como para checar doblemente
			--Banderas--
			--Checamos si son operaciones aritmeticas
			if(OP<="11") then
				--Bandera carry			
				BC <= C(N);
				--Bandera overflow
				BOV<= C(N) xor C(N-1); -- Creo que es xnor
			end if;
			--Estas banderas si se aplican a cualquier caso
			--Bandera negative
			BN<=VRES(N-1);
			--Bandera zero
			VNOR :='0';
			FOR M IN 0 TO N-3 LOOP
				VNOR := VRES(M) or VRES(M+2) or VNOR;
			END LOOP;
			BZ <= not VNOR;
		END PROCESS PALU;
END Behavioral;

