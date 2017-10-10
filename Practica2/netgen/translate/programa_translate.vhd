--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: programa_translate.vhd
-- /___/   /\     Timestamp: Sun Sep 24 13:06:32 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm programa -w -dir netgen/translate -ofmt vhdl -sim programa.ngd programa_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: programa.ngd
-- Output file	: C:\Users\ANDRES\Documents\GitHub\arquitortura\Practica2\netgen\translate\programa_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity programa is
  port (
    CLK : in STD_LOGIC := 'X'; 
    CLR : in STD_LOGIC := 'X'; 
    A : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 ) 
  );
end programa;

architecture Structure of programa is
  signal A_15_IBUF_3 : STD_LOGIC; 
  signal A_14_IBUF_4 : STD_LOGIC; 
  signal A_13_IBUF_5 : STD_LOGIC; 
  signal A_12_IBUF_6 : STD_LOGIC; 
  signal A_11_IBUF_7 : STD_LOGIC; 
  signal A_10_IBUF_8 : STD_LOGIC; 
  signal A_9_IBUF_9 : STD_LOGIC; 
  signal A_8_IBUF_10 : STD_LOGIC; 
  signal A_7_IBUF_11 : STD_LOGIC; 
  signal A_6_IBUF_12 : STD_LOGIC; 
  signal A_5_IBUF_13 : STD_LOGIC; 
  signal A_4_IBUF_14 : STD_LOGIC; 
  signal A_3_IBUF_15 : STD_LOGIC; 
  signal A_2_IBUF_16 : STD_LOGIC; 
  signal A_1_IBUF_17 : STD_LOGIC; 
  signal A_0_IBUF_18 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal CLR_IBUF_20 : STD_LOGIC; 
  signal Q_24_21 : STD_LOGIC; 
  signal Q_23_OBUF_22 : STD_LOGIC; 
  signal Q_21_23 : STD_LOGIC; 
  signal Q_20_24 : STD_LOGIC; 
  signal Q_16_25 : STD_LOGIC; 
  signal Q_12_26 : STD_LOGIC; 
  signal Q_2_27 : STD_LOGIC; 
  signal Q_1_28 : STD_LOGIC; 
  signal Q_0_29 : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_24_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_21_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_20_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_16_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_12_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26113_81 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26112 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT2611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28113 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28112_86 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT21111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT16111_89 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT5111_91 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT31113_92 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1212_93 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1211_94 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT121 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal NlwInverterSignal_Q_0_C : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_Q_1_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_2_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_12_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_16_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_20_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_21_C : STD_LOGIC; 
  signal NlwInverterSignal_Q_24_C : STD_LOGIC; 
begin
  XST_GND : X_ZERO
    port map (
      O => Q_23_OBUF_22
    );
  Q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_0_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_0_Q,
      O => Q_0_29,
      CE => VCC,
      SET => GND
    );
  Q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_1_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_1_Q,
      O => Q_1_28,
      CE => VCC,
      SET => GND
    );
  Q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_2_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_2_Q,
      O => Q_2_27,
      CE => VCC,
      SET => GND
    );
  Q_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_12_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_12_Q,
      O => Q_12_26,
      CE => VCC,
      SET => GND
    );
  Q_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_16_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_16_Q,
      O => Q_16_25,
      CE => VCC,
      SET => GND
    );
  Q_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_20_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_20_Q,
      O => Q_20_24,
      CE => VCC,
      SET => GND
    );
  Q_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_21_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_21_Q,
      O => Q_21_23,
      CE => VCC,
      SET => GND
    );
  Q_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_Q_24_C,
      RST => CLR_IBUF_20,
      I => A_15_GND_4_o_wide_mux_0_OUT_24_Q,
      O => Q_24_21,
      CE => VCC,
      SET => GND
    );
  A_15_IBUF : X_BUF
    port map (
      I => A(15),
      O => A_15_IBUF_3
    );
  A_14_IBUF : X_BUF
    port map (
      I => A(14),
      O => A_14_IBUF_4
    );
  A_13_IBUF : X_BUF
    port map (
      I => A(13),
      O => A_13_IBUF_5
    );
  A_12_IBUF : X_BUF
    port map (
      I => A(12),
      O => A_12_IBUF_6
    );
  A_11_IBUF : X_BUF
    port map (
      I => A(11),
      O => A_11_IBUF_7
    );
  A_10_IBUF : X_BUF
    port map (
      I => A(10),
      O => A_10_IBUF_8
    );
  A_9_IBUF : X_BUF
    port map (
      I => A(9),
      O => A_9_IBUF_9
    );
  A_8_IBUF : X_BUF
    port map (
      I => A(8),
      O => A_8_IBUF_10
    );
  A_7_IBUF : X_BUF
    port map (
      I => A(7),
      O => A_7_IBUF_11
    );
  A_6_IBUF : X_BUF
    port map (
      I => A(6),
      O => A_6_IBUF_12
    );
  A_5_IBUF : X_BUF
    port map (
      I => A(5),
      O => A_5_IBUF_13
    );
  A_4_IBUF : X_BUF
    port map (
      I => A(4),
      O => A_4_IBUF_14
    );
  A_3_IBUF : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF_15
    );
  A_2_IBUF : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF_16
    );
  A_1_IBUF : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF_17
    );
  A_0_IBUF : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF_18
    );
  CLR_IBUF : X_BUF
    port map (
      I => CLR,
      O => CLR_IBUF_20
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT261161 : X_LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      ADR0 => A_11_IBUF_7,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_81,
      ADR3 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT26112,
      O => A_15_GND_4_o_wide_mux_0_OUT_20_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT281161 : X_LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_86,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT28111,
      ADR3 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      O => A_15_GND_4_o_wide_mux_0_OUT_21_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT311161 : X_LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_86,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      ADR3 => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_92,
      O => A_15_GND_4_o_wide_mux_0_OUT_1_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT32113 : X_LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_89,
      ADR2 => A_13_IBUF_5,
      ADR3 => A_12_IBUF_6,
      ADR4 => A_14_IBUF_4,
      ADR5 => A_15_IBUF_3,
      O => A_15_GND_4_o_wide_mux_0_OUT_24_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26114 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => A_13_IBUF_5,
      ADR1 => A_14_IBUF_4,
      ADR2 => A_12_IBUF_6,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_81
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26113 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_1_IBUF_17,
      ADR2 => A_4_IBUF_14,
      ADR3 => A_3_IBUF_15,
      ADR4 => A_0_IBUF_18,
      ADR5 => A_6_IBUF_12,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26112
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT28112 : X_LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => A_0_IBUF_18,
      ADR1 => A_1_IBUF_17,
      ADR2 => A_5_IBUF_13,
      ADR3 => A_4_IBUF_14,
      ADR4 => A_3_IBUF_15,
      ADR5 => A_2_IBUF_16,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21114 : X_LUT6
    generic map(
      INIT => X"0010001000100000"
    )
    port map (
      ADR0 => A_11_IBUF_7,
      ADR1 => A_4_IBUF_14,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      ADR3 => A_15_IBUF_3,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_94,
      ADR5 => Mram_A_15_GND_4_o_wide_mux_0_OUT21111,
      O => A_15_GND_4_o_wide_mux_0_OUT_16_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21112 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_10_IBUF_8,
      ADR2 => A_2_IBUF_16,
      ADR3 => A_13_IBUF_5,
      ADR4 => A_1_IBUF_17,
      ADR5 => A_8_IBUF_10,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT21111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16113 : X_LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT1611,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_89,
      ADR2 => A_13_IBUF_5,
      ADR3 => A_12_IBUF_6,
      ADR4 => A_14_IBUF_4,
      ADR5 => A_15_IBUF_3,
      O => A_15_GND_4_o_wide_mux_0_OUT_12_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16112 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_7_IBUF_11,
      ADR1 => A_6_IBUF_12,
      ADR2 => A_8_IBUF_10,
      ADR3 => A_9_IBUF_9,
      ADR4 => A_10_IBUF_8,
      ADR5 => A_11_IBUF_7,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_89
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16111 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_4_IBUF_14,
      ADR2 => A_3_IBUF_15,
      ADR3 => A_2_IBUF_16,
      ADR4 => A_1_IBUF_17,
      ADR5 => A_0_IBUF_18,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1611
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5113 : X_LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_91,
      ADR2 => A_14_IBUF_4,
      ADR3 => A_13_IBUF_5,
      ADR4 => A_15_IBUF_3,
      O => A_15_GND_4_o_wide_mux_0_OUT_2_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5112 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_8_IBUF_10,
      ADR1 => A_7_IBUF_11,
      ADR2 => A_9_IBUF_9,
      ADR3 => A_10_IBUF_8,
      ADR4 => A_11_IBUF_7,
      ADR5 => A_12_IBUF_6,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_91
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5111 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_4_IBUF_14,
      ADR2 => A_3_IBUF_15,
      ADR3 => A_2_IBUF_16,
      ADR4 => A_0_IBUF_18,
      ADR5 => A_6_IBUF_12,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31114 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_4_IBUF_14,
      ADR2 => A_3_IBUF_15,
      ADR3 => A_2_IBUF_16,
      ADR4 => A_0_IBUF_18,
      ADR5 => A_1_IBUF_17,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_92
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31113 : X_LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      ADR0 => A_14_IBUF_4,
      ADR1 => A_6_IBUF_12,
      ADR2 => A_13_IBUF_5,
      ADR3 => A_12_IBUF_6,
      ADR4 => A_11_IBUF_7,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_86
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31112 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_4_IBUF_14,
      ADR2 => A_3_IBUF_15,
      ADR3 => A_1_IBUF_17,
      ADR4 => A_2_IBUF_16,
      ADR5 => A_0_IBUF_18,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28113
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31111 : X_LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      ADR0 => A_9_IBUF_9,
      ADR1 => A_10_IBUF_8,
      ADR2 => A_8_IBUF_10,
      ADR3 => A_7_IBUF_11,
      ADR4 => A_15_IBUF_3,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT2611
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1214 : X_LUT6
    generic map(
      INIT => X"0010001000100000"
    )
    port map (
      ADR0 => A_11_IBUF_7,
      ADR1 => A_4_IBUF_14,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      ADR3 => A_15_IBUF_3,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_93,
      ADR5 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_94,
      O => A_15_GND_4_o_wide_mux_0_OUT_0_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1213 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_1_IBUF_17,
      ADR2 => A_10_IBUF_8,
      ADR3 => A_2_IBUF_16,
      ADR4 => A_13_IBUF_5,
      ADR5 => A_8_IBUF_10,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_93
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1212 : X_LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_13,
      ADR1 => A_10_IBUF_8,
      ADR2 => A_2_IBUF_16,
      ADR3 => A_13_IBUF_5,
      ADR4 => A_0_IBUF_18,
      ADR5 => A_8_IBUF_10,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_94
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1211 : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_14_IBUF_4,
      ADR1 => A_6_IBUF_12,
      ADR2 => A_9_IBUF_9,
      ADR3 => A_3_IBUF_15,
      ADR4 => A_12_IBUF_6,
      ADR5 => A_7_IBUF_11,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT121
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  Q_24_OBUF : X_OBUF
    port map (
      I => Q_24_21,
      O => Q(24)
    );
  Q_23_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(23)
    );
  Q_22_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(22)
    );
  Q_21_OBUF : X_OBUF
    port map (
      I => Q_21_23,
      O => Q(21)
    );
  Q_20_OBUF : X_OBUF
    port map (
      I => Q_20_24,
      O => Q(20)
    );
  Q_19_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(19)
    );
  Q_18_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(18)
    );
  Q_17_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(17)
    );
  Q_16_OBUF : X_OBUF
    port map (
      I => Q_16_25,
      O => Q(16)
    );
  Q_15_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(15)
    );
  Q_14_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(14)
    );
  Q_13_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(13)
    );
  Q_12_OBUF : X_OBUF
    port map (
      I => Q_12_26,
      O => Q(12)
    );
  Q_11_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(11)
    );
  Q_10_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(10)
    );
  Q_9_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(9)
    );
  Q_8_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(8)
    );
  Q_7_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(7)
    );
  Q_6_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(6)
    );
  Q_5_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(5)
    );
  Q_4_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(4)
    );
  Q_3_OBUF : X_OBUF
    port map (
      I => Q_23_OBUF_22,
      O => Q(3)
    );
  Q_2_OBUF : X_OBUF
    port map (
      I => Q_2_27,
      O => Q(2)
    );
  Q_1_OBUF : X_OBUF
    port map (
      I => Q_1_28,
      O => Q(1)
    );
  Q_0_OBUF : X_OBUF
    port map (
      I => Q_0_29,
      O => Q(0)
    );
  NlwInverterBlock_Q_0_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_0_C
    );
  NlwBlock_programa_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_programa_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_Q_1_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_1_C
    );
  NlwInverterBlock_Q_2_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_2_C
    );
  NlwInverterBlock_Q_12_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_12_C
    );
  NlwInverterBlock_Q_16_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_16_C
    );
  NlwInverterBlock_Q_20_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_20_C
    );
  NlwInverterBlock_Q_21_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_21_C
    );
  NlwInverterBlock_Q_24_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_Q_24_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

