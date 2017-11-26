----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:42 11/26/2017 
-- Design Name: 
-- Module Name:    PRINCIPAL - PROGRAMA 
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

entity PRINCIPAL is
end PRINCIPAL;

architecture PROGRAMA of PRINCIPAL is

	SIGNAL RBANDERAS		 												: STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	SIGNAL SEL			 													: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL S1 , S2					 										: STD_LOGIC_VECTOR( 19 DOWNTO 0 );
	SIGNAL SDOPC , SM , NA		 										: STD_LOGIC;
	SIGNAL EQ , NEQ , LT , LE , GTI , GET							: STD_LOGIC;
	SIGNAL TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI	: STD_LOGIC;
	
begin
	NIV		: NIVEL PORT MAP ( CLK , CLR , NA );
	EST		: ESTADO PORT MAP ( OV&N&C&Z , RBANDERAS , S1(10) , CLK , CLR );
	COND		: CONDICION PORT MAP ( RBANDERAS , EQ , NEQ , LT , LE , GTI , GET );
	INST		: INSTRUCCIONES PORT MAP ( I(24)&I(23)&I(22)&I(21)&I(20) , TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI );
	CONT		: FSMCONTROL PORT MAP ( SM , SDOPC , TIPOR , BEQI , BNEI , BLTI , BLETI , BGTI , BGETI , EQ , NEQ , LT , LE , GTI , GET , NA , CLK , CLR );	
	--SDOPC
	SEL <= "00000" WHEN SDOPC = '0' ELSE I(24)&I(23)&I(22)&I(21)&I(20);	
	FUNCION	: FUNCION PORT MAP ( I(3)&I(2)&I(1)&I(0) , S1 );
	OPCODE	: OPERACION PORT MAP ( SEL , S2 );
	--SM
	S1 <= S1 WHEN SM = '0' ELSE S2;
	S <= S1;

end PROGRAMA;

