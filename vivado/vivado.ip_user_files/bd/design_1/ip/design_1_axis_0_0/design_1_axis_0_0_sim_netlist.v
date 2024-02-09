// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Thu Feb  8 14:21:56 2024
// Host        : PINI-AMD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axis_0_0 -prefix
//               design_1_axis_0_0_ design_1_axis_0_0_sim_netlist.v
// Design      : design_1_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_state1 = "8'b00000001" *) (* ap_ST_fsm_state2 = "8'b00000010" *) (* ap_ST_fsm_state3 = "8'b00000100" *) 
(* ap_ST_fsm_state4 = "8'b00001000" *) (* ap_ST_fsm_state5 = "8'b00010000" *) (* ap_ST_fsm_state6 = "8'b00100000" *) 
(* ap_ST_fsm_state7 = "8'b01000000" *) (* ap_ST_fsm_state8 = "8'b10000000" *) (* hls_module = "yes" *) 
module design_1_axis_0_0_axis
   (ap_clk,
    ap_rst_n,
    strm_in_TDATA,
    strm_in_TVALID,
    strm_in_TREADY,
    strm_in_TKEEP,
    strm_in_TSTRB,
    strm_in_TLAST,
    strm_out_TDATA,
    strm_out_TVALID,
    strm_out_TREADY,
    strm_out_TKEEP,
    strm_out_TSTRB,
    strm_out_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [63:0]strm_in_TDATA;
  input strm_in_TVALID;
  output strm_in_TREADY;
  input [7:0]strm_in_TKEEP;
  input [7:0]strm_in_TSTRB;
  input [0:0]strm_in_TLAST;
  output [63:0]strm_out_TDATA;
  output strm_out_TVALID;
  input strm_out_TREADY;
  output [7:0]strm_out_TKEEP;
  output [7:0]strm_out_TSTRB;
  output [0:0]strm_out_TLAST;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_2_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [7:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [63:0]data_in;
  wire \flow_control_loop_pipe_sequential_init_U/ap_done_cache ;
  wire grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg;
  wire grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40;
  wire [31:0]grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3;
  wire grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  wire [31:0]grp_axis_Pipeline_READ_IN_fu_68_input_3;
  wire grp_axis_Pipeline_READ_IN_fu_68_n_8;
  wire grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  wire grp_axis_Pipeline_WRITE_OUT_fu_104_n_7;
  wire i_fu_68;
  wire icmp_ln28_fu_102_p20_in;
  wire [31:0]input_0;
  wire input_00;
  wire [31:0]input_1;
  wire [31:0]input_2;
  wire [31:0]input_3;
  wire input_30;
  wire [31:0]output_0;
  wire output_00;
  wire [31:0]output_1;
  wire output_10;
  wire [31:0]output_2;
  wire output_20;
  wire [31:0]output_3;
  wire output_30;
  wire r_fu_641__0;
  wire regslice_both_strm_in_V_data_V_U_n_10;
  wire regslice_both_strm_in_V_data_V_U_n_11;
  wire regslice_both_strm_in_V_data_V_U_n_12;
  wire regslice_both_strm_in_V_data_V_U_n_13;
  wire regslice_both_strm_in_V_data_V_U_n_14;
  wire regslice_both_strm_in_V_data_V_U_n_15;
  wire regslice_both_strm_in_V_data_V_U_n_16;
  wire regslice_both_strm_in_V_data_V_U_n_17;
  wire regslice_both_strm_in_V_data_V_U_n_18;
  wire regslice_both_strm_in_V_data_V_U_n_19;
  wire regslice_both_strm_in_V_data_V_U_n_20;
  wire regslice_both_strm_in_V_data_V_U_n_21;
  wire regslice_both_strm_in_V_data_V_U_n_22;
  wire regslice_both_strm_in_V_data_V_U_n_23;
  wire regslice_both_strm_in_V_data_V_U_n_24;
  wire regslice_both_strm_in_V_data_V_U_n_25;
  wire regslice_both_strm_in_V_data_V_U_n_26;
  wire regslice_both_strm_in_V_data_V_U_n_27;
  wire regslice_both_strm_in_V_data_V_U_n_28;
  wire regslice_both_strm_in_V_data_V_U_n_29;
  wire regslice_both_strm_in_V_data_V_U_n_30;
  wire regslice_both_strm_in_V_data_V_U_n_31;
  wire regslice_both_strm_in_V_data_V_U_n_32;
  wire regslice_both_strm_in_V_data_V_U_n_33;
  wire regslice_both_strm_in_V_data_V_U_n_34;
  wire regslice_both_strm_in_V_data_V_U_n_35;
  wire regslice_both_strm_in_V_data_V_U_n_36;
  wire regslice_both_strm_in_V_data_V_U_n_5;
  wire regslice_both_strm_in_V_data_V_U_n_6;
  wire regslice_both_strm_in_V_data_V_U_n_7;
  wire regslice_both_strm_in_V_data_V_U_n_8;
  wire regslice_both_strm_in_V_data_V_U_n_9;
  wire [63:0]strm_in_TDATA;
  wire strm_in_TREADY;
  wire strm_in_TREADY_int_regslice;
  wire strm_in_TVALID;
  wire strm_in_TVALID_int_regslice;
  wire [63:0]strm_out_TDATA;
  wire [0:0]strm_out_TLAST;
  wire strm_out_TREADY;
  wire strm_out_TREADY_int_regslice;
  wire strm_out_TVALID;
  wire tmpo_last_reg_220;

  assign strm_out_TKEEP[7] = \<const0> ;
  assign strm_out_TKEEP[6] = \<const0> ;
  assign strm_out_TKEEP[5] = \<const0> ;
  assign strm_out_TKEEP[4] = \<const0> ;
  assign strm_out_TKEEP[3] = \<const0> ;
  assign strm_out_TKEEP[2] = \<const0> ;
  assign strm_out_TKEEP[1] = \<const0> ;
  assign strm_out_TKEEP[0] = \<const0> ;
  assign strm_out_TSTRB[7] = \<const0> ;
  assign strm_out_TSTRB[6] = \<const0> ;
  assign strm_out_TSTRB[5] = \<const0> ;
  assign strm_out_TSTRB[4] = \<const0> ;
  assign strm_out_TSTRB[3] = \<const0> ;
  assign strm_out_TSTRB[2] = \<const0> ;
  assign strm_out_TSTRB[1] = \<const0> ;
  assign strm_out_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_2_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_2_[0] ),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA grp_axis_Pipeline_PROCESS_DATA_fu_88
       (.D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3),
        .E(output_00),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .\ap_CS_fsm_reg[4] (ap_NS_fsm[5:4]),
        .\ap_CS_fsm_reg[4]_0 (output_30),
        .\ap_CS_fsm_reg[4]_1 (output_10),
        .\ap_CS_fsm_reg[4]_2 (output_20),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .\i_1_fu_48_reg[0]_0 (grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40),
        .\output_1_reg[31] (input_1),
        .\output_1_reg[31]_0 (input_2),
        .\output_1_reg[31]_1 (input_3),
        .\output_1_reg[31]_2 (input_0));
  FDRE #(
    .INIT(1'b0)) 
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_n_40),
        .Q(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_axis_0_0_axis_axis_Pipeline_READ_IN grp_axis_Pipeline_READ_IN_fu_68
       (.D(ap_NS_fsm[3:2]),
        .E(input_00),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg(input_30),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .icmp_ln28_fu_102_p20_in(icmp_ln28_fu_102_p20_in),
        .\r_fu_66_reg[1]_0 (grp_axis_Pipeline_READ_IN_fu_68_n_8),
        .strm_in_TREADY_int_regslice(strm_in_TREADY_int_regslice),
        .strm_in_TVALID_int_regslice(strm_in_TVALID_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_axis_Pipeline_READ_IN_fu_68_n_8),
        .Q(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT grp_axis_Pipeline_WRITE_OUT_fu_104
       (.\B_V_data_1_payload_A_reg[31] (output_2),
        .\B_V_data_1_payload_A_reg[31]_0 (output_0),
        .\B_V_data_1_payload_A_reg[63] (output_3),
        .\B_V_data_1_payload_A_reg[63]_0 (output_1),
        .D(ap_NS_fsm[6]),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .\ap_CS_fsm_reg[5] (grp_axis_Pipeline_WRITE_OUT_fu_104_n_7),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .\output_3_reg[31] (data_in),
        .r_fu_641__0(r_fu_641__0),
        .strm_out_TREADY_int_regslice(strm_out_TREADY_int_regslice),
        .tmpo_last_reg_220(tmpo_last_reg_220));
  FDRE #(
    .INIT(1'b0)) 
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_axis_Pipeline_WRITE_OUT_fu_104_n_7),
        .Q(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[0] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_36),
        .Q(input_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[10] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_26),
        .Q(input_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[11] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_25),
        .Q(input_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[12] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_24),
        .Q(input_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[13] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_23),
        .Q(input_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[14] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_22),
        .Q(input_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[15] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_21),
        .Q(input_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[16] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_20),
        .Q(input_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[17] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_19),
        .Q(input_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[18] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_18),
        .Q(input_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[19] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_17),
        .Q(input_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[1] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_35),
        .Q(input_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[20] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_16),
        .Q(input_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[21] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_15),
        .Q(input_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[22] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_14),
        .Q(input_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[23] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_13),
        .Q(input_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[24] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_12),
        .Q(input_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[25] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_11),
        .Q(input_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[26] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_10),
        .Q(input_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[27] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_9),
        .Q(input_0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[28] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_8),
        .Q(input_0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[29] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_7),
        .Q(input_0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[2] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_34),
        .Q(input_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[30] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_6),
        .Q(input_0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[31] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_5),
        .Q(input_0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[3] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_33),
        .Q(input_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[4] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_32),
        .Q(input_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[5] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_31),
        .Q(input_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[6] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_30),
        .Q(input_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[7] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_29),
        .Q(input_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[8] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_28),
        .Q(input_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_0_reg[9] 
       (.C(ap_clk),
        .CE(input_00),
        .D(regslice_both_strm_in_V_data_V_U_n_27),
        .Q(input_0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[0] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[0]),
        .Q(input_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[10] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[10]),
        .Q(input_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[11] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[11]),
        .Q(input_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[12] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[12]),
        .Q(input_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[13] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[13]),
        .Q(input_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[14] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[14]),
        .Q(input_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[15] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[15]),
        .Q(input_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[16] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[16]),
        .Q(input_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[17] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[17]),
        .Q(input_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[18] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[18]),
        .Q(input_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[19] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[19]),
        .Q(input_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[1] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[1]),
        .Q(input_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[20] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[20]),
        .Q(input_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[21] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[21]),
        .Q(input_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[22] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[22]),
        .Q(input_1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[23] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[23]),
        .Q(input_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[24] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[24]),
        .Q(input_1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[25] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[25]),
        .Q(input_1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[26] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[26]),
        .Q(input_1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[27] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[27]),
        .Q(input_1[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[28] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[28]),
        .Q(input_1[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[29] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[29]),
        .Q(input_1[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[2] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[2]),
        .Q(input_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[30] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[30]),
        .Q(input_1[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[31] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[31]),
        .Q(input_1[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[3] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[3]),
        .Q(input_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[4] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[4]),
        .Q(input_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[5] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[5]),
        .Q(input_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[6] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[6]),
        .Q(input_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[7] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[7]),
        .Q(input_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[8] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[8]),
        .Q(input_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_reg[9] 
       (.C(ap_clk),
        .CE(input_00),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[9]),
        .Q(input_1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[0] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_36),
        .Q(input_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[10] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_26),
        .Q(input_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[11] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_25),
        .Q(input_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[12] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_24),
        .Q(input_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[13] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_23),
        .Q(input_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[14] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_22),
        .Q(input_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[15] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_21),
        .Q(input_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[16] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_20),
        .Q(input_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[17] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_19),
        .Q(input_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[18] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_18),
        .Q(input_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[19] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_17),
        .Q(input_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[1] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_35),
        .Q(input_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[20] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_16),
        .Q(input_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[21] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_15),
        .Q(input_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[22] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_14),
        .Q(input_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[23] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_13),
        .Q(input_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[24] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_12),
        .Q(input_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[25] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_11),
        .Q(input_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[26] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_10),
        .Q(input_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[27] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_9),
        .Q(input_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[28] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_8),
        .Q(input_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[29] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_7),
        .Q(input_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[2] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_34),
        .Q(input_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[30] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_6),
        .Q(input_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[31] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_5),
        .Q(input_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[3] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_33),
        .Q(input_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[4] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_32),
        .Q(input_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[5] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_31),
        .Q(input_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[6] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_30),
        .Q(input_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[7] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_29),
        .Q(input_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[8] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_28),
        .Q(input_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_reg[9] 
       (.C(ap_clk),
        .CE(input_30),
        .D(regslice_both_strm_in_V_data_V_U_n_27),
        .Q(input_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[0] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[0]),
        .Q(input_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[10] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[10]),
        .Q(input_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[11] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[11]),
        .Q(input_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[12] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[12]),
        .Q(input_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[13] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[13]),
        .Q(input_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[14] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[14]),
        .Q(input_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[15] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[15]),
        .Q(input_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[16] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[16]),
        .Q(input_3[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[17] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[17]),
        .Q(input_3[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[18] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[18]),
        .Q(input_3[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[19] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[19]),
        .Q(input_3[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[1] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[1]),
        .Q(input_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[20] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[20]),
        .Q(input_3[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[21] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[21]),
        .Q(input_3[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[22] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[22]),
        .Q(input_3[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[23] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[23]),
        .Q(input_3[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[24] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[24]),
        .Q(input_3[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[25] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[25]),
        .Q(input_3[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[26] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[26]),
        .Q(input_3[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[27] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[27]),
        .Q(input_3[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[28] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[28]),
        .Q(input_3[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[29] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[29]),
        .Q(input_3[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[2] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[2]),
        .Q(input_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[30] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[30]),
        .Q(input_3[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[31] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[31]),
        .Q(input_3[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[3] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[3]),
        .Q(input_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[4] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[4]),
        .Q(input_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[5] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[5]),
        .Q(input_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[6] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[6]),
        .Q(input_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[7] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[7]),
        .Q(input_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[8] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[8]),
        .Q(input_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_reg[9] 
       (.C(ap_clk),
        .CE(input_30),
        .D(grp_axis_Pipeline_READ_IN_fu_68_input_3[9]),
        .Q(input_3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[0] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[0]),
        .Q(output_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[10] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[10]),
        .Q(output_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[11] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[11]),
        .Q(output_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[12] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[12]),
        .Q(output_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[13] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[13]),
        .Q(output_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[14] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[14]),
        .Q(output_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[15] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[15]),
        .Q(output_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[16] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[16]),
        .Q(output_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[17] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[17]),
        .Q(output_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[18] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[18]),
        .Q(output_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[19] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[19]),
        .Q(output_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[1] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[1]),
        .Q(output_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[20] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[20]),
        .Q(output_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[21] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[21]),
        .Q(output_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[22] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[22]),
        .Q(output_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[23] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[23]),
        .Q(output_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[24] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[24]),
        .Q(output_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[25] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[25]),
        .Q(output_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[26] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[26]),
        .Q(output_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[27] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[27]),
        .Q(output_0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[28] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[28]),
        .Q(output_0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[29] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[29]),
        .Q(output_0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[2] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[2]),
        .Q(output_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[30] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[30]),
        .Q(output_0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[31] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[31]),
        .Q(output_0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[3] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[3]),
        .Q(output_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[4] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[4]),
        .Q(output_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[5] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[5]),
        .Q(output_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[6] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[6]),
        .Q(output_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[7] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[7]),
        .Q(output_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[8] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[8]),
        .Q(output_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_0_reg[9] 
       (.C(ap_clk),
        .CE(output_00),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[9]),
        .Q(output_0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[0] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[0]),
        .Q(output_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[10] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[10]),
        .Q(output_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[11] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[11]),
        .Q(output_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[12] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[12]),
        .Q(output_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[13] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[13]),
        .Q(output_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[14] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[14]),
        .Q(output_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[15] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[15]),
        .Q(output_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[16] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[16]),
        .Q(output_1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[17] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[17]),
        .Q(output_1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[18] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[18]),
        .Q(output_1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[19] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[19]),
        .Q(output_1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[1] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[1]),
        .Q(output_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[20] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[20]),
        .Q(output_1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[21] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[21]),
        .Q(output_1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[22] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[22]),
        .Q(output_1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[23] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[23]),
        .Q(output_1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[24] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[24]),
        .Q(output_1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[25] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[25]),
        .Q(output_1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[26] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[26]),
        .Q(output_1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[27] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[27]),
        .Q(output_1[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[28] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[28]),
        .Q(output_1[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[29] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[29]),
        .Q(output_1[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[2] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[2]),
        .Q(output_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[30] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[30]),
        .Q(output_1[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[31] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[31]),
        .Q(output_1[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[3] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[3]),
        .Q(output_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[4] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[4]),
        .Q(output_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[5] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[5]),
        .Q(output_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[6] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[6]),
        .Q(output_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[7] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[7]),
        .Q(output_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[8] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[8]),
        .Q(output_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_reg[9] 
       (.C(ap_clk),
        .CE(output_10),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[9]),
        .Q(output_1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[0] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[0]),
        .Q(output_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[10] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[10]),
        .Q(output_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[11] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[11]),
        .Q(output_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[12] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[12]),
        .Q(output_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[13] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[13]),
        .Q(output_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[14] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[14]),
        .Q(output_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[15] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[15]),
        .Q(output_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[16] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[16]),
        .Q(output_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[17] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[17]),
        .Q(output_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[18] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[18]),
        .Q(output_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[19] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[19]),
        .Q(output_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[1] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[1]),
        .Q(output_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[20] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[20]),
        .Q(output_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[21] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[21]),
        .Q(output_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[22] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[22]),
        .Q(output_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[23] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[23]),
        .Q(output_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[24] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[24]),
        .Q(output_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[25] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[25]),
        .Q(output_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[26] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[26]),
        .Q(output_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[27] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[27]),
        .Q(output_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[28] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[28]),
        .Q(output_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[29] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[29]),
        .Q(output_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[2] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[2]),
        .Q(output_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[30] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[30]),
        .Q(output_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[31] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[31]),
        .Q(output_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[3] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[3]),
        .Q(output_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[4] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[4]),
        .Q(output_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[5] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[5]),
        .Q(output_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[6] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[6]),
        .Q(output_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[7] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[7]),
        .Q(output_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[8] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[8]),
        .Q(output_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_reg[9] 
       (.C(ap_clk),
        .CE(output_20),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[9]),
        .Q(output_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[0] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[0]),
        .Q(output_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[10] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[10]),
        .Q(output_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[11] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[11]),
        .Q(output_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[12] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[12]),
        .Q(output_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[13] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[13]),
        .Q(output_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[14] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[14]),
        .Q(output_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[15] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[15]),
        .Q(output_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[16] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[16]),
        .Q(output_3[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[17] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[17]),
        .Q(output_3[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[18] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[18]),
        .Q(output_3[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[19] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[19]),
        .Q(output_3[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[1] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[1]),
        .Q(output_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[20] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[20]),
        .Q(output_3[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[21] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[21]),
        .Q(output_3[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[22] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[22]),
        .Q(output_3[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[23] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[23]),
        .Q(output_3[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[24] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[24]),
        .Q(output_3[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[25] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[25]),
        .Q(output_3[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[26] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[26]),
        .Q(output_3[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[27] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[27]),
        .Q(output_3[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[28] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[28]),
        .Q(output_3[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[29] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[29]),
        .Q(output_3[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[2] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[2]),
        .Q(output_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[30] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[30]),
        .Q(output_3[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[31] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[31]),
        .Q(output_3[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[3] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[3]),
        .Q(output_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[4] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[4]),
        .Q(output_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[5] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[5]),
        .Q(output_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[6] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[6]),
        .Q(output_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[7] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[7]),
        .Q(output_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[8] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[8]),
        .Q(output_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_reg[9] 
       (.C(ap_clk),
        .CE(output_30),
        .D(grp_axis_Pipeline_PROCESS_DATA_fu_88_output_3[9]),
        .Q(output_3[9]),
        .R(1'b0));
  design_1_axis_0_0_axis_regslice_both regslice_both_strm_in_V_data_V_U
       (.\B_V_data_1_payload_B_reg[63]_0 (grp_axis_Pipeline_READ_IN_fu_68_input_3),
        .\B_V_data_1_state_reg[1]_0 (strm_in_TREADY),
        .D({regslice_both_strm_in_V_data_V_U_n_5,regslice_both_strm_in_V_data_V_U_n_6,regslice_both_strm_in_V_data_V_U_n_7,regslice_both_strm_in_V_data_V_U_n_8,regslice_both_strm_in_V_data_V_U_n_9,regslice_both_strm_in_V_data_V_U_n_10,regslice_both_strm_in_V_data_V_U_n_11,regslice_both_strm_in_V_data_V_U_n_12,regslice_both_strm_in_V_data_V_U_n_13,regslice_both_strm_in_V_data_V_U_n_14,regslice_both_strm_in_V_data_V_U_n_15,regslice_both_strm_in_V_data_V_U_n_16,regslice_both_strm_in_V_data_V_U_n_17,regslice_both_strm_in_V_data_V_U_n_18,regslice_both_strm_in_V_data_V_U_n_19,regslice_both_strm_in_V_data_V_U_n_20,regslice_both_strm_in_V_data_V_U_n_21,regslice_both_strm_in_V_data_V_U_n_22,regslice_both_strm_in_V_data_V_U_n_23,regslice_both_strm_in_V_data_V_U_n_24,regslice_both_strm_in_V_data_V_U_n_25,regslice_both_strm_in_V_data_V_U_n_26,regslice_both_strm_in_V_data_V_U_n_27,regslice_both_strm_in_V_data_V_U_n_28,regslice_both_strm_in_V_data_V_U_n_29,regslice_both_strm_in_V_data_V_U_n_30,regslice_both_strm_in_V_data_V_U_n_31,regslice_both_strm_in_V_data_V_U_n_32,regslice_both_strm_in_V_data_V_U_n_33,regslice_both_strm_in_V_data_V_U_n_34,regslice_both_strm_in_V_data_V_U_n_35,regslice_both_strm_in_V_data_V_U_n_36}),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .icmp_ln28_fu_102_p20_in(icmp_ln28_fu_102_p20_in),
        .strm_in_TDATA(strm_in_TDATA),
        .strm_in_TREADY_int_regslice(strm_in_TREADY_int_regslice),
        .strm_in_TVALID(strm_in_TVALID),
        .strm_in_TVALID_int_regslice(strm_in_TVALID_int_regslice));
  design_1_axis_0_0_axis_regslice_both_0 regslice_both_strm_out_V_data_V_U
       (.\B_V_data_1_payload_A_reg[63]_0 (data_in),
        .\B_V_data_1_state_reg[0]_0 (strm_out_TVALID),
        .D({ap_NS_fsm[7],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .i_fu_68(i_fu_68),
        .r_fu_641__0(r_fu_641__0),
        .strm_out_TDATA(strm_out_TDATA),
        .strm_out_TREADY(strm_out_TREADY),
        .strm_out_TREADY_int_regslice(strm_out_TREADY_int_regslice));
  design_1_axis_0_0_axis_regslice_both__parameterized1 regslice_both_strm_out_V_last_V_U
       (.Q(ap_CS_fsm_state7),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .i_fu_68(i_fu_68),
        .strm_out_TLAST(strm_out_TLAST),
        .strm_out_TREADY(strm_out_TREADY),
        .strm_out_TREADY_int_regslice(strm_out_TREADY_int_regslice),
        .tmpo_last_reg_220(tmpo_last_reg_220));
endmodule

module design_1_axis_0_0_axis_axis_Pipeline_PROCESS_DATA
   (D,
    E,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    \ap_CS_fsm_reg[4]_1 ,
    \ap_CS_fsm_reg[4]_2 ,
    \i_1_fu_48_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
    Q,
    ap_rst_n,
    \output_1_reg[31] ,
    \output_1_reg[31]_0 ,
    \output_1_reg[31]_1 ,
    \output_1_reg[31]_2 );
  output [31:0]D;
  output [0:0]E;
  output [1:0]\ap_CS_fsm_reg[4] ;
  output [0:0]\ap_CS_fsm_reg[4]_0 ;
  output [0:0]\ap_CS_fsm_reg[4]_1 ;
  output [0:0]\ap_CS_fsm_reg[4]_2 ;
  output \i_1_fu_48_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg;
  input [1:0]Q;
  input ap_rst_n;
  input [31:0]\output_1_reg[31] ;
  input [31:0]\output_1_reg[31]_0 ;
  input [31:0]\output_1_reg[31]_1 ;
  input [31:0]\output_1_reg[31]_2 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire add_ln35_fu_148_p2_carry__0_n_2;
  wire add_ln35_fu_148_p2_carry__0_n_3;
  wire add_ln35_fu_148_p2_carry__0_n_4;
  wire add_ln35_fu_148_p2_carry__0_n_5;
  wire add_ln35_fu_148_p2_carry__0_n_6;
  wire add_ln35_fu_148_p2_carry__0_n_7;
  wire add_ln35_fu_148_p2_carry__0_n_8;
  wire add_ln35_fu_148_p2_carry__0_n_9;
  wire add_ln35_fu_148_p2_carry__1_n_2;
  wire add_ln35_fu_148_p2_carry__1_n_3;
  wire add_ln35_fu_148_p2_carry__1_n_4;
  wire add_ln35_fu_148_p2_carry__1_n_5;
  wire add_ln35_fu_148_p2_carry__1_n_6;
  wire add_ln35_fu_148_p2_carry__1_n_7;
  wire add_ln35_fu_148_p2_carry__1_n_8;
  wire add_ln35_fu_148_p2_carry__1_n_9;
  wire add_ln35_fu_148_p2_carry__2_n_4;
  wire add_ln35_fu_148_p2_carry__2_n_5;
  wire add_ln35_fu_148_p2_carry__2_n_6;
  wire add_ln35_fu_148_p2_carry__2_n_7;
  wire add_ln35_fu_148_p2_carry__2_n_8;
  wire add_ln35_fu_148_p2_carry__2_n_9;
  wire add_ln35_fu_148_p2_carry_n_2;
  wire add_ln35_fu_148_p2_carry_n_3;
  wire add_ln35_fu_148_p2_carry_n_4;
  wire add_ln35_fu_148_p2_carry_n_5;
  wire add_ln35_fu_148_p2_carry_n_6;
  wire add_ln35_fu_148_p2_carry_n_7;
  wire add_ln35_fu_148_p2_carry_n_8;
  wire add_ln35_fu_148_p2_carry_n_9;
  wire [1:0]\ap_CS_fsm_reg[4] ;
  wire [0:0]\ap_CS_fsm_reg[4]_0 ;
  wire [0:0]\ap_CS_fsm_reg[4]_1 ;
  wire [0:0]\ap_CS_fsm_reg[4]_2 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg;
  wire i_1_fu_48;
  wire \i_1_fu_48_reg[0]_0 ;
  wire \i_1_fu_48_reg_n_2_[0] ;
  wire \i_1_fu_48_reg_n_2_[1] ;
  wire \i_1_fu_48_reg_n_2_[2] ;
  wire [31:0]\output_1_reg[31] ;
  wire [31:0]\output_1_reg[31]_0 ;
  wire [31:0]\output_1_reg[31]_1 ;
  wire [31:0]\output_1_reg[31]_2 ;
  wire [31:0]select_ln9_2_fu_140_p3;
  wire [7:6]NLW_add_ln35_fu_148_p2_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln35_fu_148_p2_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_148_p2_carry
       (.CI(select_ln9_2_fu_140_p3[0]),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_148_p2_carry_n_2,add_ln35_fu_148_p2_carry_n_3,add_ln35_fu_148_p2_carry_n_4,add_ln35_fu_148_p2_carry_n_5,add_ln35_fu_148_p2_carry_n_6,add_ln35_fu_148_p2_carry_n_7,add_ln35_fu_148_p2_carry_n_8,add_ln35_fu_148_p2_carry_n_9}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:1]),
        .S(select_ln9_2_fu_140_p3[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_148_p2_carry__0
       (.CI(add_ln35_fu_148_p2_carry_n_2),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_148_p2_carry__0_n_2,add_ln35_fu_148_p2_carry__0_n_3,add_ln35_fu_148_p2_carry__0_n_4,add_ln35_fu_148_p2_carry__0_n_5,add_ln35_fu_148_p2_carry__0_n_6,add_ln35_fu_148_p2_carry__0_n_7,add_ln35_fu_148_p2_carry__0_n_8,add_ln35_fu_148_p2_carry__0_n_9}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:9]),
        .S(select_ln9_2_fu_140_p3[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_148_p2_carry__1
       (.CI(add_ln35_fu_148_p2_carry__0_n_2),
        .CI_TOP(1'b0),
        .CO({add_ln35_fu_148_p2_carry__1_n_2,add_ln35_fu_148_p2_carry__1_n_3,add_ln35_fu_148_p2_carry__1_n_4,add_ln35_fu_148_p2_carry__1_n_5,add_ln35_fu_148_p2_carry__1_n_6,add_ln35_fu_148_p2_carry__1_n_7,add_ln35_fu_148_p2_carry__1_n_8,add_ln35_fu_148_p2_carry__1_n_9}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:17]),
        .S(select_ln9_2_fu_140_p3[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln35_fu_148_p2_carry__2
       (.CI(add_ln35_fu_148_p2_carry__1_n_2),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln35_fu_148_p2_carry__2_CO_UNCONNECTED[7:6],add_ln35_fu_148_p2_carry__2_n_4,add_ln35_fu_148_p2_carry__2_n_5,add_ln35_fu_148_p2_carry__2_n_6,add_ln35_fu_148_p2_carry__2_n_7,add_ln35_fu_148_p2_carry__2_n_8,add_ln35_fu_148_p2_carry__2_n_9}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_ln35_fu_148_p2_carry__2_O_UNCONNECTED[7],D[31:25]}),
        .S({1'b0,select_ln9_2_fu_140_p3[31:25]}));
  design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2 flow_control_loop_pipe_sequential_init_U
       (.D(D[0]),
        .E(i_1_fu_48),
        .Q({\i_1_fu_48_reg_n_2_[2] ,\i_1_fu_48_reg_n_2_[1] ,\i_1_fu_48_reg_n_2_[0] }),
        .\ap_CS_fsm_reg[4] (E),
        .\ap_CS_fsm_reg[4]_0 (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[4]_1 (\ap_CS_fsm_reg[4]_0 ),
        .\ap_CS_fsm_reg[4]_2 (\ap_CS_fsm_reg[4]_1 ),
        .\ap_CS_fsm_reg[4]_3 (\ap_CS_fsm_reg[4]_2 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .\i_1_fu_48_reg[0] ({flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41}),
        .\i_1_fu_48_reg[0]_0 (\i_1_fu_48_reg[0]_0 ),
        .\output_1_reg[31] (\output_1_reg[31] ),
        .\output_1_reg[31]_0 (\output_1_reg[31]_0 ),
        .\output_1_reg[31]_1 (\output_1_reg[31]_1 ),
        .\output_1_reg[31]_2 (\output_1_reg[31]_2 ),
        .\output_2_reg[0] (Q),
        .select_ln9_2_fu_140_p3(select_ln9_2_fu_140_p3));
  FDRE \i_1_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(i_1_fu_48),
        .D(flow_control_loop_pipe_sequential_init_U_n_41),
        .Q(\i_1_fu_48_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \i_1_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(i_1_fu_48),
        .D(flow_control_loop_pipe_sequential_init_U_n_40),
        .Q(\i_1_fu_48_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \i_1_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(i_1_fu_48),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(\i_1_fu_48_reg_n_2_[2] ),
        .R(1'b0));
endmodule

module design_1_axis_0_0_axis_axis_Pipeline_READ_IN
   (E,
    icmp_ln28_fu_102_p20_in,
    ap_loop_init_int_reg,
    strm_in_TREADY_int_regslice,
    D,
    \r_fu_66_reg[1]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
    strm_in_TVALID_int_regslice,
    Q,
    ap_rst_n);
  output [0:0]E;
  output icmp_ln28_fu_102_p20_in;
  output [0:0]ap_loop_init_int_reg;
  output strm_in_TREADY_int_regslice;
  output [1:0]D;
  output \r_fu_66_reg[1]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  input strm_in_TVALID_int_regslice;
  input [1:0]Q;
  input ap_rst_n;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire ap_clk;
  wire [0:0]ap_loop_init_int_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_2;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  wire \i_fu_70_reg_n_2_[1] ;
  wire icmp_ln28_fu_102_p20_in;
  wire r_fu_66;
  wire \r_fu_66_reg[1]_0 ;
  wire \r_fu_66_reg_n_2_[0] ;
  wire \r_fu_66_reg_n_2_[1] ;
  wire strm_in_TREADY_int_regslice;
  wire strm_in_TVALID_int_regslice;

  design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1 flow_control_loop_pipe_sequential_init_U
       (.D({flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9}),
        .E(E),
        .Q({\r_fu_66_reg_n_2_[1] ,\r_fu_66_reg_n_2_[0] }),
        .\ap_CS_fsm_reg[2] (D),
        .\ap_CS_fsm_reg[3] (Q),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(ap_loop_init_int_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .\i_fu_70_reg[1] (flow_control_loop_pipe_sequential_init_U_n_2),
        .\i_fu_70_reg[1]_0 (\i_fu_70_reg_n_2_[1] ),
        .\r_fu_66_reg[1] (icmp_ln28_fu_102_p20_in),
        .\r_fu_66_reg[1]_0 (r_fu_66),
        .\r_fu_66_reg[1]_1 (\r_fu_66_reg[1]_0 ),
        .strm_in_TREADY_int_regslice(strm_in_TREADY_int_regslice),
        .strm_in_TVALID_int_regslice(strm_in_TVALID_int_regslice));
  FDRE \i_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_2),
        .Q(\i_fu_70_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \r_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(r_fu_66),
        .D(flow_control_loop_pipe_sequential_init_U_n_9),
        .Q(\r_fu_66_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \r_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(r_fu_66),
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(\r_fu_66_reg_n_2_[1] ),
        .R(1'b0));
endmodule

module design_1_axis_0_0_axis_axis_Pipeline_WRITE_OUT
   (ap_done_cache,
    ap_enable_reg_pp0_iter1,
    tmpo_last_reg_220,
    r_fu_641__0,
    D,
    \ap_CS_fsm_reg[5] ,
    \output_3_reg[31] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    strm_out_TREADY_int_regslice,
    Q,
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
    ap_block_pp0_stage0_subdone,
    \B_V_data_1_payload_A_reg[31] ,
    \B_V_data_1_payload_A_reg[31]_0 ,
    \B_V_data_1_payload_A_reg[63] ,
    \B_V_data_1_payload_A_reg[63]_0 );
  output ap_done_cache;
  output ap_enable_reg_pp0_iter1;
  output tmpo_last_reg_220;
  output r_fu_641__0;
  output [0:0]D;
  output \ap_CS_fsm_reg[5] ;
  output [63:0]\output_3_reg[31] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input strm_out_TREADY_int_regslice;
  input [1:0]Q;
  input grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  input ap_block_pp0_stage0_subdone;
  input [31:0]\B_V_data_1_payload_A_reg[31] ;
  input [31:0]\B_V_data_1_payload_A_reg[31]_0 ;
  input [31:0]\B_V_data_1_payload_A_reg[63] ;
  input [31:0]\B_V_data_1_payload_A_reg[63]_0 ;

  wire [31:0]\B_V_data_1_payload_A_reg[31] ;
  wire [31:0]\B_V_data_1_payload_A_reg[31]_0 ;
  wire [31:0]\B_V_data_1_payload_A_reg[63] ;
  wire [31:0]\B_V_data_1_payload_A_reg[63]_0 ;
  wire [0:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  wire \i_fu_68_reg_n_2_[1] ;
  wire [63:0]\output_3_reg[31] ;
  wire [1:0]r_2_fu_109_p2;
  wire r_fu_64;
  wire r_fu_641__0;
  wire \r_fu_64_reg_n_2_[0] ;
  wire \r_fu_64_reg_n_2_[1] ;
  wire strm_out_TREADY_int_regslice;
  wire tmpo_last_reg_220;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [0]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [0]),
        .O(\output_3_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[10]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [10]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [10]),
        .O(\output_3_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[11]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [11]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [11]),
        .O(\output_3_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[12]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [12]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [12]),
        .O(\output_3_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[13]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [13]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [13]),
        .O(\output_3_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[14]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [14]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [14]),
        .O(\output_3_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [15]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [15]),
        .O(\output_3_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[16]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [16]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [16]),
        .O(\output_3_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[17]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [17]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [17]),
        .O(\output_3_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[18]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [18]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [18]),
        .O(\output_3_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[19]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [19]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [19]),
        .O(\output_3_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[1]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [1]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [1]),
        .O(\output_3_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[20]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [20]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [20]),
        .O(\output_3_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[21]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [21]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [21]),
        .O(\output_3_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[22]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [22]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [22]),
        .O(\output_3_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[23]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [23]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [23]),
        .O(\output_3_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[24]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [24]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [24]),
        .O(\output_3_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[25]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [25]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [25]),
        .O(\output_3_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[26]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [26]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [26]),
        .O(\output_3_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[27]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [27]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [27]),
        .O(\output_3_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[28]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [28]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [28]),
        .O(\output_3_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[29]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [29]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [29]),
        .O(\output_3_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[2]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [2]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [2]),
        .O(\output_3_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[30]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [30]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [30]),
        .O(\output_3_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[31]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [31]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [31]),
        .O(\output_3_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[32]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [0]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [0]),
        .O(\output_3_reg[31] [32]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[33]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [1]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [1]),
        .O(\output_3_reg[31] [33]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[34]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [2]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [2]),
        .O(\output_3_reg[31] [34]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[35]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [3]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [3]),
        .O(\output_3_reg[31] [35]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[36]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [4]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [4]),
        .O(\output_3_reg[31] [36]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[37]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [5]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [5]),
        .O(\output_3_reg[31] [37]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[38]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [6]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [6]),
        .O(\output_3_reg[31] [38]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[39]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [7]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [7]),
        .O(\output_3_reg[31] [39]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[3]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [3]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [3]),
        .O(\output_3_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[40]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [8]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [8]),
        .O(\output_3_reg[31] [40]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[41]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [9]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [9]),
        .O(\output_3_reg[31] [41]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[42]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [10]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [10]),
        .O(\output_3_reg[31] [42]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[43]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [11]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [11]),
        .O(\output_3_reg[31] [43]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[44]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [12]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [12]),
        .O(\output_3_reg[31] [44]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[45]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [13]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [13]),
        .O(\output_3_reg[31] [45]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[46]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [14]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [14]),
        .O(\output_3_reg[31] [46]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[47]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [15]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [15]),
        .O(\output_3_reg[31] [47]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[48]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [16]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [16]),
        .O(\output_3_reg[31] [48]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[49]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [17]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [17]),
        .O(\output_3_reg[31] [49]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[4]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [4]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [4]),
        .O(\output_3_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[50]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [18]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [18]),
        .O(\output_3_reg[31] [50]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[51]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [19]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [19]),
        .O(\output_3_reg[31] [51]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[52]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [20]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [20]),
        .O(\output_3_reg[31] [52]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[53]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [21]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [21]),
        .O(\output_3_reg[31] [53]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[54]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [22]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [22]),
        .O(\output_3_reg[31] [54]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[55]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [23]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [23]),
        .O(\output_3_reg[31] [55]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[56]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [24]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [24]),
        .O(\output_3_reg[31] [56]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[57]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [25]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [25]),
        .O(\output_3_reg[31] [57]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[58]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [26]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [26]),
        .O(\output_3_reg[31] [58]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[59]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [27]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [27]),
        .O(\output_3_reg[31] [59]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[5]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [5]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [5]),
        .O(\output_3_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[60]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [28]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [28]),
        .O(\output_3_reg[31] [60]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[61]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [29]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [29]),
        .O(\output_3_reg[31] [61]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[62]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[63] [30]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [30]),
        .O(\output_3_reg[31] [62]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[63]_i_2 
       (.I0(\B_V_data_1_payload_A_reg[63] [31]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[63]_0 [31]),
        .O(\output_3_reg[31] [63]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[6]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [6]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [6]),
        .O(\output_3_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [7]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [7]),
        .O(\output_3_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[8]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [8]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [8]),
        .O(\output_3_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_V_data_1_payload_A[9]_i_1 
       (.I0(\B_V_data_1_payload_A_reg[31] [9]),
        .I1(\i_fu_68_reg_n_2_[1] ),
        .I2(\B_V_data_1_payload_A_reg[31]_0 [9]),
        .O(\output_3_reg[31] [9]));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_done_cache(ap_done_cache),
        .ap_done_cache_reg_0(\r_fu_64_reg_n_2_[1] ),
        .ap_done_cache_reg_1(\r_fu_64_reg_n_2_[0] ),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_5),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .\i_fu_68_reg[1] (\i_fu_68_reg_n_2_[1] ),
        .r_2_fu_109_p2(r_2_fu_109_p2),
        .r_fu_64(r_fu_64),
        .r_fu_641__0(r_fu_641__0),
        .\r_fu_64_reg[1] (flow_control_loop_pipe_sequential_init_U_n_11),
        .strm_out_TREADY_int_regslice(strm_out_TREADY_int_regslice),
        .tmpo_last_reg_220(tmpo_last_reg_220));
  FDRE \i_fu_68_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(\i_fu_68_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \r_fu_64_reg[0] 
       (.C(ap_clk),
        .CE(r_fu_64),
        .D(r_2_fu_109_p2[0]),
        .Q(\r_fu_64_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \r_fu_64_reg[1] 
       (.C(ap_clk),
        .CE(r_fu_64),
        .D(r_2_fu_109_p2[1]),
        .Q(\r_fu_64_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \tmpo_last_reg_220_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_11),
        .Q(tmpo_last_reg_220),
        .R(1'b0));
endmodule

module design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init
   (ap_done_cache,
    ap_rst_n_0,
    r_fu_641__0,
    ap_loop_init_int_reg_0,
    D,
    r_fu_64,
    r_2_fu_109_p2,
    \ap_CS_fsm_reg[5] ,
    \r_fu_64_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    ap_enable_reg_pp0_iter1,
    strm_out_TREADY_int_regslice,
    Q,
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
    \i_fu_68_reg[1] ,
    ap_block_pp0_stage0_subdone,
    ap_done_cache_reg_0,
    ap_done_cache_reg_1,
    tmpo_last_reg_220);
  output ap_done_cache;
  output ap_rst_n_0;
  output r_fu_641__0;
  output ap_loop_init_int_reg_0;
  output [0:0]D;
  output r_fu_64;
  output [1:0]r_2_fu_109_p2;
  output \ap_CS_fsm_reg[5] ;
  output \r_fu_64_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1;
  input strm_out_TREADY_int_regslice;
  input [1:0]Q;
  input grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  input \i_fu_68_reg[1] ;
  input ap_block_pp0_stage0_subdone;
  input ap_done_cache_reg_0;
  input ap_done_cache_reg_1;
  input tmpo_last_reg_220;

  wire [0:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_2;
  wire ap_done_cache_reg_0;
  wire ap_done_cache_reg_1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_2;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  wire \i_fu_68_reg[1] ;
  wire [1:0]r_2_fu_109_p2;
  wire r_fu_64;
  wire r_fu_641__0;
  wire \r_fu_64_reg[1] ;
  wire strm_out_TREADY_int_regslice;
  wire tmpo_last_reg_220;

  LUT6 #(
    .INIT(64'hFFFFFFFFCF550000)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_done_cache),
        .I1(r_fu_641__0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \ap_CS_fsm[7]_i_3 
       (.I0(ap_done_cache_reg_1),
        .I1(ap_loop_init_int),
        .I2(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I3(ap_done_cache_reg_0),
        .O(r_fu_641__0));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    ap_done_cache_i_1__0
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_done_cache_reg_0),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_1),
        .I4(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_2),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h88A8A8A800A0A0A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(r_fu_641__0),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(strm_out_TREADY_int_regslice),
        .I4(Q[1]),
        .I5(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h77FF555577FFD555)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_rst_n),
        .I1(ap_block_pp0_stage0_subdone),
        .I2(ap_done_cache_reg_0),
        .I3(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(ap_done_cache_reg_1),
        .O(ap_loop_init_int_i_1__1_n_2));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_2),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEAAFFAAFFAAFFAA)) 
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(ap_done_cache_reg_1),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I4(ap_done_cache_reg_0),
        .I5(ap_block_pp0_stage0_subdone),
        .O(\ap_CS_fsm_reg[5] ));
  LUT6 #(
    .INIT(64'h07F0F0F070707070)) 
    \i_fu_68[1]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I2(\i_fu_68_reg[1] ),
        .I3(strm_out_TREADY_int_regslice),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_fu_64[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1),
        .O(r_2_fu_109_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA800AA00)) 
    \r_fu_64[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_done_cache_reg_1),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I4(ap_done_cache_reg_0),
        .O(r_fu_64));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \r_fu_64[1]_i_2 
       (.I0(ap_done_cache_reg_0),
        .I1(ap_loop_init_int),
        .I2(ap_done_cache_reg_1),
        .O(r_2_fu_109_p2[1]));
  LUT6 #(
    .INIT(64'h5FFF5DDD0AAA0000)) 
    \tmpo_last_reg_220[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone),
        .I1(ap_done_cache_reg_0),
        .I2(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(ap_done_cache_reg_1),
        .I5(tmpo_last_reg_220),
        .O(\r_fu_64_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axis_flow_control_loop_pipe_sequential_init" *) 
module design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_1
   (\i_fu_70_reg[1] ,
    E,
    \r_fu_66_reg[1] ,
    ap_loop_init_int_reg_0,
    \r_fu_66_reg[1]_0 ,
    strm_in_TREADY_int_regslice,
    D,
    \ap_CS_fsm_reg[2] ,
    \r_fu_66_reg[1]_1 ,
    ap_rst_n_inv,
    ap_clk,
    \i_fu_70_reg[1]_0 ,
    Q,
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
    strm_in_TVALID_int_regslice,
    \ap_CS_fsm_reg[3] ,
    ap_rst_n);
  output \i_fu_70_reg[1] ;
  output [0:0]E;
  output \r_fu_66_reg[1] ;
  output [0:0]ap_loop_init_int_reg_0;
  output [0:0]\r_fu_66_reg[1]_0 ;
  output strm_in_TREADY_int_regslice;
  output [1:0]D;
  output [1:0]\ap_CS_fsm_reg[2] ;
  output \r_fu_66_reg[1]_1 ;
  input ap_rst_n_inv;
  input ap_clk;
  input \i_fu_70_reg[1]_0 ;
  input [1:0]Q;
  input grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  input strm_in_TVALID_int_regslice;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input ap_rst_n;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_2;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_2;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  wire \i_fu_70_reg[1] ;
  wire \i_fu_70_reg[1]_0 ;
  wire \r_fu_66_reg[1] ;
  wire [0:0]\r_fu_66_reg[1]_0 ;
  wire \r_fu_66_reg[1]_1 ;
  wire strm_in_TREADY_int_regslice;
  wire strm_in_TVALID_int_regslice;

  LUT6 #(
    .INIT(64'hF0D0000000000000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I3(Q[0]),
        .I4(strm_in_TVALID_int_regslice),
        .I5(\ap_CS_fsm_reg[3] [1]),
        .O(strm_in_TREADY_int_regslice));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I3(Q[0]),
        .O(\r_fu_66_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF1D00)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I2(\r_fu_66_reg[1] ),
        .I3(\ap_CS_fsm_reg[3] [1]),
        .I4(\ap_CS_fsm_reg[3] [0]),
        .O(\ap_CS_fsm_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(\r_fu_66_reg[1] ),
        .I2(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I3(ap_done_cache),
        .O(\ap_CS_fsm_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    ap_done_cache_i_1__1
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_2),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h55F55DF5F5F5FDF5)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(Q[1]),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I4(Q[0]),
        .I5(strm_in_TVALID_int_regslice),
        .O(ap_loop_init_int_i_1_n_2));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_2),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFF0D0)) 
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I3(Q[0]),
        .I4(\ap_CS_fsm_reg[3] [0]),
        .O(\r_fu_66_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hF5F9AAAAAAAAAAAA)) 
    \i_fu_70[1]_i_1 
       (.I0(\i_fu_70_reg[1]_0 ),
        .I1(Q[1]),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .I4(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I5(strm_in_TVALID_int_regslice),
        .O(\i_fu_70_reg[1] ));
  LUT6 #(
    .INIT(64'h008A000000000000)) 
    \input_0[31]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_70_reg[1]_0 ),
        .I3(\r_fu_66_reg[1] ),
        .I4(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I5(strm_in_TVALID_int_regslice),
        .O(E));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \input_3[31]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_70_reg[1]_0 ),
        .I2(\ap_CS_fsm_reg[3] [1]),
        .I3(\r_fu_66_reg[1] ),
        .I4(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I5(strm_in_TVALID_int_regslice),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \r_fu_66[0]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0D00000)) 
    \r_fu_66[1]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I3(Q[0]),
        .I4(strm_in_TVALID_int_regslice),
        .O(\r_fu_66_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_fu_66[1]_i_2 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(Q[1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "axis_flow_control_loop_pipe_sequential_init" *) 
module design_1_axis_0_0_axis_flow_control_loop_pipe_sequential_init_2
   (E,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    select_ln9_2_fu_140_p3,
    D,
    \i_1_fu_48_reg[0] ,
    \ap_CS_fsm_reg[4]_1 ,
    \ap_CS_fsm_reg[4]_2 ,
    \ap_CS_fsm_reg[4]_3 ,
    \i_1_fu_48_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    Q,
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg,
    \output_2_reg[0] ,
    ap_rst_n,
    \output_1_reg[31] ,
    \output_1_reg[31]_0 ,
    \output_1_reg[31]_1 ,
    \output_1_reg[31]_2 );
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[4] ;
  output [1:0]\ap_CS_fsm_reg[4]_0 ;
  output [31:0]select_ln9_2_fu_140_p3;
  output [0:0]D;
  output [2:0]\i_1_fu_48_reg[0] ;
  output [0:0]\ap_CS_fsm_reg[4]_1 ;
  output [0:0]\ap_CS_fsm_reg[4]_2 ;
  output [0:0]\ap_CS_fsm_reg[4]_3 ;
  output \i_1_fu_48_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input [2:0]Q;
  input grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg;
  input [1:0]\output_2_reg[0] ;
  input ap_rst_n;
  input [31:0]\output_1_reg[31] ;
  input [31:0]\output_1_reg[31]_0 ;
  input [31:0]\output_1_reg[31]_1 ;
  input [31:0]\output_1_reg[31]_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire [1:0]\ap_CS_fsm_reg[4]_0 ;
  wire [0:0]\ap_CS_fsm_reg[4]_1 ;
  wire [0:0]\ap_CS_fsm_reg[4]_2 ;
  wire [0:0]\ap_CS_fsm_reg[4]_3 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_2;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_2;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [1:0]ap_sig_allocacmp_i;
  wire grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg;
  wire [2:0]\i_1_fu_48_reg[0] ;
  wire \i_1_fu_48_reg[0]_0 ;
  wire icmp_ln34_fu_84_p22_in;
  wire [31:0]\output_1_reg[31] ;
  wire [31:0]\output_1_reg[31]_0 ;
  wire [31:0]\output_1_reg[31]_1 ;
  wire [31:0]\output_1_reg[31]_2 ;
  wire [1:0]\output_2_reg[0] ;
  wire [31:0]select_ln9_2_fu_140_p3;

  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_1
       (.I0(\output_1_reg[31] [16]),
        .I1(\output_1_reg[31]_0 [16]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [16]),
        .I5(\output_1_reg[31]_2 [16]),
        .O(select_ln9_2_fu_140_p3[16]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_2
       (.I0(\output_1_reg[31] [15]),
        .I1(\output_1_reg[31]_0 [15]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [15]),
        .I5(\output_1_reg[31]_2 [15]),
        .O(select_ln9_2_fu_140_p3[15]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_3
       (.I0(\output_1_reg[31] [14]),
        .I1(\output_1_reg[31]_0 [14]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [14]),
        .I5(\output_1_reg[31]_2 [14]),
        .O(select_ln9_2_fu_140_p3[14]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_4
       (.I0(\output_1_reg[31] [13]),
        .I1(\output_1_reg[31]_0 [13]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [13]),
        .I5(\output_1_reg[31]_2 [13]),
        .O(select_ln9_2_fu_140_p3[13]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_5
       (.I0(\output_1_reg[31] [12]),
        .I1(\output_1_reg[31]_0 [12]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [12]),
        .I5(\output_1_reg[31]_2 [12]),
        .O(select_ln9_2_fu_140_p3[12]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_6
       (.I0(\output_1_reg[31] [11]),
        .I1(\output_1_reg[31]_0 [11]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [11]),
        .I5(\output_1_reg[31]_2 [11]),
        .O(select_ln9_2_fu_140_p3[11]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_7
       (.I0(\output_1_reg[31] [10]),
        .I1(\output_1_reg[31]_0 [10]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [10]),
        .I5(\output_1_reg[31]_2 [10]),
        .O(select_ln9_2_fu_140_p3[10]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__0_i_8
       (.I0(\output_1_reg[31] [9]),
        .I1(\output_1_reg[31]_0 [9]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [9]),
        .I5(\output_1_reg[31]_2 [9]),
        .O(select_ln9_2_fu_140_p3[9]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_1
       (.I0(\output_1_reg[31] [24]),
        .I1(\output_1_reg[31]_0 [24]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [24]),
        .I5(\output_1_reg[31]_2 [24]),
        .O(select_ln9_2_fu_140_p3[24]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_2
       (.I0(\output_1_reg[31] [23]),
        .I1(\output_1_reg[31]_0 [23]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [23]),
        .I5(\output_1_reg[31]_2 [23]),
        .O(select_ln9_2_fu_140_p3[23]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_3
       (.I0(\output_1_reg[31] [22]),
        .I1(\output_1_reg[31]_0 [22]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [22]),
        .I5(\output_1_reg[31]_2 [22]),
        .O(select_ln9_2_fu_140_p3[22]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_4
       (.I0(\output_1_reg[31] [21]),
        .I1(\output_1_reg[31]_0 [21]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [21]),
        .I5(\output_1_reg[31]_2 [21]),
        .O(select_ln9_2_fu_140_p3[21]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_5
       (.I0(\output_1_reg[31] [20]),
        .I1(\output_1_reg[31]_0 [20]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [20]),
        .I5(\output_1_reg[31]_2 [20]),
        .O(select_ln9_2_fu_140_p3[20]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_6
       (.I0(\output_1_reg[31] [19]),
        .I1(\output_1_reg[31]_0 [19]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [19]),
        .I5(\output_1_reg[31]_2 [19]),
        .O(select_ln9_2_fu_140_p3[19]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_7
       (.I0(\output_1_reg[31] [18]),
        .I1(\output_1_reg[31]_0 [18]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [18]),
        .I5(\output_1_reg[31]_2 [18]),
        .O(select_ln9_2_fu_140_p3[18]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__1_i_8
       (.I0(\output_1_reg[31] [17]),
        .I1(\output_1_reg[31]_0 [17]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [17]),
        .I5(\output_1_reg[31]_2 [17]),
        .O(select_ln9_2_fu_140_p3[17]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_1
       (.I0(\output_1_reg[31] [31]),
        .I1(\output_1_reg[31]_0 [31]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [31]),
        .I5(\output_1_reg[31]_2 [31]),
        .O(select_ln9_2_fu_140_p3[31]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_2
       (.I0(\output_1_reg[31] [30]),
        .I1(\output_1_reg[31]_0 [30]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [30]),
        .I5(\output_1_reg[31]_2 [30]),
        .O(select_ln9_2_fu_140_p3[30]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_3
       (.I0(\output_1_reg[31] [29]),
        .I1(\output_1_reg[31]_0 [29]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [29]),
        .I5(\output_1_reg[31]_2 [29]),
        .O(select_ln9_2_fu_140_p3[29]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_4
       (.I0(\output_1_reg[31] [28]),
        .I1(\output_1_reg[31]_0 [28]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [28]),
        .I5(\output_1_reg[31]_2 [28]),
        .O(select_ln9_2_fu_140_p3[28]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_5
       (.I0(\output_1_reg[31] [27]),
        .I1(\output_1_reg[31]_0 [27]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [27]),
        .I5(\output_1_reg[31]_2 [27]),
        .O(select_ln9_2_fu_140_p3[27]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_6
       (.I0(\output_1_reg[31] [26]),
        .I1(\output_1_reg[31]_0 [26]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [26]),
        .I5(\output_1_reg[31]_2 [26]),
        .O(select_ln9_2_fu_140_p3[26]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry__2_i_7
       (.I0(\output_1_reg[31] [25]),
        .I1(\output_1_reg[31]_0 [25]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [25]),
        .I5(\output_1_reg[31]_2 [25]),
        .O(select_ln9_2_fu_140_p3[25]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_1
       (.I0(\output_1_reg[31] [0]),
        .I1(\output_1_reg[31]_0 [0]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [0]),
        .I5(\output_1_reg[31]_2 [0]),
        .O(select_ln9_2_fu_140_p3[0]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_2
       (.I0(\output_1_reg[31] [8]),
        .I1(\output_1_reg[31]_0 [8]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [8]),
        .I5(\output_1_reg[31]_2 [8]),
        .O(select_ln9_2_fu_140_p3[8]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_3
       (.I0(\output_1_reg[31] [7]),
        .I1(\output_1_reg[31]_0 [7]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [7]),
        .I5(\output_1_reg[31]_2 [7]),
        .O(select_ln9_2_fu_140_p3[7]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_4
       (.I0(\output_1_reg[31] [6]),
        .I1(\output_1_reg[31]_0 [6]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [6]),
        .I5(\output_1_reg[31]_2 [6]),
        .O(select_ln9_2_fu_140_p3[6]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_5
       (.I0(\output_1_reg[31] [5]),
        .I1(\output_1_reg[31]_0 [5]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [5]),
        .I5(\output_1_reg[31]_2 [5]),
        .O(select_ln9_2_fu_140_p3[5]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_6
       (.I0(\output_1_reg[31] [4]),
        .I1(\output_1_reg[31]_0 [4]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [4]),
        .I5(\output_1_reg[31]_2 [4]),
        .O(select_ln9_2_fu_140_p3[4]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_7
       (.I0(\output_1_reg[31] [3]),
        .I1(\output_1_reg[31]_0 [3]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [3]),
        .I5(\output_1_reg[31]_2 [3]),
        .O(select_ln9_2_fu_140_p3[3]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_8
       (.I0(\output_1_reg[31] [2]),
        .I1(\output_1_reg[31]_0 [2]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [2]),
        .I5(\output_1_reg[31]_2 [2]),
        .O(select_ln9_2_fu_140_p3[2]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    add_ln35_fu_148_p2_carry_i_9
       (.I0(\output_1_reg[31] [1]),
        .I1(\output_1_reg[31]_0 [1]),
        .I2(ap_sig_allocacmp_i[0]),
        .I3(ap_sig_allocacmp_i[1]),
        .I4(\output_1_reg[31]_1 [1]),
        .I5(\output_1_reg[31]_2 [1]),
        .O(select_ln9_2_fu_140_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF1D00)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I2(icmp_ln34_fu_84_p22_in),
        .I3(\output_2_reg[0] [1]),
        .I4(\output_2_reg[0] [0]),
        .O(\ap_CS_fsm_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\output_2_reg[0] [1]),
        .I1(icmp_ln34_fu_84_p22_in),
        .I2(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I3(ap_done_cache),
        .O(\ap_CS_fsm_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000444)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I4(Q[1]),
        .O(icmp_ln34_fu_84_p22_in));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    ap_done_cache_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .I4(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_2),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5555FF555575FF55)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init_int),
        .I4(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I5(Q[1]),
        .O(ap_loop_init_int_i_1__0_n_2));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_2),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00FB00)) 
    grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I4(Q[1]),
        .I5(\output_2_reg[0] [0]),
        .O(\i_1_fu_48_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF0FB)) 
    \i_1_fu_48[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(Q[0]),
        .O(\i_1_fu_48_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_1_fu_48[1]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .O(\i_1_fu_48_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF00FB00)) 
    \i_1_fu_48[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I4(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0608)) 
    \i_1_fu_48[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .O(\i_1_fu_48_reg[0] [2]));
  LUT6 #(
    .INIT(64'hA000A000A000A020)) 
    \output_0[31]_i_1 
       (.I0(\output_2_reg[0] [1]),
        .I1(Q[1]),
        .I2(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\ap_CS_fsm_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \output_1[31]_i_1 
       (.I0(\output_2_reg[0] [1]),
        .I1(Q[1]),
        .I2(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[0]),
        .O(\ap_CS_fsm_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h300530F53F053FF5)) 
    \output_2[0]_i_1 
       (.I0(\output_1_reg[31]_2 [0]),
        .I1(\output_1_reg[31]_1 [0]),
        .I2(ap_sig_allocacmp_i[1]),
        .I3(ap_sig_allocacmp_i[0]),
        .I4(\output_1_reg[31]_0 [0]),
        .I5(\output_1_reg[31] [0]),
        .O(D));
  LUT3 #(
    .INIT(8'h2A)) 
    \output_2[0]_i_2 
       (.I0(Q[1]),
        .I1(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \output_2[0]_i_3 
       (.I0(Q[0]),
        .I1(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \output_2[31]_i_1 
       (.I0(\output_2_reg[0] [1]),
        .I1(Q[1]),
        .I2(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[0]),
        .O(\ap_CS_fsm_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \output_3[31]_i_1 
       (.I0(\output_2_reg[0] [1]),
        .I1(Q[1]),
        .I2(grp_axis_Pipeline_PROCESS_DATA_fu_88_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[0]),
        .O(\ap_CS_fsm_reg[4]_1 ));
endmodule

module design_1_axis_0_0_axis_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    ap_rst_n_inv,
    strm_in_TVALID_int_regslice,
    D,
    \B_V_data_1_payload_B_reg[63]_0 ,
    ap_clk,
    Q,
    grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg,
    icmp_ln28_fu_102_p20_in,
    strm_in_TVALID,
    ap_rst_n,
    strm_in_TREADY_int_regslice,
    strm_in_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_rst_n_inv;
  output strm_in_TVALID_int_regslice;
  output [31:0]D;
  output [31:0]\B_V_data_1_payload_B_reg[63]_0 ;
  input ap_clk;
  input [0:0]Q;
  input grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  input icmp_ln28_fu_102_p20_in;
  input strm_in_TVALID;
  input ap_rst_n;
  input strm_in_TREADY_int_regslice;
  input [63:0]strm_in_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg_n_2_[0] ;
  wire \B_V_data_1_payload_A_reg_n_2_[10] ;
  wire \B_V_data_1_payload_A_reg_n_2_[11] ;
  wire \B_V_data_1_payload_A_reg_n_2_[12] ;
  wire \B_V_data_1_payload_A_reg_n_2_[13] ;
  wire \B_V_data_1_payload_A_reg_n_2_[14] ;
  wire \B_V_data_1_payload_A_reg_n_2_[15] ;
  wire \B_V_data_1_payload_A_reg_n_2_[16] ;
  wire \B_V_data_1_payload_A_reg_n_2_[17] ;
  wire \B_V_data_1_payload_A_reg_n_2_[18] ;
  wire \B_V_data_1_payload_A_reg_n_2_[19] ;
  wire \B_V_data_1_payload_A_reg_n_2_[1] ;
  wire \B_V_data_1_payload_A_reg_n_2_[20] ;
  wire \B_V_data_1_payload_A_reg_n_2_[21] ;
  wire \B_V_data_1_payload_A_reg_n_2_[22] ;
  wire \B_V_data_1_payload_A_reg_n_2_[23] ;
  wire \B_V_data_1_payload_A_reg_n_2_[24] ;
  wire \B_V_data_1_payload_A_reg_n_2_[25] ;
  wire \B_V_data_1_payload_A_reg_n_2_[26] ;
  wire \B_V_data_1_payload_A_reg_n_2_[27] ;
  wire \B_V_data_1_payload_A_reg_n_2_[28] ;
  wire \B_V_data_1_payload_A_reg_n_2_[29] ;
  wire \B_V_data_1_payload_A_reg_n_2_[2] ;
  wire \B_V_data_1_payload_A_reg_n_2_[30] ;
  wire \B_V_data_1_payload_A_reg_n_2_[31] ;
  wire \B_V_data_1_payload_A_reg_n_2_[32] ;
  wire \B_V_data_1_payload_A_reg_n_2_[33] ;
  wire \B_V_data_1_payload_A_reg_n_2_[34] ;
  wire \B_V_data_1_payload_A_reg_n_2_[35] ;
  wire \B_V_data_1_payload_A_reg_n_2_[36] ;
  wire \B_V_data_1_payload_A_reg_n_2_[37] ;
  wire \B_V_data_1_payload_A_reg_n_2_[38] ;
  wire \B_V_data_1_payload_A_reg_n_2_[39] ;
  wire \B_V_data_1_payload_A_reg_n_2_[3] ;
  wire \B_V_data_1_payload_A_reg_n_2_[40] ;
  wire \B_V_data_1_payload_A_reg_n_2_[41] ;
  wire \B_V_data_1_payload_A_reg_n_2_[42] ;
  wire \B_V_data_1_payload_A_reg_n_2_[43] ;
  wire \B_V_data_1_payload_A_reg_n_2_[44] ;
  wire \B_V_data_1_payload_A_reg_n_2_[45] ;
  wire \B_V_data_1_payload_A_reg_n_2_[46] ;
  wire \B_V_data_1_payload_A_reg_n_2_[47] ;
  wire \B_V_data_1_payload_A_reg_n_2_[48] ;
  wire \B_V_data_1_payload_A_reg_n_2_[49] ;
  wire \B_V_data_1_payload_A_reg_n_2_[4] ;
  wire \B_V_data_1_payload_A_reg_n_2_[50] ;
  wire \B_V_data_1_payload_A_reg_n_2_[51] ;
  wire \B_V_data_1_payload_A_reg_n_2_[52] ;
  wire \B_V_data_1_payload_A_reg_n_2_[53] ;
  wire \B_V_data_1_payload_A_reg_n_2_[54] ;
  wire \B_V_data_1_payload_A_reg_n_2_[55] ;
  wire \B_V_data_1_payload_A_reg_n_2_[56] ;
  wire \B_V_data_1_payload_A_reg_n_2_[57] ;
  wire \B_V_data_1_payload_A_reg_n_2_[58] ;
  wire \B_V_data_1_payload_A_reg_n_2_[59] ;
  wire \B_V_data_1_payload_A_reg_n_2_[5] ;
  wire \B_V_data_1_payload_A_reg_n_2_[60] ;
  wire \B_V_data_1_payload_A_reg_n_2_[61] ;
  wire \B_V_data_1_payload_A_reg_n_2_[62] ;
  wire \B_V_data_1_payload_A_reg_n_2_[63] ;
  wire \B_V_data_1_payload_A_reg_n_2_[6] ;
  wire \B_V_data_1_payload_A_reg_n_2_[7] ;
  wire \B_V_data_1_payload_A_reg_n_2_[8] ;
  wire \B_V_data_1_payload_A_reg_n_2_[9] ;
  wire [31:0]\B_V_data_1_payload_B_reg[63]_0 ;
  wire \B_V_data_1_payload_B_reg_n_2_[0] ;
  wire \B_V_data_1_payload_B_reg_n_2_[10] ;
  wire \B_V_data_1_payload_B_reg_n_2_[11] ;
  wire \B_V_data_1_payload_B_reg_n_2_[12] ;
  wire \B_V_data_1_payload_B_reg_n_2_[13] ;
  wire \B_V_data_1_payload_B_reg_n_2_[14] ;
  wire \B_V_data_1_payload_B_reg_n_2_[15] ;
  wire \B_V_data_1_payload_B_reg_n_2_[16] ;
  wire \B_V_data_1_payload_B_reg_n_2_[17] ;
  wire \B_V_data_1_payload_B_reg_n_2_[18] ;
  wire \B_V_data_1_payload_B_reg_n_2_[19] ;
  wire \B_V_data_1_payload_B_reg_n_2_[1] ;
  wire \B_V_data_1_payload_B_reg_n_2_[20] ;
  wire \B_V_data_1_payload_B_reg_n_2_[21] ;
  wire \B_V_data_1_payload_B_reg_n_2_[22] ;
  wire \B_V_data_1_payload_B_reg_n_2_[23] ;
  wire \B_V_data_1_payload_B_reg_n_2_[24] ;
  wire \B_V_data_1_payload_B_reg_n_2_[25] ;
  wire \B_V_data_1_payload_B_reg_n_2_[26] ;
  wire \B_V_data_1_payload_B_reg_n_2_[27] ;
  wire \B_V_data_1_payload_B_reg_n_2_[28] ;
  wire \B_V_data_1_payload_B_reg_n_2_[29] ;
  wire \B_V_data_1_payload_B_reg_n_2_[2] ;
  wire \B_V_data_1_payload_B_reg_n_2_[30] ;
  wire \B_V_data_1_payload_B_reg_n_2_[31] ;
  wire \B_V_data_1_payload_B_reg_n_2_[32] ;
  wire \B_V_data_1_payload_B_reg_n_2_[33] ;
  wire \B_V_data_1_payload_B_reg_n_2_[34] ;
  wire \B_V_data_1_payload_B_reg_n_2_[35] ;
  wire \B_V_data_1_payload_B_reg_n_2_[36] ;
  wire \B_V_data_1_payload_B_reg_n_2_[37] ;
  wire \B_V_data_1_payload_B_reg_n_2_[38] ;
  wire \B_V_data_1_payload_B_reg_n_2_[39] ;
  wire \B_V_data_1_payload_B_reg_n_2_[3] ;
  wire \B_V_data_1_payload_B_reg_n_2_[40] ;
  wire \B_V_data_1_payload_B_reg_n_2_[41] ;
  wire \B_V_data_1_payload_B_reg_n_2_[42] ;
  wire \B_V_data_1_payload_B_reg_n_2_[43] ;
  wire \B_V_data_1_payload_B_reg_n_2_[44] ;
  wire \B_V_data_1_payload_B_reg_n_2_[45] ;
  wire \B_V_data_1_payload_B_reg_n_2_[46] ;
  wire \B_V_data_1_payload_B_reg_n_2_[47] ;
  wire \B_V_data_1_payload_B_reg_n_2_[48] ;
  wire \B_V_data_1_payload_B_reg_n_2_[49] ;
  wire \B_V_data_1_payload_B_reg_n_2_[4] ;
  wire \B_V_data_1_payload_B_reg_n_2_[50] ;
  wire \B_V_data_1_payload_B_reg_n_2_[51] ;
  wire \B_V_data_1_payload_B_reg_n_2_[52] ;
  wire \B_V_data_1_payload_B_reg_n_2_[53] ;
  wire \B_V_data_1_payload_B_reg_n_2_[54] ;
  wire \B_V_data_1_payload_B_reg_n_2_[55] ;
  wire \B_V_data_1_payload_B_reg_n_2_[56] ;
  wire \B_V_data_1_payload_B_reg_n_2_[57] ;
  wire \B_V_data_1_payload_B_reg_n_2_[58] ;
  wire \B_V_data_1_payload_B_reg_n_2_[59] ;
  wire \B_V_data_1_payload_B_reg_n_2_[5] ;
  wire \B_V_data_1_payload_B_reg_n_2_[60] ;
  wire \B_V_data_1_payload_B_reg_n_2_[61] ;
  wire \B_V_data_1_payload_B_reg_n_2_[62] ;
  wire \B_V_data_1_payload_B_reg_n_2_[63] ;
  wire \B_V_data_1_payload_B_reg_n_2_[6] ;
  wire \B_V_data_1_payload_B_reg_n_2_[7] ;
  wire \B_V_data_1_payload_B_reg_n_2_[8] ;
  wire \B_V_data_1_payload_B_reg_n_2_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_2;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_2;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_2 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [31:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg;
  wire icmp_ln28_fu_102_p20_in;
  wire [63:0]strm_in_TDATA;
  wire strm_in_TREADY_int_regslice;
  wire strm_in_TVALID;
  wire strm_in_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[63]_i_1 
       (.I0(strm_in_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[24]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[25]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[26]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[27]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[28]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[29]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[30]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[31]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[32]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[33]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[34]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[35]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[36]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[37]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[38]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[39]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[40]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[41]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[42]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[43]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[44]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[45]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[46]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[47]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[48]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[49]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[50]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[51]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[52]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[53]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[54]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[55]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[56]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[57]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[58]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[59]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[60]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[61]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[62]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[63]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(strm_in_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[63]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(strm_in_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[24]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[25]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[26]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[27]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[28]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[29]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[30]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[31]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[32]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[33]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[34]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[35]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[36]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[37]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[38]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[39]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[40]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[41]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[42]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[43]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[44]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[45]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[46]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[47]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[48]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[49]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[50]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[51]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[52]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[53]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[54]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[55]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[56]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[57]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[58]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[59]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[60]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[61]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[62]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[63]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(strm_in_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    B_V_data_1_sel_rd_i_1
       (.I0(icmp_ln28_fu_102_p20_in),
        .I1(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I2(strm_in_TVALID_int_regslice),
        .I3(Q),
        .I4(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_2));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_2),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(strm_in_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_2));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_2),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(strm_in_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(strm_in_TREADY_int_regslice),
        .I4(strm_in_TVALID),
        .O(\B_V_data_1_state[0]_i_1_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0F0FCF0FAFAFEFAF)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(Q),
        .I2(strm_in_TVALID_int_regslice),
        .I3(grp_axis_Pipeline_READ_IN_fu_68_ap_start_reg),
        .I4(icmp_ln28_fu_102_p20_in),
        .I5(strm_in_TVALID),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_2 ),
        .Q(strm_in_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[0] ),
        .I2(B_V_data_1_sel),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[10] ),
        .I2(B_V_data_1_sel),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[11] ),
        .I2(B_V_data_1_sel),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[12] ),
        .I2(B_V_data_1_sel),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[13] ),
        .I2(B_V_data_1_sel),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[14] ),
        .I2(B_V_data_1_sel),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[15] ),
        .I2(B_V_data_1_sel),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[16]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[16] ),
        .I2(B_V_data_1_sel),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[17]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[17] ),
        .I2(B_V_data_1_sel),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[18]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[18] ),
        .I2(B_V_data_1_sel),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[19]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[19] ),
        .I2(B_V_data_1_sel),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[1] ),
        .I2(B_V_data_1_sel),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[20]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[20] ),
        .I2(B_V_data_1_sel),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[21]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[21] ),
        .I2(B_V_data_1_sel),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[22]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[22] ),
        .I2(B_V_data_1_sel),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[23]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[23] ),
        .I2(B_V_data_1_sel),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[24]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[24] ),
        .I2(B_V_data_1_sel),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[25]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[25] ),
        .I2(B_V_data_1_sel),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[26]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[26] ),
        .I2(B_V_data_1_sel),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[27]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[27] ),
        .I2(B_V_data_1_sel),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[28]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[28] ),
        .I2(B_V_data_1_sel),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[29]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[29] ),
        .I2(B_V_data_1_sel),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[2] ),
        .I2(B_V_data_1_sel),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[30]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[30] ),
        .I2(B_V_data_1_sel),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[31]_i_2 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[31] ),
        .I2(B_V_data_1_sel),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[3] ),
        .I2(B_V_data_1_sel),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[4] ),
        .I2(B_V_data_1_sel),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[5] ),
        .I2(B_V_data_1_sel),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[6] ),
        .I2(B_V_data_1_sel),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[7] ),
        .I2(B_V_data_1_sel),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[8] ),
        .I2(B_V_data_1_sel),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_0[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[9] ),
        .I2(B_V_data_1_sel),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[32] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[32] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[42] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[42] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[43] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[43] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[44] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[44] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[45] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[45] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[46] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[46] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[47] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[47] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[16]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[48] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[48] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[17]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[49] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[49] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[18]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[50] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[50] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[19]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[51] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[51] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[33] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[33] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[20]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[52] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[52] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[21]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[53] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[53] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[22]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[54] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[54] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[23]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[55] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[55] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[24]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[56] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[56] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[25]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[57] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[57] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[26]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[58] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[58] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[27]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[59] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[59] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[28]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[60] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[60] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[29]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[61] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[61] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[34] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[34] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[30]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[62] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[62] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[31]_i_2 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[63] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[63] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[35] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[35] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[36] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[36] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[37] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[37] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[38] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[38] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[39] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[39] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[40] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[40] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \input_3[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[41] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[41] ),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[63]_0 [9]));
endmodule

(* ORIG_REF_NAME = "axis_regslice_both" *) 
module design_1_axis_0_0_axis_regslice_both_0
   (strm_out_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    ap_block_pp0_stage0_subdone,
    i_fu_68,
    strm_out_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_done_cache,
    r_fu_641__0,
    grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg,
    Q,
    strm_out_TREADY,
    ap_enable_reg_pp0_iter1,
    ap_rst_n,
    \B_V_data_1_payload_A_reg[63]_0 );
  output strm_out_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output [1:0]D;
  output ap_block_pp0_stage0_subdone;
  output i_fu_68;
  output [63:0]strm_out_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_done_cache;
  input r_fu_641__0;
  input grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  input [1:0]Q;
  input strm_out_TREADY;
  input ap_enable_reg_pp0_iter1;
  input ap_rst_n;
  input [63:0]\B_V_data_1_payload_A_reg[63]_0 ;

  wire \B_V_data_1_payload_A[63]_i_1__0_n_2 ;
  wire [63:0]\B_V_data_1_payload_A_reg[63]_0 ;
  wire \B_V_data_1_payload_A_reg_n_2_[0] ;
  wire \B_V_data_1_payload_A_reg_n_2_[10] ;
  wire \B_V_data_1_payload_A_reg_n_2_[11] ;
  wire \B_V_data_1_payload_A_reg_n_2_[12] ;
  wire \B_V_data_1_payload_A_reg_n_2_[13] ;
  wire \B_V_data_1_payload_A_reg_n_2_[14] ;
  wire \B_V_data_1_payload_A_reg_n_2_[15] ;
  wire \B_V_data_1_payload_A_reg_n_2_[16] ;
  wire \B_V_data_1_payload_A_reg_n_2_[17] ;
  wire \B_V_data_1_payload_A_reg_n_2_[18] ;
  wire \B_V_data_1_payload_A_reg_n_2_[19] ;
  wire \B_V_data_1_payload_A_reg_n_2_[1] ;
  wire \B_V_data_1_payload_A_reg_n_2_[20] ;
  wire \B_V_data_1_payload_A_reg_n_2_[21] ;
  wire \B_V_data_1_payload_A_reg_n_2_[22] ;
  wire \B_V_data_1_payload_A_reg_n_2_[23] ;
  wire \B_V_data_1_payload_A_reg_n_2_[24] ;
  wire \B_V_data_1_payload_A_reg_n_2_[25] ;
  wire \B_V_data_1_payload_A_reg_n_2_[26] ;
  wire \B_V_data_1_payload_A_reg_n_2_[27] ;
  wire \B_V_data_1_payload_A_reg_n_2_[28] ;
  wire \B_V_data_1_payload_A_reg_n_2_[29] ;
  wire \B_V_data_1_payload_A_reg_n_2_[2] ;
  wire \B_V_data_1_payload_A_reg_n_2_[30] ;
  wire \B_V_data_1_payload_A_reg_n_2_[31] ;
  wire \B_V_data_1_payload_A_reg_n_2_[32] ;
  wire \B_V_data_1_payload_A_reg_n_2_[33] ;
  wire \B_V_data_1_payload_A_reg_n_2_[34] ;
  wire \B_V_data_1_payload_A_reg_n_2_[35] ;
  wire \B_V_data_1_payload_A_reg_n_2_[36] ;
  wire \B_V_data_1_payload_A_reg_n_2_[37] ;
  wire \B_V_data_1_payload_A_reg_n_2_[38] ;
  wire \B_V_data_1_payload_A_reg_n_2_[39] ;
  wire \B_V_data_1_payload_A_reg_n_2_[3] ;
  wire \B_V_data_1_payload_A_reg_n_2_[40] ;
  wire \B_V_data_1_payload_A_reg_n_2_[41] ;
  wire \B_V_data_1_payload_A_reg_n_2_[42] ;
  wire \B_V_data_1_payload_A_reg_n_2_[43] ;
  wire \B_V_data_1_payload_A_reg_n_2_[44] ;
  wire \B_V_data_1_payload_A_reg_n_2_[45] ;
  wire \B_V_data_1_payload_A_reg_n_2_[46] ;
  wire \B_V_data_1_payload_A_reg_n_2_[47] ;
  wire \B_V_data_1_payload_A_reg_n_2_[48] ;
  wire \B_V_data_1_payload_A_reg_n_2_[49] ;
  wire \B_V_data_1_payload_A_reg_n_2_[4] ;
  wire \B_V_data_1_payload_A_reg_n_2_[50] ;
  wire \B_V_data_1_payload_A_reg_n_2_[51] ;
  wire \B_V_data_1_payload_A_reg_n_2_[52] ;
  wire \B_V_data_1_payload_A_reg_n_2_[53] ;
  wire \B_V_data_1_payload_A_reg_n_2_[54] ;
  wire \B_V_data_1_payload_A_reg_n_2_[55] ;
  wire \B_V_data_1_payload_A_reg_n_2_[56] ;
  wire \B_V_data_1_payload_A_reg_n_2_[57] ;
  wire \B_V_data_1_payload_A_reg_n_2_[58] ;
  wire \B_V_data_1_payload_A_reg_n_2_[59] ;
  wire \B_V_data_1_payload_A_reg_n_2_[5] ;
  wire \B_V_data_1_payload_A_reg_n_2_[60] ;
  wire \B_V_data_1_payload_A_reg_n_2_[61] ;
  wire \B_V_data_1_payload_A_reg_n_2_[62] ;
  wire \B_V_data_1_payload_A_reg_n_2_[63] ;
  wire \B_V_data_1_payload_A_reg_n_2_[6] ;
  wire \B_V_data_1_payload_A_reg_n_2_[7] ;
  wire \B_V_data_1_payload_A_reg_n_2_[8] ;
  wire \B_V_data_1_payload_A_reg_n_2_[9] ;
  wire \B_V_data_1_payload_B[63]_i_1__0_n_2 ;
  wire \B_V_data_1_payload_B_reg_n_2_[0] ;
  wire \B_V_data_1_payload_B_reg_n_2_[10] ;
  wire \B_V_data_1_payload_B_reg_n_2_[11] ;
  wire \B_V_data_1_payload_B_reg_n_2_[12] ;
  wire \B_V_data_1_payload_B_reg_n_2_[13] ;
  wire \B_V_data_1_payload_B_reg_n_2_[14] ;
  wire \B_V_data_1_payload_B_reg_n_2_[15] ;
  wire \B_V_data_1_payload_B_reg_n_2_[16] ;
  wire \B_V_data_1_payload_B_reg_n_2_[17] ;
  wire \B_V_data_1_payload_B_reg_n_2_[18] ;
  wire \B_V_data_1_payload_B_reg_n_2_[19] ;
  wire \B_V_data_1_payload_B_reg_n_2_[1] ;
  wire \B_V_data_1_payload_B_reg_n_2_[20] ;
  wire \B_V_data_1_payload_B_reg_n_2_[21] ;
  wire \B_V_data_1_payload_B_reg_n_2_[22] ;
  wire \B_V_data_1_payload_B_reg_n_2_[23] ;
  wire \B_V_data_1_payload_B_reg_n_2_[24] ;
  wire \B_V_data_1_payload_B_reg_n_2_[25] ;
  wire \B_V_data_1_payload_B_reg_n_2_[26] ;
  wire \B_V_data_1_payload_B_reg_n_2_[27] ;
  wire \B_V_data_1_payload_B_reg_n_2_[28] ;
  wire \B_V_data_1_payload_B_reg_n_2_[29] ;
  wire \B_V_data_1_payload_B_reg_n_2_[2] ;
  wire \B_V_data_1_payload_B_reg_n_2_[30] ;
  wire \B_V_data_1_payload_B_reg_n_2_[31] ;
  wire \B_V_data_1_payload_B_reg_n_2_[32] ;
  wire \B_V_data_1_payload_B_reg_n_2_[33] ;
  wire \B_V_data_1_payload_B_reg_n_2_[34] ;
  wire \B_V_data_1_payload_B_reg_n_2_[35] ;
  wire \B_V_data_1_payload_B_reg_n_2_[36] ;
  wire \B_V_data_1_payload_B_reg_n_2_[37] ;
  wire \B_V_data_1_payload_B_reg_n_2_[38] ;
  wire \B_V_data_1_payload_B_reg_n_2_[39] ;
  wire \B_V_data_1_payload_B_reg_n_2_[3] ;
  wire \B_V_data_1_payload_B_reg_n_2_[40] ;
  wire \B_V_data_1_payload_B_reg_n_2_[41] ;
  wire \B_V_data_1_payload_B_reg_n_2_[42] ;
  wire \B_V_data_1_payload_B_reg_n_2_[43] ;
  wire \B_V_data_1_payload_B_reg_n_2_[44] ;
  wire \B_V_data_1_payload_B_reg_n_2_[45] ;
  wire \B_V_data_1_payload_B_reg_n_2_[46] ;
  wire \B_V_data_1_payload_B_reg_n_2_[47] ;
  wire \B_V_data_1_payload_B_reg_n_2_[48] ;
  wire \B_V_data_1_payload_B_reg_n_2_[49] ;
  wire \B_V_data_1_payload_B_reg_n_2_[4] ;
  wire \B_V_data_1_payload_B_reg_n_2_[50] ;
  wire \B_V_data_1_payload_B_reg_n_2_[51] ;
  wire \B_V_data_1_payload_B_reg_n_2_[52] ;
  wire \B_V_data_1_payload_B_reg_n_2_[53] ;
  wire \B_V_data_1_payload_B_reg_n_2_[54] ;
  wire \B_V_data_1_payload_B_reg_n_2_[55] ;
  wire \B_V_data_1_payload_B_reg_n_2_[56] ;
  wire \B_V_data_1_payload_B_reg_n_2_[57] ;
  wire \B_V_data_1_payload_B_reg_n_2_[58] ;
  wire \B_V_data_1_payload_B_reg_n_2_[59] ;
  wire \B_V_data_1_payload_B_reg_n_2_[5] ;
  wire \B_V_data_1_payload_B_reg_n_2_[60] ;
  wire \B_V_data_1_payload_B_reg_n_2_[61] ;
  wire \B_V_data_1_payload_B_reg_n_2_[62] ;
  wire \B_V_data_1_payload_B_reg_n_2_[63] ;
  wire \B_V_data_1_payload_B_reg_n_2_[6] ;
  wire \B_V_data_1_payload_B_reg_n_2_[7] ;
  wire \B_V_data_1_payload_B_reg_n_2_[8] ;
  wire \B_V_data_1_payload_B_reg_n_2_[9] ;
  wire B_V_data_1_sel_rd_i_1__0_n_2;
  wire B_V_data_1_sel_rd_reg_n_2;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_2;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_2 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [1:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm[7]_i_2_n_2 ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg;
  wire i_fu_68;
  wire r_fu_641__0;
  wire [63:0]strm_out_TDATA;
  wire strm_out_TREADY;
  wire strm_out_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h0B)) 
    \B_V_data_1_payload_A[63]_i_1__0 
       (.I0(strm_out_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[63]_i_1__0_n_2 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [24]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [25]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [26]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [27]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [28]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [29]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [30]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [31]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [32]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [33]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [34]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [35]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [36]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [37]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [38]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [39]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [40]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [41]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [42]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [43]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [44]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [45]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [46]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [47]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [48]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [49]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [50]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [51]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [52]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [53]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [54]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [55]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [56]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [57]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [58]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [59]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [60]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [61]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [62]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [63]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_2_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[63]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(strm_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_payload_B[63]_i_1__0_n_2 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [24]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [25]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [26]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [27]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [28]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [29]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [30]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [31]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [32]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [33]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [34]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [35]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [36]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [37]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [38]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [39]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [40]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [41]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [42]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [43]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [44]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [45]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [46]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [47]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [48]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [49]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [50]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [51]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [52]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [53]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [54]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [55]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [56]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [57]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [58]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [59]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [60]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [61]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [62]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [63]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_B[63]_i_1__0_n_2 ),
        .D(\B_V_data_1_payload_A_reg[63]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_2_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(strm_out_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(B_V_data_1_sel_rd_i_1__0_n_2));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_2),
        .Q(B_V_data_1_sel_rd_reg_n_2),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_wr_i_1
       (.I0(strm_out_TREADY_int_regslice),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_2));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_2),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A820A020A020A0)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(strm_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(strm_out_TREADY),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q[0]),
        .O(\B_V_data_1_state[0]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \B_V_data_1_state[0]_i_2__0 
       (.I0(strm_out_TREADY_int_regslice),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(i_fu_68));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hF3FBFBFB)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(strm_out_TREADY_int_regslice),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(strm_out_TREADY),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[0]),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_2 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(strm_out_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[1]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(strm_out_TREADY_int_regslice),
        .I3(strm_out_TREADY),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFAAEEEEAAAAAAAA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\ap_CS_fsm[7]_i_2_n_2 ),
        .I1(ap_done_cache),
        .I2(r_fu_641__0),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(grp_axis_Pipeline_WRITE_OUT_fu_104_ap_start_reg),
        .I5(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(Q[1]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(strm_out_TREADY_int_regslice),
        .I3(strm_out_TREADY),
        .O(\ap_CS_fsm[7]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \r_fu_64[1]_i_3 
       (.I0(Q[0]),
        .I1(strm_out_TREADY_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_block_pp0_stage0_subdone));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[16] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[17] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[18] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[19] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[20] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[21] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[22] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[23] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[24]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[24] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[25]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[25] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[26]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[26] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[27]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[27] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[28]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[28] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[29]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[29] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[30]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[30] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[31]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[31] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[32]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[32] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[32] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[33]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[33] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[33] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[34]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[34] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[34] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[35]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[35] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[35] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[36]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[36] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[36] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[37]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[37] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[37] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[38]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[38] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[38] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[39]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[39] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[39] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[40]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[40] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[40] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[41]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[41] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[41] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[42]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[42] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[42] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[43]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[43] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[43] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[44]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[44] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[44] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[45]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[45] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[45] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[46]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[46] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[46] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[47]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[47] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[47] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[48]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[48] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[48] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[49]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[49] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[49] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[50]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[50] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[50] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[51]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[51] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[51] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[52]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[52] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[52] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[53]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[53] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[53] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[54]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[54] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[54] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[55]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[55] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[55] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[56]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[56] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[56] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[57]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[57] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[57] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[58]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[58] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[58] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[59]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[59] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[59] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[60]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[60] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[60] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[61]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[61] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[61] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[62]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[62] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[62] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[63]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[63] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[63] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \strm_out_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_2_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_2_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_2),
        .O(strm_out_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "axis_regslice_both" *) 
module design_1_axis_0_0_axis_regslice_both__parameterized1
   (strm_out_TLAST,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    strm_out_TREADY,
    i_fu_68,
    ap_enable_reg_pp0_iter1,
    Q,
    strm_out_TREADY_int_regslice,
    tmpo_last_reg_220);
  output [0:0]strm_out_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input strm_out_TREADY;
  input i_fu_68;
  input ap_enable_reg_pp0_iter1;
  input [0:0]Q;
  input strm_out_TREADY_int_regslice;
  input tmpo_last_reg_220;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_2 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_2 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_2;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_2;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_2 ;
  wire \B_V_data_1_state_reg_n_2_[0] ;
  wire \B_V_data_1_state_reg_n_2_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire i_fu_68;
  wire [0:0]strm_out_TLAST;
  wire strm_out_TREADY;
  wire strm_out_TREADY_int_regslice;
  wire tmpo_last_reg_220;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(tmpo_last_reg_220),
        .I1(\B_V_data_1_state_reg_n_2_[0] ),
        .I2(\B_V_data_1_state_reg_n_2_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_2 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_2 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(tmpo_last_reg_220),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_2_[0] ),
        .I3(\B_V_data_1_state_reg_n_2_[1] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_2 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_2 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(strm_out_TREADY),
        .I1(\B_V_data_1_state_reg_n_2_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_2));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_2),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(strm_out_TREADY_int_regslice),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\B_V_data_1_state_reg_n_2_[1] ),
        .I4(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_2));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_2),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg_n_2_[0] ),
        .I2(\B_V_data_1_state_reg_n_2_[1] ),
        .I3(strm_out_TREADY),
        .I4(i_fu_68),
        .O(\B_V_data_1_state[0]_i_1__1_n_2 ));
  LUT6 #(
    .INIT(64'hF5FDFDFDFDFDFDFD)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(\B_V_data_1_state_reg_n_2_[0] ),
        .I1(\B_V_data_1_state_reg_n_2_[1] ),
        .I2(strm_out_TREADY),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q),
        .I5(strm_out_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_2 ),
        .Q(\B_V_data_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_2_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \strm_out_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(strm_out_TLAST));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_0_0,axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "axis,Vivado 2023.1.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_axis_0_0
   (ap_clk,
    ap_rst_n,
    strm_in_TVALID,
    strm_in_TREADY,
    strm_in_TDATA,
    strm_in_TLAST,
    strm_in_TKEEP,
    strm_in_TSTRB,
    strm_out_TVALID,
    strm_out_TREADY,
    strm_out_TDATA,
    strm_out_TLAST,
    strm_out_TKEEP,
    strm_out_TSTRB);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF strm_in:strm_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TVALID" *) input strm_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TREADY" *) output strm_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TDATA" *) input [63:0]strm_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TLAST" *) input [0:0]strm_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TKEEP" *) input [7:0]strm_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_in TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME strm_in, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [7:0]strm_in_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TVALID" *) output strm_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TREADY" *) input strm_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TDATA" *) output [63:0]strm_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TLAST" *) output [0:0]strm_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TKEEP" *) output [7:0]strm_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 strm_out TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME strm_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [7:0]strm_out_TSTRB;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]strm_in_TDATA;
  wire strm_in_TREADY;
  wire strm_in_TVALID;
  wire [63:0]strm_out_TDATA;
  wire [0:0]strm_out_TLAST;
  wire strm_out_TREADY;
  wire strm_out_TVALID;
  wire [7:0]NLW_inst_strm_out_TKEEP_UNCONNECTED;
  wire [7:0]NLW_inst_strm_out_TSTRB_UNCONNECTED;

  assign strm_out_TKEEP[7] = \<const0> ;
  assign strm_out_TKEEP[6] = \<const0> ;
  assign strm_out_TKEEP[5] = \<const0> ;
  assign strm_out_TKEEP[4] = \<const0> ;
  assign strm_out_TKEEP[3] = \<const0> ;
  assign strm_out_TKEEP[2] = \<const0> ;
  assign strm_out_TKEEP[1] = \<const0> ;
  assign strm_out_TKEEP[0] = \<const0> ;
  assign strm_out_TSTRB[7] = \<const0> ;
  assign strm_out_TSTRB[6] = \<const0> ;
  assign strm_out_TSTRB[5] = \<const0> ;
  assign strm_out_TSTRB[4] = \<const0> ;
  assign strm_out_TSTRB[3] = \<const0> ;
  assign strm_out_TSTRB[2] = \<const0> ;
  assign strm_out_TSTRB[1] = \<const0> ;
  assign strm_out_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "8'b00000001" *) 
  (* ap_ST_fsm_state2 = "8'b00000010" *) 
  (* ap_ST_fsm_state3 = "8'b00000100" *) 
  (* ap_ST_fsm_state4 = "8'b00001000" *) 
  (* ap_ST_fsm_state5 = "8'b00010000" *) 
  (* ap_ST_fsm_state6 = "8'b00100000" *) 
  (* ap_ST_fsm_state7 = "8'b01000000" *) 
  (* ap_ST_fsm_state8 = "8'b10000000" *) 
  design_1_axis_0_0_axis inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .strm_in_TDATA(strm_in_TDATA),
        .strm_in_TKEEP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .strm_in_TLAST(1'b0),
        .strm_in_TREADY(strm_in_TREADY),
        .strm_in_TSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .strm_in_TVALID(strm_in_TVALID),
        .strm_out_TDATA(strm_out_TDATA),
        .strm_out_TKEEP(NLW_inst_strm_out_TKEEP_UNCONNECTED[7:0]),
        .strm_out_TLAST(strm_out_TLAST),
        .strm_out_TREADY(strm_out_TREADY),
        .strm_out_TSTRB(NLW_inst_strm_out_TSTRB_UNCONNECTED[7:0]),
        .strm_out_TVALID(strm_out_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
