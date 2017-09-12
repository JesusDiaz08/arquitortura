----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:30 09/11/2017 
-- Design Name: 
-- Module Name:    ALUfinal - Behavioral 
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

entity ALUfinal is
	 GENERIC(N: integer:=4);
    Port (
		BINVERT : in  STD_LOGIC;
		AINVERT : in  STD_LOGIC;
		OP : in  STD_LOGIC_VECTOR(1 downto 0);
		RES : out  STD_LOGIC_VECTOR(N-1 downto 0); --inout
		A : in  STD_LOGIC_VECTOR (N-1 downto 0);
      B : in  STD_LOGIC_VECTOR (N-1 downto 0);
		--Banderas
		BZ,BC,BN, BOV: out  STD_LOGIC
		);
end ALUfinal;

architecture Behavioral of ALUfinal is
begin
	PALU : PROCESS(A, B, AINVERT, BINVERT, OP)
			variable G : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			--Variable para banderas.
			variable VRES : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable P : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable MUXA,MUXB : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			variable C : STD_LOGIC_VECTOR(N DOWNTO 0);
			variable PI,PK,GJ,VNOR,VAND: STD_LOGIC;
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
						
						GJ :='0';	
						FOR j IN 0 TO i-1 LOOP --2
							PK:='1';
							FOR k IN j+1 TO i LOOP --3
								PK := PK AND P(k);
							END LOOP;--3
							GJ := GJ or (G(j) and PK);
						END LOOP;--2
						
						VAND:=C(0);--para la operacion and del carry
						PI :='1';
						FOR i2 IN 0 TO i LOOP --4
							PI := PI AND P(i2);
						END LOOP;--4
						VAND:=VAND and PI;			
						C(i+1) := G(i) or GJ or VAND;
										
				END CASE;
					RES(i) <= VRES(i);
			END LOOP;--1
			
			--BC <= C(N); -- Creo que CN ya lo la necesitamos ño, solo lo dejare como para checar doblemente
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
			FOR M IN 0 TO N-1 LOOP
				VNOR := VNOR or VRES(M);
			END LOOP;
			BZ <= not VNOR;
			
		END PROCESS PALU;
end Behavioral;

