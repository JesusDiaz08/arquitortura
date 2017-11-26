library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OPERACION is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (19 downto 0));
end OPERACION;

architecture MEMORIA of OPERACION is
	TYPE MEMORIA IS ARRAY (0 TO 2**5) OF STD_LOGIC_VECTOR(D' RANGE);
	
	CONSTANT MEM_FUN : MEMORIA := (
	  --12345678901234567890
		"00001000010000111000",
		"00000000100000000000",
		"00000100100000000100",
		"00001000000000000110",
		"00001000011010011010",
		"00000100110010011001",
		"00000100110010111001",
		"00000100110010000001",
		"00000100110010001001",
		"00000100110010010001",
		"00000100110011101001",
		"00000100110011100001",
		"00000100110010110001",
		"00110000010110011001",
		"00110000010110011001",
		"00110000010110011001",
		"00110000010110011001",
		"00110000010110011001",
		"00110000010110011001",
		"00100000000000000000",
		"10100000000000000000",
		"01000000000000000000",
		"00000000000000000000",
		"00000100111010011000",
		OTHERS => (OTHERS => '0')		
	);
begin
	D 	<=	MEM_FUN(0) WHEN 	A="00000" ELSE
			MEM_FUN(1) WHEN 	A="00001" ELSE
			MEM_FUN(2) WHEN 	A="00010" ELSE
			MEM_FUN(3) WHEN 	A="00011" ELSE
			MEM_FUN(4) WHEN 	A="00100" ELSE
			MEM_FUN(5) WHEN 	A="00101" ELSE
			MEM_FUN(6) WHEN 	A="00110" ELSE
			MEM_FUN(7) WHEN 	A="00111" ELSE
			MEM_FUN(8) WHEN 	A="01000" ELSE
			MEM_FUN(9) WHEN 	A="01001" ELSE
			MEM_FUN(10) WHEN 	A="01010" ELSE
			MEM_FUN(11) WHEN 	A="01011" ELSE
			MEM_FUN(12) WHEN 	A="01100" ELSE
			MEM_FUN(13) WHEN 	A="01101" ELSE
			MEM_FUN(14) WHEN 	A="01110" ELSE
			MEM_FUN(15) WHEN 	A="01111" ELSE
			MEM_FUN(16) WHEN 	A="10000" ELSE
			MEM_FUN(17) WHEN 	A="10001" ELSE
			MEM_FUN(18) WHEN 	A="10010" ELSE
			MEM_FUN(19) WHEN 	A="10011" ELSE
			MEM_FUN(20) WHEN 	A="10100" ELSE
			MEM_FUN(21) WHEN 	A="10101" ELSE
			MEM_FUN(22) WHEN 	A="10110" ELSE
			MEM_FUN(23) WHEN 	A="10111" ELSE
			MEM_FUN(24);

end MEMORIA;
