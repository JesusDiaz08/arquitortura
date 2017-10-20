--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:52:03 10/20/2017
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/GitHub/arquitortura/Barrel/TB_barrel.vhd
-- Project Name:  Barrel
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: barrel
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
 
ENTITY TB_barrel IS
END TB_barrel;
 
ARCHITECTURE behavior OF TB_barrel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT barrel
    PORT(
         DATA_IN : IN  std_logic_vector(7 downto 0);
         DATA_OUT : OUT  std_logic_vector(7 downto 0);
         SHIFT : IN  std_logic_vector(2 downto 0);
			LEFTSHIFT: IN STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal SHIFT : std_logic_vector(2 downto 0) := (others => '0');
	signal LEFTSHIFT: STD_LOGIC;

 	--Outputs
   signal DATA_OUT : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: barrel PORT MAP (
          DATA_IN => DATA_IN,
          DATA_OUT => DATA_OUT,
          SHIFT => SHIFT,
			 LEFTSHIFT => LEFTSHIFT
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		DATA_IN<="10000101";
		SHIFT<="001";
		LEFTSHIFT<='1';		
      wait for 100 ns;
		DATA_IN<="11000001";		
		SHIFT<="011";
		LEFTSHIFT<='0';
		wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
