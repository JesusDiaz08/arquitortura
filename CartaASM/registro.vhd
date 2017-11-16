library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity registro is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : inout  STD_LOGIC_VECTOR (7 downto 0);
           L : in  STD_LOGIC;
           SH : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end registro;

architecture Behavioral of registro is
begin
	pReg: process(CLK, CLR)
	begin
		if(CLR = '1') then
			Q <= (others => '0');
		elsif(rising_edge(clk)) then
			if( L = '1') then
				Q <= D;
			elsif(SH = '1') then
				Q <= to_stdlogicvector(to_bitvector(Q) SRL 1);
			end if;
		end if;
	end process pReg;


end Behavioral;

