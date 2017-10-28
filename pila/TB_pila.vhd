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
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
 
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
	variable VAR_D :STD_LOGIC_VECTOR(15 DOWNTO 0);
	variable VAR_WPC, VAR_CLR, VAR_UP, VAR_DW : STD_LOGIC;
	
	--Archivos y variables de salida
	file ARCH_RES         : TEXT;
	variable LINEA_RES    : line;
	variable CADENA : STRING(1 TO 5);
	variable ESPACIO : STRING(1 TO 2);
	variable VAR_Q : STD_LOGIC_VECTOR(15 DOWNTO 0);
	variable VAR_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
   begin
      -- insert stimulus here
		file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
		file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);
		
		-- Cabecera del archivo de salida
		CADENA := "  D  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		CADENA := "  UP ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		CADENA := "  DW ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		CADENA := " WPC ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		CADENA := " CLR ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
		CADENA := "  SP ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
		CADENA := "  Q  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		writeline(ARCH_RES,LINEA_RES); -- escribe la linea en el archivo
		
		for i in 0 to 19 loop
			readline(ARCH_DATOS, LINEA);
			hread(LINEA, VAR_D);
			D <= VAR_D;
			read(LINEA, VAR_UP);
			UP <= VAR_UP;
			read(LINEA, VAR_DW);
			DW <= VAR_DW;
			read(LINEA, VAR_WPC);
			WPC <= VAR_WPC;
			read(LINEA, VAR_CLR);
			CLR <= VAR_CLR;
			wait until rising_edge(CLK);
			
			VAR_Q := Q;
			VAR_SEL := SEL;
			
			hwrite(LINEA_RES, VAR_D, right, 1);
			write(LINEA_RES, VAR_UP, right, 4);
			write(LINEA_RES, VAR_DW, right, 5);
			write(LINEA_RES, VAR_WPC, right, 5);
			write(LINEA_RES, VAR_CLR, right, 5);
			write(LINEA_RES, VAR_SEL, right, 6);
			hwrite(LINEA_RES, VAR_Q, right, 7);
			writeline(ARCH_RES,LINEA_RES);
		end loop;
		file_close(ARCH_DATOS);
		file_close(ARCH_RES);
      wait;
   end process;

END;
