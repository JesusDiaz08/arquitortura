library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Mi_Paquete is

component contador is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : inout  STD_LOGIC_VECTOR (3 downto 0);
           L : in  STD_LOGIC;
           I : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end component;

component registro is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : inout  STD_LOGIC_VECTOR (7 downto 0);
           L : in  STD_LOGIC;
           SH : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC);
end component;

component convertidor is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
           SAL : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component CONTROL is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           INI : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           LA : out  STD_LOGIC;
           SH : out  STD_LOGIC;
           LB : out  STD_LOGIC;
           IB : out  STD_LOGIC;
           SD : out  STD_LOGIC);
end component;

end Mi_Paquete;

package body Mi_Paquete is
 
end Mi_Paquete;
