library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CONTROL is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           INI : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           LA : out  STD_LOGIC;
           SH : out  STD_LOGIC;
           LB : out  STD_LOGIC;
           IB : out  STD_LOGIC;
           SD : out  STD_LOGIC);
end CONTROL;

architecture UNIDAD of CONTROL is
TYPE estados IS (A, B, C);										-- El automáta tiene 3 estados
SIGNAL edo_act, edo_sig: estados;							
begin																	-- Describir autómata
	pAutomata: process(edo_act, INI, Z, A0)
	begin
		LA <= '0';
		SH <= '0';
		LB <= '0';
		IB <= '0';
		SD <= '0';
		case edo_act is
			when A => LB <= '1';									-- Salida Moore
				if(INI = '0') then
					LA <= '1';
					edo_sig <= A;
				else
					edo_sig <= B;
				end if;
				
			when B => SH <= '1';									-- Salida Moore
				if(Z = '1') then					
					edo_sig <= C;
				else
					if(A0 = '1') then
						IB <= '1';
						edo_sig <= B;
					else
						edo_sig <= B;
					end if;
				end if;
				
			when C => SD <= '1';									-- Salida Moore
				if(INI = '0') then
					edo_sig <= A;
				else
					edo_sig <= C;
				end if;
		end case;
	end process pAutomata;
	
	pTransicion: process(CLK, CLR)
	begin
		if(CLR = '1') then
			edo_act <= A;
		elsif(rising_edge(clk)) then
			edo_act <= edo_sig;
		end if;
	end process pTransicion;

end UNIDAD;