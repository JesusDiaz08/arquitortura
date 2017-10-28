library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( DATOS : in  STD_LOGIC_VECTOR (7 downto 0);
           INI : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DISP : out  STD_LOGIC_VECTOR (6 downto 0));
end main;

architecture Behavioral of main is
begin
	

end Behavioral;

