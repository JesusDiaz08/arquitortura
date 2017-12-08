
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INSTRUCCION is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           TIPOR 	: out  STD_LOGIC;
           BEQI 	: out  STD_LOGIC;
           BNEQI 	: out  STD_LOGIC;
           BLTI 	: out  STD_LOGIC;
           BLETI 	: out  STD_LOGIC;
           BGTI 	: out  STD_LOGIC;
           BGETI 	: out  STD_LOGIC);
end INSTRUCCION;

architecture DECODIFICADOR of INSTRUCCION is
begin
	TIPOR 	<= '1' WHEN (OPCODE="00000") ELSE '0';
	BEQI 		<= '1' WHEN (OPCODE="01101") ELSE '0';
	BNEQI 	<= '1' WHEN (OPCODE="01110") ELSE '0';
	BLTI 		<= '1' WHEN (OPCODE="01111") ELSE '0';
	BLETI 	<= '1' WHEN (OPCODE="10000") ELSE '0';
	BGTI 		<= '1' WHEN (OPCODE="10001") ELSE '0';
	BGETI 	<= '1' WHEN (OPCODE="10010") ELSE '0';
end DECODIFICADOR;

