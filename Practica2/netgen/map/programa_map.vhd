--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: programa_map.vhd
-- /___/   /\     Timestamp: Sun Sep 24 13:12:37 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf programa.pcf -rpw 100 -tpw 0 -ar Structure -tm programa -w -dir netgen/map -ofmt vhdl -sim programa_map.ncd programa_map.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: programa_map.ncd
-- Output file	: C:\Users\ANDRES\Documents\GitHub\arquitortura\Practica2\netgen\map\programa_map.vhd
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
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26113_327 : STD_LOGIC; 
  signal A_6_IBUF_0 : STD_LOGIC; 
  signal A_11_IBUF_0 : STD_LOGIC; 
  signal A_13_IBUF_0 : STD_LOGIC; 
  signal A_14_IBUF_0 : STD_LOGIC; 
  signal A_12_IBUF_0 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28112_0 : STD_LOGIC; 
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal Q_12_338 : STD_LOGIC; 
  signal Q_20_339 : STD_LOGIC; 
  signal A_2_IBUF_0 : STD_LOGIC; 
  signal Q_21_341 : STD_LOGIC; 
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal A_4_IBUF_0 : STD_LOGIC; 
  signal A_5_IBUF_0 : STD_LOGIC; 
  signal Q_16_345 : STD_LOGIC; 
  signal Q_24_346 : STD_LOGIC; 
  signal A_7_IBUF_0 : STD_LOGIC; 
  signal A_8_IBUF_0 : STD_LOGIC; 
  signal A_9_IBUF_0 : STD_LOGIC; 
  signal Q_0_350 : STD_LOGIC; 
  signal Q_1_351 : STD_LOGIC; 
  signal Q_2_352 : STD_LOGIC; 
  signal A_10_IBUF_0 : STD_LOGIC; 
  signal A_15_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CLR_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_12_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_20_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_21_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_16_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_24_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_1_0 : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT121 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1211_368 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT2611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28113 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1611 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT16111_373 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT1212_374 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT31113_375 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT26112 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT21111 : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT5111_378 : STD_LOGIC; 
  signal A_0_IBUF_3 : STD_LOGIC; 
  signal A_6_IBUF_43 : STD_LOGIC; 
  signal A_8_IBUF_53 : STD_LOGIC; 
  signal A_7_IBUF_48 : STD_LOGIC; 
  signal A_5_IBUF_36 : STD_LOGIC; 
  signal A_9_IBUF_58 : STD_LOGIC; 
  signal A_4_IBUF_29 : STD_LOGIC; 
  signal A_1_IBUF_8 : STD_LOGIC; 
  signal A_2_IBUF_15 : STD_LOGIC; 
  signal A_3_IBUF_22 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_99 : STD_LOGIC; 
  signal A_12_IBUF_87 : STD_LOGIC; 
  signal Q_0_INV_Q_0CLK : STD_LOGIC; 
  signal A_15_IBUF_96 : STD_LOGIC; 
  signal Q_12_INV_Q_12CLK : STD_LOGIC; 
  signal A_14_IBUF_93 : STD_LOGIC; 
  signal A_10_IBUF_81 : STD_LOGIC; 
  signal Q_1_INV_Q_1CLK : STD_LOGIC; 
  signal Q_2_INV_Q_2CLK : STD_LOGIC; 
  signal A_11_IBUF_84 : STD_LOGIC; 
  signal A_15_GND_4_o_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal Q_21_INV_Q_21CLK : STD_LOGIC; 
  signal A_13_IBUF_90 : STD_LOGIC; 
  signal Q_24_INV_Q_24CLK : STD_LOGIC; 
  signal CLR_IBUF_102 : STD_LOGIC; 
  signal Q_16_INV_Q_16CLK : STD_LOGIC; 
  signal Q_20_INV_Q_20CLK : STD_LOGIC; 
  signal Mram_A_15_GND_4_o_wide_mux_0_OUT28112_205 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  Q_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => '0',
      O => Q(11)
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_0_IBUF_3,
      I => A(0)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_0_IBUF_3,
      O => A_0_IBUF_0
    );
  Q_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => '0',
      O => Q(10)
    );
  Q_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => '0',
      O => Q(15)
    );
  Q_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => '0',
      O => Q(17)
    );
  Q_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => '0',
      O => Q(23)
    );
  Q_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => '0',
      O => Q(18)
    );
  Q_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => Q_16_345,
      O => Q(16)
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_6_IBUF_43,
      I => A(6)
    );
  ProtoComp2_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_6_IBUF_43,
      O => A_6_IBUF_0
    );
  A_8_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_8_IBUF_53,
      I => A(8)
    );
  ProtoComp2_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_8_IBUF_53,
      O => A_8_IBUF_0
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_7_IBUF_48,
      I => A(7)
    );
  ProtoComp2_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_7_IBUF_48,
      O => A_7_IBUF_0
    );
  Q_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => '0',
      O => Q(19)
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_5_IBUF_36,
      I => A(5)
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_5_IBUF_36,
      O => A_5_IBUF_0
    );
  Q_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => Q_24_346,
      O => Q(24)
    );
  Q_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => '0',
      O => Q(8)
    );
  Q_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => '0',
      O => Q(9)
    );
  Q_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => '0',
      O => Q(4)
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => Q_2_352,
      O => Q(2)
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => Q_0_350,
      O => Q(0)
    );
  Q_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => '0',
      O => Q(7)
    );
  Q_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => '0',
      O => Q(5)
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => Q_1_351,
      O => Q(1)
    );
  A_9_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_9_IBUF_58,
      I => A(9)
    );
  ProtoComp2_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_9_IBUF_58,
      O => A_9_IBUF_0
    );
  Q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => '0',
      O => Q(3)
    );
  Q_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => '0',
      O => Q(6)
    );
  Q_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => '0',
      O => Q(13)
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_4_IBUF_29,
      I => A(4)
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_4_IBUF_29,
      O => A_4_IBUF_0
    );
  Q_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => '0',
      O => Q(14)
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_1_IBUF_8,
      I => A(1)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_1_IBUF_8,
      O => A_1_IBUF_0
    );
  Q_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => '0',
      O => Q(22)
    );
  Q_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => Q_12_338,
      O => Q(12)
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_2_IBUF_15,
      I => A(2)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_2_IBUF_15,
      O => A_2_IBUF_0
    );
  Q_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => Q_21_341,
      O => Q(21)
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_3_IBUF_22,
      I => A(3)
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_3_IBUF_22,
      O => A_3_IBUF_0
    );
  Q_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => Q_20_339,
      O => Q(20)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_99,
      I => CLK
    );
  ProtoComp2_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_99,
      O => CLK_BUFGP_IBUFG_0
    );
  A_12_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_12_IBUF_87,
      I => A(12)
    );
  ProtoComp2_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_12_IBUF_87,
      O => A_12_IBUF_0
    );
  INV_Q_0CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_0_INV_Q_0CLK
    );
  Q_0 : X_FF
    generic map(
      LOC => "OLOGIC_X5Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_0_INV_Q_0CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_0_Q,
      O => Q_0_350,
      SET => GND,
      RST => CLR_IBUF_0
    );
  A_15_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_15_IBUF_96,
      I => A(15)
    );
  ProtoComp2_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_15_IBUF_96,
      O => A_15_IBUF_0
    );
  INV_Q_12CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_12_INV_Q_12CLK
    );
  Q_12 : X_FF
    generic map(
      LOC => "OLOGIC_X5Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_12_INV_Q_12CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_12_Q,
      O => Q_12_338,
      SET => GND,
      RST => CLR_IBUF_0
    );
  A_14_IBUF : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_14_IBUF_93,
      I => A(14)
    );
  ProtoComp2_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_14_IBUF_93,
      O => A_14_IBUF_0
    );
  A_10_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_10_IBUF_81,
      I => A(10)
    );
  ProtoComp2_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_10_IBUF_81,
      O => A_10_IBUF_0
    );
  INV_Q_1CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_1_INV_Q_1CLK
    );
  Q_1 : X_FF
    generic map(
      LOC => "OLOGIC_X6Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_1_INV_Q_1CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_1_0,
      O => Q_1_351,
      SET => GND,
      RST => CLR_IBUF_0
    );
  INV_Q_2CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_2_INV_Q_2CLK
    );
  Q_2 : X_FF
    generic map(
      LOC => "OLOGIC_X6Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_2_INV_Q_2CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_2_Q,
      O => Q_2_352,
      SET => GND,
      RST => CLR_IBUF_0
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16111 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => A_3_IBUF_0,
      ADR3 => A_2_IBUF_0,
      ADR4 => A_1_IBUF_0,
      ADR5 => A_0_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1611
    );
  A_11_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_11_IBUF_84,
      I => A(11)
    );
  ProtoComp2_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_11_IBUF_84,
      O => A_11_IBUF_0
    );
  A_15_GND_4_o_wide_mux_0_OUT_21_A_15_GND_4_o_wide_mux_0_OUT_21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => A_15_GND_4_o_wide_mux_0_OUT_1_Q,
      O => A_15_GND_4_o_wide_mux_0_OUT_1_0
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT281161 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"C0C0C000C0C0C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_0,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR3 => Mram_A_15_GND_4_o_wide_mux_0_OUT28111,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      ADR5 => '1',
      O => A_15_GND_4_o_wide_mux_0_OUT_21_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT311161 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"C0C08080"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_375,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_0,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR3 => '1',
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      O => A_15_GND_4_o_wide_mux_0_OUT_1_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31114 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => A_3_IBUF_0,
      ADR3 => A_2_IBUF_0,
      ADR4 => A_0_IBUF_0,
      ADR5 => A_1_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT31113_375
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31112 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => A_3_IBUF_0,
      ADR3 => A_1_IBUF_0,
      ADR4 => A_2_IBUF_0,
      ADR5 => A_0_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28113
    );
  INV_Q_21CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_21_INV_Q_21CLK
    );
  Q_21 : X_FF
    generic map(
      LOC => "OLOGIC_X3Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_21_INV_Q_21CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_21_Q,
      O => Q_21_341,
      SET => GND,
      RST => CLR_IBUF_0
    );
  A_13_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      O => A_13_IBUF_90,
      I => A(13)
    );
  ProtoComp2_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => A_13_IBUF_90,
      O => A_13_IBUF_0
    );
  INV_Q_24CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_24_INV_Q_24CLK
    );
  Q_24 : X_FF
    generic map(
      LOC => "OLOGIC_X2Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_24_INV_Q_24CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_24_Q,
      O => Q_24_346,
      SET => GND,
      RST => CLR_IBUF_0
    );
  CLR_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLR_IBUF_102,
      I => CLR
    );
  ProtoComp2_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLR_IBUF_102,
      O => CLR_IBUF_0
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => CLK_BUFGP
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5111 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => A_3_IBUF_0,
      ADR3 => A_2_IBUF_0,
      ADR4 => A_0_IBUF_0,
      ADR5 => A_6_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26111
    );
  INV_Q_16CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_16_INV_Q_16CLK
    );
  Q_16 : X_FF
    generic map(
      LOC => "OLOGIC_X4Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_16_INV_Q_16CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_16_Q,
      O => Q_16_345,
      SET => GND,
      RST => CLR_IBUF_0
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT261161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"3000300030000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => A_11_IBUF_0,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT2611,
      ADR3 => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_327,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      ADR5 => Mram_A_15_GND_4_o_wide_mux_0_OUT26112,
      O => A_15_GND_4_o_wide_mux_0_OUT_20_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26113 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_1_IBUF_0,
      ADR2 => A_4_IBUF_0,
      ADR3 => A_3_IBUF_0,
      ADR4 => A_0_IBUF_0,
      ADR5 => A_6_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26112
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT28112 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => A_0_IBUF_0,
      ADR1 => A_1_IBUF_0,
      ADR2 => A_5_IBUF_0,
      ADR3 => A_4_IBUF_0,
      ADR4 => A_3_IBUF_0,
      ADR5 => A_2_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28111
    );
  INV_Q_20CLK : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Q_20_INV_Q_20CLK
    );
  Q_20 : X_FF
    generic map(
      LOC => "OLOGIC_X3Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Q_20_INV_Q_20CLK,
      I => A_15_GND_4_o_wide_mux_0_OUT_20_Q,
      O => Q_20_339,
      SET => GND,
      RST => CLR_IBUF_0
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21114 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"0010001000100000"
    )
    port map (
      ADR0 => A_11_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      ADR3 => A_15_IBUF_0,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_368,
      ADR5 => Mram_A_15_GND_4_o_wide_mux_0_OUT21111,
      O => A_15_GND_4_o_wide_mux_0_OUT_16_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT21112 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_10_IBUF_0,
      ADR2 => A_2_IBUF_0,
      ADR3 => A_13_IBUF_0,
      ADR4 => A_1_IBUF_0,
      ADR5 => A_8_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT21111
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1213 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_1_IBUF_0,
      ADR2 => A_10_IBUF_0,
      ADR3 => A_2_IBUF_0,
      ADR4 => A_13_IBUF_0,
      ADR5 => A_8_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_374
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26113_Mram_A_15_GND_4_o_wide_mux_0_OUT26113_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_205,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_0
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT26114 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => A_13_IBUF_0,
      ADR3 => A_14_IBUF_0,
      ADR4 => A_12_IBUF_0,
      ADR5 => '1',
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT26113_327
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31113 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => X"00000001"
    )
    port map (
      ADR0 => A_6_IBUF_0,
      ADR1 => A_11_IBUF_0,
      ADR2 => A_13_IBUF_0,
      ADR3 => A_14_IBUF_0,
      ADR4 => A_12_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT28112_205
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT31111 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => A_9_IBUF_0,
      ADR2 => A_10_IBUF_0,
      ADR3 => A_8_IBUF_0,
      ADR4 => A_7_IBUF_0,
      ADR5 => A_15_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT2611
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5113 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => X"00000000000000C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT26111,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_378,
      ADR3 => A_14_IBUF_0,
      ADR4 => A_13_IBUF_0,
      ADR5 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_2_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT5112 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_8_IBUF_0,
      ADR1 => A_7_IBUF_0,
      ADR2 => A_9_IBUF_0,
      ADR3 => A_10_IBUF_0,
      ADR4 => A_11_IBUF_0,
      ADR5 => A_12_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT5111_378
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16113 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT1611,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_373,
      ADR2 => A_13_IBUF_0,
      ADR3 => A_12_IBUF_0,
      ADR4 => A_14_IBUF_0,
      ADR5 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_12_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1214 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"0010001000100000"
    )
    port map (
      ADR0 => A_11_IBUF_0,
      ADR1 => A_4_IBUF_0,
      ADR2 => Mram_A_15_GND_4_o_wide_mux_0_OUT121,
      ADR3 => A_15_IBUF_0,
      ADR4 => Mram_A_15_GND_4_o_wide_mux_0_OUT1212_374,
      ADR5 => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_368,
      O => A_15_GND_4_o_wide_mux_0_OUT_0_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1212 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => A_5_IBUF_0,
      ADR1 => A_10_IBUF_0,
      ADR2 => A_2_IBUF_0,
      ADR3 => A_13_IBUF_0,
      ADR4 => A_0_IBUF_0,
      ADR5 => A_8_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT1211_368
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT32113 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => Mram_A_15_GND_4_o_wide_mux_0_OUT28113,
      ADR1 => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_373,
      ADR2 => A_13_IBUF_0,
      ADR3 => A_12_IBUF_0,
      ADR4 => A_14_IBUF_0,
      ADR5 => A_15_IBUF_0,
      O => A_15_GND_4_o_wide_mux_0_OUT_24_Q
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT16112 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_7_IBUF_0,
      ADR1 => A_6_IBUF_0,
      ADR2 => A_8_IBUF_0,
      ADR3 => A_9_IBUF_0,
      ADR4 => A_10_IBUF_0,
      ADR5 => A_11_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT16111_373
    );
  Mram_A_15_GND_4_o_wide_mux_0_OUT1211 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => A_14_IBUF_0,
      ADR1 => A_6_IBUF_0,
      ADR2 => A_9_IBUF_0,
      ADR3 => A_3_IBUF_0,
      ADR4 => A_12_IBUF_0,
      ADR5 => A_7_IBUF_0,
      O => Mram_A_15_GND_4_o_wide_mux_0_OUT121
    );
  NlwBlock_programa_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_programa_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

