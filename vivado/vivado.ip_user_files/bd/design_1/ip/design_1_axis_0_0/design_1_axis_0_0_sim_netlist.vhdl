-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
-- Date        : Thu Feb  8 14:21:56 2024
-- Host        : PINI-AMD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axis_0_0 -prefix
--               design_1_axis_0_0_ design_1_axis_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    \r_fu_641__0\ : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_fu_64 : out STD_LOGIC;
    r_2_fu_109_p2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \r_fu_64_reg[1]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    strm_out_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg : in STD_LOGIC;
    \i_fu_68_reg[1]\ : in STD_LOGIC;
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_done_cache_reg_1 : in STD_LOGIC;
    tmpo_last_reg_220 : in STD_LOGIC
  );
end design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init is
  signal \^ap_done_cache\ : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_2\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__1_n_2\ : STD_LOGIC;
  signal \^r_fu_641__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_fu_64[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_fu_64[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_fu_64[1]_i_2\ : label is "soft_lutpair10";
begin
  ap_done_cache <= \^ap_done_cache\;
  \r_fu_641__0\ <= \^r_fu_641__0\;
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCF550000"
    )
        port map (
      I0 => \^ap_done_cache\,
      I1 => \^r_fu_641__0\,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I4 => Q(1),
      I5 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAFF"
    )
        port map (
      I0 => ap_done_cache_reg_1,
      I1 => ap_loop_init_int,
      I2 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I3 => ap_done_cache_reg_0,
      O => \^r_fu_641__0\
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone,
      I1 => ap_done_cache_reg_0,
      I2 => ap_loop_init_int,
      I3 => ap_done_cache_reg_1,
      I4 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I5 => \^ap_done_cache\,
      O => \ap_done_cache_i_1__0_n_2\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_2\,
      Q => \^ap_done_cache\,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A8A8A800A0A0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^r_fu_641__0\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => strm_out_TREADY_int_regslice,
      I4 => Q(1),
      I5 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      O => ap_rst_n_0
    );
\ap_loop_init_int_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF555577FFD555"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => ap_done_cache_reg_0,
      I3 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => ap_done_cache_reg_1,
      O => \ap_loop_init_int_i_1__1_n_2\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__1_n_2\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFAAFFAAFFAA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_cache_reg_1,
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I4 => ap_done_cache_reg_0,
      I5 => ap_block_pp0_stage0_subdone,
      O => \ap_CS_fsm_reg[5]\
    );
\i_fu_68[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F0F0F070707070"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I2 => \i_fu_68_reg[1]\,
      I3 => strm_out_TREADY_int_regslice,
      I4 => Q(1),
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_loop_init_int_reg_0
    );
\r_fu_64[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_done_cache_reg_1,
      O => r_2_fu_109_p2(0)
    );
\r_fu_64[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A800AA00"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone,
      I1 => ap_done_cache_reg_1,
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I4 => ap_done_cache_reg_0,
      O => r_fu_64
    );
\r_fu_64[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => ap_done_cache_reg_0,
      I1 => ap_loop_init_int,
      I2 => ap_done_cache_reg_1,
      O => r_2_fu_109_p2(1)
    );
\tmpo_last_reg_220[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FFF5DDD0AAA0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone,
      I1 => ap_done_cache_reg_0,
      I2 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => ap_done_cache_reg_1,
      I5 => tmpo_last_reg_220,
      O => \r_fu_64_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1 is
  port (
    \i_fu_70_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_fu_66_reg[1]\ : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_fu_66_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    strm_in_TREADY_int_regslice : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_fu_66_reg[1]_1\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \i_fu_70_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg : in STD_LOGIC;
    strm_in_TVALID_int_regslice : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1 : entity is "axis_flow_control_loop_pipe_sequential_init";
end design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1;

architecture STRUCTURE of design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_2\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_2 : STD_LOGIC;
  signal \^r_fu_66_reg[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_state[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_fu_66[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_fu_66[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_fu_66[1]_i_2\ : label is "soft_lutpair7";
begin
  \r_fu_66_reg[1]\ <= \^r_fu_66_reg[1]\;
\B_V_data_1_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0D0000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I3 => Q(0),
      I4 => strm_in_TVALID_int_regslice,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => strm_in_TREADY_int_regslice
    );
\B_V_data_1_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I3 => Q(0),
      O => \^r_fu_66_reg[1]\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1D00"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I2 => \^r_fu_66_reg[1]\,
      I3 => \ap_CS_fsm_reg[3]\(1),
      I4 => \ap_CS_fsm_reg[3]\(0),
      O => \ap_CS_fsm_reg[2]\(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => \^r_fu_66_reg[1]\,
      I2 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_CS_fsm_reg[2]\(1)
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_2\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_2\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55F55DF5F5F5FDF5"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Q(1),
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I4 => Q(0),
      I5 => strm_in_TVALID_int_regslice,
      O => ap_loop_init_int_i_1_n_2
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_2,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF0D0"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I3 => Q(0),
      I4 => \ap_CS_fsm_reg[3]\(0),
      O => \r_fu_66_reg[1]_1\
    );
\i_fu_70[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F9AAAAAAAAAAAA"
    )
        port map (
      I0 => \i_fu_70_reg[1]_0\,
      I1 => Q(1),
      I2 => ap_loop_init_int,
      I3 => Q(0),
      I4 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I5 => strm_in_TVALID_int_regslice,
      O => \i_fu_70_reg[1]\
    );
\input_0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A000000000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => ap_loop_init_int,
      I2 => \i_fu_70_reg[1]_0\,
      I3 => \^r_fu_66_reg[1]\,
      I4 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I5 => strm_in_TVALID_int_regslice,
      O => E(0)
    );
\input_3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_70_reg[1]_0\,
      I2 => \ap_CS_fsm_reg[3]\(1),
      I3 => \^r_fu_66_reg[1]\,
      I4 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I5 => strm_in_TVALID_int_regslice,
      O => ap_loop_init_int_reg_0(0)
    );
\r_fu_66[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      O => D(0)
    );
\r_fu_66[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0D00000"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I3 => Q(0),
      I4 => strm_in_TVALID_int_regslice,
      O => \r_fu_66_reg[1]_0\(0)
    );
\r_fu_66[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => Q(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    select_ln9_2_fu_140_p3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_fu_48_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_fu_48_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg : in STD_LOGIC;
    \output_2_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \output_1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2 : entity is "axis_flow_control_loop_pipe_sequential_init";
end design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2;

architecture STRUCTURE of design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2 is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_2 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_2\ : STD_LOGIC;
  signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal icmp_ln34_fu_84_p22_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_1_fu_48[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_1_fu_48[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_1_fu_48[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_1_fu_48[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \output_1[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \output_2[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \output_3[31]_i_1\ : label is "soft_lutpair0";
begin
\add_ln35_fu_148_p2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(16),
      I1 => \output_1_reg[31]_0\(16),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(16),
      I5 => \output_1_reg[31]_2\(16),
      O => select_ln9_2_fu_140_p3(16)
    );
\add_ln35_fu_148_p2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(15),
      I1 => \output_1_reg[31]_0\(15),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(15),
      I5 => \output_1_reg[31]_2\(15),
      O => select_ln9_2_fu_140_p3(15)
    );
\add_ln35_fu_148_p2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(14),
      I1 => \output_1_reg[31]_0\(14),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(14),
      I5 => \output_1_reg[31]_2\(14),
      O => select_ln9_2_fu_140_p3(14)
    );
\add_ln35_fu_148_p2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(13),
      I1 => \output_1_reg[31]_0\(13),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(13),
      I5 => \output_1_reg[31]_2\(13),
      O => select_ln9_2_fu_140_p3(13)
    );
\add_ln35_fu_148_p2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(12),
      I1 => \output_1_reg[31]_0\(12),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(12),
      I5 => \output_1_reg[31]_2\(12),
      O => select_ln9_2_fu_140_p3(12)
    );
\add_ln35_fu_148_p2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(11),
      I1 => \output_1_reg[31]_0\(11),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(11),
      I5 => \output_1_reg[31]_2\(11),
      O => select_ln9_2_fu_140_p3(11)
    );
\add_ln35_fu_148_p2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(10),
      I1 => \output_1_reg[31]_0\(10),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(10),
      I5 => \output_1_reg[31]_2\(10),
      O => select_ln9_2_fu_140_p3(10)
    );
\add_ln35_fu_148_p2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(9),
      I1 => \output_1_reg[31]_0\(9),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(9),
      I5 => \output_1_reg[31]_2\(9),
      O => select_ln9_2_fu_140_p3(9)
    );
\add_ln35_fu_148_p2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(24),
      I1 => \output_1_reg[31]_0\(24),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(24),
      I5 => \output_1_reg[31]_2\(24),
      O => select_ln9_2_fu_140_p3(24)
    );
\add_ln35_fu_148_p2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(23),
      I1 => \output_1_reg[31]_0\(23),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(23),
      I5 => \output_1_reg[31]_2\(23),
      O => select_ln9_2_fu_140_p3(23)
    );
\add_ln35_fu_148_p2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(22),
      I1 => \output_1_reg[31]_0\(22),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(22),
      I5 => \output_1_reg[31]_2\(22),
      O => select_ln9_2_fu_140_p3(22)
    );
\add_ln35_fu_148_p2_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(21),
      I1 => \output_1_reg[31]_0\(21),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(21),
      I5 => \output_1_reg[31]_2\(21),
      O => select_ln9_2_fu_140_p3(21)
    );
\add_ln35_fu_148_p2_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(20),
      I1 => \output_1_reg[31]_0\(20),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(20),
      I5 => \output_1_reg[31]_2\(20),
      O => select_ln9_2_fu_140_p3(20)
    );
\add_ln35_fu_148_p2_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(19),
      I1 => \output_1_reg[31]_0\(19),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(19),
      I5 => \output_1_reg[31]_2\(19),
      O => select_ln9_2_fu_140_p3(19)
    );
\add_ln35_fu_148_p2_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(18),
      I1 => \output_1_reg[31]_0\(18),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(18),
      I5 => \output_1_reg[31]_2\(18),
      O => select_ln9_2_fu_140_p3(18)
    );
\add_ln35_fu_148_p2_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(17),
      I1 => \output_1_reg[31]_0\(17),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(17),
      I5 => \output_1_reg[31]_2\(17),
      O => select_ln9_2_fu_140_p3(17)
    );
\add_ln35_fu_148_p2_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(31),
      I1 => \output_1_reg[31]_0\(31),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(31),
      I5 => \output_1_reg[31]_2\(31),
      O => select_ln9_2_fu_140_p3(31)
    );
\add_ln35_fu_148_p2_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(30),
      I1 => \output_1_reg[31]_0\(30),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(30),
      I5 => \output_1_reg[31]_2\(30),
      O => select_ln9_2_fu_140_p3(30)
    );
\add_ln35_fu_148_p2_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(29),
      I1 => \output_1_reg[31]_0\(29),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(29),
      I5 => \output_1_reg[31]_2\(29),
      O => select_ln9_2_fu_140_p3(29)
    );
\add_ln35_fu_148_p2_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(28),
      I1 => \output_1_reg[31]_0\(28),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(28),
      I5 => \output_1_reg[31]_2\(28),
      O => select_ln9_2_fu_140_p3(28)
    );
\add_ln35_fu_148_p2_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(27),
      I1 => \output_1_reg[31]_0\(27),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(27),
      I5 => \output_1_reg[31]_2\(27),
      O => select_ln9_2_fu_140_p3(27)
    );
\add_ln35_fu_148_p2_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(26),
      I1 => \output_1_reg[31]_0\(26),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(26),
      I5 => \output_1_reg[31]_2\(26),
      O => select_ln9_2_fu_140_p3(26)
    );
\add_ln35_fu_148_p2_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(25),
      I1 => \output_1_reg[31]_0\(25),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(25),
      I5 => \output_1_reg[31]_2\(25),
      O => select_ln9_2_fu_140_p3(25)
    );
add_ln35_fu_148_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(0),
      I1 => \output_1_reg[31]_0\(0),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(0),
      I5 => \output_1_reg[31]_2\(0),
      O => select_ln9_2_fu_140_p3(0)
    );
add_ln35_fu_148_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(8),
      I1 => \output_1_reg[31]_0\(8),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(8),
      I5 => \output_1_reg[31]_2\(8),
      O => select_ln9_2_fu_140_p3(8)
    );
add_ln35_fu_148_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(7),
      I1 => \output_1_reg[31]_0\(7),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(7),
      I5 => \output_1_reg[31]_2\(7),
      O => select_ln9_2_fu_140_p3(7)
    );
add_ln35_fu_148_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(6),
      I1 => \output_1_reg[31]_0\(6),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(6),
      I5 => \output_1_reg[31]_2\(6),
      O => select_ln9_2_fu_140_p3(6)
    );
add_ln35_fu_148_p2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(5),
      I1 => \output_1_reg[31]_0\(5),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(5),
      I5 => \output_1_reg[31]_2\(5),
      O => select_ln9_2_fu_140_p3(5)
    );
add_ln35_fu_148_p2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(4),
      I1 => \output_1_reg[31]_0\(4),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(4),
      I5 => \output_1_reg[31]_2\(4),
      O => select_ln9_2_fu_140_p3(4)
    );
add_ln35_fu_148_p2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(3),
      I1 => \output_1_reg[31]_0\(3),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(3),
      I5 => \output_1_reg[31]_2\(3),
      O => select_ln9_2_fu_140_p3(3)
    );
add_ln35_fu_148_p2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(2),
      I1 => \output_1_reg[31]_0\(2),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(2),
      I5 => \output_1_reg[31]_2\(2),
      O => select_ln9_2_fu_140_p3(2)
    );
add_ln35_fu_148_p2_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \output_1_reg[31]\(1),
      I1 => \output_1_reg[31]_0\(1),
      I2 => ap_sig_allocacmp_i(0),
      I3 => ap_sig_allocacmp_i(1),
      I4 => \output_1_reg[31]_1\(1),
      I5 => \output_1_reg[31]_2\(1),
      O => select_ln9_2_fu_140_p3(1)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1D00"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I2 => icmp_ln34_fu_84_p22_in,
      I3 => \output_2_reg[0]\(1),
      I4 => \output_2_reg[0]\(0),
      O => \ap_CS_fsm_reg[4]_0\(0)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \output_2_reg[0]\(1),
      I1 => icmp_ln34_fu_84_p22_in,
      I2 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_CS_fsm_reg[4]_0\(1)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000444"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I4 => Q(1),
      O => icmp_ln34_fu_84_p22_in
    );
ap_done_cache_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      I4 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I5 => ap_done_cache,
      O => ap_done_cache_i_1_n_2
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_2,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FF555575FF55"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Q(0),
      I2 => Q(2),
      I3 => ap_loop_init_int,
      I4 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I5 => Q(1),
      O => \ap_loop_init_int_i_1__0_n_2\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_2\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF00FB00"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I4 => Q(1),
      I5 => \output_2_reg[0]\(0),
      O => \i_1_fu_48_reg[0]_0\
    );
\i_1_fu_48[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0FB"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => Q(0),
      O => \i_1_fu_48_reg[0]\(0)
    );
\i_1_fu_48[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      O => \i_1_fu_48_reg[0]\(1)
    );
\i_1_fu_48[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FB00"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I4 => Q(1),
      O => E(0)
    );
\i_1_fu_48[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0608"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      O => \i_1_fu_48_reg[0]\(2)
    );
\output_0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A000A000A020"
    )
        port map (
      I0 => \output_2_reg[0]\(1),
      I1 => Q(1),
      I2 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(2),
      I5 => Q(0),
      O => \ap_CS_fsm_reg[4]\(0)
    );
\output_1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \output_2_reg[0]\(1),
      I1 => Q(1),
      I2 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(0),
      O => \ap_CS_fsm_reg[4]_2\(0)
    );
\output_2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300530F53F053FF5"
    )
        port map (
      I0 => \output_1_reg[31]_2\(0),
      I1 => \output_1_reg[31]_1\(0),
      I2 => ap_sig_allocacmp_i(1),
      I3 => ap_sig_allocacmp_i(0),
      I4 => \output_1_reg[31]_0\(0),
      I5 => \output_1_reg[31]\(0),
      O => D(0)
    );
\output_2[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(1),
      I1 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i(1)
    );
\output_2[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(0),
      I1 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i(0)
    );
\output_2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \output_2_reg[0]\(1),
      I1 => Q(1),
      I2 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(0),
      O => \ap_CS_fsm_reg[4]_3\(0)
    );
\output_3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \output_2_reg[0]\(1),
      I1 => Q(1),
      I2 => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(0),
      O => \ap_CS_fsm_reg[4]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_regslice_both is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    strm_in_TVALID_int_regslice : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \B_V_data_1_payload_B_reg[63]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg : in STD_LOGIC;
    icmp_ln28_fu_102_p20_in : in STD_LOGIC;
    strm_in_TVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    strm_in_TREADY_int_regslice : in STD_LOGIC;
    strm_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end design_1_axis_0_0_axis_regslice_both;

architecture STRUCTURE of design_1_axis_0_0_axis_regslice_both is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[32]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[33]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[34]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[35]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[36]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[37]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[38]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[39]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[40]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[41]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[42]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[43]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[44]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[45]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[46]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[47]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[48]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[49]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[50]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[51]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[52]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[53]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[54]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[55]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[56]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[57]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[58]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[59]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[60]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[61]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[62]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[63]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[9]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[32]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[33]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[34]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[35]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[36]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[37]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[38]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[39]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[40]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[41]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[42]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[43]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[44]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[45]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[46]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[47]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[48]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[49]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[50]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[51]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[52]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[53]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[54]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[55]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[56]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[57]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[58]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[59]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[60]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[61]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[62]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[63]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[9]\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal B_V_data_1_sel_rd_i_1_n_2 : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal \B_V_data_1_sel_wr_i_1__1_n_2\ : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1_n_2\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^strm_in_tvalid_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \input_0[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \input_0[10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \input_0[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \input_0[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \input_0[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \input_0[14]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \input_0[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \input_0[16]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \input_0[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \input_0[18]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \input_0[19]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \input_0[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \input_0[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \input_0[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \input_0[22]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \input_0[23]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \input_0[24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \input_0[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \input_0[26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \input_0[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \input_0[28]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \input_0[29]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \input_0[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \input_0[30]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \input_0[31]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \input_0[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \input_0[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \input_0[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \input_0[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \input_0[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \input_0[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \input_0[9]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \input_3[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \input_3[10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \input_3[11]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \input_3[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \input_3[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \input_3[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \input_3[15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \input_3[16]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \input_3[17]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \input_3[18]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \input_3[19]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \input_3[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \input_3[20]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \input_3[21]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \input_3[22]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \input_3[23]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \input_3[24]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \input_3[25]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \input_3[26]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \input_3[27]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \input_3[28]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \input_3[29]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \input_3[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \input_3[30]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \input_3[31]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \input_3[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \input_3[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \input_3[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \input_3[6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \input_3[7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \input_3[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \input_3[9]_i_1\ : label is "soft_lutpair63";
begin
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  strm_in_TVALID_int_regslice <= \^strm_in_tvalid_int_regslice\;
\B_V_data_1_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^strm_in_tvalid_int_regslice\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(0),
      Q => \B_V_data_1_payload_A_reg_n_2_[0]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(10),
      Q => \B_V_data_1_payload_A_reg_n_2_[10]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(11),
      Q => \B_V_data_1_payload_A_reg_n_2_[11]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(12),
      Q => \B_V_data_1_payload_A_reg_n_2_[12]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(13),
      Q => \B_V_data_1_payload_A_reg_n_2_[13]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(14),
      Q => \B_V_data_1_payload_A_reg_n_2_[14]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(15),
      Q => \B_V_data_1_payload_A_reg_n_2_[15]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(16),
      Q => \B_V_data_1_payload_A_reg_n_2_[16]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(17),
      Q => \B_V_data_1_payload_A_reg_n_2_[17]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(18),
      Q => \B_V_data_1_payload_A_reg_n_2_[18]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(19),
      Q => \B_V_data_1_payload_A_reg_n_2_[19]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(1),
      Q => \B_V_data_1_payload_A_reg_n_2_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(20),
      Q => \B_V_data_1_payload_A_reg_n_2_[20]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(21),
      Q => \B_V_data_1_payload_A_reg_n_2_[21]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(22),
      Q => \B_V_data_1_payload_A_reg_n_2_[22]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(23),
      Q => \B_V_data_1_payload_A_reg_n_2_[23]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(24),
      Q => \B_V_data_1_payload_A_reg_n_2_[24]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(25),
      Q => \B_V_data_1_payload_A_reg_n_2_[25]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(26),
      Q => \B_V_data_1_payload_A_reg_n_2_[26]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(27),
      Q => \B_V_data_1_payload_A_reg_n_2_[27]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(28),
      Q => \B_V_data_1_payload_A_reg_n_2_[28]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(29),
      Q => \B_V_data_1_payload_A_reg_n_2_[29]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(2),
      Q => \B_V_data_1_payload_A_reg_n_2_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(30),
      Q => \B_V_data_1_payload_A_reg_n_2_[30]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(31),
      Q => \B_V_data_1_payload_A_reg_n_2_[31]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(32),
      Q => \B_V_data_1_payload_A_reg_n_2_[32]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(33),
      Q => \B_V_data_1_payload_A_reg_n_2_[33]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(34),
      Q => \B_V_data_1_payload_A_reg_n_2_[34]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(35),
      Q => \B_V_data_1_payload_A_reg_n_2_[35]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(36),
      Q => \B_V_data_1_payload_A_reg_n_2_[36]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(37),
      Q => \B_V_data_1_payload_A_reg_n_2_[37]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(38),
      Q => \B_V_data_1_payload_A_reg_n_2_[38]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(39),
      Q => \B_V_data_1_payload_A_reg_n_2_[39]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(3),
      Q => \B_V_data_1_payload_A_reg_n_2_[3]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(40),
      Q => \B_V_data_1_payload_A_reg_n_2_[40]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(41),
      Q => \B_V_data_1_payload_A_reg_n_2_[41]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(42),
      Q => \B_V_data_1_payload_A_reg_n_2_[42]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(43),
      Q => \B_V_data_1_payload_A_reg_n_2_[43]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(44),
      Q => \B_V_data_1_payload_A_reg_n_2_[44]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(45),
      Q => \B_V_data_1_payload_A_reg_n_2_[45]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(46),
      Q => \B_V_data_1_payload_A_reg_n_2_[46]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(47),
      Q => \B_V_data_1_payload_A_reg_n_2_[47]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(48),
      Q => \B_V_data_1_payload_A_reg_n_2_[48]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(49),
      Q => \B_V_data_1_payload_A_reg_n_2_[49]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(4),
      Q => \B_V_data_1_payload_A_reg_n_2_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(50),
      Q => \B_V_data_1_payload_A_reg_n_2_[50]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(51),
      Q => \B_V_data_1_payload_A_reg_n_2_[51]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(52),
      Q => \B_V_data_1_payload_A_reg_n_2_[52]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(53),
      Q => \B_V_data_1_payload_A_reg_n_2_[53]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(54),
      Q => \B_V_data_1_payload_A_reg_n_2_[54]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(55),
      Q => \B_V_data_1_payload_A_reg_n_2_[55]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(56),
      Q => \B_V_data_1_payload_A_reg_n_2_[56]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(57),
      Q => \B_V_data_1_payload_A_reg_n_2_[57]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(58),
      Q => \B_V_data_1_payload_A_reg_n_2_[58]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(59),
      Q => \B_V_data_1_payload_A_reg_n_2_[59]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(5),
      Q => \B_V_data_1_payload_A_reg_n_2_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(60),
      Q => \B_V_data_1_payload_A_reg_n_2_[60]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(61),
      Q => \B_V_data_1_payload_A_reg_n_2_[61]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(62),
      Q => \B_V_data_1_payload_A_reg_n_2_[62]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(63),
      Q => \B_V_data_1_payload_A_reg_n_2_[63]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(6),
      Q => \B_V_data_1_payload_A_reg_n_2_[6]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(7),
      Q => \B_V_data_1_payload_A_reg_n_2_[7]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(8),
      Q => \B_V_data_1_payload_A_reg_n_2_[8]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => strm_in_TDATA(9),
      Q => \B_V_data_1_payload_A_reg_n_2_[9]\,
      R => '0'
    );
\B_V_data_1_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => B_V_data_1_sel_wr,
      I1 => \^strm_in_tvalid_int_regslice\,
      I2 => \^b_v_data_1_state_reg[1]_0\,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(0),
      Q => \B_V_data_1_payload_B_reg_n_2_[0]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(10),
      Q => \B_V_data_1_payload_B_reg_n_2_[10]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(11),
      Q => \B_V_data_1_payload_B_reg_n_2_[11]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(12),
      Q => \B_V_data_1_payload_B_reg_n_2_[12]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(13),
      Q => \B_V_data_1_payload_B_reg_n_2_[13]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(14),
      Q => \B_V_data_1_payload_B_reg_n_2_[14]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(15),
      Q => \B_V_data_1_payload_B_reg_n_2_[15]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(16),
      Q => \B_V_data_1_payload_B_reg_n_2_[16]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(17),
      Q => \B_V_data_1_payload_B_reg_n_2_[17]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(18),
      Q => \B_V_data_1_payload_B_reg_n_2_[18]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(19),
      Q => \B_V_data_1_payload_B_reg_n_2_[19]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(1),
      Q => \B_V_data_1_payload_B_reg_n_2_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(20),
      Q => \B_V_data_1_payload_B_reg_n_2_[20]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(21),
      Q => \B_V_data_1_payload_B_reg_n_2_[21]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(22),
      Q => \B_V_data_1_payload_B_reg_n_2_[22]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(23),
      Q => \B_V_data_1_payload_B_reg_n_2_[23]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(24),
      Q => \B_V_data_1_payload_B_reg_n_2_[24]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(25),
      Q => \B_V_data_1_payload_B_reg_n_2_[25]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(26),
      Q => \B_V_data_1_payload_B_reg_n_2_[26]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(27),
      Q => \B_V_data_1_payload_B_reg_n_2_[27]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(28),
      Q => \B_V_data_1_payload_B_reg_n_2_[28]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(29),
      Q => \B_V_data_1_payload_B_reg_n_2_[29]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(2),
      Q => \B_V_data_1_payload_B_reg_n_2_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(30),
      Q => \B_V_data_1_payload_B_reg_n_2_[30]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(31),
      Q => \B_V_data_1_payload_B_reg_n_2_[31]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(32),
      Q => \B_V_data_1_payload_B_reg_n_2_[32]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(33),
      Q => \B_V_data_1_payload_B_reg_n_2_[33]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(34),
      Q => \B_V_data_1_payload_B_reg_n_2_[34]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(35),
      Q => \B_V_data_1_payload_B_reg_n_2_[35]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(36),
      Q => \B_V_data_1_payload_B_reg_n_2_[36]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(37),
      Q => \B_V_data_1_payload_B_reg_n_2_[37]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(38),
      Q => \B_V_data_1_payload_B_reg_n_2_[38]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(39),
      Q => \B_V_data_1_payload_B_reg_n_2_[39]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(3),
      Q => \B_V_data_1_payload_B_reg_n_2_[3]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(40),
      Q => \B_V_data_1_payload_B_reg_n_2_[40]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(41),
      Q => \B_V_data_1_payload_B_reg_n_2_[41]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(42),
      Q => \B_V_data_1_payload_B_reg_n_2_[42]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(43),
      Q => \B_V_data_1_payload_B_reg_n_2_[43]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(44),
      Q => \B_V_data_1_payload_B_reg_n_2_[44]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(45),
      Q => \B_V_data_1_payload_B_reg_n_2_[45]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(46),
      Q => \B_V_data_1_payload_B_reg_n_2_[46]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(47),
      Q => \B_V_data_1_payload_B_reg_n_2_[47]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(48),
      Q => \B_V_data_1_payload_B_reg_n_2_[48]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(49),
      Q => \B_V_data_1_payload_B_reg_n_2_[49]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(4),
      Q => \B_V_data_1_payload_B_reg_n_2_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(50),
      Q => \B_V_data_1_payload_B_reg_n_2_[50]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(51),
      Q => \B_V_data_1_payload_B_reg_n_2_[51]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(52),
      Q => \B_V_data_1_payload_B_reg_n_2_[52]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(53),
      Q => \B_V_data_1_payload_B_reg_n_2_[53]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(54),
      Q => \B_V_data_1_payload_B_reg_n_2_[54]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(55),
      Q => \B_V_data_1_payload_B_reg_n_2_[55]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(56),
      Q => \B_V_data_1_payload_B_reg_n_2_[56]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(57),
      Q => \B_V_data_1_payload_B_reg_n_2_[57]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(58),
      Q => \B_V_data_1_payload_B_reg_n_2_[58]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(59),
      Q => \B_V_data_1_payload_B_reg_n_2_[59]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(5),
      Q => \B_V_data_1_payload_B_reg_n_2_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(60),
      Q => \B_V_data_1_payload_B_reg_n_2_[60]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(61),
      Q => \B_V_data_1_payload_B_reg_n_2_[61]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(62),
      Q => \B_V_data_1_payload_B_reg_n_2_[62]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(63),
      Q => \B_V_data_1_payload_B_reg_n_2_[63]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(6),
      Q => \B_V_data_1_payload_B_reg_n_2_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(7),
      Q => \B_V_data_1_payload_B_reg_n_2_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(8),
      Q => \B_V_data_1_payload_B_reg_n_2_[8]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => strm_in_TDATA(9),
      Q => \B_V_data_1_payload_B_reg_n_2_[9]\,
      R => '0'
    );
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => icmp_ln28_fu_102_p20_in,
      I1 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I2 => \^strm_in_tvalid_int_regslice\,
      I3 => Q(0),
      I4 => B_V_data_1_sel,
      O => B_V_data_1_sel_rd_i_1_n_2
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_i_1_n_2,
      Q => B_V_data_1_sel,
      R => \^ap_rst_n_inv\
    );
\B_V_data_1_sel_wr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => strm_in_TVALID,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => \B_V_data_1_sel_wr_i_1__1_n_2\
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_wr_i_1__1_n_2\,
      Q => B_V_data_1_sel_wr,
      R => \^ap_rst_n_inv\
    );
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^strm_in_tvalid_int_regslice\,
      I2 => \^b_v_data_1_state_reg[1]_0\,
      I3 => strm_in_TREADY_int_regslice,
      I4 => strm_in_TVALID,
      O => \B_V_data_1_state[0]_i_1_n_2\
    );
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FCF0FAFAFEFAF"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => Q(0),
      I2 => \^strm_in_tvalid_int_regslice\,
      I3 => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      I4 => icmp_ln28_fu_102_p20_in,
      I5 => strm_in_TVALID,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_2\,
      Q => \^strm_in_tvalid_int_regslice\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\input_0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[0]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[0]\,
      I2 => B_V_data_1_sel,
      O => D(0)
    );
\input_0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[10]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[10]\,
      I2 => B_V_data_1_sel,
      O => D(10)
    );
\input_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[11]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[11]\,
      I2 => B_V_data_1_sel,
      O => D(11)
    );
\input_0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[12]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[12]\,
      I2 => B_V_data_1_sel,
      O => D(12)
    );
\input_0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[13]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[13]\,
      I2 => B_V_data_1_sel,
      O => D(13)
    );
\input_0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[14]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[14]\,
      I2 => B_V_data_1_sel,
      O => D(14)
    );
\input_0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[15]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[15]\,
      I2 => B_V_data_1_sel,
      O => D(15)
    );
\input_0[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[16]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[16]\,
      I2 => B_V_data_1_sel,
      O => D(16)
    );
\input_0[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[17]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[17]\,
      I2 => B_V_data_1_sel,
      O => D(17)
    );
\input_0[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[18]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[18]\,
      I2 => B_V_data_1_sel,
      O => D(18)
    );
\input_0[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[19]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[19]\,
      I2 => B_V_data_1_sel,
      O => D(19)
    );
\input_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[1]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[1]\,
      I2 => B_V_data_1_sel,
      O => D(1)
    );
\input_0[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[20]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[20]\,
      I2 => B_V_data_1_sel,
      O => D(20)
    );
\input_0[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[21]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[21]\,
      I2 => B_V_data_1_sel,
      O => D(21)
    );
\input_0[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[22]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[22]\,
      I2 => B_V_data_1_sel,
      O => D(22)
    );
\input_0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[23]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[23]\,
      I2 => B_V_data_1_sel,
      O => D(23)
    );
\input_0[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[24]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[24]\,
      I2 => B_V_data_1_sel,
      O => D(24)
    );
\input_0[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[25]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[25]\,
      I2 => B_V_data_1_sel,
      O => D(25)
    );
\input_0[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[26]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[26]\,
      I2 => B_V_data_1_sel,
      O => D(26)
    );
\input_0[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[27]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[27]\,
      I2 => B_V_data_1_sel,
      O => D(27)
    );
\input_0[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[28]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[28]\,
      I2 => B_V_data_1_sel,
      O => D(28)
    );
\input_0[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[29]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[29]\,
      I2 => B_V_data_1_sel,
      O => D(29)
    );
\input_0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[2]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[2]\,
      I2 => B_V_data_1_sel,
      O => D(2)
    );
\input_0[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[30]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[30]\,
      I2 => B_V_data_1_sel,
      O => D(30)
    );
\input_0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[31]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[31]\,
      I2 => B_V_data_1_sel,
      O => D(31)
    );
\input_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[3]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[3]\,
      I2 => B_V_data_1_sel,
      O => D(3)
    );
\input_0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[4]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[4]\,
      I2 => B_V_data_1_sel,
      O => D(4)
    );
\input_0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[5]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[5]\,
      I2 => B_V_data_1_sel,
      O => D(5)
    );
\input_0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[6]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[6]\,
      I2 => B_V_data_1_sel,
      O => D(6)
    );
\input_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[7]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[7]\,
      I2 => B_V_data_1_sel,
      O => D(7)
    );
\input_0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[8]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[8]\,
      I2 => B_V_data_1_sel,
      O => D(8)
    );
\input_0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[9]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[9]\,
      I2 => B_V_data_1_sel,
      O => D(9)
    );
\input_3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[32]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[32]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(0)
    );
\input_3[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[42]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[42]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(10)
    );
\input_3[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[43]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[43]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(11)
    );
\input_3[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[44]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[44]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(12)
    );
\input_3[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[45]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[45]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(13)
    );
\input_3[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[46]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[46]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(14)
    );
\input_3[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[47]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[47]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(15)
    );
\input_3[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[48]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[48]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(16)
    );
\input_3[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[49]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[49]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(17)
    );
\input_3[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[50]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[50]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(18)
    );
\input_3[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[51]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[51]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(19)
    );
\input_3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[33]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[33]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(1)
    );
\input_3[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[52]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[52]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(20)
    );
\input_3[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[53]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[53]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(21)
    );
\input_3[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[54]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[54]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(22)
    );
\input_3[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[55]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[55]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(23)
    );
\input_3[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[56]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[56]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(24)
    );
\input_3[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[57]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[57]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(25)
    );
\input_3[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[58]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[58]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(26)
    );
\input_3[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[59]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[59]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(27)
    );
\input_3[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[60]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[60]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(28)
    );
\input_3[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[61]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[61]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(29)
    );
\input_3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[34]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[34]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(2)
    );
\input_3[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[62]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[62]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(30)
    );
\input_3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[63]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[63]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(31)
    );
\input_3[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[35]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[35]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(3)
    );
\input_3[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[36]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[36]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(4)
    );
\input_3[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[37]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[37]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(5)
    );
\input_3[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[38]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[38]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(6)
    );
\input_3[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[39]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[39]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(7)
    );
\input_3[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[40]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[40]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(8)
    );
\input_3[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[41]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[41]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[63]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_regslice_both_0 is
  port (
    strm_out_TREADY_int_regslice : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_block_pp0_stage0_subdone : out STD_LOGIC;
    i_fu_68 : out STD_LOGIC;
    strm_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_done_cache : in STD_LOGIC;
    \r_fu_641__0\ : in STD_LOGIC;
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    strm_out_TREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \B_V_data_1_payload_A_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_0_0_axis_regslice_both_0 : entity is "axis_regslice_both";
end design_1_axis_0_0_axis_regslice_both_0;

architecture STRUCTURE of design_1_axis_0_0_axis_regslice_both_0 is
  signal \B_V_data_1_payload_A[63]_i_1__0_n_2\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[32]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[33]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[34]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[35]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[36]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[37]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[38]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[39]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[40]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[41]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[42]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[43]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[44]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[45]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[46]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[47]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[48]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[49]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[50]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[51]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[52]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[53]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[54]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[55]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[56]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[57]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[58]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[59]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[60]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[61]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[62]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[63]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_2_[9]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B[63]_i_1__0_n_2\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[10]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[11]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[12]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[13]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[14]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[15]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[16]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[17]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[18]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[19]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[20]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[21]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[22]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[23]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[24]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[25]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[26]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[27]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[28]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[29]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[30]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[31]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[32]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[33]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[34]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[35]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[36]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[37]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[38]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[39]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[40]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[41]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[42]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[43]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[44]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[45]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[46]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[47]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[48]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[49]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[50]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[51]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[52]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[53]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[54]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[55]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[56]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[57]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[58]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[59]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[60]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[61]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[62]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[63]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[8]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_2_[9]\ : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__0_n_2\ : STD_LOGIC;
  signal B_V_data_1_sel_rd_reg_n_2 : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_1_n_2 : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[0]_0\ : STD_LOGIC;
  signal \ap_CS_fsm[7]_i_2_n_2\ : STD_LOGIC;
  signal \^ap_block_pp0_stage0_subdone\ : STD_LOGIC;
  signal \^strm_out_tready_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_sel_rd_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of B_V_data_1_sel_wr_i_1 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \B_V_data_1_state[0]_i_2__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \B_V_data_1_state[1]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \r_fu_64[1]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \strm_out_TDATA[0]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \strm_out_TDATA[10]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \strm_out_TDATA[11]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \strm_out_TDATA[12]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \strm_out_TDATA[13]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \strm_out_TDATA[14]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \strm_out_TDATA[15]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \strm_out_TDATA[16]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \strm_out_TDATA[17]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \strm_out_TDATA[18]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \strm_out_TDATA[19]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \strm_out_TDATA[1]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \strm_out_TDATA[20]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \strm_out_TDATA[21]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \strm_out_TDATA[22]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \strm_out_TDATA[23]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \strm_out_TDATA[24]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \strm_out_TDATA[25]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \strm_out_TDATA[26]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \strm_out_TDATA[27]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \strm_out_TDATA[28]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \strm_out_TDATA[29]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \strm_out_TDATA[2]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \strm_out_TDATA[30]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \strm_out_TDATA[31]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \strm_out_TDATA[32]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \strm_out_TDATA[33]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \strm_out_TDATA[34]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \strm_out_TDATA[35]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \strm_out_TDATA[36]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \strm_out_TDATA[37]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \strm_out_TDATA[38]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \strm_out_TDATA[39]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \strm_out_TDATA[3]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \strm_out_TDATA[40]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \strm_out_TDATA[41]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \strm_out_TDATA[42]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \strm_out_TDATA[43]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \strm_out_TDATA[44]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \strm_out_TDATA[45]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \strm_out_TDATA[46]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \strm_out_TDATA[47]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \strm_out_TDATA[48]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \strm_out_TDATA[49]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \strm_out_TDATA[4]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \strm_out_TDATA[50]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \strm_out_TDATA[51]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \strm_out_TDATA[52]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \strm_out_TDATA[53]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \strm_out_TDATA[54]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \strm_out_TDATA[55]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \strm_out_TDATA[56]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \strm_out_TDATA[57]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \strm_out_TDATA[58]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \strm_out_TDATA[59]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \strm_out_TDATA[5]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \strm_out_TDATA[60]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \strm_out_TDATA[61]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \strm_out_TDATA[62]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \strm_out_TDATA[6]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \strm_out_TDATA[7]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \strm_out_TDATA[8]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \strm_out_TDATA[9]_INST_0\ : label is "soft_lutpair83";
begin
  \B_V_data_1_state_reg[0]_0\ <= \^b_v_data_1_state_reg[0]_0\;
  ap_block_pp0_stage0_subdone <= \^ap_block_pp0_stage0_subdone\;
  strm_out_TREADY_int_regslice <= \^strm_out_tready_int_regslice\;
\B_V_data_1_payload_A[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^strm_out_tready_int_regslice\,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => B_V_data_1_sel_wr,
      O => \B_V_data_1_payload_A[63]_i_1__0_n_2\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(0),
      Q => \B_V_data_1_payload_A_reg_n_2_[0]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(10),
      Q => \B_V_data_1_payload_A_reg_n_2_[10]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(11),
      Q => \B_V_data_1_payload_A_reg_n_2_[11]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(12),
      Q => \B_V_data_1_payload_A_reg_n_2_[12]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(13),
      Q => \B_V_data_1_payload_A_reg_n_2_[13]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(14),
      Q => \B_V_data_1_payload_A_reg_n_2_[14]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(15),
      Q => \B_V_data_1_payload_A_reg_n_2_[15]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(16),
      Q => \B_V_data_1_payload_A_reg_n_2_[16]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(17),
      Q => \B_V_data_1_payload_A_reg_n_2_[17]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(18),
      Q => \B_V_data_1_payload_A_reg_n_2_[18]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(19),
      Q => \B_V_data_1_payload_A_reg_n_2_[19]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(1),
      Q => \B_V_data_1_payload_A_reg_n_2_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(20),
      Q => \B_V_data_1_payload_A_reg_n_2_[20]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(21),
      Q => \B_V_data_1_payload_A_reg_n_2_[21]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(22),
      Q => \B_V_data_1_payload_A_reg_n_2_[22]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(23),
      Q => \B_V_data_1_payload_A_reg_n_2_[23]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(24),
      Q => \B_V_data_1_payload_A_reg_n_2_[24]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(25),
      Q => \B_V_data_1_payload_A_reg_n_2_[25]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(26),
      Q => \B_V_data_1_payload_A_reg_n_2_[26]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(27),
      Q => \B_V_data_1_payload_A_reg_n_2_[27]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(28),
      Q => \B_V_data_1_payload_A_reg_n_2_[28]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(29),
      Q => \B_V_data_1_payload_A_reg_n_2_[29]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(2),
      Q => \B_V_data_1_payload_A_reg_n_2_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(30),
      Q => \B_V_data_1_payload_A_reg_n_2_[30]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(31),
      Q => \B_V_data_1_payload_A_reg_n_2_[31]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(32),
      Q => \B_V_data_1_payload_A_reg_n_2_[32]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(33),
      Q => \B_V_data_1_payload_A_reg_n_2_[33]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(34),
      Q => \B_V_data_1_payload_A_reg_n_2_[34]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(35),
      Q => \B_V_data_1_payload_A_reg_n_2_[35]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(36),
      Q => \B_V_data_1_payload_A_reg_n_2_[36]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(37),
      Q => \B_V_data_1_payload_A_reg_n_2_[37]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(38),
      Q => \B_V_data_1_payload_A_reg_n_2_[38]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(39),
      Q => \B_V_data_1_payload_A_reg_n_2_[39]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(3),
      Q => \B_V_data_1_payload_A_reg_n_2_[3]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(40),
      Q => \B_V_data_1_payload_A_reg_n_2_[40]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(41),
      Q => \B_V_data_1_payload_A_reg_n_2_[41]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(42),
      Q => \B_V_data_1_payload_A_reg_n_2_[42]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(43),
      Q => \B_V_data_1_payload_A_reg_n_2_[43]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(44),
      Q => \B_V_data_1_payload_A_reg_n_2_[44]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(45),
      Q => \B_V_data_1_payload_A_reg_n_2_[45]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(46),
      Q => \B_V_data_1_payload_A_reg_n_2_[46]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(47),
      Q => \B_V_data_1_payload_A_reg_n_2_[47]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(48),
      Q => \B_V_data_1_payload_A_reg_n_2_[48]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(49),
      Q => \B_V_data_1_payload_A_reg_n_2_[49]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(4),
      Q => \B_V_data_1_payload_A_reg_n_2_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(50),
      Q => \B_V_data_1_payload_A_reg_n_2_[50]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(51),
      Q => \B_V_data_1_payload_A_reg_n_2_[51]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(52),
      Q => \B_V_data_1_payload_A_reg_n_2_[52]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(53),
      Q => \B_V_data_1_payload_A_reg_n_2_[53]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(54),
      Q => \B_V_data_1_payload_A_reg_n_2_[54]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(55),
      Q => \B_V_data_1_payload_A_reg_n_2_[55]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(56),
      Q => \B_V_data_1_payload_A_reg_n_2_[56]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(57),
      Q => \B_V_data_1_payload_A_reg_n_2_[57]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(58),
      Q => \B_V_data_1_payload_A_reg_n_2_[58]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(59),
      Q => \B_V_data_1_payload_A_reg_n_2_[59]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(5),
      Q => \B_V_data_1_payload_A_reg_n_2_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(60),
      Q => \B_V_data_1_payload_A_reg_n_2_[60]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(61),
      Q => \B_V_data_1_payload_A_reg_n_2_[61]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(62),
      Q => \B_V_data_1_payload_A_reg_n_2_[62]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(63),
      Q => \B_V_data_1_payload_A_reg_n_2_[63]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(6),
      Q => \B_V_data_1_payload_A_reg_n_2_[6]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(7),
      Q => \B_V_data_1_payload_A_reg_n_2_[7]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(8),
      Q => \B_V_data_1_payload_A_reg_n_2_[8]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(9),
      Q => \B_V_data_1_payload_A_reg_n_2_[9]\,
      R => '0'
    );
\B_V_data_1_payload_B[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => B_V_data_1_sel_wr,
      I1 => \^strm_out_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      O => \B_V_data_1_payload_B[63]_i_1__0_n_2\
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(0),
      Q => \B_V_data_1_payload_B_reg_n_2_[0]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(10),
      Q => \B_V_data_1_payload_B_reg_n_2_[10]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(11),
      Q => \B_V_data_1_payload_B_reg_n_2_[11]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(12),
      Q => \B_V_data_1_payload_B_reg_n_2_[12]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(13),
      Q => \B_V_data_1_payload_B_reg_n_2_[13]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(14),
      Q => \B_V_data_1_payload_B_reg_n_2_[14]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(15),
      Q => \B_V_data_1_payload_B_reg_n_2_[15]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(16),
      Q => \B_V_data_1_payload_B_reg_n_2_[16]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(17),
      Q => \B_V_data_1_payload_B_reg_n_2_[17]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(18),
      Q => \B_V_data_1_payload_B_reg_n_2_[18]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(19),
      Q => \B_V_data_1_payload_B_reg_n_2_[19]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(1),
      Q => \B_V_data_1_payload_B_reg_n_2_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(20),
      Q => \B_V_data_1_payload_B_reg_n_2_[20]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(21),
      Q => \B_V_data_1_payload_B_reg_n_2_[21]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(22),
      Q => \B_V_data_1_payload_B_reg_n_2_[22]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(23),
      Q => \B_V_data_1_payload_B_reg_n_2_[23]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(24),
      Q => \B_V_data_1_payload_B_reg_n_2_[24]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(25),
      Q => \B_V_data_1_payload_B_reg_n_2_[25]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(26),
      Q => \B_V_data_1_payload_B_reg_n_2_[26]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(27),
      Q => \B_V_data_1_payload_B_reg_n_2_[27]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(28),
      Q => \B_V_data_1_payload_B_reg_n_2_[28]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(29),
      Q => \B_V_data_1_payload_B_reg_n_2_[29]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(2),
      Q => \B_V_data_1_payload_B_reg_n_2_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(30),
      Q => \B_V_data_1_payload_B_reg_n_2_[30]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(31),
      Q => \B_V_data_1_payload_B_reg_n_2_[31]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(32),
      Q => \B_V_data_1_payload_B_reg_n_2_[32]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(33),
      Q => \B_V_data_1_payload_B_reg_n_2_[33]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(34),
      Q => \B_V_data_1_payload_B_reg_n_2_[34]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(35),
      Q => \B_V_data_1_payload_B_reg_n_2_[35]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(36),
      Q => \B_V_data_1_payload_B_reg_n_2_[36]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(37),
      Q => \B_V_data_1_payload_B_reg_n_2_[37]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(38),
      Q => \B_V_data_1_payload_B_reg_n_2_[38]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(39),
      Q => \B_V_data_1_payload_B_reg_n_2_[39]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(3),
      Q => \B_V_data_1_payload_B_reg_n_2_[3]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(40),
      Q => \B_V_data_1_payload_B_reg_n_2_[40]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(41),
      Q => \B_V_data_1_payload_B_reg_n_2_[41]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(42),
      Q => \B_V_data_1_payload_B_reg_n_2_[42]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(43),
      Q => \B_V_data_1_payload_B_reg_n_2_[43]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(44),
      Q => \B_V_data_1_payload_B_reg_n_2_[44]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(45),
      Q => \B_V_data_1_payload_B_reg_n_2_[45]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(46),
      Q => \B_V_data_1_payload_B_reg_n_2_[46]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(47),
      Q => \B_V_data_1_payload_B_reg_n_2_[47]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(48),
      Q => \B_V_data_1_payload_B_reg_n_2_[48]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(49),
      Q => \B_V_data_1_payload_B_reg_n_2_[49]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(4),
      Q => \B_V_data_1_payload_B_reg_n_2_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(50),
      Q => \B_V_data_1_payload_B_reg_n_2_[50]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(51),
      Q => \B_V_data_1_payload_B_reg_n_2_[51]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(52),
      Q => \B_V_data_1_payload_B_reg_n_2_[52]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(53),
      Q => \B_V_data_1_payload_B_reg_n_2_[53]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(54),
      Q => \B_V_data_1_payload_B_reg_n_2_[54]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(55),
      Q => \B_V_data_1_payload_B_reg_n_2_[55]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(56),
      Q => \B_V_data_1_payload_B_reg_n_2_[56]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(57),
      Q => \B_V_data_1_payload_B_reg_n_2_[57]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(58),
      Q => \B_V_data_1_payload_B_reg_n_2_[58]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(59),
      Q => \B_V_data_1_payload_B_reg_n_2_[59]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(5),
      Q => \B_V_data_1_payload_B_reg_n_2_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(60),
      Q => \B_V_data_1_payload_B_reg_n_2_[60]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(61),
      Q => \B_V_data_1_payload_B_reg_n_2_[61]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(62),
      Q => \B_V_data_1_payload_B_reg_n_2_[62]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(63),
      Q => \B_V_data_1_payload_B_reg_n_2_[63]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(6),
      Q => \B_V_data_1_payload_B_reg_n_2_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(7),
      Q => \B_V_data_1_payload_B_reg_n_2_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(8),
      Q => \B_V_data_1_payload_B_reg_n_2_[8]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_B[63]_i_1__0_n_2\,
      D => \B_V_data_1_payload_A_reg[63]_0\(9),
      Q => \B_V_data_1_payload_B_reg_n_2_[9]\,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => strm_out_TREADY,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => \B_V_data_1_sel_rd_i_1__0_n_2\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__0_n_2\,
      Q => B_V_data_1_sel_rd_reg_n_2,
      R => ap_rst_n_inv
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^strm_out_tready_int_regslice\,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => B_V_data_1_sel_wr,
      O => B_V_data_1_sel_wr_i_1_n_2
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_i_1_n_2,
      Q => B_V_data_1_sel_wr,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A820A020A020A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^strm_out_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      I3 => strm_out_TREADY,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => Q(0),
      O => \B_V_data_1_state[0]_i_1__0_n_2\
    );
\B_V_data_1_state[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^strm_out_tready_int_regslice\,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      O => i_fu_68
    );
\B_V_data_1_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FBFBFB"
    )
        port map (
      I0 => \^strm_out_tready_int_regslice\,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => strm_out_TREADY,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(0),
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__0_n_2\,
      Q => \^b_v_data_1_state_reg[0]_0\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^strm_out_tready_int_regslice\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(1),
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^strm_out_tready_int_regslice\,
      I3 => strm_out_TREADY,
      O => D(0)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAEEEEAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm[7]_i_2_n_2\,
      I1 => ap_done_cache,
      I2 => \r_fu_641__0\,
      I3 => \^ap_block_pp0_stage0_subdone\,
      I4 => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      I5 => Q(0),
      O => D(1)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Q(1),
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^strm_out_tready_int_regslice\,
      I3 => strm_out_TREADY,
      O => \ap_CS_fsm[7]_i_2_n_2\
    );
\r_fu_64[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => Q(0),
      I1 => \^strm_out_tready_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1,
      O => \^ap_block_pp0_stage0_subdone\
    );
\strm_out_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[0]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[0]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(0)
    );
\strm_out_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[10]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[10]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(10)
    );
\strm_out_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[11]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[11]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(11)
    );
\strm_out_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[12]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[12]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(12)
    );
\strm_out_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[13]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[13]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(13)
    );
\strm_out_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[14]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[14]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(14)
    );
\strm_out_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[15]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[15]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(15)
    );
\strm_out_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[16]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[16]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(16)
    );
\strm_out_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[17]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[17]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(17)
    );
\strm_out_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[18]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[18]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(18)
    );
\strm_out_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[19]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[19]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(19)
    );
\strm_out_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[1]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[1]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(1)
    );
\strm_out_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[20]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[20]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(20)
    );
\strm_out_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[21]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[21]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(21)
    );
\strm_out_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[22]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[22]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(22)
    );
\strm_out_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[23]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[23]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(23)
    );
\strm_out_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[24]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[24]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(24)
    );
\strm_out_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[25]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[25]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(25)
    );
\strm_out_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[26]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[26]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(26)
    );
\strm_out_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[27]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[27]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(27)
    );
\strm_out_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[28]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[28]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(28)
    );
\strm_out_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[29]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[29]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(29)
    );
\strm_out_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[2]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[2]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(2)
    );
\strm_out_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[30]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[30]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(30)
    );
\strm_out_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[31]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[31]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(31)
    );
\strm_out_TDATA[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[32]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[32]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(32)
    );
\strm_out_TDATA[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[33]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[33]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(33)
    );
\strm_out_TDATA[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[34]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[34]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(34)
    );
\strm_out_TDATA[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[35]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[35]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(35)
    );
\strm_out_TDATA[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[36]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[36]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(36)
    );
\strm_out_TDATA[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[37]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[37]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(37)
    );
\strm_out_TDATA[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[38]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[38]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(38)
    );
\strm_out_TDATA[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[39]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[39]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(39)
    );
\strm_out_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[3]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[3]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(3)
    );
\strm_out_TDATA[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[40]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[40]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(40)
    );
\strm_out_TDATA[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[41]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[41]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(41)
    );
\strm_out_TDATA[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[42]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[42]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(42)
    );
\strm_out_TDATA[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[43]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[43]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(43)
    );
\strm_out_TDATA[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[44]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[44]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(44)
    );
\strm_out_TDATA[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[45]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[45]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(45)
    );
\strm_out_TDATA[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[46]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[46]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(46)
    );
\strm_out_TDATA[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[47]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[47]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(47)
    );
\strm_out_TDATA[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[48]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[48]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(48)
    );
\strm_out_TDATA[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[49]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[49]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(49)
    );
\strm_out_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[4]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[4]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(4)
    );
\strm_out_TDATA[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[50]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[50]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(50)
    );
\strm_out_TDATA[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[51]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[51]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(51)
    );
\strm_out_TDATA[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[52]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[52]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(52)
    );
\strm_out_TDATA[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[53]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[53]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(53)
    );
\strm_out_TDATA[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[54]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[54]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(54)
    );
\strm_out_TDATA[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[55]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[55]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(55)
    );
\strm_out_TDATA[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[56]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[56]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(56)
    );
\strm_out_TDATA[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[57]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[57]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(57)
    );
\strm_out_TDATA[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[58]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[58]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(58)
    );
\strm_out_TDATA[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[59]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[59]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(59)
    );
\strm_out_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[5]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[5]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(5)
    );
\strm_out_TDATA[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[60]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[60]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(60)
    );
\strm_out_TDATA[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[61]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[61]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(61)
    );
\strm_out_TDATA[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[62]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[62]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(62)
    );
\strm_out_TDATA[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[63]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[63]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(63)
    );
\strm_out_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[6]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[6]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(6)
    );
\strm_out_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[7]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[7]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(7)
    );
\strm_out_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[8]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[8]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(8)
    );
\strm_out_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_2_[9]\,
      I1 => \B_V_data_1_payload_A_reg_n_2_[9]\,
      I2 => B_V_data_1_sel_rd_reg_n_2,
      O => strm_out_TDATA(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axis_0_0_axis_regslice_both__parameterized1\ is
  port (
    strm_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    strm_out_TREADY : in STD_LOGIC;
    i_fu_68 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    strm_out_TREADY_int_regslice : in STD_LOGIC;
    tmpo_last_reg_220 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_0_0_axis_regslice_both__parameterized1\ : entity is "axis_regslice_both";
end \design_1_axis_0_0_axis_regslice_both__parameterized1\;

architecture STRUCTURE of \design_1_axis_0_0_axis_regslice_both__parameterized1\ is
  signal B_V_data_1_payload_A : STD_LOGIC;
  signal \B_V_data_1_payload_A[0]_i_1_n_2\ : STD_LOGIC;
  signal B_V_data_1_payload_B : STD_LOGIC;
  signal \B_V_data_1_payload_B[0]_i_1_n_2\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__1_n_2\ : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal \B_V_data_1_sel_wr_i_1__0_n_2\ : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \B_V_data_1_state_reg_n_2_[0]\ : STD_LOGIC;
  signal \B_V_data_1_state_reg_n_2_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_sel_rd_i_1__1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \strm_out_TLAST[0]_INST_0\ : label is "soft_lutpair110";
begin
\B_V_data_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => tmpo_last_reg_220,
      I1 => \B_V_data_1_state_reg_n_2_[0]\,
      I2 => \B_V_data_1_state_reg_n_2_[1]\,
      I3 => B_V_data_1_sel_wr,
      I4 => B_V_data_1_payload_A,
      O => \B_V_data_1_payload_A[0]_i_1_n_2\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_A[0]_i_1_n_2\,
      Q => B_V_data_1_payload_A,
      R => '0'
    );
\B_V_data_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => tmpo_last_reg_220,
      I1 => B_V_data_1_sel_wr,
      I2 => \B_V_data_1_state_reg_n_2_[0]\,
      I3 => \B_V_data_1_state_reg_n_2_[1]\,
      I4 => B_V_data_1_payload_B,
      O => \B_V_data_1_payload_B[0]_i_1_n_2\
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_payload_B[0]_i_1_n_2\,
      Q => B_V_data_1_payload_B,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => strm_out_TREADY,
      I1 => \B_V_data_1_state_reg_n_2_[0]\,
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_sel_rd_i_1__1_n_2\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__1_n_2\,
      Q => B_V_data_1_sel,
      R => ap_rst_n_inv
    );
\B_V_data_1_sel_wr_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => strm_out_TREADY_int_regslice,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \B_V_data_1_state_reg_n_2_[1]\,
      I4 => B_V_data_1_sel_wr,
      O => \B_V_data_1_sel_wr_i_1__0_n_2\
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_wr_i_1__0_n_2\,
      Q => B_V_data_1_sel_wr,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \B_V_data_1_state_reg_n_2_[0]\,
      I2 => \B_V_data_1_state_reg_n_2_[1]\,
      I3 => strm_out_TREADY,
      I4 => i_fu_68,
      O => \B_V_data_1_state[0]_i_1__1_n_2\
    );
\B_V_data_1_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FDFDFDFDFDFDFD"
    )
        port map (
      I0 => \B_V_data_1_state_reg_n_2_[0]\,
      I1 => \B_V_data_1_state_reg_n_2_[1]\,
      I2 => strm_out_TREADY,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(0),
      I5 => strm_out_TREADY_int_regslice,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__1_n_2\,
      Q => \B_V_data_1_state_reg_n_2_[0]\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \B_V_data_1_state_reg_n_2_[1]\,
      R => ap_rst_n_inv
    );
\strm_out_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B,
      I1 => B_V_data_1_sel,
      I2 => B_V_data_1_payload_A,
      O => strm_out_TLAST(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_fu_48_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \output_1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \output_1_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA;

architecture STRUCTURE of design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA is
  signal \add_ln35_fu_148_p2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_8\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__0_n_9\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_4\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_5\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_6\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_7\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_8\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__1_n_9\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_4\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_5\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_6\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_7\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_8\ : STD_LOGIC;
  signal \add_ln35_fu_148_p2_carry__2_n_9\ : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_2 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_3 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_4 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_5 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_6 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_7 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_8 : STD_LOGIC;
  signal add_ln35_fu_148_p2_carry_n_9 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_39 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_40 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_41 : STD_LOGIC;
  signal i_1_fu_48 : STD_LOGIC;
  signal \i_1_fu_48_reg_n_2_[0]\ : STD_LOGIC;
  signal \i_1_fu_48_reg_n_2_[1]\ : STD_LOGIC;
  signal \i_1_fu_48_reg_n_2_[2]\ : STD_LOGIC;
  signal select_ln9_2_fu_140_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_add_ln35_fu_148_p2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_add_ln35_fu_148_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of add_ln35_fu_148_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_ln35_fu_148_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln35_fu_148_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln35_fu_148_p2_carry__2\ : label is 35;
begin
add_ln35_fu_148_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => select_ln9_2_fu_140_p3(0),
      CI_TOP => '0',
      CO(7) => add_ln35_fu_148_p2_carry_n_2,
      CO(6) => add_ln35_fu_148_p2_carry_n_3,
      CO(5) => add_ln35_fu_148_p2_carry_n_4,
      CO(4) => add_ln35_fu_148_p2_carry_n_5,
      CO(3) => add_ln35_fu_148_p2_carry_n_6,
      CO(2) => add_ln35_fu_148_p2_carry_n_7,
      CO(1) => add_ln35_fu_148_p2_carry_n_8,
      CO(0) => add_ln35_fu_148_p2_carry_n_9,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => D(8 downto 1),
      S(7 downto 0) => select_ln9_2_fu_140_p3(8 downto 1)
    );
\add_ln35_fu_148_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => add_ln35_fu_148_p2_carry_n_2,
      CI_TOP => '0',
      CO(7) => \add_ln35_fu_148_p2_carry__0_n_2\,
      CO(6) => \add_ln35_fu_148_p2_carry__0_n_3\,
      CO(5) => \add_ln35_fu_148_p2_carry__0_n_4\,
      CO(4) => \add_ln35_fu_148_p2_carry__0_n_5\,
      CO(3) => \add_ln35_fu_148_p2_carry__0_n_6\,
      CO(2) => \add_ln35_fu_148_p2_carry__0_n_7\,
      CO(1) => \add_ln35_fu_148_p2_carry__0_n_8\,
      CO(0) => \add_ln35_fu_148_p2_carry__0_n_9\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => D(16 downto 9),
      S(7 downto 0) => select_ln9_2_fu_140_p3(16 downto 9)
    );
\add_ln35_fu_148_p2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln35_fu_148_p2_carry__0_n_2\,
      CI_TOP => '0',
      CO(7) => \add_ln35_fu_148_p2_carry__1_n_2\,
      CO(6) => \add_ln35_fu_148_p2_carry__1_n_3\,
      CO(5) => \add_ln35_fu_148_p2_carry__1_n_4\,
      CO(4) => \add_ln35_fu_148_p2_carry__1_n_5\,
      CO(3) => \add_ln35_fu_148_p2_carry__1_n_6\,
      CO(2) => \add_ln35_fu_148_p2_carry__1_n_7\,
      CO(1) => \add_ln35_fu_148_p2_carry__1_n_8\,
      CO(0) => \add_ln35_fu_148_p2_carry__1_n_9\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => D(24 downto 17),
      S(7 downto 0) => select_ln9_2_fu_140_p3(24 downto 17)
    );
\add_ln35_fu_148_p2_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln35_fu_148_p2_carry__1_n_2\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_add_ln35_fu_148_p2_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \add_ln35_fu_148_p2_carry__2_n_4\,
      CO(4) => \add_ln35_fu_148_p2_carry__2_n_5\,
      CO(3) => \add_ln35_fu_148_p2_carry__2_n_6\,
      CO(2) => \add_ln35_fu_148_p2_carry__2_n_7\,
      CO(1) => \add_ln35_fu_148_p2_carry__2_n_8\,
      CO(0) => \add_ln35_fu_148_p2_carry__2_n_9\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_add_ln35_fu_148_p2_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => D(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => select_ln9_2_fu_140_p3(31 downto 25)
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2
     port map (
      D(0) => D(0),
      E(0) => i_1_fu_48,
      Q(2) => \i_1_fu_48_reg_n_2_[2]\,
      Q(1) => \i_1_fu_48_reg_n_2_[1]\,
      Q(0) => \i_1_fu_48_reg_n_2_[0]\,
      \ap_CS_fsm_reg[4]\(0) => E(0),
      \ap_CS_fsm_reg[4]_0\(1 downto 0) => \ap_CS_fsm_reg[4]\(1 downto 0),
      \ap_CS_fsm_reg[4]_1\(0) => \ap_CS_fsm_reg[4]_0\(0),
      \ap_CS_fsm_reg[4]_2\(0) => \ap_CS_fsm_reg[4]_1\(0),
      \ap_CS_fsm_reg[4]_3\(0) => \ap_CS_fsm_reg[4]_2\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      \i_1_fu_48_reg[0]\(2) => flow_control_loop_pipe_sequential_init_U_n_39,
      \i_1_fu_48_reg[0]\(1) => flow_control_loop_pipe_sequential_init_U_n_40,
      \i_1_fu_48_reg[0]\(0) => flow_control_loop_pipe_sequential_init_U_n_41,
      \i_1_fu_48_reg[0]_0\ => \i_1_fu_48_reg[0]_0\,
      \output_1_reg[31]\(31 downto 0) => \output_1_reg[31]\(31 downto 0),
      \output_1_reg[31]_0\(31 downto 0) => \output_1_reg[31]_0\(31 downto 0),
      \output_1_reg[31]_1\(31 downto 0) => \output_1_reg[31]_1\(31 downto 0),
      \output_1_reg[31]_2\(31 downto 0) => \output_1_reg[31]_2\(31 downto 0),
      \output_2_reg[0]\(1 downto 0) => Q(1 downto 0),
      select_ln9_2_fu_140_p3(31 downto 0) => select_ln9_2_fu_140_p3(31 downto 0)
    );
\i_1_fu_48_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_1_fu_48,
      D => flow_control_loop_pipe_sequential_init_U_n_41,
      Q => \i_1_fu_48_reg_n_2_[0]\,
      R => '0'
    );
\i_1_fu_48_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_1_fu_48,
      D => flow_control_loop_pipe_sequential_init_U_n_40,
      Q => \i_1_fu_48_reg_n_2_[1]\,
      R => '0'
    );
\i_1_fu_48_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_1_fu_48,
      D => flow_control_loop_pipe_sequential_init_U_n_39,
      Q => \i_1_fu_48_reg_n_2_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_axis_Pipeline_READ_IN is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln28_fu_102_p20_in : out STD_LOGIC;
    ap_loop_init_int_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    strm_in_TREADY_int_regslice : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_fu_66_reg[1]_0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg : in STD_LOGIC;
    strm_in_TVALID_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC
  );
end design_1_axis_0_0_axis_axis_Pipeline_READ_IN;

architecture STRUCTURE of design_1_axis_0_0_axis_axis_Pipeline_READ_IN is
  signal flow_control_loop_pipe_sequential_init_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal \i_fu_70_reg_n_2_[1]\ : STD_LOGIC;
  signal r_fu_66 : STD_LOGIC;
  signal \r_fu_66_reg_n_2_[0]\ : STD_LOGIC;
  signal \r_fu_66_reg_n_2_[1]\ : STD_LOGIC;
begin
flow_control_loop_pipe_sequential_init_U: entity work.design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1
     port map (
      D(1) => flow_control_loop_pipe_sequential_init_U_n_8,
      D(0) => flow_control_loop_pipe_sequential_init_U_n_9,
      E(0) => E(0),
      Q(1) => \r_fu_66_reg_n_2_[1]\,
      Q(0) => \r_fu_66_reg_n_2_[0]\,
      \ap_CS_fsm_reg[2]\(1 downto 0) => D(1 downto 0),
      \ap_CS_fsm_reg[3]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_loop_init_int_reg_0(0) => ap_loop_init_int_reg(0),
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      \i_fu_70_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_2,
      \i_fu_70_reg[1]_0\ => \i_fu_70_reg_n_2_[1]\,
      \r_fu_66_reg[1]\ => icmp_ln28_fu_102_p20_in,
      \r_fu_66_reg[1]_0\(0) => r_fu_66,
      \r_fu_66_reg[1]_1\ => \r_fu_66_reg[1]_0\,
      strm_in_TREADY_int_regslice => strm_in_TREADY_int_regslice,
      strm_in_TVALID_int_regslice => strm_in_TVALID_int_regslice
    );
\i_fu_70_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_2,
      Q => \i_fu_70_reg_n_2_[1]\,
      R => '0'
    );
\r_fu_66_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => r_fu_66,
      D => flow_control_loop_pipe_sequential_init_U_n_9,
      Q => \r_fu_66_reg_n_2_[0]\,
      R => '0'
    );
\r_fu_66_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => r_fu_66,
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => \r_fu_66_reg_n_2_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    tmpo_last_reg_220 : out STD_LOGIC;
    \r_fu_641__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \output_3_reg[31]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    strm_out_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg : in STD_LOGIC;
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    \B_V_data_1_payload_A_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \B_V_data_1_payload_A_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \B_V_data_1_payload_A_reg[63]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \B_V_data_1_payload_A_reg[63]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT;

architecture STRUCTURE of design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT is
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal \i_fu_68_reg_n_2_[1]\ : STD_LOGIC;
  signal r_2_fu_109_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_fu_64 : STD_LOGIC;
  signal \r_fu_64_reg_n_2_[0]\ : STD_LOGIC;
  signal \r_fu_64_reg_n_2_[1]\ : STD_LOGIC;
  signal \^tmpo_last_reg_220\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[26]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[27]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[29]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[31]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[32]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[33]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[34]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[35]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[36]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[37]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[38]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[39]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[40]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[41]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[42]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[43]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[44]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[45]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[46]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[47]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[48]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[49]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[50]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[51]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[52]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[53]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[54]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[55]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[56]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[57]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[58]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[59]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[60]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[61]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[62]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[63]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \B_V_data_1_payload_A[9]_i_1\ : label is "soft_lutpair15";
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
  tmpo_last_reg_220 <= \^tmpo_last_reg_220\;
\B_V_data_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(0),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(0),
      O => \output_3_reg[31]\(0)
    );
\B_V_data_1_payload_A[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(10),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(10),
      O => \output_3_reg[31]\(10)
    );
\B_V_data_1_payload_A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(11),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(11),
      O => \output_3_reg[31]\(11)
    );
\B_V_data_1_payload_A[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(12),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(12),
      O => \output_3_reg[31]\(12)
    );
\B_V_data_1_payload_A[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(13),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(13),
      O => \output_3_reg[31]\(13)
    );
\B_V_data_1_payload_A[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(14),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(14),
      O => \output_3_reg[31]\(14)
    );
\B_V_data_1_payload_A[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(15),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(15),
      O => \output_3_reg[31]\(15)
    );
\B_V_data_1_payload_A[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(16),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(16),
      O => \output_3_reg[31]\(16)
    );
\B_V_data_1_payload_A[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(17),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(17),
      O => \output_3_reg[31]\(17)
    );
\B_V_data_1_payload_A[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(18),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(18),
      O => \output_3_reg[31]\(18)
    );
\B_V_data_1_payload_A[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(19),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(19),
      O => \output_3_reg[31]\(19)
    );
\B_V_data_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(1),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(1),
      O => \output_3_reg[31]\(1)
    );
\B_V_data_1_payload_A[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(20),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(20),
      O => \output_3_reg[31]\(20)
    );
\B_V_data_1_payload_A[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(21),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(21),
      O => \output_3_reg[31]\(21)
    );
\B_V_data_1_payload_A[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(22),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(22),
      O => \output_3_reg[31]\(22)
    );
\B_V_data_1_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(23),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(23),
      O => \output_3_reg[31]\(23)
    );
\B_V_data_1_payload_A[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(24),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(24),
      O => \output_3_reg[31]\(24)
    );
\B_V_data_1_payload_A[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(25),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(25),
      O => \output_3_reg[31]\(25)
    );
\B_V_data_1_payload_A[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(26),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(26),
      O => \output_3_reg[31]\(26)
    );
\B_V_data_1_payload_A[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(27),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(27),
      O => \output_3_reg[31]\(27)
    );
\B_V_data_1_payload_A[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(28),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(28),
      O => \output_3_reg[31]\(28)
    );
\B_V_data_1_payload_A[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(29),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(29),
      O => \output_3_reg[31]\(29)
    );
\B_V_data_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(2),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(2),
      O => \output_3_reg[31]\(2)
    );
\B_V_data_1_payload_A[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(30),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(30),
      O => \output_3_reg[31]\(30)
    );
\B_V_data_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(31),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(31),
      O => \output_3_reg[31]\(31)
    );
\B_V_data_1_payload_A[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(0),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(0),
      O => \output_3_reg[31]\(32)
    );
\B_V_data_1_payload_A[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(1),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(1),
      O => \output_3_reg[31]\(33)
    );
\B_V_data_1_payload_A[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(2),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(2),
      O => \output_3_reg[31]\(34)
    );
\B_V_data_1_payload_A[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(3),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(3),
      O => \output_3_reg[31]\(35)
    );
\B_V_data_1_payload_A[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(4),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(4),
      O => \output_3_reg[31]\(36)
    );
\B_V_data_1_payload_A[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(5),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(5),
      O => \output_3_reg[31]\(37)
    );
\B_V_data_1_payload_A[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(6),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(6),
      O => \output_3_reg[31]\(38)
    );
\B_V_data_1_payload_A[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(7),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(7),
      O => \output_3_reg[31]\(39)
    );
\B_V_data_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(3),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(3),
      O => \output_3_reg[31]\(3)
    );
\B_V_data_1_payload_A[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(8),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(8),
      O => \output_3_reg[31]\(40)
    );
\B_V_data_1_payload_A[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(9),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(9),
      O => \output_3_reg[31]\(41)
    );
\B_V_data_1_payload_A[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(10),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(10),
      O => \output_3_reg[31]\(42)
    );
\B_V_data_1_payload_A[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(11),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(11),
      O => \output_3_reg[31]\(43)
    );
\B_V_data_1_payload_A[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(12),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(12),
      O => \output_3_reg[31]\(44)
    );
\B_V_data_1_payload_A[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(13),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(13),
      O => \output_3_reg[31]\(45)
    );
\B_V_data_1_payload_A[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(14),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(14),
      O => \output_3_reg[31]\(46)
    );
\B_V_data_1_payload_A[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(15),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(15),
      O => \output_3_reg[31]\(47)
    );
\B_V_data_1_payload_A[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(16),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(16),
      O => \output_3_reg[31]\(48)
    );
\B_V_data_1_payload_A[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(17),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(17),
      O => \output_3_reg[31]\(49)
    );
\B_V_data_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(4),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(4),
      O => \output_3_reg[31]\(4)
    );
\B_V_data_1_payload_A[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(18),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(18),
      O => \output_3_reg[31]\(50)
    );
\B_V_data_1_payload_A[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(19),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(19),
      O => \output_3_reg[31]\(51)
    );
\B_V_data_1_payload_A[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(20),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(20),
      O => \output_3_reg[31]\(52)
    );
\B_V_data_1_payload_A[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(21),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(21),
      O => \output_3_reg[31]\(53)
    );
\B_V_data_1_payload_A[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(22),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(22),
      O => \output_3_reg[31]\(54)
    );
\B_V_data_1_payload_A[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(23),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(23),
      O => \output_3_reg[31]\(55)
    );
\B_V_data_1_payload_A[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(24),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(24),
      O => \output_3_reg[31]\(56)
    );
\B_V_data_1_payload_A[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(25),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(25),
      O => \output_3_reg[31]\(57)
    );
\B_V_data_1_payload_A[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(26),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(26),
      O => \output_3_reg[31]\(58)
    );
\B_V_data_1_payload_A[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(27),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(27),
      O => \output_3_reg[31]\(59)
    );
\B_V_data_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(5),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(5),
      O => \output_3_reg[31]\(5)
    );
\B_V_data_1_payload_A[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(28),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(28),
      O => \output_3_reg[31]\(60)
    );
\B_V_data_1_payload_A[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(29),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(29),
      O => \output_3_reg[31]\(61)
    );
\B_V_data_1_payload_A[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(30),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(30),
      O => \output_3_reg[31]\(62)
    );
\B_V_data_1_payload_A[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[63]\(31),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[63]_0\(31),
      O => \output_3_reg[31]\(63)
    );
\B_V_data_1_payload_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(6),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(6),
      O => \output_3_reg[31]\(6)
    );
\B_V_data_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(7),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(7),
      O => \output_3_reg[31]\(7)
    );
\B_V_data_1_payload_A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(8),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(8),
      O => \output_3_reg[31]\(8)
    );
\B_V_data_1_payload_A[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg[31]\(9),
      I1 => \i_fu_68_reg_n_2_[1]\,
      I2 => \B_V_data_1_payload_A_reg[31]_0\(9),
      O => \output_3_reg[31]\(9)
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_3,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init
     port map (
      D(0) => D(0),
      Q(1 downto 0) => Q(1 downto 0),
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_done_cache => ap_done_cache,
      ap_done_cache_reg_0 => \r_fu_64_reg_n_2_[1]\,
      ap_done_cache_reg_1 => \r_fu_64_reg_n_2_[0]\,
      ap_enable_reg_pp0_iter1 => \^ap_enable_reg_pp0_iter1\,
      ap_loop_init_int_reg_0 => flow_control_loop_pipe_sequential_init_U_n_5,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_sequential_init_U_n_3,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      \i_fu_68_reg[1]\ => \i_fu_68_reg_n_2_[1]\,
      r_2_fu_109_p2(1 downto 0) => r_2_fu_109_p2(1 downto 0),
      r_fu_64 => r_fu_64,
      \r_fu_641__0\ => \r_fu_641__0\,
      \r_fu_64_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_11,
      strm_out_TREADY_int_regslice => strm_out_TREADY_int_regslice,
      tmpo_last_reg_220 => \^tmpo_last_reg_220\
    );
\i_fu_68_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_5,
      Q => \i_fu_68_reg_n_2_[1]\,
      R => '0'
    );
\r_fu_64_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => r_fu_64,
      D => r_2_fu_109_p2(0),
      Q => \r_fu_64_reg_n_2_[0]\,
      R => '0'
    );
\r_fu_64_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => r_fu_64,
      D => r_2_fu_109_p2(1),
      Q => \r_fu_64_reg_n_2_[1]\,
      R => '0'
    );
\tmpo_last_reg_220_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_11,
      Q => \^tmpo_last_reg_220\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0_axis is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    strm_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    strm_in_TVALID : in STD_LOGIC;
    strm_in_TREADY : out STD_LOGIC;
    strm_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    strm_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    strm_out_TVALID : out STD_LOGIC;
    strm_out_TREADY : in STD_LOGIC;
    strm_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_axis_0_0_axis : entity is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_axis_0_0_axis : entity is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_axis_0_0_axis : entity is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_axis_0_0_axis : entity is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of design_1_axis_0_0_axis : entity is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of design_1_axis_0_0_axis : entity is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of design_1_axis_0_0_axis : entity is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of design_1_axis_0_0_axis : entity is "8'b10000000";
  attribute hls_module : string;
  attribute hls_module of design_1_axis_0_0_axis : entity is "yes";
end design_1_axis_0_0_axis;

architecture STRUCTURE of design_1_axis_0_0_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_2_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \flow_control_loop_pipe_sequential_init_U/ap_done_cache\ : STD_LOGIC;
  signal grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg : STD_LOGIC;
  signal grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40 : STD_LOGIC;
  signal grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg : STD_LOGIC;
  signal grp_axis_Pipeline_READ_IN_fu_68_input_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grp_axis_Pipeline_READ_IN_fu_68_n_8 : STD_LOGIC;
  signal grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg : STD_LOGIC;
  signal grp_axis_Pipeline_WRITE_OUT_fu_104_n_7 : STD_LOGIC;
  signal i_fu_68 : STD_LOGIC;
  signal icmp_ln28_fu_102_p20_in : STD_LOGIC;
  signal input_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal input_00 : STD_LOGIC;
  signal input_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal input_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal input_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal input_30 : STD_LOGIC;
  signal output_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal output_00 : STD_LOGIC;
  signal output_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal output_10 : STD_LOGIC;
  signal output_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal output_20 : STD_LOGIC;
  signal output_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal output_30 : STD_LOGIC;
  signal \r_fu_641__0\ : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_24 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_25 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_26 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_27 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_28 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_29 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_30 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_31 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_32 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_36 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_strm_in_V_data_V_U_n_9 : STD_LOGIC;
  signal strm_in_TREADY_int_regslice : STD_LOGIC;
  signal strm_in_TVALID_int_regslice : STD_LOGIC;
  signal strm_out_TREADY_int_regslice : STD_LOGIC;
  signal tmpo_last_reg_220 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
begin
  strm_out_TKEEP(7) <= \<const0>\;
  strm_out_TKEEP(6) <= \<const0>\;
  strm_out_TKEEP(5) <= \<const0>\;
  strm_out_TKEEP(4) <= \<const0>\;
  strm_out_TKEEP(3) <= \<const0>\;
  strm_out_TKEEP(2) <= \<const0>\;
  strm_out_TKEEP(1) <= \<const0>\;
  strm_out_TKEEP(0) <= \<const0>\;
  strm_out_TSTRB(7) <= \<const0>\;
  strm_out_TSTRB(6) <= \<const0>\;
  strm_out_TSTRB(5) <= \<const0>\;
  strm_out_TSTRB(4) <= \<const0>\;
  strm_out_TSTRB(3) <= \<const0>\;
  strm_out_TSTRB(2) <= \<const0>\;
  strm_out_TSTRB(1) <= \<const0>\;
  strm_out_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_2_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_2_[0]\,
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst_n_inv
    );
grp_axis_Pipeline_PROCESS_DATA_fu_88: entity work.design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA
     port map (
      D(31 downto 0) => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(31 downto 0),
      E(0) => output_00,
      Q(1) => ap_CS_fsm_state5,
      Q(0) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[4]\(1 downto 0) => ap_NS_fsm(5 downto 4),
      \ap_CS_fsm_reg[4]_0\(0) => output_30,
      \ap_CS_fsm_reg[4]_1\(0) => output_10,
      \ap_CS_fsm_reg[4]_2\(0) => output_20,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      \i_1_fu_48_reg[0]_0\ => grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40,
      \output_1_reg[31]\(31 downto 0) => input_1(31 downto 0),
      \output_1_reg[31]_0\(31 downto 0) => input_2(31 downto 0),
      \output_1_reg[31]_1\(31 downto 0) => input_3(31 downto 0),
      \output_1_reg[31]_2\(31 downto 0) => input_0(31 downto 0)
    );
grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40,
      Q => grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_axis_Pipeline_READ_IN_fu_68: entity work.design_1_axis_0_0_axis_axis_Pipeline_READ_IN
     port map (
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      E(0) => input_00,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      ap_loop_init_int_reg(0) => input_30,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      icmp_ln28_fu_102_p20_in => icmp_ln28_fu_102_p20_in,
      \r_fu_66_reg[1]_0\ => grp_axis_Pipeline_READ_IN_fu_68_n_8,
      strm_in_TREADY_int_regslice => strm_in_TREADY_int_regslice,
      strm_in_TVALID_int_regslice => strm_in_TVALID_int_regslice
    );
grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_axis_Pipeline_READ_IN_fu_68_n_8,
      Q => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_axis_Pipeline_WRITE_OUT_fu_104: entity work.design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT
     port map (
      \B_V_data_1_payload_A_reg[31]\(31 downto 0) => output_2(31 downto 0),
      \B_V_data_1_payload_A_reg[31]_0\(31 downto 0) => output_0(31 downto 0),
      \B_V_data_1_payload_A_reg[63]\(31 downto 0) => output_3(31 downto 0),
      \B_V_data_1_payload_A_reg[63]_0\(31 downto 0) => output_1(31 downto 0),
      D(0) => ap_NS_fsm(6),
      Q(1) => ap_CS_fsm_state7,
      Q(0) => ap_CS_fsm_state6,
      \ap_CS_fsm_reg[5]\ => grp_axis_Pipeline_WRITE_OUT_fu_104_n_7,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      \output_3_reg[31]\(63 downto 0) => data_in(63 downto 0),
      \r_fu_641__0\ => \r_fu_641__0\,
      strm_out_TREADY_int_regslice => strm_out_TREADY_int_regslice,
      tmpo_last_reg_220 => tmpo_last_reg_220
    );
grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_axis_Pipeline_WRITE_OUT_fu_104_n_7,
      Q => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      R => ap_rst_n_inv
    );
\input_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_36,
      Q => input_0(0),
      R => '0'
    );
\input_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_26,
      Q => input_0(10),
      R => '0'
    );
\input_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_25,
      Q => input_0(11),
      R => '0'
    );
\input_0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_24,
      Q => input_0(12),
      R => '0'
    );
\input_0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_23,
      Q => input_0(13),
      R => '0'
    );
\input_0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_22,
      Q => input_0(14),
      R => '0'
    );
\input_0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_21,
      Q => input_0(15),
      R => '0'
    );
\input_0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_20,
      Q => input_0(16),
      R => '0'
    );
\input_0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_19,
      Q => input_0(17),
      R => '0'
    );
\input_0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_18,
      Q => input_0(18),
      R => '0'
    );
\input_0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_17,
      Q => input_0(19),
      R => '0'
    );
\input_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_35,
      Q => input_0(1),
      R => '0'
    );
\input_0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_16,
      Q => input_0(20),
      R => '0'
    );
\input_0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_15,
      Q => input_0(21),
      R => '0'
    );
\input_0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_14,
      Q => input_0(22),
      R => '0'
    );
\input_0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_13,
      Q => input_0(23),
      R => '0'
    );
\input_0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_12,
      Q => input_0(24),
      R => '0'
    );
\input_0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_11,
      Q => input_0(25),
      R => '0'
    );
\input_0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_10,
      Q => input_0(26),
      R => '0'
    );
\input_0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_9,
      Q => input_0(27),
      R => '0'
    );
\input_0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_8,
      Q => input_0(28),
      R => '0'
    );
\input_0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_7,
      Q => input_0(29),
      R => '0'
    );
\input_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_34,
      Q => input_0(2),
      R => '0'
    );
\input_0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_6,
      Q => input_0(30),
      R => '0'
    );
\input_0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_5,
      Q => input_0(31),
      R => '0'
    );
\input_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_33,
      Q => input_0(3),
      R => '0'
    );
\input_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_32,
      Q => input_0(4),
      R => '0'
    );
\input_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_31,
      Q => input_0(5),
      R => '0'
    );
\input_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_30,
      Q => input_0(6),
      R => '0'
    );
\input_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_29,
      Q => input_0(7),
      R => '0'
    );
\input_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_28,
      Q => input_0(8),
      R => '0'
    );
\input_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => regslice_both_strm_in_V_data_V_U_n_27,
      Q => input_0(9),
      R => '0'
    );
\input_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(0),
      Q => input_1(0),
      R => '0'
    );
\input_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(10),
      Q => input_1(10),
      R => '0'
    );
\input_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(11),
      Q => input_1(11),
      R => '0'
    );
\input_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(12),
      Q => input_1(12),
      R => '0'
    );
\input_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(13),
      Q => input_1(13),
      R => '0'
    );
\input_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(14),
      Q => input_1(14),
      R => '0'
    );
\input_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(15),
      Q => input_1(15),
      R => '0'
    );
\input_1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(16),
      Q => input_1(16),
      R => '0'
    );
\input_1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(17),
      Q => input_1(17),
      R => '0'
    );
\input_1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(18),
      Q => input_1(18),
      R => '0'
    );
\input_1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(19),
      Q => input_1(19),
      R => '0'
    );
\input_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(1),
      Q => input_1(1),
      R => '0'
    );
\input_1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(20),
      Q => input_1(20),
      R => '0'
    );
\input_1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(21),
      Q => input_1(21),
      R => '0'
    );
\input_1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(22),
      Q => input_1(22),
      R => '0'
    );
\input_1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(23),
      Q => input_1(23),
      R => '0'
    );
\input_1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(24),
      Q => input_1(24),
      R => '0'
    );
\input_1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(25),
      Q => input_1(25),
      R => '0'
    );
\input_1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(26),
      Q => input_1(26),
      R => '0'
    );
\input_1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(27),
      Q => input_1(27),
      R => '0'
    );
\input_1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(28),
      Q => input_1(28),
      R => '0'
    );
\input_1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(29),
      Q => input_1(29),
      R => '0'
    );
\input_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(2),
      Q => input_1(2),
      R => '0'
    );
\input_1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(30),
      Q => input_1(30),
      R => '0'
    );
\input_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(31),
      Q => input_1(31),
      R => '0'
    );
\input_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(3),
      Q => input_1(3),
      R => '0'
    );
\input_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(4),
      Q => input_1(4),
      R => '0'
    );
\input_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(5),
      Q => input_1(5),
      R => '0'
    );
\input_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(6),
      Q => input_1(6),
      R => '0'
    );
\input_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(7),
      Q => input_1(7),
      R => '0'
    );
\input_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(8),
      Q => input_1(8),
      R => '0'
    );
\input_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_00,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(9),
      Q => input_1(9),
      R => '0'
    );
\input_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_36,
      Q => input_2(0),
      R => '0'
    );
\input_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_26,
      Q => input_2(10),
      R => '0'
    );
\input_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_25,
      Q => input_2(11),
      R => '0'
    );
\input_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_24,
      Q => input_2(12),
      R => '0'
    );
\input_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_23,
      Q => input_2(13),
      R => '0'
    );
\input_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_22,
      Q => input_2(14),
      R => '0'
    );
\input_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_21,
      Q => input_2(15),
      R => '0'
    );
\input_2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_20,
      Q => input_2(16),
      R => '0'
    );
\input_2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_19,
      Q => input_2(17),
      R => '0'
    );
\input_2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_18,
      Q => input_2(18),
      R => '0'
    );
\input_2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_17,
      Q => input_2(19),
      R => '0'
    );
\input_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_35,
      Q => input_2(1),
      R => '0'
    );
\input_2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_16,
      Q => input_2(20),
      R => '0'
    );
\input_2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_15,
      Q => input_2(21),
      R => '0'
    );
\input_2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_14,
      Q => input_2(22),
      R => '0'
    );
\input_2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_13,
      Q => input_2(23),
      R => '0'
    );
\input_2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_12,
      Q => input_2(24),
      R => '0'
    );
\input_2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_11,
      Q => input_2(25),
      R => '0'
    );
\input_2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_10,
      Q => input_2(26),
      R => '0'
    );
\input_2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_9,
      Q => input_2(27),
      R => '0'
    );
\input_2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_8,
      Q => input_2(28),
      R => '0'
    );
\input_2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_7,
      Q => input_2(29),
      R => '0'
    );
\input_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_34,
      Q => input_2(2),
      R => '0'
    );
\input_2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_6,
      Q => input_2(30),
      R => '0'
    );
\input_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_5,
      Q => input_2(31),
      R => '0'
    );
\input_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_33,
      Q => input_2(3),
      R => '0'
    );
\input_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_32,
      Q => input_2(4),
      R => '0'
    );
\input_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_31,
      Q => input_2(5),
      R => '0'
    );
\input_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_30,
      Q => input_2(6),
      R => '0'
    );
\input_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_29,
      Q => input_2(7),
      R => '0'
    );
\input_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_28,
      Q => input_2(8),
      R => '0'
    );
\input_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => regslice_both_strm_in_V_data_V_U_n_27,
      Q => input_2(9),
      R => '0'
    );
\input_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(0),
      Q => input_3(0),
      R => '0'
    );
\input_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(10),
      Q => input_3(10),
      R => '0'
    );
\input_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(11),
      Q => input_3(11),
      R => '0'
    );
\input_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(12),
      Q => input_3(12),
      R => '0'
    );
\input_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(13),
      Q => input_3(13),
      R => '0'
    );
\input_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(14),
      Q => input_3(14),
      R => '0'
    );
\input_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(15),
      Q => input_3(15),
      R => '0'
    );
\input_3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(16),
      Q => input_3(16),
      R => '0'
    );
\input_3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(17),
      Q => input_3(17),
      R => '0'
    );
\input_3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(18),
      Q => input_3(18),
      R => '0'
    );
\input_3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(19),
      Q => input_3(19),
      R => '0'
    );
\input_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(1),
      Q => input_3(1),
      R => '0'
    );
\input_3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(20),
      Q => input_3(20),
      R => '0'
    );
\input_3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(21),
      Q => input_3(21),
      R => '0'
    );
\input_3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(22),
      Q => input_3(22),
      R => '0'
    );
\input_3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(23),
      Q => input_3(23),
      R => '0'
    );
\input_3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(24),
      Q => input_3(24),
      R => '0'
    );
\input_3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(25),
      Q => input_3(25),
      R => '0'
    );
\input_3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(26),
      Q => input_3(26),
      R => '0'
    );
\input_3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(27),
      Q => input_3(27),
      R => '0'
    );
\input_3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(28),
      Q => input_3(28),
      R => '0'
    );
\input_3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(29),
      Q => input_3(29),
      R => '0'
    );
\input_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(2),
      Q => input_3(2),
      R => '0'
    );
\input_3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(30),
      Q => input_3(30),
      R => '0'
    );
\input_3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(31),
      Q => input_3(31),
      R => '0'
    );
\input_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(3),
      Q => input_3(3),
      R => '0'
    );
\input_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(4),
      Q => input_3(4),
      R => '0'
    );
\input_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(5),
      Q => input_3(5),
      R => '0'
    );
\input_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(6),
      Q => input_3(6),
      R => '0'
    );
\input_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(7),
      Q => input_3(7),
      R => '0'
    );
\input_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(8),
      Q => input_3(8),
      R => '0'
    );
\input_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_30,
      D => grp_axis_Pipeline_READ_IN_fu_68_input_3(9),
      Q => input_3(9),
      R => '0'
    );
\output_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(0),
      Q => output_0(0),
      R => '0'
    );
\output_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(10),
      Q => output_0(10),
      R => '0'
    );
\output_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(11),
      Q => output_0(11),
      R => '0'
    );
\output_0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(12),
      Q => output_0(12),
      R => '0'
    );
\output_0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(13),
      Q => output_0(13),
      R => '0'
    );
\output_0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(14),
      Q => output_0(14),
      R => '0'
    );
\output_0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(15),
      Q => output_0(15),
      R => '0'
    );
\output_0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(16),
      Q => output_0(16),
      R => '0'
    );
\output_0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(17),
      Q => output_0(17),
      R => '0'
    );
\output_0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(18),
      Q => output_0(18),
      R => '0'
    );
\output_0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(19),
      Q => output_0(19),
      R => '0'
    );
\output_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(1),
      Q => output_0(1),
      R => '0'
    );
\output_0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(20),
      Q => output_0(20),
      R => '0'
    );
\output_0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(21),
      Q => output_0(21),
      R => '0'
    );
\output_0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(22),
      Q => output_0(22),
      R => '0'
    );
\output_0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(23),
      Q => output_0(23),
      R => '0'
    );
\output_0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(24),
      Q => output_0(24),
      R => '0'
    );
\output_0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(25),
      Q => output_0(25),
      R => '0'
    );
\output_0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(26),
      Q => output_0(26),
      R => '0'
    );
\output_0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(27),
      Q => output_0(27),
      R => '0'
    );
\output_0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(28),
      Q => output_0(28),
      R => '0'
    );
\output_0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(29),
      Q => output_0(29),
      R => '0'
    );
\output_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(2),
      Q => output_0(2),
      R => '0'
    );
\output_0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(30),
      Q => output_0(30),
      R => '0'
    );
\output_0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(31),
      Q => output_0(31),
      R => '0'
    );
\output_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(3),
      Q => output_0(3),
      R => '0'
    );
\output_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(4),
      Q => output_0(4),
      R => '0'
    );
\output_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(5),
      Q => output_0(5),
      R => '0'
    );
\output_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(6),
      Q => output_0(6),
      R => '0'
    );
\output_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(7),
      Q => output_0(7),
      R => '0'
    );
\output_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(8),
      Q => output_0(8),
      R => '0'
    );
\output_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_00,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(9),
      Q => output_0(9),
      R => '0'
    );
\output_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(0),
      Q => output_1(0),
      R => '0'
    );
\output_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(10),
      Q => output_1(10),
      R => '0'
    );
\output_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(11),
      Q => output_1(11),
      R => '0'
    );
\output_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(12),
      Q => output_1(12),
      R => '0'
    );
\output_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(13),
      Q => output_1(13),
      R => '0'
    );
\output_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(14),
      Q => output_1(14),
      R => '0'
    );
\output_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(15),
      Q => output_1(15),
      R => '0'
    );
\output_1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(16),
      Q => output_1(16),
      R => '0'
    );
\output_1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(17),
      Q => output_1(17),
      R => '0'
    );
\output_1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(18),
      Q => output_1(18),
      R => '0'
    );
\output_1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(19),
      Q => output_1(19),
      R => '0'
    );
\output_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(1),
      Q => output_1(1),
      R => '0'
    );
\output_1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(20),
      Q => output_1(20),
      R => '0'
    );
\output_1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(21),
      Q => output_1(21),
      R => '0'
    );
\output_1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(22),
      Q => output_1(22),
      R => '0'
    );
\output_1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(23),
      Q => output_1(23),
      R => '0'
    );
\output_1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(24),
      Q => output_1(24),
      R => '0'
    );
\output_1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(25),
      Q => output_1(25),
      R => '0'
    );
\output_1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(26),
      Q => output_1(26),
      R => '0'
    );
\output_1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(27),
      Q => output_1(27),
      R => '0'
    );
\output_1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(28),
      Q => output_1(28),
      R => '0'
    );
\output_1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(29),
      Q => output_1(29),
      R => '0'
    );
\output_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(2),
      Q => output_1(2),
      R => '0'
    );
\output_1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(30),
      Q => output_1(30),
      R => '0'
    );
\output_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(31),
      Q => output_1(31),
      R => '0'
    );
\output_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(3),
      Q => output_1(3),
      R => '0'
    );
\output_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(4),
      Q => output_1(4),
      R => '0'
    );
\output_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(5),
      Q => output_1(5),
      R => '0'
    );
\output_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(6),
      Q => output_1(6),
      R => '0'
    );
\output_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(7),
      Q => output_1(7),
      R => '0'
    );
\output_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(8),
      Q => output_1(8),
      R => '0'
    );
\output_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_10,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(9),
      Q => output_1(9),
      R => '0'
    );
\output_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(0),
      Q => output_2(0),
      R => '0'
    );
\output_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(10),
      Q => output_2(10),
      R => '0'
    );
\output_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(11),
      Q => output_2(11),
      R => '0'
    );
\output_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(12),
      Q => output_2(12),
      R => '0'
    );
\output_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(13),
      Q => output_2(13),
      R => '0'
    );
\output_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(14),
      Q => output_2(14),
      R => '0'
    );
\output_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(15),
      Q => output_2(15),
      R => '0'
    );
\output_2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(16),
      Q => output_2(16),
      R => '0'
    );
\output_2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(17),
      Q => output_2(17),
      R => '0'
    );
\output_2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(18),
      Q => output_2(18),
      R => '0'
    );
\output_2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(19),
      Q => output_2(19),
      R => '0'
    );
\output_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(1),
      Q => output_2(1),
      R => '0'
    );
\output_2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(20),
      Q => output_2(20),
      R => '0'
    );
\output_2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(21),
      Q => output_2(21),
      R => '0'
    );
\output_2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(22),
      Q => output_2(22),
      R => '0'
    );
\output_2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(23),
      Q => output_2(23),
      R => '0'
    );
\output_2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(24),
      Q => output_2(24),
      R => '0'
    );
\output_2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(25),
      Q => output_2(25),
      R => '0'
    );
\output_2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(26),
      Q => output_2(26),
      R => '0'
    );
\output_2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(27),
      Q => output_2(27),
      R => '0'
    );
\output_2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(28),
      Q => output_2(28),
      R => '0'
    );
\output_2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(29),
      Q => output_2(29),
      R => '0'
    );
\output_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(2),
      Q => output_2(2),
      R => '0'
    );
\output_2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(30),
      Q => output_2(30),
      R => '0'
    );
\output_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(31),
      Q => output_2(31),
      R => '0'
    );
\output_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(3),
      Q => output_2(3),
      R => '0'
    );
\output_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(4),
      Q => output_2(4),
      R => '0'
    );
\output_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(5),
      Q => output_2(5),
      R => '0'
    );
\output_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(6),
      Q => output_2(6),
      R => '0'
    );
\output_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(7),
      Q => output_2(7),
      R => '0'
    );
\output_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(8),
      Q => output_2(8),
      R => '0'
    );
\output_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_20,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(9),
      Q => output_2(9),
      R => '0'
    );
\output_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(0),
      Q => output_3(0),
      R => '0'
    );
\output_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(10),
      Q => output_3(10),
      R => '0'
    );
\output_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(11),
      Q => output_3(11),
      R => '0'
    );
\output_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(12),
      Q => output_3(12),
      R => '0'
    );
\output_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(13),
      Q => output_3(13),
      R => '0'
    );
\output_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(14),
      Q => output_3(14),
      R => '0'
    );
\output_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(15),
      Q => output_3(15),
      R => '0'
    );
\output_3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(16),
      Q => output_3(16),
      R => '0'
    );
\output_3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(17),
      Q => output_3(17),
      R => '0'
    );
\output_3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(18),
      Q => output_3(18),
      R => '0'
    );
\output_3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(19),
      Q => output_3(19),
      R => '0'
    );
\output_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(1),
      Q => output_3(1),
      R => '0'
    );
\output_3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(20),
      Q => output_3(20),
      R => '0'
    );
\output_3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(21),
      Q => output_3(21),
      R => '0'
    );
\output_3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(22),
      Q => output_3(22),
      R => '0'
    );
\output_3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(23),
      Q => output_3(23),
      R => '0'
    );
\output_3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(24),
      Q => output_3(24),
      R => '0'
    );
\output_3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(25),
      Q => output_3(25),
      R => '0'
    );
\output_3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(26),
      Q => output_3(26),
      R => '0'
    );
\output_3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(27),
      Q => output_3(27),
      R => '0'
    );
\output_3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(28),
      Q => output_3(28),
      R => '0'
    );
\output_3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(29),
      Q => output_3(29),
      R => '0'
    );
\output_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(2),
      Q => output_3(2),
      R => '0'
    );
\output_3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(30),
      Q => output_3(30),
      R => '0'
    );
\output_3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(31),
      Q => output_3(31),
      R => '0'
    );
\output_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(3),
      Q => output_3(3),
      R => '0'
    );
\output_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(4),
      Q => output_3(4),
      R => '0'
    );
\output_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(5),
      Q => output_3(5),
      R => '0'
    );
\output_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(6),
      Q => output_3(6),
      R => '0'
    );
\output_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(7),
      Q => output_3(7),
      R => '0'
    );
\output_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(8),
      Q => output_3(8),
      R => '0'
    );
\output_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_30,
      D => grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3(9),
      Q => output_3(9),
      R => '0'
    );
regslice_both_strm_in_V_data_V_U: entity work.design_1_axis_0_0_axis_regslice_both
     port map (
      \B_V_data_1_payload_B_reg[63]_0\(31 downto 0) => grp_axis_Pipeline_READ_IN_fu_68_input_3(31 downto 0),
      \B_V_data_1_state_reg[1]_0\ => strm_in_TREADY,
      D(31) => regslice_both_strm_in_V_data_V_U_n_5,
      D(30) => regslice_both_strm_in_V_data_V_U_n_6,
      D(29) => regslice_both_strm_in_V_data_V_U_n_7,
      D(28) => regslice_both_strm_in_V_data_V_U_n_8,
      D(27) => regslice_both_strm_in_V_data_V_U_n_9,
      D(26) => regslice_both_strm_in_V_data_V_U_n_10,
      D(25) => regslice_both_strm_in_V_data_V_U_n_11,
      D(24) => regslice_both_strm_in_V_data_V_U_n_12,
      D(23) => regslice_both_strm_in_V_data_V_U_n_13,
      D(22) => regslice_both_strm_in_V_data_V_U_n_14,
      D(21) => regslice_both_strm_in_V_data_V_U_n_15,
      D(20) => regslice_both_strm_in_V_data_V_U_n_16,
      D(19) => regslice_both_strm_in_V_data_V_U_n_17,
      D(18) => regslice_both_strm_in_V_data_V_U_n_18,
      D(17) => regslice_both_strm_in_V_data_V_U_n_19,
      D(16) => regslice_both_strm_in_V_data_V_U_n_20,
      D(15) => regslice_both_strm_in_V_data_V_U_n_21,
      D(14) => regslice_both_strm_in_V_data_V_U_n_22,
      D(13) => regslice_both_strm_in_V_data_V_U_n_23,
      D(12) => regslice_both_strm_in_V_data_V_U_n_24,
      D(11) => regslice_both_strm_in_V_data_V_U_n_25,
      D(10) => regslice_both_strm_in_V_data_V_U_n_26,
      D(9) => regslice_both_strm_in_V_data_V_U_n_27,
      D(8) => regslice_both_strm_in_V_data_V_U_n_28,
      D(7) => regslice_both_strm_in_V_data_V_U_n_29,
      D(6) => regslice_both_strm_in_V_data_V_U_n_30,
      D(5) => regslice_both_strm_in_V_data_V_U_n_31,
      D(4) => regslice_both_strm_in_V_data_V_U_n_32,
      D(3) => regslice_both_strm_in_V_data_V_U_n_33,
      D(2) => regslice_both_strm_in_V_data_V_U_n_34,
      D(1) => regslice_both_strm_in_V_data_V_U_n_35,
      D(0) => regslice_both_strm_in_V_data_V_U_n_36,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg => grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
      icmp_ln28_fu_102_p20_in => icmp_ln28_fu_102_p20_in,
      strm_in_TDATA(63 downto 0) => strm_in_TDATA(63 downto 0),
      strm_in_TREADY_int_regslice => strm_in_TREADY_int_regslice,
      strm_in_TVALID => strm_in_TVALID,
      strm_in_TVALID_int_regslice => strm_in_TVALID_int_regslice
    );
regslice_both_strm_out_V_data_V_U: entity work.design_1_axis_0_0_axis_regslice_both_0
     port map (
      \B_V_data_1_payload_A_reg[63]_0\(63 downto 0) => data_in(63 downto 0),
      \B_V_data_1_state_reg[0]_0\ => strm_out_TVALID,
      D(1) => ap_NS_fsm(7),
      D(0) => ap_NS_fsm(0),
      Q(1) => ap_CS_fsm_state8,
      Q(0) => ap_CS_fsm_state7,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg => grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
      i_fu_68 => i_fu_68,
      \r_fu_641__0\ => \r_fu_641__0\,
      strm_out_TDATA(63 downto 0) => strm_out_TDATA(63 downto 0),
      strm_out_TREADY => strm_out_TREADY,
      strm_out_TREADY_int_regslice => strm_out_TREADY_int_regslice
    );
regslice_both_strm_out_V_last_V_U: entity work.\design_1_axis_0_0_axis_regslice_both__parameterized1\
     port map (
      Q(0) => ap_CS_fsm_state7,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      i_fu_68 => i_fu_68,
      strm_out_TLAST(0) => strm_out_TLAST(0),
      strm_out_TREADY => strm_out_TREADY,
      strm_out_TREADY_int_regslice => strm_out_TREADY_int_regslice,
      tmpo_last_reg_220 => tmpo_last_reg_220
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    strm_in_TVALID : in STD_LOGIC;
    strm_in_TREADY : out STD_LOGIC;
    strm_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    strm_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    strm_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_out_TVALID : out STD_LOGIC;
    strm_out_TREADY : in STD_LOGIC;
    strm_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    strm_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    strm_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    strm_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_0_0 : entity is "design_1_axis_0_0,axis,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_0_0 : entity is "axis,Vivado 2023.1.1";
  attribute hls_module : string;
  attribute hls_module of design_1_axis_0_0 : entity is "yes";
end design_1_axis_0_0;

architecture STRUCTURE of design_1_axis_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_strm_out_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_strm_out_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "8'b10000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF strm_in:strm_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of strm_in_TREADY : signal is "xilinx.com:interface:axis:1.0 strm_in TREADY";
  attribute X_INTERFACE_INFO of strm_in_TVALID : signal is "xilinx.com:interface:axis:1.0 strm_in TVALID";
  attribute X_INTERFACE_INFO of strm_out_TREADY : signal is "xilinx.com:interface:axis:1.0 strm_out TREADY";
  attribute X_INTERFACE_INFO of strm_out_TVALID : signal is "xilinx.com:interface:axis:1.0 strm_out TVALID";
  attribute X_INTERFACE_INFO of strm_in_TDATA : signal is "xilinx.com:interface:axis:1.0 strm_in TDATA";
  attribute X_INTERFACE_INFO of strm_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 strm_in TKEEP";
  attribute X_INTERFACE_INFO of strm_in_TLAST : signal is "xilinx.com:interface:axis:1.0 strm_in TLAST";
  attribute X_INTERFACE_INFO of strm_in_TSTRB : signal is "xilinx.com:interface:axis:1.0 strm_in TSTRB";
  attribute X_INTERFACE_PARAMETER of strm_in_TSTRB : signal is "XIL_INTERFACENAME strm_in, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of strm_out_TDATA : signal is "xilinx.com:interface:axis:1.0 strm_out TDATA";
  attribute X_INTERFACE_INFO of strm_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 strm_out TKEEP";
  attribute X_INTERFACE_INFO of strm_out_TLAST : signal is "xilinx.com:interface:axis:1.0 strm_out TLAST";
  attribute X_INTERFACE_INFO of strm_out_TSTRB : signal is "xilinx.com:interface:axis:1.0 strm_out TSTRB";
  attribute X_INTERFACE_PARAMETER of strm_out_TSTRB : signal is "XIL_INTERFACENAME strm_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
  strm_out_TKEEP(7) <= \<const0>\;
  strm_out_TKEEP(6) <= \<const0>\;
  strm_out_TKEEP(5) <= \<const0>\;
  strm_out_TKEEP(4) <= \<const0>\;
  strm_out_TKEEP(3) <= \<const0>\;
  strm_out_TKEEP(2) <= \<const0>\;
  strm_out_TKEEP(1) <= \<const0>\;
  strm_out_TKEEP(0) <= \<const0>\;
  strm_out_TSTRB(7) <= \<const0>\;
  strm_out_TSTRB(6) <= \<const0>\;
  strm_out_TSTRB(5) <= \<const0>\;
  strm_out_TSTRB(4) <= \<const0>\;
  strm_out_TSTRB(3) <= \<const0>\;
  strm_out_TSTRB(2) <= \<const0>\;
  strm_out_TSTRB(1) <= \<const0>\;
  strm_out_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axis_0_0_axis
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      strm_in_TDATA(63 downto 0) => strm_in_TDATA(63 downto 0),
      strm_in_TKEEP(7 downto 0) => B"00000000",
      strm_in_TLAST(0) => '0',
      strm_in_TREADY => strm_in_TREADY,
      strm_in_TSTRB(7 downto 0) => B"00000000",
      strm_in_TVALID => strm_in_TVALID,
      strm_out_TDATA(63 downto 0) => strm_out_TDATA(63 downto 0),
      strm_out_TKEEP(7 downto 0) => NLW_inst_strm_out_TKEEP_UNCONNECTED(7 downto 0),
      strm_out_TLAST(0) => strm_out_TLAST(0),
      strm_out_TREADY => strm_out_TREADY,
      strm_out_TSTRB(7 downto 0) => NLW_inst_strm_out_TSTRB_UNCONNECTED(7 downto 0),
      strm_out_TVALID => strm_out_TVALID
    );
end STRUCTURE;
