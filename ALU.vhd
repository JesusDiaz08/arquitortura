----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:02 08/24/2017 
-- Design Name: 
-- Module Name:    ALU - PROGRAMA 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           BINVERT : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C4 : out  STD_LOGIC);
end ALU;

architecture PROGRAMA of ALU is
signal EB : std_logic_vector(3 downto 0);
signal C : std_logic_vector(4 downto 0);
begin
C(0) <= BINVERT;
    
    -- VERSION NO CHIDA REPETIDA HASTA C4
    -- C(1)
    EB(0) <= B(0) xor BINVERT;
    S(0) <= A(0) xor EB(0) xor C(0);
    C(1) <= (A(0) and EB(0)) or (A(0) and C(0)) or (EB(0) and C(0));
    --C(2)
    EB(1) <= B(1) xor BINVERT;
    S(1) <= A(1) xor EB(1) xor C(1);
    C(2) <= (A(1) and EB(1)) or (A(1) and C(1)) or (EB(1) and C(1));
    
    -- FINALMENTE PARA C4
    C4 <=C(4);

end PROGRAMA;

