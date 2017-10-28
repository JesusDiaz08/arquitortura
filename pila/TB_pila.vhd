--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:10:11 10/28/2017
-- Design Name:   
-- Module Name:   C:/Users/reymy/Documents/quinto/arquitortura/pila/TB_pila.vhd
-- Project Name:  pila
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Pila
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
 
ENTITY TB_pila IS
END TB_pila;
 
ARCHITECTURE behavior OF TB_pila IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pila
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0);
         SEL : OUT  std_logic_vector(2 downto 0);
         WPC : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic;
         UP : IN  std_logic;
         DW : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(15 downto 0) := (others => '0');
   signal WPC : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';
   signal UP : std_logic := '0';
   signal DW : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);
   signal SEL : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pila PORT MAP (
          D => D,
          Q => Q,
          SEL => SEL,
          WPC => WPC,
          CLR => CLR,
          CLK => CLK,
          UP => UP,
          DW => DW
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
	--Archivos y variables de entrada
	file ARCH_DATOS: TEXT;
	variable LINEA: line;
	
	--Archivos y variables de salida
	file ARCH_RES         : TEXT;
	variable LINEA_RES    : line;
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
		

      wait;
   end process;

END;
