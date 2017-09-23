--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:53:04 09/22/2017
-- Design Name:   
-- Module Name:   C:/Users/reymy/Documents/quinto/arquitortura/Practica2/Practica2_TB.vhd
-- Project Name:  Practica2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: programa
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
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Practica2_TB IS
END Practica2_TB;
 
ARCHITECTURE behavior OF Practica2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT programa
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         D : IN  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal D : std_logic_vector(24 downto 0) := (others => '0');
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programa PORT MAP (
          A => A,
          D => D
        );
		  
	-- Clock process definitions
--   CLK_process :process
--   begin
--		CLK <= '0';
--		wait for CLK_period/2;
--		CLK <= '1';
--		wait for CLK_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
		file ARCH_RES : TEXT;																					
		variable LINEA_RES : line;
		
		file ARCH_A : TEXT;
		variable LINEA_A : line;
		VARIABLE VAR_A : STD_LOGIC_VECTOR(1 DOWNTO 0);
		VARIABLE VAR_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
		VARIABLE CADENA : STRING(1 TO 7);
		
   begin	
	
		file_open(ARCH_A, "DIRECCIONES.TXT", READ_MODE); 	
		file_open(ARCH_RES, "RESULTADO.TXT", WRITE_MODE); 	

		CADENA := "INSTRUC";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
		CADENA := "  SGNFD";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
		CADENA := "  DIREC";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA
		CADENA := "24...20";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA
		CADENA := "19...16";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
		CADENA := "15...12";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
		CADENA := "11...08";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA
		CADENA := "07...04";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
		CADENA := "03...00";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA 
				
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

--		WAIT FOR 100 NS;
--		FOR I IN 0 TO 14 LOOP
--			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa
--
--			read(LINEA_VEC, VAR_OPER);
--			OPER <= VAR_OPER;
--			Hread(LINEA_VEC, VAR_D);--hexadecimal read
--			D <= VAR_D;		
--			read(LINEA_VEC, VAR_CLR);  
--			CLR <= VAR_CLR;
--			
--			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 
--
--			VAR_Q := Q;	
--			write(LINEA_RES, VAR_OPER, right, 5);	--ESCRIBE EL CAMPO OPER
--			Hwrite(LINEA_RES, VAR_D, 	right, 5);	--ESCRIBE EL CAMPO D
--			write(LINEA_RES, VAR_CLR, 	right, 5);	--ESCRIBE EL CAMPO CLR
--			Hwrite(LINEA_RES, VAR_Q, 	right, 5);	--ESCRIBE EL CAMPO Q
--
--			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
--			
--		end loop;

		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo
      wait;
   end process;
END;
