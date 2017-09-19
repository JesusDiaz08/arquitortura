--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:07:57 09/12/2017
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/GitHub/arquitortura/ALU_/ALU_TB.vhd
-- Project Name:  ALU_
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         BINVERT : IN  std_logic;
         AINVERT : IN  std_logic;
         OP : IN  std_logic_vector(1 downto 0);
         RES : OUT  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         BZ : OUT  std_logic;
         BC : OUT  std_logic;
         BN : OUT  std_logic;
         BOV : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal BINVERT : std_logic := '0';
   signal AINVERT : std_logic := '0';
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal RES : std_logic_vector(3 downto 0);
   signal BZ : std_logic;
   signal BC : std_logic;
   signal BN : std_logic;
   signal BOV : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          BINVERT => BINVERT,
          AINVERT => AINVERT,
          OP => OP,
          RES => RES,
          A => A,
          B => B,
          BZ => BZ,
          BC => BC,
          BN => BN,
          BOV => BOV
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		AINVERT<='0';
		BINVERT<='1';
		OP<="10";
		A<="0101";
		B<="1110";
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
