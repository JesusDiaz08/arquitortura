--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:38 09/23/2017
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
USE ieee.std_logic_1164.ALL;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 
 
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
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         Q : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(24 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programa PORT MAP (
          A => A,
          CLK => CLK,
          CLR => CLR,
          Q => Q
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
	file ARCH_RES : TEXT;
	variable LINEA_RES : line;
        
        file ARCH_A : TEXT;
        variable LINEA_A : line;
        VARIABLE VAR_A : STD_LOGIC_VECTOR(15 DOWNTO 0);
        VARIABLE VAR_Q : STD_LOGIC_VECTOR(24 DOWNTO 0);
		  --
		  VARIABLE SEG1: STD_LOGIC_VECTOR(4 DOWNTO 0);
		  VARIABLE SEG2,SEG3,SEG4,SEG5,SEG6: STD_LOGIC_VECTOR(3 DOWNTO 0); --SEGMENTOS DEL FORMATO
		  --
        VARIABLE CADENA : STRING(1 TO 7);
		  VARIABLE ESPACIO : STRING(1 TO 2);
		  
   begin
		  file_open(ARCH_A, "DIRECCIONES.TXT", READ_MODE);
        file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);

--        CADENA := "INSTRUC";
--        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
--        CADENA := "  SGNFD";
--        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "DIREC  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA
        CADENA := "24...20";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA
        CADENA := "19...16";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "15...12";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "11...08";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA
        CADENA := "07...04";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "03...00";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
                
        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
        
        wait for 100 ns;
		  -- Creo que es asi
        for i in 0 to 4 loop
            readline(ARCH_A, LINEA_A);
				Hread(LINEA_A, VAR_A); -- leemos un valor que esta en hexadecimal
				CLR <= '0'; -- Desactivamos el clear
            A <= VAR_A; -- lo asignamos a nuestro valor de entrada
				WAIT UNTIL RISING_EDGE(CLK);
        	
				--VAR_Q := Q;
				--
				SEG1:= Q(24)&Q(23)&Q(22)&Q(21)&Q(20);
				SEG2:= Q(19)&Q(18)&Q(17)&Q(16);
				SEG3:= Q(15)&Q(14)&Q(13)&Q(12);
				SEG4:= Q(11)&Q(10)&Q(9)&Q(8);
				SEG5:= Q(7)&Q(6)&Q(5)&Q(4);
				SEG6:= Q(3)&Q(2)&Q(1)&Q(0);				
				
				--write(LINEA_RES, ESPACIO, 	right, 0);	--ESCRIBE UN ESPACIO
				hwrite(LINEA_RES, A,		right, 5);
				write(LINEA_RES, ESPACIO, 	right, 5);	--ESCRIBE UN ESPACIO
				write(LINEA_RES, SEG1, 	right, 5);	--ESCRIBE EL CAMPO Q
				write(LINEA_RES, ESPACIO, 	right, 2);	--ESCRIBE UN ESPACIO			
				write(LINEA_RES, SEG2, 	right, 5);	--ESCRIBE EL CAMPO Q
				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
				write(LINEA_RES, SEG3, 	right, 5);	--ESCRIBE EL CAMPO Q
				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
				write(LINEA_RES, SEG4, 	right, 5);	--ESCRIBE EL CAMPO Q
				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
				write(LINEA_RES, SEG5, 	right, 5);	--ESCRIBE EL CAMPO Q
				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
				write(LINEA_RES, SEG6, 	right, 5);	--ESCRIBE EL CAMPO Q
		
				--				
				--write(LINEA_RES, VAR_Q, 	right, 5);	--ESCRIBE EL CAMPO Q
				
				writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
					  
		  end loop;
	 		  
		  file_close(ARCH_A);
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
