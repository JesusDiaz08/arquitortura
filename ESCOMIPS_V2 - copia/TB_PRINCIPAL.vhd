--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:17:58 12/05/2017
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/GitHub/arquitortura/ESCOMIPS/TB_PRINCIPAL.vhd
-- Project Name:  ESCOMIPS
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
 
ENTITY TB_PRINCIPAL IS
END TB_PRINCIPAL;
 
ARCHITECTURE behavior OF TB_PRINCIPAL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PRINCIPAL
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         DATA_IN : OUT  std_logic_vector(15 downto 0);
         WRITE_DATA : OUT  std_logic;
			DATA_ADDRESS : OUT std_logic_vector(15 downto 0)	
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal DATA_IN : std_logic_vector(15 downto 0);
   signal WRITE_DATA : std_logic;
	SIGNAL DATA_ADDRESS : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PRINCIPAL PORT MAP (
          CLK => CLK,
          CLR => CLR,
          DATA_IN => DATA_IN,
          WRITE_DATA => WRITE_DATA,
			 DATA_ADDRESS => DATA_ADDRESS
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
		CLR <= '1';
      wait for CLK_period*10;
		
		CLR <= '0';
      -- insert stimulus here 
		
		wait for 10000 ms;
      wait;
   end process;

END;
