library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : inout  STD_LOGIC_VECTOR (3 downto 0);
           L : in  STD_LOGIC;
           I : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end contador;

architecture Behavioral of contador is
begin
	PCON: PROCESS(CLK, CLR)
	BEGIN
		IF(CLR= '1') THEN
			Q<=(OTHERS => '0');
		ELSIF(RISING_EDGE(CLK))THEN
			IF (L='1')THEN
			Q<=D;
			ELSIF(I='1')THEN
			Q<= Q+1; --CASTEAMOS A BITVECTOR PARA CORRIMIENTO Y STD_LOGIC PARA ASIGNACION
			END IF; --LA RETENCION YA ESTA INFERIDA 
		END IF;	
	END PROCESS PCON;
end Behavioral;

