library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ArchivoDeRegistros is
    GENERIC( 
        NBITS_ADDR : INTEGER := 4;
        NBITS_DATA : INTEGER := 16
    ); 
    Port (
        -------------------------barrel-----------------------------
        --DATA_OUT  : inout  STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); --salida del barrel y entrada al mux
        SHAMT     : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0);
        DIR          : in STD_LOGIC;
        -------------------------registros--------------------------
        CLK       : in  STD_LOGIC;
        WR           : in  STD_LOGIC; 
        ADDR_WR  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- WRITE_REGISTER
        ADDR_RD1  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- READ_REGISTER1
        ADDR_RD2  : in  STD_LOGIC_VECTOR (NBITS_ADDR-1 downto 0); -- READ_REGISTER2
        WD            : in  STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- WRITE_DATA
        DINOUT1  : inout STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- READ_DATA1
        DOUT2         : out STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); -- READ_DATA2
        SHE           : in  STD_LOGIC --shift enable
    );
end ArchivoDeRegistros;

architecture Behavioral of ArchivoDeRegistros is
SIGNAL DATA_OUT  : STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0);
SIGNAL DIN : STD_LOGIC_VECTOR (NBITS_DATA-1 downto 0); --dato de entrada a los registros
TYPE MEM_TYPE IS ARRAY ((2**NBITS_ADDR)-1 DOWNTO 0) OF STD_LOGIC_VECTOR(DIN'RANGE);
SIGNAL MEM : MEM_TYPE;

BEGIN
    PSHIFT : PROCESS( SHAMT, DINOUT1, DIR)
    VARIABLE SHIFT_DATA: STD_LOGIC_VECTOR(NBITS_DATA-1 DOWNTO 0);
    VARIABLE INDICE : INTEGER RANGE -8 TO 23; -- El intervalo anterior me marcaba error
    BEGIN
        IF(DIR='1') THEN                        --es corrimiento a la izq
            SHIFT_DATA:= DINOUT1;
                FOR I IN 0 TO 3 LOOP
                    FOR J IN 15 DOWNTO 0 LOOP
                        IF(SHAMT(I)='1') THEN
                            INDICE:= J-2**I; 
                            IF (INDICE < 0)THEN 
                                SHIFT_DATA(J):='0';
                            ELSE
                            SHIFT_DATA(J):= SHIFT_DATA(INDICE);
                            END IF;
                        END IF; 
                    END LOOP;
                END LOOP;
                DATA_OUT <= SHIFT_DATA;
        ELSE                                        --es corrimiento a la der
            SHIFT_DATA:= DINOUT1;
                FOR I IN 0 TO 3 LOOP
                    FOR J IN 0 TO 15 LOOP
                        IF(SHAMT(I)='1') THEN
                            INDICE:= J+2**I; 
                            IF (INDICE > 15)THEN 
                                SHIFT_DATA(J):='0';
                            ELSE
                            SHIFT_DATA(J):= SHIFT_DATA(INDICE);
                            END IF;
                        END IF; 
                    END LOOP;
                END LOOP;
                DATA_OUT <= SHIFT_DATA;
        END IF;
    END PROCESS PSHIFT;

-- ESCRITURA DE MEMORIA
    PMEM : PROCESS( CLK, SHE, DATA_OUT, WD)
    BEGIN
        --Elegimos que dato de escritura tomara el dato de entrada
		  IF (SHE = '1') THEN
			   DIN <= DATA_OUT;
		  ELSE
		      DIN <= WD;
		  END IF;
        IF( RISING_EDGE(CLK) )THEN
            IF( WR = '1' )THEN
                MEM(CONV_INTEGER(ADDR_WR)) <= DIN;
            END IF;
        END IF;
    END PROCESS PMEM;
	 
-- LECTURA DE MEMORIA
    DINOUT1 <= MEM(CONV_INTEGER(ADDR_RD1));
    DOUT2 <= MEM(CONV_INTEGER(ADDR_RD2));
    
end Behavioral;



