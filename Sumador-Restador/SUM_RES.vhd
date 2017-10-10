----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:26 10/04/2017 
-- Design Name: 
-- Module Name:    SUM_RES - PROGRAMA 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SUM_RES is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           BINVERT : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end SUM_RES;

architecture PROGRAMA of SUM_RES is
--signal SUMA: std_logic_vector (7 downto 0);
--signal RESTA: std_logic_vector (7 downto 0);

begin

--	SUMA <= A+B;
--	RESTA<= A-B;
	S<= A + B when BINVERT = '0' else A - B;

end PROGRAMA;

