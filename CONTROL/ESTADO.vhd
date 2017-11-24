----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:14 11/23/2017 
-- Design Name: 
-- Module Name:    ESTADO - REGISTRO 
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

entity ESTADO is
    Port ( OV : in  STD_LOGIC;
           N : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           RBANDERAS : out  STD_LOGIC_VECTOR (3 downto 0);
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           LF : in  STD_LOGIC);
end ESTADO;

architecture REGISTRO of ESTADO is

begin
	PREG: PROCESS(CLK,CLR)
	BEGIN 
		IF(CLR='1')THEN
			RBANDERAS<=(OTHERS => '0');
		ELSIF(FALLING_EDGE(CLK)) THEN
			IF( LF='0')THEN 
				RBANDERAS(0) <= Z;
				RBANDERAS(1) <= C;
				RBANDERAS(2) <= N;
				RBANDERAS(3) <= OV;
			END IF;
		END IF;
	END PROCESS PREG;
	

end REGISTRO;

