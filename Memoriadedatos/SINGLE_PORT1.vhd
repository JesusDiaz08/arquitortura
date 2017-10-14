----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:12 10/05/2017 
-- Design Name: 
-- Module Name:    SINGLE_PORT - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SINGLE_PORT is
    Port ( DIN : in  STD_LOGIC_VECTOR (11 downto 0);
           ADR : in  STD_LOGIC_VECTOR (3 downto 0);
           WREN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DOUT : out  STD_LOGIC_VECTOR (11 downto 0));
           --CLR : in  STD_LOGIC);
end SINGLE_PORT;

architecture Behavioral of SINGLE_PORT is
TYPE MEMORIA IS ARRAY (0 to 2**4-1) OF STD_LOGIC_VECTOR (11 DOWNTO 0);
SIGNAL RAM_DIST : MEMORIA;
begin
	PRAM: PROCESS(CLK)
	begin
	 --IF(CLR = '1')THEN
	 --RAM_DIST <= (OTHERS => (OTHERS => '0'));
	 IF(RISING_EDGE(CLK))THEN 
		IF(WREN = '1') THEN
			RAM_DIST(CONV_INTEGER(ADR)) <= DIN;
		END IF;
	 END IF;
	 END PROCESS PRAM;	 
	 DOUT<= RAM_DIST(CONV_INTEGER(ADR));
end Behavioral;

