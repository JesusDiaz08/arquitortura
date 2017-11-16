
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_main IS
END TB_main;
 
ARCHITECTURE behavior OF TB_main IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         DATOS : IN  std_logic_vector(7 downto 0);
         INI : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic;
         DISP : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DATOS : std_logic_vector(7 downto 0) := (others => '0');
   signal INI : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal DISP : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          DATOS => DATOS,
          INI => INI,
          CLR => CLR,
          CLK => CLK,
          DISP => DISP
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--		CLR<='1';
--		INI<='0';
--		DATOS<="11111111";
--		wait for CLK_period*10;
--		CLR<='0';
--		wait for CLK_period*10;
--		INI<='1';
		
      wait for CLK_period*10;	
		CLR<='1';
		INI<='0';
      wait for CLK_period*10;
		CLR<='0';
		INI<='1';
		DATOS<="11111111";
      -- insert stimulus here 

      wait;
   end process;

END;
