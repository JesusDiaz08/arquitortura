library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity codigo is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
           SAL : out  STD_LOGIC_VECTOR (6 downto 0));
end codigo;

architecture convertidor of codigo is
CONSTANT DIG0: STD_LOGIC_VECTOR(6 DOWNTO 0):= "0000001";
CONSTANT DIG1: STD_LOGIC_VECTOR(6 DOWNTO 0):= "1001111";
CONSTANT DIG3: STD_LOGIC_VECTOR(6 DOWNTO 0):= "0010010";
CONSTANT DIG3: STD_LOGIC_VECTOR(6 DOWNTO 0):= "0010010";
--.....
begin
	SAL<= DIG0 WHEN (E= X"0") ELSE
			DIG1 WHEN (E= X"1");
	--entradas y su codigo

end convertidor;

