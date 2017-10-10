--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: programa_synthesis.vhd
-- /___/   /\     Timestamp: Sun Sep 24 13:06:39 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm programa -w -dir netgen/synthesis -ofmt vhdl -sim programa.ngc programa_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: programa.ngc
-- Output file	: C:\Users\ANDRES\Documents\GitHub\arquitortura\Practica2\netgen\synthesis\programa_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: programa
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity programa is
  port (
    CLK : in STD_LOGIC := 'X'; 
    CLR : in STD_LOGIC := 'X'; 
    A : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 ) 
  );
end programa;

architecture Structure of programa is
  signal A_15_IBUF_0 : STD_LOGIC; 
  signal A_14_IBUF_1 : STD_LOGIC; 
  signal A_13_IBUF_2 : STD_LOGIC; 
  signal A_12_IBUF_3 : STD_LOGIC; 
  signal A_11_IBUF_4 : STD_LOGIC; 
  signal A_10_IBUF_5 : STD_LOGIC; 
  signal A_9_IBUF_6 : STD_LOGIC; 
  signal A_8_IBUF_7 : STD_LOGIC; 
  signal A_7_IBUF_8 : STD_LOGIC; 
  signal A_6_IBUF_9 : STD_LOGIC; 
  signal A_5_IBUF_10 : STD_LOGIC; 
  signal A_4_IBUF_11 : STD_LOGIC; 
  signal A_3_IBUF_12 : STD_LOGIC; 
  signal A_2_IBUF_13 : STD_LOGIC; 
  signal A_1_IBUF_14 : STD_LOGIC; 
  signal A_0_IBUF_15 : STD_LOGIC; 
  signal CLK_BUFGP_16 : STD_LOGIC; 
  signal CLR_IBUF_17 : STD_LOGIC; 
  signal Q_24_18 : STD_LOGIC; 
  signal Q_23_OBUF_19 : STD_LOGIC; 
  signal Q_21_20 : STD_LOGIC; 
  signal Q_20_21 : STD_LOGIC; 
  signal Q_16_22 : STD_LOGIC; 
  signal Q_12_23 : STD_LOGIC; 
  signal Q_2_24 : STD_LOGIC; 
  signal Q_1_25 : STD_LOGIC; 
  signal Q_0_26 : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_24_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_21_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_20_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_16_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_12_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26113_78 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26112 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT2611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28113 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28112_83 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT21111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT16111_86 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT5111_88 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT31113_89 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1212_90 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1211_91 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT121 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => Q_23_OBUF_19
    );
  Q_0 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_0_Q,
      Q => Q_0_26
    );
  Q_1 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_1_Q,
      Q => Q_1_25
    );
  Q_2 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_2_Q,
      Q => Q_2_24
    );
  Q_12 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_12_Q,
      Q => Q_12_23
    );
  Q_16 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_16_Q,
      Q => Q_16_22
    );
  Q_20 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_20_Q,
      Q => Q_20_21
    );
  Q_21 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_21_Q,
      Q => Q_21_20
    );
  Q_24 : FDC_1
    port map (
      C => CLK_BUFGP_16,
      CLR => CLR_IBUF_17,
      D => A_15_GND_4_o_wide_mux_0_OUT_24_Q,
      Q => Q_24_18
    );
  A_15_IBUF : IBUF
    port map (
      I => A(15),
      O => A_15_IBUF_0
    );
  A_14_IBUF : IBUF
    port map (
      I => A(14),
      O => A_14_IBUF_1
    );
  A_13_IBUF : IBUF
    port map (
      I => A(13),
      O => A_13_IBUF_2
    );
  A_12_IBUF : IBUF
    port map (
      I => A(12),
      O => A_12_IBUF_3
    );
  A_11_IBUF : IBUF
    port map (
      I => A(11),
      O => A_11_IBUF_4
    );
  A_10_IBUF : IBUF
    port map (
      I => A(10),
      O => A_10_IBUF_5
    );
  A_9_IBUF : IBUF
    port map (
      I => A(9),
      O => A_9_IBUF_6
    );
  A_8_IBUF : IBUF
    port map (
      I => A(8),
      O => A_8_IBUF_7
    );
  A_7_IBUF : IBUF
    port map (
      I => A(7),
      O => A_7_IBUF_8
    );
  A_6_IBUF : IBUF
    port map (
      I => A(6),
      O => A_6_IBUF_9
    );
  A_5_IBUF : IBUF
    port map (
      I => A(5),
      O => A_5_IBUF_10
    );
  A_4_IBUF : IBUF
    port map (
      I => A(4),
      O => A_4_IBUF_11
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_12
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_13
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_14
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_15
    );
  CLR_IBUF : IBUF
    port map (
      I => CLR,
      O => CLR_IBUF_17
    );
  Q_24_OBUF : OBUF
    port map (
      I => Q_24_18,
      O => Q(24)
    );
  Q_23_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(23)
    );
  Q_22_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(22)
    );
  Q_21_OBUF : OBUF
    port map (
      I => Q_21_20,
      O => Q(21)
    );
  Q_20_OBUF : OBUF
    port map (
      I => Q_20_21,
      O => Q(20)
    );
  Q_19_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(19)
    );
  Q_18_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(18)
    );
  Q_17_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(17)
    );
  Q_16_OBUF : OBUF
    port map (
      I => Q_16_22,
      O => Q(16)
    );
  Q_15_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(15)
    );
  Q_14_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(14)
    );
  Q_13_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(13)
    );
  Q_12_OBUF : OBUF
    port map (
      I => Q_12_23,
      O => Q(12)
    );
  Q_11_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(11)
    );
  Q_10_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(10)
    );
  Q_9_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(9)
    );
  Q_8_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(8)
    );
  Q_7_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(7)
    );
  Q_6_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(6)
    );
  Q_5_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(5)
    );
  Q_4_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(4)
    );
  Q_3_OBUF : OBUF
    port map (
      I => Q_23_OBUF_19,
      O => Q(3)
    );
  Q_2_OBUF : OBUF
    port map (
      I => Q_2_24,
      O => Q(2)
    );
  Q_1_OBUF : OBUF
    port map (
      I => Q_1_25,
      O => Q(1)
    );
  Q_0_OBUF : OBUF
    port map (
      I => Q_0_26,
      O => Q(0)
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_16
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT261161 : LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => A_11_IBUF_4,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      I2 => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_78,
      I3 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      I4 => Mram_A_15_GND_4_o_wide_mux_0_OUT26112,
      O => A_15_GND_4_o_wide_mux_0_OUT_20_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT281161 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_83,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      I2 => Mram_A_15_GND_4_o_wide_mux_0_OUT28111,
      I3 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      O => A_15_GND_4_o_wide_mux_0_OUT_21_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT311161 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_83,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      I2 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      I3 => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_89,
      O => A_15_GND_4_o_wide_mux_0_OUT_1_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT32113 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_86,
      I2 => A_13_IBUF_2,
      I3 => A_12_IBUF_3,
      I4 => A_14_IBUF_1,
      I5 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_24_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26114 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => A_13_IBUF_2,
      I1 => A_14_IBUF_1,
      I2 => A_12_IBUF_3,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_78
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26113 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_1_IBUF_14,
      I2 => A_4_IBUF_11,
      I3 => A_3_IBUF_12,
      I4 => A_0_IBUF_15,
      I5 => A_6_IBUF_9,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26112
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT28112 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => A_0_IBUF_15,
      I1 => A_1_IBUF_14,
      I2 => A_5_IBUF_10,
      I3 => A_4_IBUF_11,
      I4 => A_3_IBUF_12,
      I5 => A_2_IBUF_13,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21114 : LUT6
    generic map(
      INIT => X"0010001000100000"
    )
    port map (
      I0 => A_11_IBUF_4,
      I1 => A_4_IBUF_11,
      I2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      I3 => A_15_IBUF_0,
      I4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_91,
      I5 => Mram_A_15_GND_4_o_wide_mux_0_OUT21111,
      O => A_15_GND_4_o_wide_mux_0_OUT_16_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21112 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_10_IBUF_5,
      I2 => A_2_IBUF_13,
      I3 => A_13_IBUF_2,
      I4 => A_1_IBUF_14,
      I5 => A_8_IBUF_7,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT21111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16113 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => Mram_A_15_GND_4_o_wide_mux_0_OUT1611,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_86,
      I2 => A_13_IBUF_2,
      I3 => A_12_IBUF_3,
      I4 => A_14_IBUF_1,
      I5 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_12_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16112 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => A_7_IBUF_8,
      I1 => A_6_IBUF_9,
      I2 => A_8_IBUF_7,
      I3 => A_9_IBUF_6,
      I4 => A_10_IBUF_5,
      I5 => A_11_IBUF_4,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_86
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16111 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_4_IBUF_11,
      I2 => A_3_IBUF_12,
      I3 => A_2_IBUF_13,
      I4 => A_1_IBUF_14,
      I5 => A_0_IBUF_15,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1611
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5113 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      I1 => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_88,
      I2 => A_14_IBUF_1,
      I3 => A_13_IBUF_2,
      I4 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_2_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5112 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => A_8_IBUF_7,
      I1 => A_7_IBUF_8,
      I2 => A_9_IBUF_6,
      I3 => A_10_IBUF_5,
      I4 => A_11_IBUF_4,
      I5 => A_12_IBUF_3,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_88
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5111 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_4_IBUF_11,
      I2 => A_3_IBUF_12,
      I3 => A_2_IBUF_13,
      I4 => A_0_IBUF_15,
      I5 => A_6_IBUF_9,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31114 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_4_IBUF_11,
      I2 => A_3_IBUF_12,
      I3 => A_2_IBUF_13,
      I4 => A_0_IBUF_15,
      I5 => A_1_IBUF_14,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_89
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31113 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => A_14_IBUF_1,
      I1 => A_6_IBUF_9,
      I2 => A_13_IBUF_2,
      I3 => A_12_IBUF_3,
      I4 => A_11_IBUF_4,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_83
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31112 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_4_IBUF_11,
      I2 => A_3_IBUF_12,
      I3 => A_1_IBUF_14,
      I4 => A_2_IBUF_13,
      I5 => A_0_IBUF_15,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28113
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31111 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => A_9_IBUF_6,
      I1 => A_10_IBUF_5,
      I2 => A_8_IBUF_7,
      I3 => A_7_IBUF_8,
      I4 => A_15_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT2611
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1214 : LUT6
    generic map(
      INIT => X"0010001000100000"
    )
    port map (
      I0 => A_11_IBUF_4,
      I1 => A_4_IBUF_11,
      I2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      I3 => A_15_IBUF_0,
      I4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_90,
      I5 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_91,
      O => A_15_GND_4_o_wide_mux_0_OUT_0_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1213 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_1_IBUF_14,
      I2 => A_10_IBUF_5,
      I3 => A_2_IBUF_13,
      I4 => A_13_IBUF_2,
      I5 => A_8_IBUF_7,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_90
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1212 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => A_5_IBUF_10,
      I1 => A_10_IBUF_5,
      I2 => A_2_IBUF_13,
      I3 => A_13_IBUF_2,
      I4 => A_0_IBUF_15,
      I5 => A_8_IBUF_7,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_91
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1211 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => A_14_IBUF_1,
      I1 => A_6_IBUF_9,
      I2 => A_9_IBUF_6,
      I3 => A_3_IBUF_12,
      I4 => A_12_IBUF_3,
      I5 => A_7_IBUF_8,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT121
    );

end Structure;

