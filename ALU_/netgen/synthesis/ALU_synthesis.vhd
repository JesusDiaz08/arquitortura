--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_synthesis.vhd
-- /___/   /\     Timestamp: Tue Sep 12 21:46:47 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ALU -w -dir netgen/synthesis -ofmt vhdl -sim ALU.ngc ALU_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: ALU.ngc
-- Output file	: C:\Users\ANDRES\Documents\GitHub\arquitortura\ALU_\netgen\synthesis\ALU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ALU
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

entity ALU is
  port (
    BINVERT : in STD_LOGIC := 'X'; 
    AINVERT : in STD_LOGIC := 'X'; 
    BZ : out STD_LOGIC; 
    BC : out STD_LOGIC; 
    BN : out STD_LOGIC; 
    BOV : out STD_LOGIC; 
    OP : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RES : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal OP_1_IBUF_0 : STD_LOGIC; 
  signal OP_0_IBUF_1 : STD_LOGIC; 
  signal A_0_IBUF_2 : STD_LOGIC; 
  signal A_1_IBUF_3 : STD_LOGIC; 
  signal A_2_IBUF_4 : STD_LOGIC; 
  signal A_3_IBUF_5 : STD_LOGIC; 
  signal B_0_IBUF_6 : STD_LOGIC; 
  signal B_1_IBUF_7 : STD_LOGIC; 
  signal B_2_IBUF_8 : STD_LOGIC; 
  signal B_3_IBUF_9 : STD_LOGIC; 
  signal BINVERT_IBUF_10 : STD_LOGIC; 
  signal AINVERT_IBUF_11 : STD_LOGIC; 
  signal RES_0_OBUF_12 : STD_LOGIC; 
  signal RES_1_OBUF_13 : STD_LOGIC; 
  signal RES_2_OBUF_14 : STD_LOGIC; 
  signal BN_OBUF_15 : STD_LOGIC; 
  signal A_1_BINVERT_OR_5_o : STD_LOGIC; 
  signal BC_OBUF_20 : STD_LOGIC; 
  signal BZ_OBUF_21 : STD_LOGIC; 
  signal BOV_OBUF_22 : STD_LOGIC; 
  signal A_1_BINVERT_OR_5_o1_23 : STD_LOGIC; 
  signal Mmux_BC11 : STD_LOGIC; 
  signal PALU_MUXB : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  BZ1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RES_0_OBUF_12,
      I1 => RES_1_OBUF_13,
      I2 => RES_2_OBUF_14,
      I3 => BN_OBUF_15,
      O => BZ_OBUF_21
    );
  Mxor_PALU_MUXB_3_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B_3_IBUF_9,
      I1 => BINVERT_IBUF_10,
      O => PALU_MUXB(3)
    );
  Mxor_PALU_MUXB_2_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B_2_IBUF_8,
      I1 => BINVERT_IBUF_10,
      O => PALU_MUXB(2)
    );
  Mxor_PALU_MUXB_1_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B_1_IBUF_7,
      I1 => BINVERT_IBUF_10,
      O => PALU_MUXB(1)
    );
  Mmux_PALU_VRES_0_11 : LUT6
    generic map(
      INIT => X"86E06B3E6B3E86E0"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => B_0_IBUF_6,
      I3 => BINVERT_IBUF_10,
      I4 => A_0_IBUF_2,
      I5 => AINVERT_IBUF_11,
      O => RES_0_OBUF_12
    );
  A_1_BINVERT_OR_5_o11 : LUT6
    generic map(
      INIT => X"0888880800808000"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => B_0_IBUF_6,
      I3 => A_0_IBUF_2,
      I4 => AINVERT_IBUF_11,
      I5 => BINVERT_IBUF_10,
      O => A_1_BINVERT_OR_5_o1_23
    );
  Mmux_PALU_VRES_1_11 : LUT6
    generic map(
      INIT => X"68E0B63EB63E68E0"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => PALU_MUXB(1),
      I3 => A_1_BINVERT_OR_5_o1_23,
      I4 => A_1_IBUF_3,
      I5 => AINVERT_IBUF_11,
      O => RES_1_OBUF_13
    );
  Mmux_PALU_VRES_2_11 : LUT6
    generic map(
      INIT => X"68E0B63EB63E68E0"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => PALU_MUXB(2),
      I3 => A_1_BINVERT_OR_5_o,
      I4 => A_2_IBUF_4,
      I5 => AINVERT_IBUF_11,
      O => RES_2_OBUF_14
    );
  Mmux_BC111 : LUT6
    generic map(
      INIT => X"8000EAAAEAAA8000"
    )
    port map (
      I0 => PALU_MUXB(2),
      I1 => A_1_BINVERT_OR_5_o,
      I2 => OP_0_IBUF_1,
      I3 => OP_1_IBUF_0,
      I4 => A_2_IBUF_4,
      I5 => AINVERT_IBUF_11,
      O => Mmux_BC11
    );
  OP_1_IBUF : IBUF
    port map (
      I => OP(1),
      O => OP_1_IBUF_0
    );
  OP_0_IBUF : IBUF
    port map (
      I => OP(0),
      O => OP_0_IBUF_1
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_5
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_4
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_3
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_2
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_9
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_8
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_7
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_6
    );
  BINVERT_IBUF : IBUF
    port map (
      I => BINVERT,
      O => BINVERT_IBUF_10
    );
  AINVERT_IBUF : IBUF
    port map (
      I => AINVERT,
      O => AINVERT_IBUF_11
    );
  RES_3_OBUF : OBUF
    port map (
      I => BN_OBUF_15,
      O => RES(3)
    );
  RES_2_OBUF : OBUF
    port map (
      I => RES_2_OBUF_14,
      O => RES(2)
    );
  RES_1_OBUF : OBUF
    port map (
      I => RES_1_OBUF_13,
      O => RES(1)
    );
  RES_0_OBUF : OBUF
    port map (
      I => RES_0_OBUF_12,
      O => RES(0)
    );
  BZ_OBUF : OBUF
    port map (
      I => BZ_OBUF_21,
      O => BZ
    );
  BC_OBUF : OBUF
    port map (
      I => BC_OBUF_20,
      O => BC
    );
  BN_OBUF : OBUF
    port map (
      I => BN_OBUF_15,
      O => BN
    );
  BOV_OBUF : OBUF
    port map (
      I => BOV_OBUF_22,
      O => BOV
    );
  Mmux_BN11 : LUT6
    generic map(
      INIT => X"68E0B63EB63E68E0"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => PALU_MUXB(3),
      I3 => Mmux_BC11,
      I4 => AINVERT_IBUF_11,
      I5 => A_3_IBUF_5,
      O => BN_OBUF_15
    );
  A_1_BINVERT_OR_5_o1 : LUT5
    generic map(
      INIT => X"28BEBE28"
    )
    port map (
      I0 => A_1_BINVERT_OR_5_o1_23,
      I1 => B_1_IBUF_7,
      I2 => BINVERT_IBUF_10,
      I3 => A_1_IBUF_3,
      I4 => AINVERT_IBUF_11,
      O => A_1_BINVERT_OR_5_o
    );
  Mmux_BC12 : LUT6
    generic map(
      INIT => X"8888088008800000"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => A_3_IBUF_5,
      I3 => AINVERT_IBUF_11,
      I4 => PALU_MUXB(3),
      I5 => Mmux_BC11,
      O => BC_OBUF_20
    );
  Mxor_BOV_xo_0_1 : LUT6
    generic map(
      INIT => X"0080080008000080"
    )
    port map (
      I0 => OP_0_IBUF_1,
      I1 => OP_1_IBUF_0,
      I2 => Mmux_BC11,
      I3 => PALU_MUXB(3),
      I4 => A_3_IBUF_5,
      I5 => AINVERT_IBUF_11,
      O => BOV_OBUF_22
    );

end Structure;

