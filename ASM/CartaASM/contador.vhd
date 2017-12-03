library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
	pReg: process(CLK, CLR)
		begin
			if(CLR = '1') then
				Q <= (others => '0');
			elsif(rising_edge(clk)) then
				if( L = '1') then
					Q <= D;
				elsif(I = '1') then
					Q <= Q + 1;
				end if;
			end if;
	end process pReg;

end Behavioral;

