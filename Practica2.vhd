----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:49 09/12/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity programa is
    Port (
		A : in  STD_LOGIC_VECTOR (15 downto 0);
        D : in  STD_LOGIC_VECTOR (24 downto 0);
		);
end programa;
constant opcode_tipoR: 	std_logic_vector(4 downto 0):="00000";
constant opcode_LI: 	std_logic_vector(4 downto 0):="00001";
constant opcode_LWI: 	std_logic_vector(4 downto 0):="00010";
constant opcode_SWI: 	std_logic_vector(4 downto 0):="00011";
constant opcode_B: 		std_logic_vector(4 downto 0):="10011";
---continua (veintialgo)
constant funcode_ADD:   std_logic_vector(3 downto 0):="00000";
constant funcode_SUB:   std_logic_vector(3 downto 0):="00001";
---continua
constant R0: 			std_logic_vector(3 downto 0):="00000";
constant R1:			std_logic_vector(3 downto 0):="00001";
--continua (15)
constant SU:			std_logic_vector(3 downto 0):="00000";
constant NUM1: 			std_logic_vector(15 downto 0):= X"00001"; --hexadecimal



architecture memoria of programa is
type memoria is array (o to 2++16-1) of std_logic_vector(24 downto 0);
constant mem_prog: memoria :=(
		opcode_LI&R0&NUM1, 						--LI RO #1
		opcode_LI&R1&X"0009",				    --LI R1 #7
		opcode_tipoR&R1&R1&R0&SU&funcode_ADD, 	--ADD R1,R1,R0
		opcode_SWI&R1&X"0005", 					--SWI R1,5
		opcode_B&SU&X"0002", 					--B ciclo
		others=> (others => '0');	--others the localidades y su tamaño.
		
);
begin

end memoria;

