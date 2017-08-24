----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:02 08/24/2017 
-- Design Name: 
-- Module Name:    ALU2 - PROGRAMA 
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

entity ALU2 is
	GENERIC(N : INTEGER :=4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           BINVERT : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (N-1 downto 0);
           C4 : out  STD_LOGIC);
end ALU2;

architecture PROGRAMA of ALU2 is
signal EB : std_logic_vector(N-1 downto 0);
signal C : std_logic_vector(N downto 0);
begin
	C(0) <= BINVERT;
	
	CICLO: FOR I IN 0 TO N-1 GENERATE
		EB(I) <= B(I) xor BINVERT;
		S(I) <= A(I) xor EB(I) xor C(I);
		C(I+1) <= (A(I) and EB(I)) or (A(I) and C(I)) or (EB(I) and C(I));
	END GENERATE;
	
	C4 <= C(4);
end PROGRAMA;

