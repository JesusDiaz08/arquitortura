--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ArchivoDeRegistros_translate.vhd
-- /___/   /\     Timestamp: Mon Oct 23 18:14:24 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ArchivoDeRegistros -w -dir netgen/translate -ofmt vhdl -sim ArchivoDeRegistros.ngd ArchivoDeRegistros_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: ArchivoDeRegistros.ngd
-- Output file	: C:\Users\reymy\Documents\quinto\arquitortura\Archivosdelprograma\netgen\translate\ArchivoDeRegistros_translate.vhd
-- # of Entities	: 1
-- Design Name	: ArchivoDeRegistros
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ArchivoDeRegistros is
  port (
    DIR : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    WR : in STD_LOGIC := 'X'; 
    SHE : in STD_LOGIC := 'X'; 
    SHAMT : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADDR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADDR_RD1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADDR_RD2 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    WD : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    DATA_OUT : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    DINOUT1 : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    DOUT2 : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end ArchivoDeRegistros;

architecture Structure of ArchivoDeRegistros is
  signal SHAMT_0_IBUF_107 : STD_LOGIC; 
  signal SHAMT_1_IBUF_108 : STD_LOGIC; 
  signal SHAMT_2_IBUF_109 : STD_LOGIC; 
  signal SHAMT_3_IBUF_110 : STD_LOGIC; 
  signal ADDR_WR_3_IBUF_111 : STD_LOGIC; 
  signal ADDR_WR_2_IBUF_112 : STD_LOGIC; 
  signal ADDR_WR_1_IBUF_113 : STD_LOGIC; 
  signal ADDR_WR_0_IBUF_114 : STD_LOGIC; 
  signal ADDR_RD1_3_IBUF_115 : STD_LOGIC; 
  signal ADDR_RD1_2_IBUF_116 : STD_LOGIC; 
  signal ADDR_RD1_1_IBUF_117 : STD_LOGIC; 
  signal ADDR_RD1_0_IBUF_118 : STD_LOGIC; 
  signal ADDR_RD2_3_IBUF_119 : STD_LOGIC; 
  signal ADDR_RD2_2_IBUF_120 : STD_LOGIC; 
  signal ADDR_RD2_1_IBUF_121 : STD_LOGIC; 
  signal ADDR_RD2_0_IBUF_122 : STD_LOGIC; 
  signal WD_15_IBUF_123 : STD_LOGIC; 
  signal WD_14_IBUF_124 : STD_LOGIC; 
  signal WD_13_IBUF_125 : STD_LOGIC; 
  signal WD_12_IBUF_126 : STD_LOGIC; 
  signal WD_11_IBUF_127 : STD_LOGIC; 
  signal WD_10_IBUF_128 : STD_LOGIC; 
  signal WD_9_IBUF_129 : STD_LOGIC; 
  signal WD_8_IBUF_130 : STD_LOGIC; 
  signal WD_7_IBUF_131 : STD_LOGIC; 
  signal WD_6_IBUF_132 : STD_LOGIC; 
  signal WD_5_IBUF_133 : STD_LOGIC; 
  signal WD_4_IBUF_134 : STD_LOGIC; 
  signal WD_3_IBUF_135 : STD_LOGIC; 
  signal WD_2_IBUF_136 : STD_LOGIC; 
  signal WD_1_IBUF_137 : STD_LOGIC; 
  signal WD_0_IBUF_138 : STD_LOGIC; 
  signal DIR_IBUF_139 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal WR_IBUF_141 : STD_LOGIC; 
  signal SHE_IBUF_142 : STD_LOGIC; 
  signal DINOUT1_15_OBUF_143 : STD_LOGIC; 
  signal DINOUT1_14_OBUF_144 : STD_LOGIC; 
  signal DINOUT1_13_OBUF_145 : STD_LOGIC; 
  signal DINOUT1_12_OBUF_146 : STD_LOGIC; 
  signal DINOUT1_11_OBUF_147 : STD_LOGIC; 
  signal DINOUT1_10_OBUF_148 : STD_LOGIC; 
  signal DINOUT1_9_OBUF_149 : STD_LOGIC; 
  signal DINOUT1_8_OBUF_150 : STD_LOGIC; 
  signal DINOUT1_7_OBUF_151 : STD_LOGIC; 
  signal DINOUT1_6_OBUF_152 : STD_LOGIC; 
  signal DINOUT1_5_OBUF_153 : STD_LOGIC; 
  signal DINOUT1_4_OBUF_154 : STD_LOGIC; 
  signal DINOUT1_3_OBUF_155 : STD_LOGIC; 
  signal DINOUT1_2_OBUF_156 : STD_LOGIC; 
  signal DINOUT1_1_OBUF_157 : STD_LOGIC; 
  signal DINOUT1_0_OBUF_158 : STD_LOGIC; 
  signal DOUT2_15_OBUF_159 : STD_LOGIC; 
  signal DOUT2_14_OBUF_160 : STD_LOGIC; 
  signal DOUT2_13_OBUF_161 : STD_LOGIC; 
  signal DOUT2_12_OBUF_162 : STD_LOGIC; 
  signal DOUT2_11_OBUF_163 : STD_LOGIC; 
  signal DOUT2_10_OBUF_164 : STD_LOGIC; 
  signal DOUT2_9_OBUF_165 : STD_LOGIC; 
  signal DOUT2_8_OBUF_166 : STD_LOGIC; 
  signal DOUT2_7_OBUF_167 : STD_LOGIC; 
  signal DOUT2_6_OBUF_168 : STD_LOGIC; 
  signal DOUT2_5_OBUF_169 : STD_LOGIC; 
  signal DOUT2_4_OBUF_170 : STD_LOGIC; 
  signal DOUT2_3_OBUF_171 : STD_LOGIC; 
  signal DOUT2_2_OBUF_172 : STD_LOGIC; 
  signal DOUT2_1_OBUF_173 : STD_LOGIC; 
  signal DOUT2_0_OBUF_174 : STD_LOGIC; 
  signal DATA_OUT_15_OBUF_191 : STD_LOGIC; 
  signal DATA_OUT_14_OBUF_192 : STD_LOGIC; 
  signal DATA_OUT_13_OBUF_193 : STD_LOGIC; 
  signal DATA_OUT_12_OBUF_194 : STD_LOGIC; 
  signal DATA_OUT_11_OBUF_195 : STD_LOGIC; 
  signal DATA_OUT_10_OBUF_196 : STD_LOGIC; 
  signal DATA_OUT_9_OBUF_197 : STD_LOGIC; 
  signal DATA_OUT_8_OBUF_198 : STD_LOGIC; 
  signal DATA_OUT_7_OBUF_199 : STD_LOGIC; 
  signal DATA_OUT_6_OBUF_200 : STD_LOGIC; 
  signal DATA_OUT_5_OBUF_201 : STD_LOGIC; 
  signal DATA_OUT_4_OBUF_202 : STD_LOGIC; 
  signal DATA_OUT_3_OBUF_203 : STD_LOGIC; 
  signal DATA_OUT_2_OBUF_204 : STD_LOGIC; 
  signal DATA_OUT_1_OBUF_205 : STD_LOGIC; 
  signal DATA_OUT_0_OBUF_206 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal SHAMT_1_mmx_out23 : STD_LOGIC; 
  signal SHAMT_1_mmx_out22 : STD_LOGIC; 
  signal SHAMT_1_mmx_out21 : STD_LOGIC; 
  signal SHAMT_1_mmx_out19 : STD_LOGIC; 
  signal SHAMT_1_mmx_out18 : STD_LOGIC; 
  signal SHAMT_0_mmx_out24 : STD_LOGIC; 
  signal SHAMT_1_mmx_out17 : STD_LOGIC; 
  signal SHAMT_1_mmx_out15 : STD_LOGIC; 
  signal SHAMT_1_mmx_out14 : STD_LOGIC; 
  signal SHAMT_0_mmx_out22 : STD_LOGIC; 
  signal SHAMT_1_mmx_out12 : STD_LOGIC; 
  signal SHAMT_1_mmx_out11 : STD_LOGIC; 
  signal SHAMT_1_mmx_out10 : STD_LOGIC; 
  signal SHAMT_0_mmx_out15 : STD_LOGIC; 
  signal SHAMT_0_mmx_out13 : STD_LOGIC; 
  signal SHAMT_1_mmx_out8 : STD_LOGIC; 
  signal SHAMT_1_mmx_out7 : STD_LOGIC; 
  signal SHAMT_0_mmx_out9 : STD_LOGIC; 
  signal SHAMT_0_mmx_out8 : STD_LOGIC; 
  signal SHAMT_0_mmx_out6 : STD_LOGIC; 
  signal SHAMT_1_mmx_out6 : STD_LOGIC; 
  signal SHAMT_1_mmx_out5 : STD_LOGIC; 
  signal SHAMT_1_mmx_out4 : STD_LOGIC; 
  signal SHAMT_1_mmx_out3 : STD_LOGIC; 
  signal SHAMT_1_mmx_out2 : STD_LOGIC; 
  signal SHAMT_1_mmx_out1 : STD_LOGIC; 
  signal SHAMT_1_mmx_out : STD_LOGIC; 
  signal Mmux_DATA_OUT10 : STD_LOGIC; 
  signal Mmux_DATA_OUT101_236 : STD_LOGIC; 
  signal Mmux_DATA_OUT102_237 : STD_LOGIC; 
  signal Mmux_DATA_OUT21_238 : STD_LOGIC; 
  signal Mmux_DATA_OUT2 : STD_LOGIC; 
  signal Mmux_DATA_OUT22 : STD_LOGIC; 
  signal Mmux_DATA_OUT24 : STD_LOGIC; 
  signal Mmux_DATA_OUT141 : STD_LOGIC; 
  signal Mmux_DATA_OUT142_243 : STD_LOGIC; 
  signal Mmux_DATA_OUT241_244 : STD_LOGIC; 
  signal Mmux_DATA_OUT3 : STD_LOGIC; 
  signal Mmux_DATA_OUT31_246 : STD_LOGIC; 
  signal Mmux_DATA_OUT16 : STD_LOGIC; 
  signal Mmux_DATA_OUT161_248 : STD_LOGIC; 
  signal Mmux_DATA_OUT20 : STD_LOGIC; 
  signal Mmux_DATA_OUT201_250 : STD_LOGIC; 
  signal Mmux_DATA_OUT8 : STD_LOGIC; 
  signal Mmux_DATA_OUT81_252 : STD_LOGIC; 
  signal Mmux_DATA_OUT12 : STD_LOGIC; 
  signal Mmux_DATA_OUT121_254 : STD_LOGIC; 
  signal Mmux_DATA_OUT122_255 : STD_LOGIC; 
  signal Mmux_DATA_OUT4 : STD_LOGIC; 
  signal Mmux_DATA_OUT41_257 : STD_LOGIC; 
  signal Mmux_DATA_OUT18 : STD_LOGIC; 
  signal Mmux_DATA_OUT181_259 : STD_LOGIC; 
  signal Mmux_DATA_OUT221_260 : STD_LOGIC; 
  signal Mmux_DATA_OUT222_261 : STD_LOGIC; 
  signal Mmux_DATA_OUT231_262 : STD_LOGIC; 
  signal Mmux_DATA_OUT232_263 : STD_LOGIC; 
  signal Mmux_DATA_OUT19 : STD_LOGIC; 
  signal Mmux_DATA_OUT191_265 : STD_LOGIC; 
  signal Mmux_DATA_OUT6 : STD_LOGIC; 
  signal Mmux_DATA_OUT61_267 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal Mram_MEM42_SPO : STD_LOGIC; 
  signal Mram_MEM41_SPO : STD_LOGIC; 
  signal Mram_MEM43_SPO : STD_LOGIC; 
  signal Mram_MEM44_SPO : STD_LOGIC; 
  signal Mram_MEM131_SPO : STD_LOGIC; 
  signal Mram_MEM134_SPO : STD_LOGIC; 
  signal Mram_MEM132_SPO : STD_LOGIC; 
  signal Mram_MEM133_SPO : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_106 : STD_LOGIC; 
  signal NLW_Mram_MEM2_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM2_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM3_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM3_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM11_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM11_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM12_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_MEM12_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal DIN : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N1
    );
  Mram_MEM2 : X_RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      DIA(1) => DIN(1),
      DIA(0) => DIN(0),
      DIB(1) => DIN(3),
      DIB(0) => DIN(2),
      DIC(1) => DIN(5),
      DIC(0) => DIN(4),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => ADDR_RD1_3_IBUF_115,
      ADDRA(2) => ADDR_RD1_2_IBUF_116,
      ADDRA(1) => ADDR_RD1_1_IBUF_117,
      ADDRA(0) => ADDR_RD1_0_IBUF_118,
      ADDRB(4) => N1,
      ADDRB(3) => ADDR_RD1_3_IBUF_115,
      ADDRB(2) => ADDR_RD1_2_IBUF_116,
      ADDRB(1) => ADDR_RD1_1_IBUF_117,
      ADDRB(0) => ADDR_RD1_0_IBUF_118,
      ADDRC(4) => N1,
      ADDRC(3) => ADDR_RD1_3_IBUF_115,
      ADDRC(2) => ADDR_RD1_2_IBUF_116,
      ADDRC(1) => ADDR_RD1_1_IBUF_117,
      ADDRC(0) => ADDR_RD1_0_IBUF_118,
      ADDRD(4) => N1,
      ADDRD(3) => ADDR_WR_3_IBUF_111,
      ADDRD(2) => ADDR_WR_2_IBUF_112,
      ADDRD(1) => ADDR_WR_1_IBUF_113,
      ADDRD(0) => ADDR_WR_0_IBUF_114,
      DOA(1) => DINOUT1_1_OBUF_157,
      DOA(0) => DINOUT1_0_OBUF_158,
      DOB(1) => DINOUT1_3_OBUF_155,
      DOB(0) => DINOUT1_2_OBUF_156,
      DOC(1) => DINOUT1_5_OBUF_153,
      DOC(0) => DINOUT1_4_OBUF_154,
      DOD(1) => NLW_Mram_MEM2_DOD_1_UNCONNECTED,
      DOD(0) => NLW_Mram_MEM2_DOD_0_UNCONNECTED
    );
  Mram_MEM3 : X_RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      DIA(1) => DIN(7),
      DIA(0) => DIN(6),
      DIB(1) => DIN(9),
      DIB(0) => DIN(8),
      DIC(1) => DIN(11),
      DIC(0) => DIN(10),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => ADDR_RD1_3_IBUF_115,
      ADDRA(2) => ADDR_RD1_2_IBUF_116,
      ADDRA(1) => ADDR_RD1_1_IBUF_117,
      ADDRA(0) => ADDR_RD1_0_IBUF_118,
      ADDRB(4) => N1,
      ADDRB(3) => ADDR_RD1_3_IBUF_115,
      ADDRB(2) => ADDR_RD1_2_IBUF_116,
      ADDRB(1) => ADDR_RD1_1_IBUF_117,
      ADDRB(0) => ADDR_RD1_0_IBUF_118,
      ADDRC(4) => N1,
      ADDRC(3) => ADDR_RD1_3_IBUF_115,
      ADDRC(2) => ADDR_RD1_2_IBUF_116,
      ADDRC(1) => ADDR_RD1_1_IBUF_117,
      ADDRC(0) => ADDR_RD1_0_IBUF_118,
      ADDRD(4) => N1,
      ADDRD(3) => ADDR_WR_3_IBUF_111,
      ADDRD(2) => ADDR_WR_2_IBUF_112,
      ADDRD(1) => ADDR_WR_1_IBUF_113,
      ADDRD(0) => ADDR_WR_0_IBUF_114,
      DOA(1) => DINOUT1_7_OBUF_151,
      DOA(0) => DINOUT1_6_OBUF_152,
      DOB(1) => DINOUT1_9_OBUF_149,
      DOB(0) => DINOUT1_8_OBUF_150,
      DOC(1) => DINOUT1_11_OBUF_147,
      DOC(0) => DINOUT1_10_OBUF_148,
      DOD(1) => NLW_Mram_MEM3_DOD_1_UNCONNECTED,
      DOD(0) => NLW_Mram_MEM3_DOD_0_UNCONNECTED
    );
  Mram_MEM11 : X_RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      DIA(1) => DIN(1),
      DIA(0) => DIN(0),
      DIB(1) => DIN(3),
      DIB(0) => DIN(2),
      DIC(1) => DIN(5),
      DIC(0) => DIN(4),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => ADDR_RD2_3_IBUF_119,
      ADDRA(2) => ADDR_RD2_2_IBUF_120,
      ADDRA(1) => ADDR_RD2_1_IBUF_121,
      ADDRA(0) => ADDR_RD2_0_IBUF_122,
      ADDRB(4) => N1,
      ADDRB(3) => ADDR_RD2_3_IBUF_119,
      ADDRB(2) => ADDR_RD2_2_IBUF_120,
      ADDRB(1) => ADDR_RD2_1_IBUF_121,
      ADDRB(0) => ADDR_RD2_0_IBUF_122,
      ADDRC(4) => N1,
      ADDRC(3) => ADDR_RD2_3_IBUF_119,
      ADDRC(2) => ADDR_RD2_2_IBUF_120,
      ADDRC(1) => ADDR_RD2_1_IBUF_121,
      ADDRC(0) => ADDR_RD2_0_IBUF_122,
      ADDRD(4) => N1,
      ADDRD(3) => ADDR_WR_3_IBUF_111,
      ADDRD(2) => ADDR_WR_2_IBUF_112,
      ADDRD(1) => ADDR_WR_1_IBUF_113,
      ADDRD(0) => ADDR_WR_0_IBUF_114,
      DOA(1) => DOUT2_1_OBUF_173,
      DOA(0) => DOUT2_0_OBUF_174,
      DOB(1) => DOUT2_3_OBUF_171,
      DOB(0) => DOUT2_2_OBUF_172,
      DOC(1) => DOUT2_5_OBUF_169,
      DOC(0) => DOUT2_4_OBUF_170,
      DOD(1) => NLW_Mram_MEM11_DOD_1_UNCONNECTED,
      DOD(0) => NLW_Mram_MEM11_DOD_0_UNCONNECTED
    );
  Mram_MEM12 : X_RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      DIA(1) => DIN(7),
      DIA(0) => DIN(6),
      DIB(1) => DIN(9),
      DIB(0) => DIN(8),
      DIC(1) => DIN(11),
      DIC(0) => DIN(10),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => ADDR_RD2_3_IBUF_119,
      ADDRA(2) => ADDR_RD2_2_IBUF_120,
      ADDRA(1) => ADDR_RD2_1_IBUF_121,
      ADDRA(0) => ADDR_RD2_0_IBUF_122,
      ADDRB(4) => N1,
      ADDRB(3) => ADDR_RD2_3_IBUF_119,
      ADDRB(2) => ADDR_RD2_2_IBUF_120,
      ADDRB(1) => ADDR_RD2_1_IBUF_121,
      ADDRB(0) => ADDR_RD2_0_IBUF_122,
      ADDRC(4) => N1,
      ADDRC(3) => ADDR_RD2_3_IBUF_119,
      ADDRC(2) => ADDR_RD2_2_IBUF_120,
      ADDRC(1) => ADDR_RD2_1_IBUF_121,
      ADDRC(0) => ADDR_RD2_0_IBUF_122,
      ADDRD(4) => N1,
      ADDRD(3) => ADDR_WR_3_IBUF_111,
      ADDRD(2) => ADDR_WR_2_IBUF_112,
      ADDRD(1) => ADDR_WR_1_IBUF_113,
      ADDRD(0) => ADDR_WR_0_IBUF_114,
      DOA(1) => DOUT2_7_OBUF_167,
      DOA(0) => DOUT2_6_OBUF_168,
      DOB(1) => DOUT2_9_OBUF_165,
      DOB(0) => DOUT2_8_OBUF_166,
      DOC(1) => DOUT2_11_OBUF_163,
      DOC(0) => DOUT2_10_OBUF_164,
      DOD(1) => NLW_Mram_MEM12_DOD_1_UNCONNECTED,
      DOD(0) => NLW_Mram_MEM12_DOD_0_UNCONNECTED
    );
  SHAMT_0_271 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_13_OBUF_145,
      ADR2 => DINOUT1_12_OBUF_146,
      O => SHAMT_0_mmx_out9
    );
  SHAMT_0_261 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_11_OBUF_147,
      ADR2 => DINOUT1_12_OBUF_146,
      O => SHAMT_0_mmx_out8
    );
  SHAMT_0_241 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_10_OBUF_148,
      ADR2 => DINOUT1_11_OBUF_147,
      O => SHAMT_0_mmx_out6
    );
  SHAMT_0_171 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_2_OBUF_156,
      ADR2 => DINOUT1_3_OBUF_155,
      O => SHAMT_0_mmx_out24
    );
  SHAMT_0_151 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_1_OBUF_157,
      ADR2 => DINOUT1_0_OBUF_158,
      O => SHAMT_0_mmx_out22
    );
  SHAMT_0_71 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_3_OBUF_155,
      ADR2 => DINOUT1_4_OBUF_154,
      O => SHAMT_0_mmx_out15
    );
  SHAMT_0_51 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_14_OBUF_144,
      ADR2 => DINOUT1_15_OBUF_143,
      O => SHAMT_0_mmx_out13
    );
  SHAMT_1_31 : X_LUT6
    generic map(
      INIT => X"FEBADC9876325410"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_9_OBUF_149,
      ADR3 => DINOUT1_10_OBUF_148,
      ADR4 => DINOUT1_11_OBUF_147,
      ADR5 => DINOUT1_12_OBUF_146,
      O => SHAMT_1_mmx_out11
    );
  SHAMT_1_41 : X_LUT5
    generic map(
      INIT => X"89ABCDEF"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_13_OBUF_145,
      ADR3 => DINOUT1_14_OBUF_144,
      ADR4 => DINOUT1_15_OBUF_143,
      O => SHAMT_1_mmx_out12
    );
  SHAMT_1_111 : X_LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_13_OBUF_145,
      ADR3 => DINOUT1_14_OBUF_144,
      ADR4 => DINOUT1_11_OBUF_147,
      ADR5 => DINOUT1_12_OBUF_146,
      O => SHAMT_1_mmx_out19
    );
  SHAMT_1_91 : X_LUT5
    generic map(
      INIT => X"8A9BCEDF"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_1_OBUF_157,
      ADR3 => DINOUT1_2_OBUF_156,
      ADR4 => DINOUT1_0_OBUF_158,
      O => SHAMT_1_mmx_out17
    );
  SHAMT_1_11 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_3_OBUF_155,
      ADR3 => DINOUT1_5_OBUF_153,
      ADR4 => DINOUT1_4_OBUF_154,
      ADR5 => DINOUT1_6_OBUF_152,
      O => SHAMT_1_mmx_out1
    );
  SHAMT_1_151 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_1_OBUF_157,
      ADR3 => DINOUT1_2_OBUF_156,
      ADR4 => DINOUT1_3_OBUF_155,
      ADR5 => DINOUT1_4_OBUF_154,
      O => SHAMT_1_mmx_out22
    );
  SHAMT_1_121 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_4_OBUF_154,
      ADR3 => DINOUT1_6_OBUF_152,
      ADR4 => DINOUT1_5_OBUF_153,
      ADR5 => DINOUT1_7_OBUF_151,
      O => SHAMT_1_mmx_out2
    );
  SHAMT_1_161 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_2_OBUF_156,
      ADR3 => DINOUT1_4_OBUF_154,
      ADR4 => DINOUT1_3_OBUF_155,
      ADR5 => DINOUT1_5_OBUF_153,
      O => SHAMT_1_mmx_out23
    );
  SHAMT_1_211 : X_LUT6
    generic map(
      INIT => X"FEDCBA9876543210"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_8_OBUF_150,
      ADR3 => DINOUT1_10_OBUF_148,
      ADR4 => DINOUT1_9_OBUF_149,
      ADR5 => DINOUT1_11_OBUF_147,
      O => SHAMT_1_mmx_out7
    );
  SHAMT_1_71 : X_LUT6
    generic map(
      INIT => X"F7E6D5C4B3A29180"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_13_OBUF_145,
      ADR3 => DINOUT1_10_OBUF_148,
      ADR4 => DINOUT1_12_OBUF_146,
      ADR5 => DINOUT1_11_OBUF_147,
      O => SHAMT_1_mmx_out15
    );
  SHAMT_1_171 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_5_OBUF_153,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_6_OBUF_152,
      ADR5 => DINOUT1_8_OBUF_150,
      O => SHAMT_1_mmx_out3
    );
  SHAMT_1_181 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_6_OBUF_152,
      ADR3 => DINOUT1_8_OBUF_150,
      ADR4 => DINOUT1_7_OBUF_151,
      ADR5 => DINOUT1_9_OBUF_149,
      O => SHAMT_1_mmx_out4
    );
  SHAMT_1_61 : X_LUT6
    generic map(
      INIT => X"FEBADC9876325410"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_6_OBUF_152,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_8_OBUF_150,
      ADR5 => DINOUT1_9_OBUF_149,
      O => SHAMT_1_mmx_out14
    );
  SHAMT_1_101 : X_LUT6
    generic map(
      INIT => X"FEBA7632DC985410"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_7_OBUF_151,
      ADR3 => DINOUT1_8_OBUF_150,
      ADR4 => DINOUT1_10_OBUF_148,
      ADR5 => DINOUT1_9_OBUF_149,
      O => SHAMT_1_mmx_out18
    );
  Mmux_DATA_OUT101 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      O => Mmux_DATA_OUT10
    );
  Mmux_DATA_OUT102 : X_LUT5
    generic map(
      INIT => X"DFD58A80"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => DINOUT1_13_OBUF_145,
      ADR2 => DIR_IBUF_139,
      ADR3 => DINOUT1_15_OBUF_143,
      ADR4 => DINOUT1_14_OBUF_144,
      O => Mmux_DATA_OUT101_236
    );
  Mmux_DATA_OUT103 : X_LUT5
    generic map(
      INIT => X"6420ECA8"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_mmx_out5,
      ADR3 => SHAMT_1_mmx_out1,
      ADR4 => SHAMT_1_mmx_out17,
      O => Mmux_DATA_OUT102_237
    );
  Mmux_DATA_OUT104 : X_LUT6
    generic map(
      INIT => X"AFAA8F00AAAA8000"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_0_mmx_out8,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => Mmux_DATA_OUT10,
      ADR4 => Mmux_DATA_OUT102_237,
      ADR5 => Mmux_DATA_OUT101_236,
      O => DATA_OUT_14_OBUF_192
    );
  Mmux_DATA_OUT211 : X_LUT6
    generic map(
      INIT => X"73625140FBEAD9C8"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHAMT_1_mmx_out1,
      ADR3 => SHAMT_1_mmx_out14,
      ADR4 => SHAMT_1_mmx_out15,
      ADR5 => SHAMT_1_mmx_out17,
      O => Mmux_DATA_OUT21_238
    );
  Mmux_DATA_OUT212 : X_LUT6
    generic map(
      INIT => X"44444444444444E4"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => Mmux_DATA_OUT21_238,
      ADR2 => SHAMT_0_mmx_out13,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => SHAMT_1_IBUF_108,
      ADR5 => DIR_IBUF_139,
      O => DATA_OUT_6_OBUF_200
    );
  Mmux_DATA_OUT21 : X_LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => DINOUT1_0_OBUF_158,
      O => Mmux_DATA_OUT2
    );
  Mmux_DATA_OUT25 : X_LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_mmx_out,
      ADR3 => SHAMT_1_mmx_out8,
      O => Mmux_DATA_OUT22
    );
  Mmux_DATA_OUT28 : X_LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => Mmux_DATA_OUT24,
      ADR2 => Mmux_DATA_OUT22,
      ADR3 => Mmux_DATA_OUT2,
      O => DATA_OUT_0_OBUF_206
    );
  Mmux_DATA_OUT142 : X_LUT5
    generic map(
      INIT => X"FCB87430"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_1_OBUF_157,
      ADR3 => DINOUT1_2_OBUF_156,
      ADR4 => DINOUT1_0_OBUF_158,
      O => Mmux_DATA_OUT141
    );
  Mmux_DATA_OUT143 : X_LUT5
    generic map(
      INIT => X"6420ECA8"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_mmx_out10,
      ADR3 => SHAMT_1_mmx_out11,
      ADR4 => SHAMT_1_mmx_out12,
      O => Mmux_DATA_OUT142_243
    );
  Mmux_DATA_OUT144 : X_LUT6
    generic map(
      INIT => X"5F554F0055554000"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_0_mmx_out15,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => Mmux_DATA_OUT10,
      ADR4 => Mmux_DATA_OUT142_243,
      ADR5 => Mmux_DATA_OUT141,
      O => DATA_OUT_1_OBUF_205
    );
  Mmux_DATA_OUT241 : X_LUT6
    generic map(
      INIT => X"B931A820FD75EC64"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_mmx_out4,
      ADR3 => SHAMT_1_mmx_out23,
      ADR4 => SHAMT_1_mmx_out11,
      ADR5 => SHAMT_1_mmx_out12,
      O => Mmux_DATA_OUT241_244
    );
  Mmux_DATA_OUT242 : X_LUT6
    generic map(
      INIT => X"444444E444444444"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => Mmux_DATA_OUT241_244,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => SHAMT_1_IBUF_108,
      ADR5 => SHAMT_0_mmx_out22,
      O => DATA_OUT_9_OBUF_197
    );
  Mmux_DATA_OUT31 : X_LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_mmx_out5,
      ADR3 => SHAMT_1_mmx_out1,
      O => Mmux_DATA_OUT3
    );
  Mmux_DATA_OUT33 : X_LUT6
    generic map(
      INIT => X"550455045504F5A4"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => Mmux_DATA_OUT31_246,
      ADR2 => DIR_IBUF_139,
      ADR3 => Mmux_DATA_OUT3,
      ADR4 => SHAMT_2_IBUF_109,
      ADR5 => SHAMT_1_mmx_out17,
      O => DATA_OUT_10_OBUF_196
    );
  Mmux_DATA_OUT163 : X_LUT6
    generic map(
      INIT => X"0F0F0F5F04040454"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => Mmux_DATA_OUT161_248,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_3_IBUF_110,
      ADR4 => SHAMT_1_mmx_out17,
      ADR5 => Mmux_DATA_OUT16,
      O => DATA_OUT_2_OBUF_204
    );
  Mmux_DATA_OUT203 : X_LUT6
    generic map(
      INIT => X"0F0F0F5F04040454"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => Mmux_DATA_OUT201_250,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => SHAMT_1_mmx_out12,
      ADR5 => Mmux_DATA_OUT20,
      O => DATA_OUT_5_OBUF_201
    );
  Mmux_DATA_OUT81 : X_LUT5
    generic map(
      INIT => X"70304000"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => SHAMT_0_mmx_out22,
      ADR4 => SHAMT_1_mmx_out4,
      O => Mmux_DATA_OUT8
    );
  Mmux_DATA_OUT82 : X_LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => SHAMT_0_mmx_out6,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => SHAMT_0_mmx_out9,
      ADR4 => SHAMT_1_mmx_out23,
      O => Mmux_DATA_OUT81_252
    );
  Mmux_DATA_OUT83 : X_LUT6
    generic map(
      INIT => X"AA08AA08AA08AF0D"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => Mmux_DATA_OUT81_252,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => Mmux_DATA_OUT8,
      ADR4 => SHAMT_3_IBUF_110,
      ADR5 => SHAMT_1_mmx_out12,
      O => DATA_OUT_13_OBUF_193
    );
  Mmux_DATA_OUT121 : X_LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => DINOUT1_15_OBUF_143,
      O => Mmux_DATA_OUT12
    );
  Mmux_DATA_OUT122 : X_LUT6
    generic map(
      INIT => X"FEFCF2F00E0C0200"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => DINOUT1_14_OBUF_144,
      ADR4 => SHAMT_0_mmx_out9,
      ADR5 => SHAMT_1_mmx_out2,
      O => Mmux_DATA_OUT121_254
    );
  Mmux_DATA_OUT123 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => SHAMT_1_mmx_out6,
      ADR2 => SHAMT_1_mmx_out21,
      O => Mmux_DATA_OUT122_255
    );
  Mmux_DATA_OUT124 : X_LUT5
    generic map(
      INIT => X"FFFFA820"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => Mmux_DATA_OUT121_254,
      ADR3 => Mmux_DATA_OUT122_255,
      ADR4 => Mmux_DATA_OUT12,
      O => DATA_OUT_15_OBUF_191
    );
  Mmux_DATA_OUT41 : X_LUT4
    generic map(
      INIT => X"C480"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHAMT_1_mmx_out2,
      ADR3 => SHAMT_1_mmx_out6,
      O => Mmux_DATA_OUT4
    );
  Mmux_DATA_OUT42 : X_LUT5
    generic map(
      INIT => X"1F0F1000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => DINOUT1_15_OBUF_143,
      ADR4 => SHAMT_1_mmx_out19,
      O => Mmux_DATA_OUT41_257
    );
  Mmux_DATA_OUT43 : X_LUT6
    generic map(
      INIT => X"45444544E5E44544"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => Mmux_DATA_OUT4,
      ADR2 => DIR_IBUF_139,
      ADR3 => Mmux_DATA_OUT41_257,
      ADR4 => SHAMT_1_mmx_out21,
      ADR5 => SHAMT_2_IBUF_109,
      O => DATA_OUT_11_OBUF_195
    );
  Mmux_DATA_OUT181 : X_LUT6
    generic map(
      INIT => X"1F000F0010000000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => DINOUT1_15_OBUF_143,
      ADR5 => SHAMT_1_mmx_out18,
      O => Mmux_DATA_OUT18
    );
  Mmux_DATA_OUT183 : X_LUT6
    generic map(
      INIT => X"3333773310105410"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => Mmux_DATA_OUT181_259,
      ADR3 => SHAMT_1_mmx_out21,
      ADR4 => SHAMT_3_IBUF_110,
      ADR5 => Mmux_DATA_OUT18,
      O => DATA_OUT_3_OBUF_203
    );
  Mmux_DATA_OUT221 : X_LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => SHAMT_0_IBUF_107,
      ADR4 => DINOUT1_15_OBUF_143,
      ADR5 => DIR_IBUF_139,
      O => Mmux_DATA_OUT221_260
    );
  Mmux_DATA_OUT222 : X_LUT6
    generic map(
      INIT => X"FDECB9A875643120"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHAMT_1_mmx_out19,
      ADR3 => SHAMT_1_mmx_out18,
      ADR4 => SHAMT_1_mmx_out2,
      ADR5 => SHAMT_1_mmx_out21,
      O => Mmux_DATA_OUT222_261
    );
  Mmux_DATA_OUT223 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => Mmux_DATA_OUT222_261,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => Mmux_DATA_OUT221_260,
      O => DATA_OUT_7_OBUF_199
    );
  Mmux_DATA_OUT231 : X_LUT6
    generic map(
      INIT => X"0002000000000000"
    )
    port map (
      ADR0 => DINOUT1_0_OBUF_158,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => SHAMT_0_IBUF_107,
      ADR4 => DIR_IBUF_139,
      ADR5 => SHAMT_3_IBUF_110,
      O => Mmux_DATA_OUT231_262
    );
  Mmux_DATA_OUT232 : X_LUT6
    generic map(
      INIT => X"F7B3E6A2D591C480"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHAMT_1_mmx_out22,
      ADR3 => SHAMT_1_mmx_out3,
      ADR4 => SHAMT_1_mmx_out7,
      ADR5 => SHAMT_1_mmx_out8,
      O => Mmux_DATA_OUT232_263
    );
  Mmux_DATA_OUT233 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => Mmux_DATA_OUT232_263,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => Mmux_DATA_OUT231_262,
      O => DATA_OUT_8_OBUF_198
    );
  Mmux_DATA_OUT191 : X_LUT6
    generic map(
      INIT => X"1F000F0010000000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => DIR_IBUF_139,
      ADR4 => DINOUT1_0_OBUF_158,
      ADR5 => SHAMT_1_mmx_out22,
      O => Mmux_DATA_OUT19
    );
  Mmux_DATA_OUT193 : X_LUT6
    generic map(
      INIT => X"3333773310105410"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => Mmux_DATA_OUT191_265,
      ADR3 => SHAMT_1_mmx_out8,
      ADR4 => SHAMT_2_IBUF_109,
      ADR5 => Mmux_DATA_OUT19,
      O => DATA_OUT_4_OBUF_202
    );
  Mmux_DATA_OUT62 : X_LUT5
    generic map(
      INIT => X"1F0F1000"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => DINOUT1_0_OBUF_158,
      ADR4 => SHAMT_1_mmx_out3,
      O => Mmux_DATA_OUT61_267
    );
  Mmux_DATA_OUT63 : X_LUT6
    generic map(
      INIT => X"A888A888AD8DA888"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => Mmux_DATA_OUT6,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => Mmux_DATA_OUT61_267,
      ADR4 => SHAMT_1_mmx_out8,
      ADR5 => SHAMT_3_IBUF_110,
      O => DATA_OUT_12_OBUF_194
    );
  SHAMT_3_IBUF : X_BUF
    port map (
      I => SHAMT(3),
      O => SHAMT_3_IBUF_110
    );
  SHAMT_2_IBUF : X_BUF
    port map (
      I => SHAMT(2),
      O => SHAMT_2_IBUF_109
    );
  SHAMT_1_IBUF : X_BUF
    port map (
      I => SHAMT(1),
      O => SHAMT_1_IBUF_108
    );
  SHAMT_0_IBUF : X_BUF
    port map (
      I => SHAMT(0),
      O => SHAMT_0_IBUF_107
    );
  ADDR_WR_3_IBUF : X_BUF
    port map (
      I => ADDR_WR(3),
      O => ADDR_WR_3_IBUF_111
    );
  ADDR_WR_2_IBUF : X_BUF
    port map (
      I => ADDR_WR(2),
      O => ADDR_WR_2_IBUF_112
    );
  ADDR_WR_1_IBUF : X_BUF
    port map (
      I => ADDR_WR(1),
      O => ADDR_WR_1_IBUF_113
    );
  ADDR_WR_0_IBUF : X_BUF
    port map (
      I => ADDR_WR(0),
      O => ADDR_WR_0_IBUF_114
    );
  ADDR_RD1_3_IBUF : X_BUF
    port map (
      I => ADDR_RD1(3),
      O => ADDR_RD1_3_IBUF_115
    );
  ADDR_RD1_2_IBUF : X_BUF
    port map (
      I => ADDR_RD1(2),
      O => ADDR_RD1_2_IBUF_116
    );
  ADDR_RD1_1_IBUF : X_BUF
    port map (
      I => ADDR_RD1(1),
      O => ADDR_RD1_1_IBUF_117
    );
  ADDR_RD1_0_IBUF : X_BUF
    port map (
      I => ADDR_RD1(0),
      O => ADDR_RD1_0_IBUF_118
    );
  ADDR_RD2_3_IBUF : X_BUF
    port map (
      I => ADDR_RD2(3),
      O => ADDR_RD2_3_IBUF_119
    );
  ADDR_RD2_2_IBUF : X_BUF
    port map (
      I => ADDR_RD2(2),
      O => ADDR_RD2_2_IBUF_120
    );
  ADDR_RD2_1_IBUF : X_BUF
    port map (
      I => ADDR_RD2(1),
      O => ADDR_RD2_1_IBUF_121
    );
  ADDR_RD2_0_IBUF : X_BUF
    port map (
      I => ADDR_RD2(0),
      O => ADDR_RD2_0_IBUF_122
    );
  WD_15_IBUF : X_BUF
    port map (
      I => WD(15),
      O => WD_15_IBUF_123
    );
  WD_14_IBUF : X_BUF
    port map (
      I => WD(14),
      O => WD_14_IBUF_124
    );
  WD_13_IBUF : X_BUF
    port map (
      I => WD(13),
      O => WD_13_IBUF_125
    );
  WD_12_IBUF : X_BUF
    port map (
      I => WD(12),
      O => WD_12_IBUF_126
    );
  WD_11_IBUF : X_BUF
    port map (
      I => WD(11),
      O => WD_11_IBUF_127
    );
  WD_10_IBUF : X_BUF
    port map (
      I => WD(10),
      O => WD_10_IBUF_128
    );
  WD_9_IBUF : X_BUF
    port map (
      I => WD(9),
      O => WD_9_IBUF_129
    );
  WD_8_IBUF : X_BUF
    port map (
      I => WD(8),
      O => WD_8_IBUF_130
    );
  WD_7_IBUF : X_BUF
    port map (
      I => WD(7),
      O => WD_7_IBUF_131
    );
  WD_6_IBUF : X_BUF
    port map (
      I => WD(6),
      O => WD_6_IBUF_132
    );
  WD_5_IBUF : X_BUF
    port map (
      I => WD(5),
      O => WD_5_IBUF_133
    );
  WD_4_IBUF : X_BUF
    port map (
      I => WD(4),
      O => WD_4_IBUF_134
    );
  WD_3_IBUF : X_BUF
    port map (
      I => WD(3),
      O => WD_3_IBUF_135
    );
  WD_2_IBUF : X_BUF
    port map (
      I => WD(2),
      O => WD_2_IBUF_136
    );
  WD_1_IBUF : X_BUF
    port map (
      I => WD(1),
      O => WD_1_IBUF_137
    );
  WD_0_IBUF : X_BUF
    port map (
      I => WD(0),
      O => WD_0_IBUF_138
    );
  DIR_IBUF : X_BUF
    port map (
      I => DIR,
      O => DIR_IBUF_139
    );
  WR_IBUF : X_BUF
    port map (
      I => WR,
      O => WR_IBUF_141
    );
  SHE_IBUF : X_BUF
    port map (
      I => SHE,
      O => SHE_IBUF_142
    );
  Mmux_DIN11 : X_LUT6
    generic map(
      INIT => X"FA3AFA3AFA3AFA0A"
    )
    port map (
      ADR0 => WD_0_IBUF_138,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHE_IBUF_142,
      ADR3 => Mmux_DATA_OUT2,
      ADR4 => Mmux_DATA_OUT24,
      ADR5 => Mmux_DATA_OUT22,
      O => DIN(0)
    );
  Mmux_DIN151 : X_LUT5
    generic map(
      INIT => X"FA3AFA0A"
    )
    port map (
      ADR0 => WD_8_IBUF_130,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHE_IBUF_142,
      ADR3 => Mmux_DATA_OUT231_262,
      ADR4 => Mmux_DATA_OUT232_263,
      O => DIN(8)
    );
  Mmux_DIN141 : X_LUT5
    generic map(
      INIT => X"FA3AFA0A"
    )
    port map (
      ADR0 => WD_7_IBUF_131,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHE_IBUF_142,
      ADR3 => Mmux_DATA_OUT221_260,
      ADR4 => Mmux_DATA_OUT222_261,
      O => DIN(7)
    );
  SHAMT_1_221 : X_LUT6
    generic map(
      INIT => X"FDB9ECA875316420"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_13_OBUF_145,
      ADR3 => DINOUT1_14_OBUF_144,
      ADR4 => DINOUT1_12_OBUF_146,
      ADR5 => DINOUT1_15_OBUF_143,
      O => SHAMT_1_mmx_out8
    );
  SHAMT_1_191 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_7_OBUF_151,
      ADR3 => DINOUT1_8_OBUF_150,
      ADR4 => DINOUT1_9_OBUF_149,
      ADR5 => DINOUT1_10_OBUF_148,
      O => SHAMT_1_mmx_out5
    );
  SHAMT_1_1 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_7_OBUF_151,
      ADR3 => DINOUT1_6_OBUF_152,
      ADR4 => DINOUT1_5_OBUF_153,
      ADR5 => DINOUT1_4_OBUF_154,
      O => SHAMT_1_mmx_out
    );
  SHAMT_1_201 : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_8_OBUF_150,
      ADR3 => DINOUT1_9_OBUF_149,
      ADR4 => DINOUT1_10_OBUF_148,
      ADR5 => DINOUT1_11_OBUF_147,
      O => SHAMT_1_mmx_out6
    );
  SHAMT_1_21 : X_LUT6
    generic map(
      INIT => X"FDB9ECA875316420"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_6_OBUF_152,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_5_OBUF_153,
      ADR5 => DINOUT1_8_OBUF_150,
      O => SHAMT_1_mmx_out10
    );
  SHAMT_1_141 : X_LUT6
    generic map(
      INIT => X"FBD9EAC873516240"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_1_OBUF_157,
      ADR3 => DINOUT1_2_OBUF_156,
      ADR4 => DINOUT1_3_OBUF_155,
      ADR5 => DINOUT1_0_OBUF_158,
      O => SHAMT_1_mmx_out21
    );
  Mmux_DATA_OUT212_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DIR_IBUF_139,
      O => N34
    );
  Mmux_DIN131 : X_LUT6
    generic map(
      INIT => X"3FAA0FAA30AA00AA"
    )
    port map (
      ADR0 => WD_6_IBUF_132,
      ADR1 => N34,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHE_IBUF_142,
      ADR4 => SHAMT_0_mmx_out13,
      ADR5 => Mmux_DATA_OUT21_238,
      O => DIN(6)
    );
  Mmux_DATA_OUT32 : X_LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_0_IBUF_107,
      ADR3 => DINOUT1_14_OBUF_144,
      ADR4 => DINOUT1_15_OBUF_143,
      ADR5 => SHAMT_1_mmx_out15,
      O => Mmux_DATA_OUT31_246
    );
  Mmux_DATA_OUT242_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHAMT_2_IBUF_109,
      O => N36
    );
  Mmux_DIN161 : X_LUT6
    generic map(
      INIT => X"3FAA0FAA30AA00AA"
    )
    port map (
      ADR0 => WD_9_IBUF_129,
      ADR1 => N36,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHE_IBUF_142,
      ADR4 => SHAMT_0_mmx_out22,
      ADR5 => Mmux_DATA_OUT241_244,
      O => DIN(9)
    );
  Mmux_DATA_OUT124_SW0 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_15_IBUF_123,
      ADR2 => Mmux_DATA_OUT12,
      O => N38
    );
  Mmux_DATA_OUT124_SW1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => WD_15_IBUF_123,
      ADR1 => SHE_IBUF_142,
      O => N39
    );
  Mmux_DIN71 : X_LUT6
    generic map(
      INIT => X"AFA0BF80EF20FF00"
    )
    port map (
      ADR0 => N39,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => DIR_IBUF_139,
      ADR3 => N38,
      ADR4 => Mmux_DATA_OUT121_254,
      ADR5 => Mmux_DATA_OUT122_255,
      O => DIN(15)
    );
  Mmux_DIN81 : X_LUT6
    generic map(
      INIT => X"3A3AFAFA0A3ACAFA"
    )
    port map (
      ADR0 => WD_1_IBUF_137,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHE_IBUF_142,
      ADR3 => N41,
      ADR4 => N42,
      ADR5 => Mmux_DATA_OUT142_243,
      O => DIN(1)
    );
  Mmux_DIN61 : X_LUT6
    generic map(
      INIT => X"FACAFACAFACA3A0A"
    )
    port map (
      ADR0 => WD_14_IBUF_124,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHE_IBUF_142,
      ADR3 => N44,
      ADR4 => N45,
      ADR5 => Mmux_DATA_OUT102_237,
      O => DIN(14)
    );
  Mmux_DATA_OUT63_SW0 : X_LUT6
    generic map(
      INIT => X"0101FF000000FF00"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => WD_12_IBUF_126,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out8,
      O => N51
    );
  Mmux_DATA_OUT63_SW1 : X_LUT6
    generic map(
      INIT => X"F003AAAAF000AAAA"
    )
    port map (
      ADR0 => WD_12_IBUF_126,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out8,
      O => N52
    );
  Mmux_DATA_OUT63_SW2 : X_LUT6
    generic map(
      INIT => X"FF03AAAAFF00AAAA"
    )
    port map (
      ADR0 => WD_12_IBUF_126,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => DIR_IBUF_139,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out8,
      O => N53
    );
  Mmux_DIN41 : X_LUT5
    generic map(
      INIT => X"CCCCFA50"
    )
    port map (
      ADR0 => Mmux_DATA_OUT61_267,
      ADR1 => N53,
      ADR2 => N51,
      ADR3 => N52,
      ADR4 => Mmux_DATA_OUT6,
      O => DIN(12)
    );
  Mmux_DATA_OUT43_SW0 : X_LUT6
    generic map(
      INIT => X"FF3F5555FFFF5555"
    )
    port map (
      ADR0 => WD_11_IBUF_127,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_2_IBUF_109,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out21,
      O => N59
    );
  Mmux_DATA_OUT43_SW1 : X_LUT6
    generic map(
      INIT => X"CF005555FF005555"
    )
    port map (
      ADR0 => WD_11_IBUF_127,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_3_IBUF_110,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out21,
      O => N60
    );
  Mmux_DATA_OUT43_SW2 : X_LUT6
    generic map(
      INIT => X"CFF05555FFF05555"
    )
    port map (
      ADR0 => WD_11_IBUF_127,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => DIR_IBUF_139,
      ADR4 => SHE_IBUF_142,
      ADR5 => SHAMT_1_mmx_out21,
      O => N61
    );
  Mmux_DIN31 : X_LUT5
    generic map(
      INIT => X"333305AF"
    )
    port map (
      ADR0 => Mmux_DATA_OUT41_257,
      ADR1 => N60,
      ADR2 => N59,
      ADR3 => N61,
      ADR4 => Mmux_DATA_OUT4,
      O => DIN(11)
    );
  Mmux_DATA_OUT61_SW0 : X_LUT5
    generic map(
      INIT => X"195D3B7F"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_9_OBUF_149,
      ADR3 => DINOUT1_10_OBUF_148,
      ADR4 => DINOUT1_11_OBUF_147,
      O => N79
    );
  Mmux_DATA_OUT61_SW1 : X_LUT5
    generic map(
      INIT => X"048C26AE"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_10_OBUF_148,
      ADR3 => DINOUT1_9_OBUF_149,
      ADR4 => DINOUT1_11_OBUF_147,
      O => N80
    );
  Mmux_DATA_OUT61 : X_LUT6
    generic map(
      INIT => X"2200230132103311"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => DINOUT1_12_OBUF_146,
      ADR3 => SHAMT_1_mmx_out22,
      ADR4 => N79,
      ADR5 => N80,
      O => Mmux_DATA_OUT6
    );
  Mmux_DIN51_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_mmx_out12,
      O => N85
    );
  Mmux_DIN51_SW1 : X_LUT6
    generic map(
      INIT => X"AAAEABAFFAFEFBFF"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_0_mmx_out6,
      ADR4 => SHAMT_0_mmx_out9,
      ADR5 => SHAMT_1_mmx_out23,
      O => N86
    );
  Mmux_DIN51 : X_LUT6
    generic map(
      INIT => X"CA0ACACAFA3AFAFA"
    )
    port map (
      ADR0 => WD_13_IBUF_125,
      ADR1 => DIR_IBUF_139,
      ADR2 => SHE_IBUF_142,
      ADR3 => Mmux_DATA_OUT8,
      ADR4 => N86,
      ADR5 => N85,
      O => DIN(13)
    );
  Mmux_DATA_OUT104_SW0 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_2_IBUF_109,
      ADR3 => Mmux_DATA_OUT101_236,
      O => N44
    );
  Mmux_DATA_OUT104_SW1 : X_LUT5
    generic map(
      INIT => X"11011000"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => SHAMT_0_mmx_out8,
      ADR4 => Mmux_DATA_OUT101_236,
      O => N45
    );
  Mmux_DATA_OUT144_SW0 : X_LUT6
    generic map(
      INIT => X"082AFFFF5D7FFFFF"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_4_OBUF_154,
      ADR3 => DINOUT1_3_OBUF_155,
      ADR4 => Mmux_DATA_OUT10,
      ADR5 => Mmux_DATA_OUT141,
      O => N41
    );
  Mmux_DATA_OUT144_SW1 : X_LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => Mmux_DATA_OUT141,
      O => N42
    );
  Mmux_DIN111_G : X_LUT6
    generic map(
      INIT => X"3333773310105410"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => Mmux_DATA_OUT191_265,
      ADR3 => SHAMT_1_mmx_out8,
      ADR4 => SHAMT_2_IBUF_109,
      ADR5 => Mmux_DATA_OUT19,
      O => N89
    );
  Mmux_DIN21_G : X_LUT6
    generic map(
      INIT => X"550455045504F5A4"
    )
    port map (
      ADR0 => SHAMT_3_IBUF_110,
      ADR1 => Mmux_DATA_OUT31_246,
      ADR2 => DIR_IBUF_139,
      ADR3 => Mmux_DATA_OUT3,
      ADR4 => SHAMT_2_IBUF_109,
      ADR5 => SHAMT_1_mmx_out17,
      O => N91
    );
  Mmux_DATA_OUT202 : X_MUX2
    port map (
      IA => N92,
      IB => N93,
      SEL => SHAMT_2_IBUF_109,
      O => Mmux_DATA_OUT201_250
    );
  Mmux_DATA_OUT202_F : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_8_OBUF_150,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_6_OBUF_152,
      ADR5 => DINOUT1_5_OBUF_153,
      O => N92
    );
  Mmux_DATA_OUT202_G : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_12_OBUF_146,
      ADR3 => DINOUT1_11_OBUF_147,
      ADR4 => DINOUT1_10_OBUF_148,
      ADR5 => DINOUT1_9_OBUF_149,
      O => N93
    );
  Mmux_DATA_OUT182 : X_MUX2
    port map (
      IA => N94,
      IB => N95,
      SEL => SHAMT_3_IBUF_110,
      O => Mmux_DATA_OUT181_259
    );
  Mmux_DATA_OUT182_F : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_6_OBUF_152,
      ADR3 => DINOUT1_5_OBUF_153,
      ADR4 => DINOUT1_4_OBUF_154,
      ADR5 => DINOUT1_3_OBUF_155,
      O => N94
    );
  Mmux_DATA_OUT182_G : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_14_OBUF_144,
      ADR3 => DINOUT1_12_OBUF_146,
      ADR4 => DINOUT1_13_OBUF_145,
      ADR5 => DINOUT1_11_OBUF_147,
      O => N95
    );
  Mmux_DATA_OUT162 : X_MUX2
    port map (
      IA => N96,
      IB => N97,
      SEL => SHAMT_3_IBUF_110,
      O => Mmux_DATA_OUT161_248
    );
  Mmux_DATA_OUT162_F : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => DINOUT1_5_OBUF_153,
      ADR3 => DINOUT1_4_OBUF_154,
      ADR4 => DINOUT1_3_OBUF_155,
      ADR5 => DINOUT1_2_OBUF_156,
      O => N96
    );
  Mmux_DATA_OUT162_G : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_0_IBUF_107,
      ADR1 => SHAMT_1_IBUF_108,
      ADR2 => DINOUT1_13_OBUF_145,
      ADR3 => DINOUT1_11_OBUF_147,
      ADR4 => DINOUT1_12_OBUF_146,
      ADR5 => DINOUT1_10_OBUF_148,
      O => N97
    );
  Mmux_DIN101_G : X_LUT6
    generic map(
      INIT => X"3333773310105410"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => DIR_IBUF_139,
      ADR2 => Mmux_DATA_OUT181_259,
      ADR3 => SHAMT_1_mmx_out21,
      ADR4 => SHAMT_3_IBUF_110,
      ADR5 => Mmux_DATA_OUT18,
      O => N99
    );
  Mmux_DATA_OUT201 : X_MUX2
    port map (
      IA => N100,
      IB => N101,
      SEL => SHAMT_0_IBUF_107,
      O => Mmux_DATA_OUT20
    );
  Mmux_DATA_OUT201_F : X_LUT6
    generic map(
      INIT => X"2A280A0822200200"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => DINOUT1_5_OBUF_153,
      ADR4 => DINOUT1_3_OBUF_155,
      ADR5 => DINOUT1_1_OBUF_157,
      O => N100
    );
  Mmux_DATA_OUT201_G : X_LUT6
    generic map(
      INIT => X"2A280A0822200200"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => DINOUT1_4_OBUF_154,
      ADR4 => DINOUT1_2_OBUF_156,
      ADR5 => DINOUT1_0_OBUF_158,
      O => N101
    );
  Mmux_DATA_OUT161 : X_MUX2
    port map (
      IA => N102,
      IB => N103,
      SEL => SHAMT_0_IBUF_107,
      O => Mmux_DATA_OUT16
    );
  Mmux_DATA_OUT161_F : X_LUT6
    generic map(
      INIT => X"2A280A0822200200"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => DINOUT1_6_OBUF_152,
      ADR4 => DINOUT1_8_OBUF_150,
      ADR5 => DINOUT1_14_OBUF_144,
      O => N102
    );
  Mmux_DATA_OUT161_G : X_LUT6
    generic map(
      INIT => X"2A280A0822200200"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_1_IBUF_108,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_9_OBUF_149,
      ADR5 => DINOUT1_15_OBUF_143,
      O => N103
    );
  Mmux_DATA_OUT192 : X_MUX2
    port map (
      IA => N104,
      IB => N105,
      SEL => SHAMT_0_IBUF_107,
      O => Mmux_DATA_OUT191_265
    );
  Mmux_DATA_OUT192_F : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => DINOUT1_10_OBUF_148,
      ADR3 => DINOUT1_6_OBUF_152,
      ADR4 => DINOUT1_8_OBUF_150,
      ADR5 => DINOUT1_4_OBUF_154,
      O => N104
    );
  Mmux_DATA_OUT192_G : X_LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => SHAMT_1_IBUF_108,
      ADR1 => SHAMT_2_IBUF_109,
      ADR2 => DINOUT1_11_OBUF_147,
      ADR3 => DINOUT1_7_OBUF_151,
      ADR4 => DINOUT1_9_OBUF_149,
      ADR5 => DINOUT1_5_OBUF_153,
      O => N105
    );
  Mmux_DATA_OUT27 : X_MUX2
    port map (
      IA => N106,
      IB => N107,
      SEL => SHAMT_1_IBUF_108,
      O => Mmux_DATA_OUT24
    );
  Mmux_DATA_OUT27_F : X_LUT6
    generic map(
      INIT => X"5414501044044000"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_0_IBUF_107,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => DINOUT1_9_OBUF_149,
      ADR4 => DINOUT1_1_OBUF_157,
      ADR5 => DINOUT1_8_OBUF_150,
      O => N106
    );
  Mmux_DATA_OUT27_G : X_LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => SHAMT_3_IBUF_110,
      ADR2 => SHAMT_0_IBUF_107,
      ADR3 => DINOUT1_11_OBUF_147,
      ADR4 => DINOUT1_10_OBUF_148,
      ADR5 => SHAMT_0_mmx_out24,
      O => N107
    );
  Mmux_DIN121_G : X_LUT6
    generic map(
      INIT => X"0F0F0F5F04040454"
    )
    port map (
      ADR0 => DIR_IBUF_139,
      ADR1 => Mmux_DATA_OUT201_250,
      ADR2 => SHAMT_3_IBUF_110,
      ADR3 => SHAMT_1_mmx_out12,
      ADR4 => SHAMT_2_IBUF_109,
      ADR5 => Mmux_DATA_OUT20,
      O => N109
    );
  Mmux_DIN91_G : X_LUT6
    generic map(
      INIT => X"0F0F0F5F04040454"
    )
    port map (
      ADR0 => SHAMT_2_IBUF_109,
      ADR1 => Mmux_DATA_OUT161_248,
      ADR2 => DIR_IBUF_139,
      ADR3 => SHAMT_1_mmx_out17,
      ADR4 => SHAMT_3_IBUF_110,
      ADR5 => Mmux_DATA_OUT16,
      O => N111
    );
  Mmux_DIN1111 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_4_IBUF_134,
      ADR2 => N89,
      O => DIN(4)
    );
  Mmux_DIN211 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_10_IBUF_128,
      ADR2 => N91,
      O => DIN(10)
    );
  Mmux_DIN1011 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_3_IBUF_135,
      ADR2 => N99,
      O => DIN(3)
    );
  Mmux_DIN1211 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_5_IBUF_133,
      ADR2 => N109,
      O => DIN(5)
    );
  Mmux_DIN911 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => SHE_IBUF_142,
      ADR1 => WD_2_IBUF_136,
      ADR2 => N111,
      O => DIN(2)
    );
  Mram_MEM42_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD1_0_IBUF_118,
      RADR1 => ADDR_RD1_1_IBUF_117,
      RADR2 => ADDR_RD1_2_IBUF_116,
      RADR3 => ADDR_RD1_3_IBUF_115,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(13),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DINOUT1_13_OBUF_145
    );
  Mram_MEM42_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(13),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM42_SPO
    );
  Mram_MEM41_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD1_0_IBUF_118,
      RADR1 => ADDR_RD1_1_IBUF_117,
      RADR2 => ADDR_RD1_2_IBUF_116,
      RADR3 => ADDR_RD1_3_IBUF_115,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(12),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DINOUT1_12_OBUF_146
    );
  Mram_MEM41_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(12),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM41_SPO
    );
  Mram_MEM43_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD1_0_IBUF_118,
      RADR1 => ADDR_RD1_1_IBUF_117,
      RADR2 => ADDR_RD1_2_IBUF_116,
      RADR3 => ADDR_RD1_3_IBUF_115,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(14),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DINOUT1_14_OBUF_144
    );
  Mram_MEM43_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(14),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM43_SPO
    );
  Mram_MEM44_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD1_0_IBUF_118,
      RADR1 => ADDR_RD1_1_IBUF_117,
      RADR2 => ADDR_RD1_2_IBUF_116,
      RADR3 => ADDR_RD1_3_IBUF_115,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(15),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DINOUT1_15_OBUF_143
    );
  Mram_MEM44_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(15),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM44_SPO
    );
  Mram_MEM131_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD2_0_IBUF_122,
      RADR1 => ADDR_RD2_1_IBUF_121,
      RADR2 => ADDR_RD2_2_IBUF_120,
      RADR3 => ADDR_RD2_3_IBUF_119,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(12),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DOUT2_12_OBUF_162
    );
  Mram_MEM131_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(12),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM131_SPO
    );
  Mram_MEM134_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD2_0_IBUF_122,
      RADR1 => ADDR_RD2_1_IBUF_121,
      RADR2 => ADDR_RD2_2_IBUF_120,
      RADR3 => ADDR_RD2_3_IBUF_119,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(15),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DOUT2_15_OBUF_159
    );
  Mram_MEM134_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(15),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM134_SPO
    );
  Mram_MEM132_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD2_0_IBUF_122,
      RADR1 => ADDR_RD2_1_IBUF_121,
      RADR2 => ADDR_RD2_2_IBUF_120,
      RADR3 => ADDR_RD2_3_IBUF_119,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(13),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DOUT2_13_OBUF_161
    );
  Mram_MEM132_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(13),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM132_SPO
    );
  Mram_MEM133_X_RAMD16 : X_RAMD16
    generic map(
      INIT => X"0000"
    )
    port map (
      RADR0 => ADDR_RD2_0_IBUF_122,
      RADR1 => ADDR_RD2_1_IBUF_121,
      RADR2 => ADDR_RD2_2_IBUF_120,
      RADR3 => ADDR_RD2_3_IBUF_119,
      WADR0 => ADDR_WR_0_IBUF_114,
      WADR1 => ADDR_WR_1_IBUF_113,
      WADR2 => ADDR_WR_2_IBUF_112,
      WADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(14),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => DOUT2_14_OBUF_160
    );
  Mram_MEM133_X_RAMS16 : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => ADDR_WR_0_IBUF_114,
      ADR1 => ADDR_WR_1_IBUF_113,
      ADR2 => ADDR_WR_2_IBUF_112,
      ADR3 => ADDR_WR_3_IBUF_111,
      I => DIN(14),
      CLK => CLK_BUFGP,
      WE => WR_IBUF_141,
      O => Mram_MEM133_SPO
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_106,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_106
    );
  DATA_OUT_15_OBUF : X_OBUF
    port map (
      I => DATA_OUT_15_OBUF_191,
      O => DATA_OUT(15)
    );
  DATA_OUT_14_OBUF : X_OBUF
    port map (
      I => DATA_OUT_14_OBUF_192,
      O => DATA_OUT(14)
    );
  DATA_OUT_13_OBUF : X_OBUF
    port map (
      I => DATA_OUT_13_OBUF_193,
      O => DATA_OUT(13)
    );
  DATA_OUT_12_OBUF : X_OBUF
    port map (
      I => DATA_OUT_12_OBUF_194,
      O => DATA_OUT(12)
    );
  DATA_OUT_11_OBUF : X_OBUF
    port map (
      I => DATA_OUT_11_OBUF_195,
      O => DATA_OUT(11)
    );
  DATA_OUT_10_OBUF : X_OBUF
    port map (
      I => DATA_OUT_10_OBUF_196,
      O => DATA_OUT(10)
    );
  DATA_OUT_9_OBUF : X_OBUF
    port map (
      I => DATA_OUT_9_OBUF_197,
      O => DATA_OUT(9)
    );
  DATA_OUT_8_OBUF : X_OBUF
    port map (
      I => DATA_OUT_8_OBUF_198,
      O => DATA_OUT(8)
    );
  DATA_OUT_7_OBUF : X_OBUF
    port map (
      I => DATA_OUT_7_OBUF_199,
      O => DATA_OUT(7)
    );
  DATA_OUT_6_OBUF : X_OBUF
    port map (
      I => DATA_OUT_6_OBUF_200,
      O => DATA_OUT(6)
    );
  DATA_OUT_5_OBUF : X_OBUF
    port map (
      I => DATA_OUT_5_OBUF_201,
      O => DATA_OUT(5)
    );
  DATA_OUT_4_OBUF : X_OBUF
    port map (
      I => DATA_OUT_4_OBUF_202,
      O => DATA_OUT(4)
    );
  DATA_OUT_3_OBUF : X_OBUF
    port map (
      I => DATA_OUT_3_OBUF_203,
      O => DATA_OUT(3)
    );
  DATA_OUT_2_OBUF : X_OBUF
    port map (
      I => DATA_OUT_2_OBUF_204,
      O => DATA_OUT(2)
    );
  DATA_OUT_1_OBUF : X_OBUF
    port map (
      I => DATA_OUT_1_OBUF_205,
      O => DATA_OUT(1)
    );
  DATA_OUT_0_OBUF : X_OBUF
    port map (
      I => DATA_OUT_0_OBUF_206,
      O => DATA_OUT(0)
    );
  DINOUT1_15_OBUF : X_OBUF
    port map (
      I => DINOUT1_15_OBUF_143,
      O => DINOUT1(15)
    );
  DINOUT1_14_OBUF : X_OBUF
    port map (
      I => DINOUT1_14_OBUF_144,
      O => DINOUT1(14)
    );
  DINOUT1_13_OBUF : X_OBUF
    port map (
      I => DINOUT1_13_OBUF_145,
      O => DINOUT1(13)
    );
  DINOUT1_12_OBUF : X_OBUF
    port map (
      I => DINOUT1_12_OBUF_146,
      O => DINOUT1(12)
    );
  DINOUT1_11_OBUF : X_OBUF
    port map (
      I => DINOUT1_11_OBUF_147,
      O => DINOUT1(11)
    );
  DINOUT1_10_OBUF : X_OBUF
    port map (
      I => DINOUT1_10_OBUF_148,
      O => DINOUT1(10)
    );
  DINOUT1_9_OBUF : X_OBUF
    port map (
      I => DINOUT1_9_OBUF_149,
      O => DINOUT1(9)
    );
  DINOUT1_8_OBUF : X_OBUF
    port map (
      I => DINOUT1_8_OBUF_150,
      O => DINOUT1(8)
    );
  DINOUT1_7_OBUF : X_OBUF
    port map (
      I => DINOUT1_7_OBUF_151,
      O => DINOUT1(7)
    );
  DINOUT1_6_OBUF : X_OBUF
    port map (
      I => DINOUT1_6_OBUF_152,
      O => DINOUT1(6)
    );
  DINOUT1_5_OBUF : X_OBUF
    port map (
      I => DINOUT1_5_OBUF_153,
      O => DINOUT1(5)
    );
  DINOUT1_4_OBUF : X_OBUF
    port map (
      I => DINOUT1_4_OBUF_154,
      O => DINOUT1(4)
    );
  DINOUT1_3_OBUF : X_OBUF
    port map (
      I => DINOUT1_3_OBUF_155,
      O => DINOUT1(3)
    );
  DINOUT1_2_OBUF : X_OBUF
    port map (
      I => DINOUT1_2_OBUF_156,
      O => DINOUT1(2)
    );
  DINOUT1_1_OBUF : X_OBUF
    port map (
      I => DINOUT1_1_OBUF_157,
      O => DINOUT1(1)
    );
  DINOUT1_0_OBUF : X_OBUF
    port map (
      I => DINOUT1_0_OBUF_158,
      O => DINOUT1(0)
    );
  DOUT2_15_OBUF : X_OBUF
    port map (
      I => DOUT2_15_OBUF_159,
      O => DOUT2(15)
    );
  DOUT2_14_OBUF : X_OBUF
    port map (
      I => DOUT2_14_OBUF_160,
      O => DOUT2(14)
    );
  DOUT2_13_OBUF : X_OBUF
    port map (
      I => DOUT2_13_OBUF_161,
      O => DOUT2(13)
    );
  DOUT2_12_OBUF : X_OBUF
    port map (
      I => DOUT2_12_OBUF_162,
      O => DOUT2(12)
    );
  DOUT2_11_OBUF : X_OBUF
    port map (
      I => DOUT2_11_OBUF_163,
      O => DOUT2(11)
    );
  DOUT2_10_OBUF : X_OBUF
    port map (
      I => DOUT2_10_OBUF_164,
      O => DOUT2(10)
    );
  DOUT2_9_OBUF : X_OBUF
    port map (
      I => DOUT2_9_OBUF_165,
      O => DOUT2(9)
    );
  DOUT2_8_OBUF : X_OBUF
    port map (
      I => DOUT2_8_OBUF_166,
      O => DOUT2(8)
    );
  DOUT2_7_OBUF : X_OBUF
    port map (
      I => DOUT2_7_OBUF_167,
      O => DOUT2(7)
    );
  DOUT2_6_OBUF : X_OBUF
    port map (
      I => DOUT2_6_OBUF_168,
      O => DOUT2(6)
    );
  DOUT2_5_OBUF : X_OBUF
    port map (
      I => DOUT2_5_OBUF_169,
      O => DOUT2(5)
    );
  DOUT2_4_OBUF : X_OBUF
    port map (
      I => DOUT2_4_OBUF_170,
      O => DOUT2(4)
    );
  DOUT2_3_OBUF : X_OBUF
    port map (
      I => DOUT2_3_OBUF_171,
      O => DOUT2(3)
    );
  DOUT2_2_OBUF : X_OBUF
    port map (
      I => DOUT2_2_OBUF_172,
      O => DOUT2(2)
    );
  DOUT2_1_OBUF : X_OBUF
    port map (
      I => DOUT2_1_OBUF_173,
      O => DOUT2(1)
    );
  DOUT2_0_OBUF : X_OBUF
    port map (
      I => DOUT2_0_OBUF_174,
      O => DOUT2(0)
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

