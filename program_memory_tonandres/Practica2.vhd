	library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL; 


entity programa is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
			  CLK, CLR : IN STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (24 downto 0));
end programa;

architecture memoria of programa is

------OPCODES------
constant opcode_tipoR: 	std_logic_vector(4 downto 0):="00000";
constant opcode_LI: 		std_logic_vector(4 downto 0):="00001";
constant opcode_LWI: 	std_logic_vector(4 downto 0):="00010";
constant opcode_SWI: 	std_logic_vector(4 downto 0):="00011";
constant opcode_SW: 		std_logic_vector(4 downto 0):="00100";
constant opcode_ADDI: 	std_logic_vector(4 downto 0):="00101";
constant opcode_SUBI: 	std_logic_vector(4 downto 0):="00110";
constant opcode_ANDI: 	std_logic_vector(4 downto 0):="00111";
constant opcode_ORI: 	std_logic_vector(4 downto 0):="01000";
constant opcode_XORI: 	std_logic_vector(4 downto 0):="01001";
constant opcode_NANDI: 	std_logic_vector(4 downto 0):="01010";
constant opcode_NORI: 	std_logic_vector(4 downto 0):="01011";
constant opcode_XNORI: 	std_logic_vector(4 downto 0):="01100";
constant opcode_BEQI: 	std_logic_vector(4 downto 0):="01101";
constant opcode_BNEI: 	std_logic_vector(4 downto 0):="01110";
constant opcode_BLTI: 	std_logic_vector(4 downto 0):="01111";
constant opcode_BLETI: 	std_logic_vector(4 downto 0):="10000";
constant opcode_BGTI: 	std_logic_vector(4 downto 0):="10001";
constant opcode_BGETI: 	std_logic_vector(4 downto 0):="10010";
constant opcode_B: 		std_logic_vector(4 downto 0):="10011";
constant opcode_CALL: 	std_logic_vector(4 downto 0):="10100";
constant opcode_RET: 	std_logic_vector(4 downto 0):="10101";
constant opcode_NOP: 	std_logic_vector(4 downto 0):="10110";
constant opcode_LW: 		std_logic_vector(4 downto 0):="10111";

-------CODIGOS DE ARITMETICA------
constant funcode_ADD:   std_logic_vector(3 downto 0):="0000";
constant funcode_SUB:   std_logic_vector(3 downto 0):="0001";

-------REGISTROS------
constant R0: 	std_logic_vector(3 downto 0):="0000";
constant R1:	std_logic_vector(3 downto 0):="0001";
constant R2: 	std_logic_vector(3 downto 0):="0010";
constant R3: 	std_logic_vector(3 downto 0):="0011";
constant R4: 	std_logic_vector(3 downto 0):="0100";
constant R5: 	std_logic_vector(3 downto 0):="0101";
constant R6: 	std_logic_vector(3 downto 0):="0110";
constant R7: 	std_logic_vector(3 downto 0):="0111";
constant R8: 	std_logic_vector(3 downto 0):="1000";
constant R9: 	std_logic_vector(3 downto 0):="1001";
constant R10: 	std_logic_vector(3 downto 0):="1010";
constant R11: 	std_logic_vector(3 downto 0):="1011";
constant R12: 	std_logic_vector(3 downto 0):="1100";
constant R13: 	std_logic_vector(3 downto 0):="1101";
constant R14: 	std_logic_vector(3 downto 0):="1110";

----ALGUNAS CONSTANTES DE USO----
constant SU:			std_logic_vector(3 downto 0):="0000";
constant NUM1: 			std_logic_vector(15 downto 0):= X"0001"; --hexadecimal

---------MEMORIA------------
type memoria is array (0 to 2**16-1) of std_logic_vector(24 downto 0);

constant mem_prog: memoria :=(
		opcode_LI&R0&NUM1, 						--LI RO #1
		opcode_LI&R1&X"0007",				    --LI R1 #7
		opcode_tipoR&R1&R1&R0&SU&funcode_ADD, 	--ADD R1,R1,R0
		opcode_SWI&R1&X"0005", 					--SWI R1,5
		opcode_B&SU&X"0002", 					--B ciclo
		others => (others => '0')	--others para llenar de ceros las localidades y su tamaño.
);
begin
	process(CLK, CLR)
	variable prueba :STD_LOGIC_VECTOR (24 downto 0);
	begin
	IF(CLR = '1')THEN
		Q <= (OTHERS => '0');
	ELSIF( CLK'EVENT AND CLK = '0' )THEN
		-- casteamos la entrada a un entero para poder acceder al arreglo de memoria
		Q <= mem_prog(to_integer(unsigned(A))); -- La salida de 25 bits
	END IF;
	end process;
end memoria;

