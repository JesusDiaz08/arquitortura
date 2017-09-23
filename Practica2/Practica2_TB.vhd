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
        VARIABLE VAR_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
        VARIABLE CADENA : STRING(1 TO 7);
   begin
	file_open(ARCH_A, "DIRECCIONES.TXT", READ_MODE);
        file_open(ARCH_RES, "bleh.TXT", WRITE_MODE);

        CADENA := "INSTRUC";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "  SGNFD";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA 
        CADENA := "  DIREC";
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
        end loop;
		  
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
