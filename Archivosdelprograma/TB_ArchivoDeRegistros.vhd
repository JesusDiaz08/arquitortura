--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:22 10/22/2017
-- Design Name:   
-- Module Name:   C:/Users/reymy/Documents/quinto/arquitortura/Archivosdelprograma/TB_ArchivoDeRegistros.vhd
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
 
ENTITY TB_ArchivoDeRegistros IS
END TB_ArchivoDeRegistros;
 
ARCHITECTURE behavior OF TB_ArchivoDeRegistros IS 
 
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
         SHE : IN  std_logic;
         DIN : INOUT  std_logic_vector(15 downto 0)
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
   signal DIN : std_logic_vector(15 downto 0);

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
          SHE => SHE,
          DIN => DIN
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
   -- Stimulus process
   stim_proc: process
    --Archivos y variables de entrada
    file ARCH_DATOS: TEXT;
    variable LINEA     : line;
	 variable VAR_READ_REGISTER1  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 variable VAR_READ_REGISTER2  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 variable VAR_SHAMT  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 variable VAR_WRITE_REGISTER  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 variable VAR_WRITE_DATA  : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 variable VAR_WR  : STD_LOGIC;
	 variable VAR_SHE  : STD_LOGIC;
	 variable VAR_DIR  : STD_LOGIC;
    
	 --Archivos y variables de salida
	 file ARCH_RES         : TEXT;
	 variable LINEA_RES    : line;
	 VARIABLE CADENA : STRING(1 TO 5);
	 VARIABLE ESPACIO : STRING(1 TO 2);
	 variable VAR_RD1  : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 variable VAR_RD2  : STD_LOGIC_VECTOR(15 DOWNTO 0);
   begin        
        -- Abrimos los archivos
		  -- Puse los datos en binario para hacer las pruebas
		  -- Pero deben de estar en decimal
        file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
		  file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);
		  
		  -- Cabecera del archivo de salida
        CADENA := "RR1  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "RR2  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "SH   ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "WREG ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		  CADENA := "WD   ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
		  CADENA := "WR   ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
		  CADENA := "SHE  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		  CADENA := "DIR  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		  CADENA := "RD1  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);
		  CADENA := "RD2  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);
        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

        for i in 0 to 8 loop
            readline(ARCH_DATOS, LINEA);
				
				hread(LINEA, VAR_READ_REGISTER1);
				ADDR_RD1 <= VAR_READ_REGISTER1;
				
				hread(LINEA, VAR_READ_REGISTER2);
				ADDR_RD2 <= VAR_READ_REGISTER2;
				
				hread(LINEA, VAR_SHAMT);
				SHAMT <= VAR_SHAMT;
				
				hread(LINEA, VAR_WRITE_REGISTER);
				ADDR_WR <= VAR_WRITE_REGISTER;
				
				hread(LINEA, VAR_WRITE_DATA);
				WD <= VAR_WRITE_DATA;
				
				read(LINEA, VAR_WR);
				WR <= VAR_WR;
				
				read(LINEA, VAR_SHE);
				SHE <= VAR_SHE;
				
				read(LINEA, VAR_DIR);
            DIR <= VAR_DIR;
				
				wait until rising_edge(CLK);
				
				VAR_RD1 := DINOUT1;
				VAR_RD2 := DOUT2;
				
				hwrite(LINEA_RES, VAR_READ_REGISTER1, right, 1);
				hwrite(LINEA_RES, VAR_READ_REGISTER2, right, 5);
				hwrite(LINEA_RES, VAR_SHAMT, right, 5);
				hwrite(LINEA_RES, VAR_WRITE_REGISTER, right, 5);
				hwrite(LINEA_RES, VAR_WRITE_DATA, right, 8);
				write(LINEA_RES, VAR_WR, right, 2);
				write(LINEA_RES, VAR_SHE, right, 5);
				write(LINEA_RES, VAR_DIR, right, 5);
				hwrite(LINEA_RES, VAR_RD1, right, 8);
				hwrite(LINEA_RES, VAR_RD2, right, 6);
				
				writeline(ARCH_RES,LINEA_RES);
				
        end loop;
        file_close(ARCH_DATOS);
		  file_close(ARCH_RES);
        wait;
   end process;

END;
