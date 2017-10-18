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
         DIN : IN  std_logic_vector(DATA_N-1 downto 0);
         DOUT : OUT  std_logic_vector(DATA_N-1 downto 0);
         ADR_WR : IN  std_logic_vector(ADDR_N-1 downto 0);
         WREN : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic_vector(DATA_N-1 downto 0) := (others => '0');
   signal ADR_WR : std_logic_vector(ADDR_N-1 downto 0) := (others => '0');
   signal WREN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal DOUT : std_logic_vector(DATA_N-1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaD PORT MAP (
          DIN => DIN,
          DOUT => DOUT,
          ADR_WR => ADR_WR,
          WREN => WREN,
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
	VARIABLE VAR_DOUT : STD_LOGIC_VECTOR(DATA_N-1 DOWNTO 0);
	--Archivos y variables de entrada
	file ARCH_DATOS: TEXT;
	variable LINEA     : line;
   variable VAR_DIN   : STD_LOGIC_VECTOR(DATA_N-1 DOWNTO 0);
	variable VAR_ADR_WR : STD_LOGIC_VECTOR(ADDR_N-1 DOWNTO 0);
	variable VAR_WREN  : STD_LOGIC;
		
		  --
	VARIABLE CADENA : STRING(1 TO 5);
	VARIABLE ESPACIO : STRING(1 TO 2);
		  --
		
   begin		
	file_open(ARCH_DATOS, "DATOS.TXT", READ_MODE);
   file_open(ARCH_RES, "RESULTADOS.TXT", WRITE_MODE);

        CADENA := "DIN  ";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := "ADRWR";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := " WREN";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH);  
		  CADENA := " DOUT";
        write(LINEA_RES, CADENA, right, CADENA'LENGTH); 
        writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

        for i in 0 to 11 loop
		  
				readline(ARCH_DATOS, LINEA);

				Hread(LINEA, VAR_DIN); --Leemos el din
				DIN<= VAR_DIN;
				Hread(LINEA, VAR_ADR_WR); -- Leemos la direccion a donde se escribira (en hexadecimal)
				ADR_WR<= VAR_ADR_WR;
				read(LINEA, VAR_WREN); --Leemos si se escribe o lee
				WREN<= VAR_WREN;
				
				wait until rising_edge(CLK);
				VAR_DOUT := DOUT;
		
				hwrite(LINEA_RES, VAR_DIN ,right, 3);
				write(LINEA_RES, ESPACIO ,right, 2);
				hwrite(LINEA_RES, VAR_ADR_WR ,right, 3);
				write(LINEA_RES, VAR_WREN ,right, 4);
				write(LINEA_RES, ESPACIO ,right, 3);
			   hwrite(LINEA_RES, VAR_DOUT ,right, 3);	--ESCRIBE EL CAMPO DOUT			
				writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
				  
		  end loop;
	 		  
		  file_close(ARCH_DATOS);
		  file_close(ARCH_RES);  -- cierra el archivo
		  wait;
   end process;

END;
