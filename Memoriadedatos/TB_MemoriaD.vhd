--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:44:59 10/14/2017
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/GitHub/arquitortura/Memoriadedatos/TB_MemoriaD.vhd
-- Project Name:  Memoriadedatos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemoriaD
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
USE ieee.std_logic_TEXTIO.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_MemoriaD IS
END TB_MemoriaD;
 
ARCHITECTURE behavior OF TB_MemoriaD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaD
    PORT(
         DIN : IN  std_logic_vector(7 downto 0);
         DOUT : OUT  std_logic_vector(7 downto 0);
         ADR_W : IN  std_logic_vector(3 downto 0);
         ADR_R : IN  std_logic_vector(3 downto 0);
         WREN : IN  std_logic;
         REN : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ADR_W : std_logic_vector(3 downto 0) := (others => '0');
   signal ADR_R : std_logic_vector(3 downto 0) := (others => '0');
   signal WREN : std_logic := '0';
   signal REN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal DOUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaD PORT MAP (
          DIN => DIN,
          DOUT => DOUT,
          ADR_W => ADR_W,
          ADR_R => ADR_R,
          WREN => WREN,
          REN => REN,
          CLK => CLK
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
	file ARCH_DATOS: TEXT;
   variable LINEA_DATOS : line;
		
      VARIABLE VAR_DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
      VARIABLE VAR_ADR_DOUT : STD_LOGIC_VECTOR(24 DOWNTO 0);
		  --
		VARIABLE CADENA : STRING(1 TO 7);
		VARIABLE ESPACIO : STRING(1 TO 2);
		  --
		
   begin		
file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
        file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);

        CADENA := "LEIDO";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);   --ESCRIBE LA CADENA

        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
        
        wait for 100 ns;

        for i in 0 to 4 loop
		  
--            readline(ARCH_A, LINEA_A);
--				Hread(LINEA_A, VAR_A); -- leemos un valor que esta en hexadecimal
--            A <= VAR_A; -- lo asignamos a nuestro valor de entrada
--				wait for 100 ns;
--				--VAR_Q := Q;
--				--
--				SEG1:= Q(24)&Q(23)&Q(22)&Q(21)&Q(20);
--				SEG2:= Q(19)&Q(18)&Q(17)&Q(16);
--				SEG3:= Q(15)&Q(14)&Q(13)&Q(12);
--				SEG4:= Q(11)&Q(10)&Q(9)&Q(8);
--				SEG5:= Q(7)&Q(6)&Q(5)&Q(4);
--				SEG6:= Q(3)&Q(2)&Q(1)&Q(0);				
--				
--				--write(LINEA_RES, ESPACIO, 	right, 0);	--ESCRIBE UN ESPACIO
--				hwrite(LINEA_RES, VAR_A, right, 5);
--				write(LINEA_RES, ESPACIO, 	right, 5);	--ESCRIBE UN ESPACIO
--				write(LINEA_RES, SEG1, 	right, 5);	--ESCRIBE EL CAMPO Q
--				write(LINEA_RES, ESPACIO, 	right, 2);	--ESCRIBE UN ESPACIO			
--				write(LINEA_RES, SEG2, 	right, 5);	--ESCRIBE EL CAMPO Q
--				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
--				write(LINEA_RES, SEG3, 	right, 5);	--ESCRIBE EL CAMPO Q
--				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
--				write(LINEA_RES, SEG4, 	right, 5);	--ESCRIBE EL CAMPO Q
--				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
--				write(LINEA_RES, SEG5, 	right, 5);	--ESCRIBE EL CAMPO Q
--				write(LINEA_RES, ESPACIO, 	right, 3);	--ESCRIBE UN ESPACIO	
--				write(LINEA_RES, SEG6, 	right, 5);	--ESCRIBE EL CAMPO Q
--		
--				--				
--				--write(LINEA_RES, VAR_Q, 	right, 5);	--ESCRIBE EL CAMPO Q
--				
--				writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
--					  
		  end loop;
	 		  
		  file_close(ARCH_DATOS);
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
   end process;

END;
