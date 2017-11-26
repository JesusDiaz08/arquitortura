----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:12 11/23/2017 
-- Design Name: 
-- Module Name:    INSTRUCCIONES - Behavioral 
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

entity INSTRUCCIONES is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           TIPOR : out  STD_LOGIC;
           BEQI : out  STD_LOGIC;
           BLTI : out  STD_LOGIC;
           BLETI : out  STD_LOGIC;
           BGTI : out  STD_LOGIC;
           BGETI : out  STD_LOGIC;
           BNETI : out  STD_LOGIC);
end INSTRUCCIONES;

architecture Behavioral of INSTRUCCIONES is
--DECODIFICADOR DE INSTRUCCIONES DE CONDICION
begin
	TIPOR<= '1' WHEN(OPCODE="00000") ELSE '0';
	BEQI <= '1' WHEN(OPCODE="01101") ELSE '0';--13
	BNETI<= '1' WHEN(OPCODE="01110") ELSE '0';--14
	BLTI <= '1' WHEN(OPCODE="01111") ELSE '0';--15
	BLETI<= '1' WHEN(OPCODE="10000") ELSE '0';--16
	BGTI <= '1' WHEN(OPCODE="10001") ELSE '0';--17
	BGETI<= '1' WHEN(OPCODE="10010") ELSE '0';--18
end Behavioral;

