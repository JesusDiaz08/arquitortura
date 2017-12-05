LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

ENTITY TB IS
END TB;
 
ARCHITECTURE behavior OF TB IS 
 
    COMPONENT UNIDAD_CONTROL
    PORT(
         CODE_FUN : IN  std_logic_vector(3 downto 0);
         CODE_OPE : IN  std_logic_vector(4 downto 0);
         BANDERAS : IN  std_logic_vector(3 downto 0);
         LF : IN  std_logic;
         S : OUT  std_logic_vector(19 downto 0);
         CLK : IN  std_logic;
         CLR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CODE_FUN : std_logic_vector(3 downto 0) := (others => '0');
   signal CODE_OPE : std_logic_vector(4 downto 0) := (others => '0');
   signal BANDERAS : std_logic_vector(3 downto 0) := (others => '0');
   signal LF : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(19 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UNIDAD_CONTROL PORT MAP (
          CODE_FUN => CODE_FUN,
          CODE_OPE => CODE_OPE,
          BANDERAS => BANDERAS,
          LF => LF,
          S => S,
          CLK => CLK,
          CLR => CLR
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
      file ARCH_ENT : TEXT;
		variable LINEA_ENT : line;		
		
		file ARCH_SAL : TEXT;
		variable LINEA_SAL : line;
		
		VARIABLE VAR_CODE	 		: STD_LOGIC_VECTOR(4 DOWNTO 0);
		VARIABLE VAR_FUNC	 		: STD_LOGIC_VECTOR(3 DOWNTO 0);
		VARIABLE VAR_FLAGS	 	: STD_LOGIC_VECTOR(3 DOWNTO 0);
		VARIABLE VAR_CLR	 		: STD_LOGIC;
		VARIABLE VAR_LF		 	: STD_LOGIC;
		
		VARIABLE CADENA : STRING(1 TO 10);
		VARIABLE CADENA2 : STRING(1 TO 21);
		VARIABLE CADENA3 : STRING(1 TO 2);
		VARIABLE CADENA4 : STRING(1 TO 15);
	
	
   begin	
		file_open(ARCH_ENT, "vectores.txt", READ_MODE); 	
		file_open(ARCH_SAL, "resultados.txt", WRITE_MODE);	
		
		--Encabezado para el Archivo de Salida
		CADENA := "OP_CODE   ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "FUN_CODE  ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "BANDERAS  ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA := "CLR       ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);	
		CADENA4 := "LF             ";
		write(LINEA_SAL, CADENA4, right, CADENA4'LENGTH);
		CADENA := "MICRO     ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);
		CADENA := "    NIVEL ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH);
		
		writeline(ARCH_SAL,LINEA_SAL);
		
		
		WHILE NOT ENDFILE(ARCH_ENT) LOOP 
		
			readline(ARCH_ENT,LINEA_ENT);
			
			read(LINEA_ENT, VAR_CODE);
			CODE_OPE <= VAR_CODE;
			
			read(LINEA_ENT,  VAR_FUNC);
			CODE_FUN <= VAR_FUNC; 			
			
			read(LINEA_ENT,  VAR_FLAGS);
			BANDERAS(3) <= VAR_FLAGS(3);
			BANDERAS(2) <= VAR_FLAGS(2);
			BANDERAS(1) <= VAR_FLAGS(1);
			BANDERAS(0) <= VAR_FLAGS(0);
			
			read(LINEA_ENT,  VAR_CLR);
			CLR <= VAR_CLR;
			
			read(LINEA_ENT,  VAR_LF);
			LF <= VAR_LF;

			
			
			WAIT UNTIL FALLING_EDGE(CLK);
			
			write(LINEA_SAL, VAR_CODE, right, 5);
			write(LINEA_SAL, "     ", right, 5);	
			
			write(LINEA_SAL, VAR_FUNC , right, 4);	
			write(LINEA_SAL, "      " , right, 6);	
			
			write(LINEA_SAL, VAR_FLAGS , right, 4);	
			write(LINEA_SAL, "       " , right, 6);	
			
			write(LINEA_SAL, CLR , right, 1);	
			write(LINEA_SAL, "          " , right, 9);	

			write(LINEA_SAL, LF , right, 1);	
			write(LINEA_SAL, "    " , right, 4);
			
			write(LINEA_SAL, S , right, 3);	
			write(LINEA_SAL, "  " , right, 2);	
			
			write(LINEA_SAL, "ALTO", right, 4);
			
			writeline(ARCH_SAL,LINEA_SAL);
			
			
			WAIT UNTIL RISING_EDGE(CLK);
			
			write(LINEA_SAL, VAR_CODE, right, 5);
			write(LINEA_SAL, "     ", right, 5);	
			
			write(LINEA_SAL, VAR_FUNC , right, 4);	
			write(LINEA_SAL, "      " , right, 6);	
			
			write(LINEA_SAL, VAR_FLAGS , right, 4);	
			write(LINEA_SAL, "       " , right, 6);	
			
			write(LINEA_SAL, CLR , right, 1);	
			write(LINEA_SAL, "          " , right, 9);	

			write(LINEA_SAL, LF , right, 1);	
			write(LINEA_SAL, "    " , right, 4);
			
			write(LINEA_SAL, S , right, 3);	
			write(LINEA_SAL, "  " , right, 2);	
			
			write(LINEA_SAL, "BAJO", right, 4);
			
			writeline(ARCH_SAL,LINEA_SAL);
		
		
		END LOOP;
		
   end process;

END;
