--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:24:26 12/02/2017
-- Design Name:   
-- Module Name:   C:/Users/Giselle/Google Drive/ESCOM/5CMX/ARQUITECTURA DE COMPUTADORAS/PRACTICAS/CONTROL/CONTROL/TB_CONTROL.vhd
-- Project Name:  CONTROL
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
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;
 
ENTITY TB_CONTROL IS
END TB_CONTROL;
 
ARCHITECTURE behavior OF TB_CONTROL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PRINCIPAL
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         OV : IN  std_logic;
         N : IN  std_logic;
         C : IN  std_logic;
         Z : IN  std_logic;
         LF : IN  std_logic;
         OPCODE : IN  std_logic_vector(4 downto 0);
         FUNCODE : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
   signal OV : std_logic := '0';
   signal N : std_logic := '0';
   signal C : std_logic := '0';
   signal Z : std_logic := '0';
   signal LF : std_logic := '0';
   signal OPCODE : std_logic_vector(4 downto 0) := (others => '0');
   signal FUNCODE : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(19 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PRINCIPAL PORT MAP (
          CLK => CLK,
          CLR => CLR,
          OV => OV,
          N => N,
          C => C,
          Z => Z,
          LF => LF,
          OPCODE => OPCODE,
          FUNCODE => FUNCODE,
          S => S
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
		file ARCH_ENT : TEXT;--Archivo de Entrada	
		variable LINEA_ENT : line;		
		
		file ARCH_SAL : TEXT;--Archivo de Salida
		variable LINEA_SAL : line;
		
		VARIABLE VAR_CODE	 		: STD_LOGIC_VECTOR(4 DOWNTO 0);
		VARIABLE VAR_FUNC	 		: STD_LOGIC_VECTOR(3 DOWNTO 0);
		VARIABLE VAR_FLAGS	 	: STD_LOGIC_VECTOR(3 DOWNTO 0);
		VARIABLE VAR_CLR	 		: STD_LOGIC;
		VARIABLE VAR_LF		 	: STD_LOGIC;
		
		VARIABLE CADENA : STRING(1 TO 10);
		VARIABLE CADENA2 : STRING(1 TO 21);
		VARIABLE CADENA3 : STRING(1 TO 2);
	
	
   begin	
		file_open(ARCH_ENT, "vectores.txt", READ_MODE);--Archivo de Entrada, modo lectura 	
		file_open(ARCH_SAL, "resultado.txt", WRITE_MODE);--Archivo de Salida, modo escritura 	
		
		--Encabezado para el Archivo de Salida
		CADENA := "OP_CODE   ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "FUN_CODE  ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "BANDERAS  ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "CLR       ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "LF        ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);
		CADENA2 := "   MICROINSTRUCCION  ";
		write(LINEA_SAL, CADENA2, right, CADENA'LENGTH);
		--CADENA3 := "  ";
		--write(LINEA_SAL, CADENA3, right, CADENA'LENGTH);
		CADENA := "    NIVEL ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);
		
		writeline(ARCH_SAL,LINEA_SAL);--Escribe la linea resultante en el archivo
		
		
		WHILE NOT ENDFILE(ARCH_ENT) LOOP --Por cada linea del archivo, hasta llegar al final del archivo
			--Se realiza lectura por linea
			readline(ARCH_ENT,LINEA_ENT);
			
			read(LINEA_ENT, VAR_CODE);
			OPCODE <= VAR_CODE;
			
			read(LINEA_ENT,  VAR_FUNC);
			FUNCODE <= VAR_FUNC; 			
			
			read(LINEA_ENT,  VAR_FLAGS);
			OV <= VAR_FLAGS(3);
			N <= VAR_FLAGS(2);
			C <= VAR_FLAGS(1);
			Z <= VAR_FLAGS(0);
			
			read(LINEA_ENT,  VAR_CLR);
			CLR <= VAR_CLR;
			
			read(LINEA_ENT,  VAR_LF);
			LF <= VAR_LF;
			--S(10) <= VAR_LF;
			
			
			WAIT UNTIL FALLING_EDGE(CLK);
			
			write(LINEA_SAL, VAR_CODE, right, 5);
			write(LINEA_SAL, "     ", right, 5);	
			
			write(LINEA_SAL, VAR_FUNC , right, 4);	
			write(LINEA_SAL, "      " , right, 6);	
			
			write(LINEA_SAL, VAR_FLAGS , right, 4);	
			write(LINEA_SAL, "       " , right, 6);	
			
			write(LINEA_SAL, CLR , right, 1);	
			write(LINEA_SAL, "          " , right, 9);	
			--CHECAR SI ES S(10) O LF
			write(LINEA_SAL, LF , right, 1);	
			write(LINEA_SAL, "          " , right, 9);
			
			hwrite(LINEA_SAL, S , right, 3);	
			write(LINEA_SAL, "  " , right, 2);	
			
			write(LINEA_SAL, "BAJO", right, 4);
			
			writeline(ARCH_SAL,LINEA_SAL);-- escribe la linea en el archivo
			
			
			WAIT UNTIL RISING_EDGE(CLK);
			
			write(LINEA_SAL, VAR_CODE, right, 5);
			write(LINEA_SAL, "     ", right, 5);	
			
			write(LINEA_SAL, VAR_FUNC , right, 4);	
			write(LINEA_SAL, "      " , right, 6);	
			
			write(LINEA_SAL, VAR_FLAGS , right, 4);	
			write(LINEA_SAL, "       " , right, 6);	
			
			write(LINEA_SAL, CLR , right, 1);	
			write(LINEA_SAL, "          " , right, 9);	
			--CHECAR SI ES S(10) O LF
			write(LINEA_SAL, LF , right, 1);	
			write(LINEA_SAL, "          " , right, 9);
			
			hwrite(LINEA_SAL, S , right, 3);	
			write(LINEA_SAL, "  " , right, 2);	
			
			write(LINEA_SAL, "ALTO", right, 4);
			
			writeline(ARCH_SAL,LINEA_SAL);-- escribe la linea en el archivo
		
		
		END LOOP;
		
   end process;

END;