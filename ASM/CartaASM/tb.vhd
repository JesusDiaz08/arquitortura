--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:07:45 11/06/2017
-- Design Name:   
-- Module Name:   D:/CartaASM/tb.vhd
-- Project Name:  CartaASM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PRINCIPAL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PRINCIPAL
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         INI : IN  std_logic;
         DATOS : IN  std_logic_vector(7 downto 0);
         DISPLAY : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal INI : std_logic := '0';
   signal DATOS : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DISPLAY : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PRINCIPAL PORT MAP (
          CLK => CLK,
          CLR => CLR,
          INI => INI,
          DATOS => DATOS,
          DISPLAY => DISPLAY
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		CLR<='1';
      wait until rising_edge(clk);
		CLR<='0';
		INI<='0';
		DATOS<="10101010";
		wait until rising_edge(clk);
		CLR<='0';
		INI<='1';
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
