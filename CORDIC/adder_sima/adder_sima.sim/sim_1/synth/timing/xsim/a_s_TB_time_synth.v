// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed May 12 12:05:22 2021
// Host        : remus.ece.uvic.ca running 64-bit unknown
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/shuhangtan/Ece_498/CORDIC/adder_sima/adder_sima.sim/sim_1/synth/timing/xsim/a_s_TB_time_synth.v
// Design      : A_S_TOP_LEVEL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ADDER_SUBTRACTOR
   (Q,
    D,
    CLK,
    F_IN,
    \B_r_reg[15]_0 );
  output [15:0]Q;
  input [15:0]D;
  input CLK;
  input F_IN;
  input [15:0]\B_r_reg[15]_0 ;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]\B_r_reg[15]_0 ;
  wire CLK;
  wire [15:0]D;
  wire F_IN;
  wire F_r;
  wire [15:0]Q;
  wire \S_OUT[11]_i_2_n_0 ;
  wire \S_OUT[11]_i_3_n_0 ;
  wire \S_OUT[11]_i_4_n_0 ;
  wire \S_OUT[11]_i_5_n_0 ;
  wire \S_OUT[15]_i_2_n_0 ;
  wire \S_OUT[15]_i_3_n_0 ;
  wire \S_OUT[15]_i_4_n_0 ;
  wire \S_OUT[15]_i_5_n_0 ;
  wire \S_OUT[3]_i_2_n_0 ;
  wire \S_OUT[3]_i_3_n_0 ;
  wire \S_OUT[3]_i_4_n_0 ;
  wire \S_OUT[3]_i_5_n_0 ;
  wire \S_OUT[7]_i_2_n_0 ;
  wire \S_OUT[7]_i_3_n_0 ;
  wire \S_OUT[7]_i_4_n_0 ;
  wire \S_OUT[7]_i_5_n_0 ;
  wire \S_OUT_reg[11]_i_1_n_0 ;
  wire \S_OUT_reg[11]_i_1_n_1 ;
  wire \S_OUT_reg[11]_i_1_n_2 ;
  wire \S_OUT_reg[11]_i_1_n_3 ;
  wire \S_OUT_reg[11]_i_1_n_4 ;
  wire \S_OUT_reg[11]_i_1_n_5 ;
  wire \S_OUT_reg[11]_i_1_n_6 ;
  wire \S_OUT_reg[11]_i_1_n_7 ;
  wire \S_OUT_reg[15]_i_1_n_1 ;
  wire \S_OUT_reg[15]_i_1_n_2 ;
  wire \S_OUT_reg[15]_i_1_n_3 ;
  wire \S_OUT_reg[15]_i_1_n_4 ;
  wire \S_OUT_reg[15]_i_1_n_5 ;
  wire \S_OUT_reg[15]_i_1_n_6 ;
  wire \S_OUT_reg[15]_i_1_n_7 ;
  wire \S_OUT_reg[3]_i_1_n_0 ;
  wire \S_OUT_reg[3]_i_1_n_1 ;
  wire \S_OUT_reg[3]_i_1_n_2 ;
  wire \S_OUT_reg[3]_i_1_n_3 ;
  wire \S_OUT_reg[3]_i_1_n_4 ;
  wire \S_OUT_reg[3]_i_1_n_5 ;
  wire \S_OUT_reg[3]_i_1_n_6 ;
  wire \S_OUT_reg[3]_i_1_n_7 ;
  wire \S_OUT_reg[7]_i_1_n_0 ;
  wire \S_OUT_reg[7]_i_1_n_1 ;
  wire \S_OUT_reg[7]_i_1_n_2 ;
  wire \S_OUT_reg[7]_i_1_n_3 ;
  wire \S_OUT_reg[7]_i_1_n_4 ;
  wire \S_OUT_reg[7]_i_1_n_5 ;
  wire \S_OUT_reg[7]_i_1_n_6 ;
  wire \S_OUT_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_S_OUT_reg[15]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(A[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(A[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(A[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(A[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(A[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(A[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(A[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(A[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(A[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(A[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(A[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(A[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(A[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(A[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_r_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(A[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [0]),
        .Q(B[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [10]),
        .Q(B[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [11]),
        .Q(B[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [12]),
        .Q(B[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [13]),
        .Q(B[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [14]),
        .Q(B[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [15]),
        .Q(B[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [1]),
        .Q(B[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [2]),
        .Q(B[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [3]),
        .Q(B[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [4]),
        .Q(B[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [5]),
        .Q(B[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [6]),
        .Q(B[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [7]),
        .Q(B[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [8]),
        .Q(B[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_r_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\B_r_reg[15]_0 [9]),
        .Q(B[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    F_r_reg
       (.C(CLK),
        .CE(1'b1),
        .D(F_IN),
        .Q(F_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[11]_i_2 
       (.I0(B[11]),
        .I1(F_r),
        .I2(A[11]),
        .O(\S_OUT[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[11]_i_3 
       (.I0(B[10]),
        .I1(F_r),
        .I2(A[10]),
        .O(\S_OUT[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[11]_i_4 
       (.I0(B[9]),
        .I1(F_r),
        .I2(A[9]),
        .O(\S_OUT[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[11]_i_5 
       (.I0(B[8]),
        .I1(F_r),
        .I2(A[8]),
        .O(\S_OUT[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[15]_i_2 
       (.I0(B[15]),
        .I1(F_r),
        .I2(A[15]),
        .O(\S_OUT[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[15]_i_3 
       (.I0(B[14]),
        .I1(F_r),
        .I2(A[14]),
        .O(\S_OUT[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[15]_i_4 
       (.I0(B[13]),
        .I1(F_r),
        .I2(A[13]),
        .O(\S_OUT[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[15]_i_5 
       (.I0(B[12]),
        .I1(F_r),
        .I2(A[12]),
        .O(\S_OUT[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[3]_i_2 
       (.I0(B[3]),
        .I1(F_r),
        .I2(A[3]),
        .O(\S_OUT[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[3]_i_3 
       (.I0(B[2]),
        .I1(F_r),
        .I2(A[2]),
        .O(\S_OUT[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[3]_i_4 
       (.I0(B[1]),
        .I1(F_r),
        .I2(A[1]),
        .O(\S_OUT[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \S_OUT[3]_i_5 
       (.I0(B[0]),
        .O(\S_OUT[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[7]_i_2 
       (.I0(B[7]),
        .I1(F_r),
        .I2(A[7]),
        .O(\S_OUT[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[7]_i_3 
       (.I0(B[6]),
        .I1(F_r),
        .I2(A[6]),
        .O(\S_OUT[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[7]_i_4 
       (.I0(B[5]),
        .I1(F_r),
        .I2(A[5]),
        .O(\S_OUT[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OUT[7]_i_5 
       (.I0(B[4]),
        .I1(F_r),
        .I2(A[4]),
        .O(\S_OUT[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[11]_i_1_n_5 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[11]_i_1_n_4 ),
        .Q(Q[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \S_OUT_reg[11]_i_1 
       (.CI(\S_OUT_reg[7]_i_1_n_0 ),
        .CO({\S_OUT_reg[11]_i_1_n_0 ,\S_OUT_reg[11]_i_1_n_1 ,\S_OUT_reg[11]_i_1_n_2 ,\S_OUT_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O({\S_OUT_reg[11]_i_1_n_4 ,\S_OUT_reg[11]_i_1_n_5 ,\S_OUT_reg[11]_i_1_n_6 ,\S_OUT_reg[11]_i_1_n_7 }),
        .S({\S_OUT[11]_i_2_n_0 ,\S_OUT[11]_i_3_n_0 ,\S_OUT[11]_i_4_n_0 ,\S_OUT[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[15]_i_1_n_7 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[15]_i_1_n_6 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[15]_i_1_n_5 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[15]_i_1_n_4 ),
        .Q(Q[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \S_OUT_reg[15]_i_1 
       (.CI(\S_OUT_reg[11]_i_1_n_0 ),
        .CO({\NLW_S_OUT_reg[15]_i_1_CO_UNCONNECTED [3],\S_OUT_reg[15]_i_1_n_1 ,\S_OUT_reg[15]_i_1_n_2 ,\S_OUT_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A[14:12]}),
        .O({\S_OUT_reg[15]_i_1_n_4 ,\S_OUT_reg[15]_i_1_n_5 ,\S_OUT_reg[15]_i_1_n_6 ,\S_OUT_reg[15]_i_1_n_7 }),
        .S({\S_OUT[15]_i_2_n_0 ,\S_OUT[15]_i_3_n_0 ,\S_OUT[15]_i_4_n_0 ,\S_OUT[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \S_OUT_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\S_OUT_reg[3]_i_1_n_0 ,\S_OUT_reg[3]_i_1_n_1 ,\S_OUT_reg[3]_i_1_n_2 ,\S_OUT_reg[3]_i_1_n_3 }),
        .CYINIT(A[0]),
        .DI({A[3:1],F_r}),
        .O({\S_OUT_reg[3]_i_1_n_4 ,\S_OUT_reg[3]_i_1_n_5 ,\S_OUT_reg[3]_i_1_n_6 ,\S_OUT_reg[3]_i_1_n_7 }),
        .S({\S_OUT[3]_i_2_n_0 ,\S_OUT[3]_i_3_n_0 ,\S_OUT[3]_i_4_n_0 ,\S_OUT[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \S_OUT_reg[7]_i_1 
       (.CI(\S_OUT_reg[3]_i_1_n_0 ),
        .CO({\S_OUT_reg[7]_i_1_n_0 ,\S_OUT_reg[7]_i_1_n_1 ,\S_OUT_reg[7]_i_1_n_2 ,\S_OUT_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({\S_OUT_reg[7]_i_1_n_4 ,\S_OUT_reg[7]_i_1_n_5 ,\S_OUT_reg[7]_i_1_n_6 ,\S_OUT_reg[7]_i_1_n_7 }),
        .S({\S_OUT[7]_i_2_n_0 ,\S_OUT[7]_i_3_n_0 ,\S_OUT[7]_i_4_n_0 ,\S_OUT[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[11]_i_1_n_7 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_OUT_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\S_OUT_reg[11]_i_1_n_6 ),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module A_S_TOP_LEVEL
   (CLK,
    F_IN,
    A_IN,
    B_IN,
    S_OUT);
  input CLK;
  input F_IN;
  input [15:0]A_IN;
  input [15:0]B_IN;
  output [15:0]S_OUT;

  wire [15:0]A_IN;
  wire [15:0]A_IN_IBUF;
  wire [15:0]B_IN;
  wire [15:0]B_IN_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire F_IN;
  wire F_IN_IBUF;
  wire [15:0]S_OUT;
  wire [15:0]S_OUT_OBUF;

initial begin
 $sdf_annotate("a_s_TB_time_synth.sdf",,,,"tool_control");
end
  IBUF \A_IN_IBUF[0]_inst 
       (.I(A_IN[0]),
        .O(A_IN_IBUF[0]));
  IBUF \A_IN_IBUF[10]_inst 
       (.I(A_IN[10]),
        .O(A_IN_IBUF[10]));
  IBUF \A_IN_IBUF[11]_inst 
       (.I(A_IN[11]),
        .O(A_IN_IBUF[11]));
  IBUF \A_IN_IBUF[12]_inst 
       (.I(A_IN[12]),
        .O(A_IN_IBUF[12]));
  IBUF \A_IN_IBUF[13]_inst 
       (.I(A_IN[13]),
        .O(A_IN_IBUF[13]));
  IBUF \A_IN_IBUF[14]_inst 
       (.I(A_IN[14]),
        .O(A_IN_IBUF[14]));
  IBUF \A_IN_IBUF[15]_inst 
       (.I(A_IN[15]),
        .O(A_IN_IBUF[15]));
  IBUF \A_IN_IBUF[1]_inst 
       (.I(A_IN[1]),
        .O(A_IN_IBUF[1]));
  IBUF \A_IN_IBUF[2]_inst 
       (.I(A_IN[2]),
        .O(A_IN_IBUF[2]));
  IBUF \A_IN_IBUF[3]_inst 
       (.I(A_IN[3]),
        .O(A_IN_IBUF[3]));
  IBUF \A_IN_IBUF[4]_inst 
       (.I(A_IN[4]),
        .O(A_IN_IBUF[4]));
  IBUF \A_IN_IBUF[5]_inst 
       (.I(A_IN[5]),
        .O(A_IN_IBUF[5]));
  IBUF \A_IN_IBUF[6]_inst 
       (.I(A_IN[6]),
        .O(A_IN_IBUF[6]));
  IBUF \A_IN_IBUF[7]_inst 
       (.I(A_IN[7]),
        .O(A_IN_IBUF[7]));
  IBUF \A_IN_IBUF[8]_inst 
       (.I(A_IN[8]),
        .O(A_IN_IBUF[8]));
  IBUF \A_IN_IBUF[9]_inst 
       (.I(A_IN[9]),
        .O(A_IN_IBUF[9]));
  IBUF \B_IN_IBUF[0]_inst 
       (.I(B_IN[0]),
        .O(B_IN_IBUF[0]));
  IBUF \B_IN_IBUF[10]_inst 
       (.I(B_IN[10]),
        .O(B_IN_IBUF[10]));
  IBUF \B_IN_IBUF[11]_inst 
       (.I(B_IN[11]),
        .O(B_IN_IBUF[11]));
  IBUF \B_IN_IBUF[12]_inst 
       (.I(B_IN[12]),
        .O(B_IN_IBUF[12]));
  IBUF \B_IN_IBUF[13]_inst 
       (.I(B_IN[13]),
        .O(B_IN_IBUF[13]));
  IBUF \B_IN_IBUF[14]_inst 
       (.I(B_IN[14]),
        .O(B_IN_IBUF[14]));
  IBUF \B_IN_IBUF[15]_inst 
       (.I(B_IN[15]),
        .O(B_IN_IBUF[15]));
  IBUF \B_IN_IBUF[1]_inst 
       (.I(B_IN[1]),
        .O(B_IN_IBUF[1]));
  IBUF \B_IN_IBUF[2]_inst 
       (.I(B_IN[2]),
        .O(B_IN_IBUF[2]));
  IBUF \B_IN_IBUF[3]_inst 
       (.I(B_IN[3]),
        .O(B_IN_IBUF[3]));
  IBUF \B_IN_IBUF[4]_inst 
       (.I(B_IN[4]),
        .O(B_IN_IBUF[4]));
  IBUF \B_IN_IBUF[5]_inst 
       (.I(B_IN[5]),
        .O(B_IN_IBUF[5]));
  IBUF \B_IN_IBUF[6]_inst 
       (.I(B_IN[6]),
        .O(B_IN_IBUF[6]));
  IBUF \B_IN_IBUF[7]_inst 
       (.I(B_IN[7]),
        .O(B_IN_IBUF[7]));
  IBUF \B_IN_IBUF[8]_inst 
       (.I(B_IN[8]),
        .O(B_IN_IBUF[8]));
  IBUF \B_IN_IBUF[9]_inst 
       (.I(B_IN[9]),
        .O(B_IN_IBUF[9]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF F_IN_IBUF_inst
       (.I(F_IN),
        .O(F_IN_IBUF));
  OBUF \S_OUT_OBUF[0]_inst 
       (.I(S_OUT_OBUF[0]),
        .O(S_OUT[0]));
  OBUF \S_OUT_OBUF[10]_inst 
       (.I(S_OUT_OBUF[10]),
        .O(S_OUT[10]));
  OBUF \S_OUT_OBUF[11]_inst 
       (.I(S_OUT_OBUF[11]),
        .O(S_OUT[11]));
  OBUF \S_OUT_OBUF[12]_inst 
       (.I(S_OUT_OBUF[12]),
        .O(S_OUT[12]));
  OBUF \S_OUT_OBUF[13]_inst 
       (.I(S_OUT_OBUF[13]),
        .O(S_OUT[13]));
  OBUF \S_OUT_OBUF[14]_inst 
       (.I(S_OUT_OBUF[14]),
        .O(S_OUT[14]));
  OBUF \S_OUT_OBUF[15]_inst 
       (.I(S_OUT_OBUF[15]),
        .O(S_OUT[15]));
  OBUF \S_OUT_OBUF[1]_inst 
       (.I(S_OUT_OBUF[1]),
        .O(S_OUT[1]));
  OBUF \S_OUT_OBUF[2]_inst 
       (.I(S_OUT_OBUF[2]),
        .O(S_OUT[2]));
  OBUF \S_OUT_OBUF[3]_inst 
       (.I(S_OUT_OBUF[3]),
        .O(S_OUT[3]));
  OBUF \S_OUT_OBUF[4]_inst 
       (.I(S_OUT_OBUF[4]),
        .O(S_OUT[4]));
  OBUF \S_OUT_OBUF[5]_inst 
       (.I(S_OUT_OBUF[5]),
        .O(S_OUT[5]));
  OBUF \S_OUT_OBUF[6]_inst 
       (.I(S_OUT_OBUF[6]),
        .O(S_OUT[6]));
  OBUF \S_OUT_OBUF[7]_inst 
       (.I(S_OUT_OBUF[7]),
        .O(S_OUT[7]));
  OBUF \S_OUT_OBUF[8]_inst 
       (.I(S_OUT_OBUF[8]),
        .O(S_OUT[8]));
  OBUF \S_OUT_OBUF[9]_inst 
       (.I(S_OUT_OBUF[9]),
        .O(S_OUT[9]));
  ADDER_SUBTRACTOR U1
       (.\B_r_reg[15]_0 (B_IN_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(A_IN_IBUF),
        .F_IN(F_IN_IBUF),
        .Q(S_OUT_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
