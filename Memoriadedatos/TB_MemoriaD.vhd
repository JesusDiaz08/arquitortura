LIBRARY ieee;
LIBRARY STD;
USE ieee.std_logic_1164.ALL;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_MemoriaD IS
	 GENERIC(
		DATA_N: INTEGER:=16;
		ADDR_N: INTEGER:=8
	 );
END TB_MemoriaD;
 
ARCHITECTURE behavior OF TB_MemoriaD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaD
    PORT(
         Di : IN  std_logic_vector(DATA_N-1 downto 0);
         Do : OUT  std_logic_vector(DATA_N-1 downto 0);
         ADDR : IN  std_logic_vector(ADDR_N-1 downto 0);
         WD : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Di : std_logic_vector(DATA_N-1 downto 0) := (others => '0');
   signal ADDR : std_logic_vector(ADDR_N-1 downto 0) := (others => '0');
   signal WD : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Do : std_logic_vector(DATA_N-1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaD PORT MAP (
          Di => Di,
          Do => Do,
          ADDR => ADDR,
          WD => WD,
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
	VARIABLE VAR_Do : STD_LOGIC_VECTOR(DATA_N-1 DOWNTO 0);
	--Archivos y variables de entrada
	file ARCH_DATOS: TEXT;
	variable LINEA     : line;
   variable VAR_Di   : STD_LOGIC_VECTOR(DATA_N-1 DOWNTO 0);
	variable VAR_ADDR : STD_LOGIC_VECTOR(ADDR_N-1 DOWNTO 0);
	variable VAR_WD  : STD_LOGIC;
		
		  --
	VARIABLE CADENA : STRING(1 TO 5);
	VARIABLE ESPACIO : STRING(1 TO 2);
		  --
		
   begin		
	file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
   file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);

        CADENA := "Di   ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := " ADDR";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "  WD ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "  Do ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

        for i in 0 to 11 loop
		  
				readline(ARCH_DATOS, LINEA);

				Hread(LINEA, VAR_Di); --Leemos el Di
				Di<= VAR_Di;
				Hread(LINEA, VAR_ADDR); -- Leemos la direccion a donde se escribira (en hexadecimal)
				ADDR<= VAR_ADDR;
				read(LINEA, VAR_WD); --Leemos si se escribe o lee
				WD<= VAR_WD;
				
				wait until rising_edge(CLK);
				VAR_Do := Do;
		
				hwrite(LINEA_RES, VAR_Di ,right, 3);
				write(LINEA_RES, ESPACIO ,right, 2);
				hwrite(LINEA_RES, VAR_ADDR ,right, 3);
				write(LINEA_RES, VAR_WD ,right, 4);
				write(LINEA_RES, ESPACIO ,right, 3);
			   hwrite(LINEA_RES, VAR_Do ,right, 3);	--ESCRIBE EL CAMPO Do			
				writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
				  
		  end loop;
	 		  
		  file_close(ARCH_DATOS);
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
   end process;

END;
