library IEEE;
LIBRARY WORK;		
use work.Paquete_Maestro.all; 
use IEEE.STD_LOGIC_1164.ALL;
-------------------------------------------------------Archivo principal
entity PRINCIPAL is
 Port ( 
	  OSC_CLK : 		 in  STD_LOGIC; -- clock real
	  REAL_CLR : 		 in  STD_LOGIC; -- clear real
	  DATA_IN  :  out STD_LOGIC_VECTOR(15 downto 0);
	  WRITE_DATA : out STD_LOGIC
	  --DATA_ADDRESS : OUT std_logic_vector(15 downto 0)
	);	
end PRINCIPAL;

architecture Behavioral of PRINCIPAL is
   -- bloque auxiliar
	SIGNAL CLR : STD_LOGIC;
	
   -- divisor de frecuencia
	SIGNAL CLK : STD_LOGIC;
   SIGNAL FRECUENCIA_CONT : INTEGER RANGE 0 TO 50000000-1;
	SIGNAL NOT_OSC_CLK : STD_LOGIC;
	
	--memoria del prog
	SIGNAL BusAzulrey : STD_LOGIC_VECTOR (15 downto 0);
	SIGNAL Bus_25 : STD_LOGIC_VECTOR (24 downto 0);
	--pila
	SIGNAL Din_pila : STD_LOGIC_VECTOR (15 downto 0);
	SIGNAL WPC, DW, UP : 	STD_LOGIC;
	SIGNAL SEL :STD_LOGIC_VECTOR(2 DOWNTO 0);
	--ALU
	SIGNAL AINVERT,BINVERT: STD_LOGIC;
	SIGNAL OP: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL BANDERAS, ALUOP: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL BusAzulCielo,BUSOP1,BUSOP2: STD_LOGIC_VECTOR (15 DOWNTO 0);
	--Memoria de datos
	SIGNAL BusDo: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL BusSDMD: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL WD: STD_LOGIC;
	--Extensor signo, direccion
	SIGNAL BUSDIR, BUSEXT: STD_LOGIC_VECTOR (15 DOWNTO 0);
	--Archivo de egistros
	SIGNAL BUSSR2: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL BUSWD: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL BUSRD1, BUSRD2: STD_LOGIC_VECTOR (15 DOWNTO 0);
	--muxes
	SIGNAL BUSVERDEPASTO: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL BUSROJO: STD_LOGIC_VECTOR (15 DOWNTO 0);
	--UC 
	SIGNAL Bus_20: STD_LOGIC_VECTOR (19 DOWNTO 0);
	
begin
-----------------------------------------------------LATCH
	LATCH : PROCESS(REAL_CLR, OSC_CLK)
		BEGIN
			NOT_OSC_CLK <= NOT(OSC_CLK);
			IF (NOT_OSC_CLK = '1') THEN
				CLR <= REAL_CLR;
			END IF;
	END PROCESS LATCH;
------------------------------------------------------DIVISOR DE FRECUENCIA
	DIVISOR : PROCESS(CLR, OSC_CLK)
	BEGIN
		IF (CLR = '1') THEN
			FRECUENCIA_CONT <= 0;
         CLK <=  '1';
		ELSIF(RISING_EDGE(OSC_CLK)) THEN
			FRECUENCIA_CONT <= FRECUENCIA_CONT + 1;
			IF (FRECUENCIA_CONT = 0) THEN
				CLK <= NOT CLK; --sure??
			END IF;
		END IF;
	END PROCESS DIVISOR;
----------------------------------------------------Memoria del progrmama
	MEMORIA_PROGRAMA : programa PORT MAP( 
			A => BusAzulrey,
			Q => Bus_25
		);
----------------------------------------------------PIla del programa
	PILA_PROGRAMA: Pila PORT MAP(
			D => Din_pila,
			Q => BusAzulrey,
			WPC => Bus_20(17),
			CLR => CLR,
			CLK => CLK,
			UP => Bus_20(19),
			DW => Bus_20(18)
		);
--------------------------------------------------------Unidad aritmetica logica
	ALU_PROGRAMA: ALU PORT MAP(
			AINVERT => Bus_20(6), 
			BINVERT => Bus_20(5),
			OP		  => Bus_20(4 downto 3),
			RES	  => BusAzulCielo,
		   A		  => BUSOP1,
			B	     => BUSOP2,
			BC		  => BANDERAS(0), --CHECAR
			BZ		  => BANDERAS(1),	
			BN		  => BANDERAS(2),
			BOV	  => BANDERAS(3)		
		);
---------------------------------------------------------------Memoria de datos	
	MEMORIA_DATOS : MemoriaD PORT MAP( 
			Di		=>	BUSRD2,
			Do		=>	BusDo,
			ADDR	=> BusSDMD,
			WD		=>	Bus_20(1),
			CLK	=> CLK
		);		
-----------------------------------------------------------------Extensor de signo
	EXTENSOR_SIGNO : EXTENSORSIG PORT MAP( 
			DIN		=>	Bus_25(11 DOWNTO 0),
			DOUT		=>	BUSEXT
		);	
------------------------------------------------------------------Extensor de direccion
	EXTENSOR_DIRECCION : EXTADD PORT MAP( 
			DIN		=>	Bus_25(11 DOWNTO 0),
			DOUT		=>	BUSDIR
		);	
-------------------------------------------------------------------Archivo de registros	
	ARCHIVO_REGISTROS : ArchivoDeRegistros PORT MAP( 
			SHAMT		=> Bus_25(7 DOWNTO 4),
			DIR		=> Bus_20(12),
			CLK		=> CLK,
			WR			=> Bus_20(11),
			ADDR_WR	=> Bus_25(19 DOWNTO 16),
			ADDR_RD1	=> Bus_25(15 DOWNTO 12),
			ADDR_RD2 => BUSSR2,
			WD			=> BUSWD,
			DINOUT1	=> BUSRD1,
			DOUT2		=> BUSRD2,
			SHE		=> Bus_20(13)
		);		
-------------------------------------------------------------------Unidad de control
	UNIDAD_CONTR : UNIDAD_CONTROL PORT MAP( 
			CODE_FUN => Bus_25(3 DOWNTO 0),
			CODE_OPE => Bus_25(24 DOWNTO 20),
			BANDERAS => BANDERAS,
			LF 		=> Bus_20(10),
			S  		=> Bus_20,
			CLK 		=> CLK,
			CLR 		=> CLR
		);			
-------------------------------------------------------------------Muxes del programa
	---MUX SOP1
	BUSOP1 <=  BUSRD1 WHEN (Bus_20(8) = '0') ELSE BusAzulrey;
	--MUX SDMD
	BusSDMD <=  BusAzulCielo WHEN (Bus_20(2) = '0') ELSE Bus_25(15 DOWNTO 0);
	--MUX SR
	BUSVERDEPASTO <=  BusDo WHEN (Bus_20(0) = '0') ELSE BusAzulCielo;
	--MUX SWD
	BUSWD <=  Bus_25(15 DOWNTO 0) WHEN (Bus_20(14) = '0') ELSE BUSVERDEPASTO;	
	--MUX SR2
	BUSSR2 <=  Bus_25(11 DOWNTO 8) WHEN (Bus_20(15) = '0') ELSE Bus_25(19 DOWNTO 16);
	--MUX SDMP
	Din_pila <=  Bus_25(15 DOWNTO 0) WHEN (Bus_20(16) = '0') ELSE BUSVERDEPASTO;
	--MUX SEXT
	BUSROJO <=  BUSEXT WHEN (Bus_20(9) = '0') ELSE BUSDIR;
	--MUX SOP2
	BUSOP2 <=  BUSRD2 WHEN (Bus_20(7) = '0') ELSE BUSROJO;
	
	--Salidas del microprocesador
	--Datos de entrada de la memoria de datos
	DATA_IN<=BUSRD2;
	--Write data de la memoria de datos
	WRITE_DATA<=Bus_20(2);
	--Direcciones de la memoria de datos
	--DATA_ADDRESS<=BusSDMD;
	
end Behavioral;

