--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:11:20 10/22/2017
-- Design Name:   
-- Module Name:   C:/Users/reymy/Documents/quinto/arquitortura/Archivosdelprograma/TB_Archivosdelprograma.vhd
-- Project Name:  Archivosdelprograma
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ArchivoDeRegistros
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
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Archivosdelprograma IS
END TB_Archivosdelprograma;
 
ARCHITECTURE behavior OF TB_Archivosdelprograma IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ArchivoDeRegistros
    PORT(
         DATA_OUT : INOUT  std_logic_vector(15 downto 0);
         SHAMT : IN  std_logic_vector(3 downto 0);
         DIR : IN  std_logic;
         CLK : IN  std_logic;
         WR : IN  std_logic;
         ADDR_WR : IN  std_logic_vector(3 downto 0);
         ADDR_RD1 : IN  std_logic_vector(3 downto 0);
         ADDR_RD2 : IN  std_logic_vector(3 downto 0);
         WD : IN  std_logic_vector(15 downto 0);
         DINOUT1 : INOUT  std_logic_vector(15 downto 0);
         DOUT2 : OUT  std_logic_vector(15 downto 0);
         SHE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SHAMT : std_logic_vector(3 downto 0) := (others => '0');
   signal DIR : std_logic := '0';
   signal CLK : std_logic := '0';
   signal WR : std_logic := '0';
   signal ADDR_WR : std_logic_vector(3 downto 0) := (others => '0');
   signal ADDR_RD1 : std_logic_vector(3 downto 0) := (others => '0');
   signal ADDR_RD2 : std_logic_vector(3 downto 0) := (others => '0');
   signal WD : std_logic_vector(15 downto 0) := (others => '0');
   signal SHE : std_logic := '0';

	--BiDirs
   signal DATA_OUT : std_logic_vector(15 downto 0);
   signal DINOUT1 : std_logic_vector(15 downto 0);

 	--Outputs
   signal DOUT2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ArchivoDeRegistros PORT MAP (
          DATA_OUT => DATA_OUT,
          SHAMT => SHAMT,
          DIR => DIR,
          CLK => CLK,
          WR => WR,
          ADDR_WR => ADDR_WR,
          ADDR_RD1 => ADDR_RD1,
          ADDR_RD2 => ADDR_RD2,
          WD => WD,
          DINOUT1 => DINOUT1,
          DOUT2 => DOUT2,
          SHE => SHE
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
	--Archivos y variables de salida
	file ARCH_RES         : TEXT;
	variable LINEA_RES    : line;
		
	--Archivos y variables de entrada
	file ARCH_DATOS: TEXT;
	variable LINEA     : line;
   begin		
		-- Abrimos los archivos
		file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);

		for i in 0 to 8 loop
			readline(ARCH_DATOS, LINEA);
			
		end loop;
		file_close(ARCH_DATOS);
		wait;
   end process;

END;
