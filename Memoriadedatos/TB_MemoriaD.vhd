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
         --REN : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ADR_W : std_logic_vector(3 downto 0) := (others => '0');
   signal ADR_R : std_logic_vector(3 downto 0) := (others => '0');
   signal WREN : std_logic := '0';
   --signal REN : std_logic := '0';
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
          --REN => REN,
          CLK => CLK
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
	VARIABLE VAR_DOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
	--Archivos y variables de entrada
	file ARCH_DATOS: TEXT;
	variable LINEA     : line;
   variable VAR_DIN   : STD_LOGIC_VECTOR(7 DOWNTO 0);
	variable VAR_ADR_W : STD_LOGIC_VECTOR(3 DOWNTO 0);
	variable VAR_WREN  : STD_LOGIC;
	variable VAR_ADR_R : STD_LOGIC_VECTOR(3 DOWNTO 0);
		
		  --
		VARIABLE CADENA : STRING(1 TO 5);
		--VARIABLE ESPACIO : STRING(1 TO 2);
		  --
		
   begin		
	file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
   file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);

        CADENA := "LEIDO";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);  
        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

        for i in 0 to 1 loop
		  
				readline(ARCH_DATOS, LINEA);

				read(LINEA, VAR_DIN); --Leemos el din
				DIN<= VAR_DIN;
				Hread(LINEA, VAR_ADR_W); -- Leemos la direccion a donde se escribira (en hexadecimal)
				ADR_W<= VAR_ADR_W;
				read(LINEA, VAR_WREN); --Leemos si se escribe o lee
				WREN<= VAR_WREN;
				
				Hread(LINEA, VAR_ADR_R); -- Leemos la direccion de donde se leera el dato(en hexadecimal)
				ADR_R<=VAR_ADR_R;
				wait until rising_edge(CLK);
				VAR_DOUT := DOUT;
		
			   write(LINEA_RES, VAR_DOUT ,right, 5);	--ESCRIBE EL CAMPO DOUT			
				writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
				  
		  end loop;
	 		  
		  file_close(ARCH_DATOS);
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
   end process;

END;
