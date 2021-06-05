// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Jun  4 17:33:32 2021
// Host        : remus.ece.uvic.ca running 64-bit unknown
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/shuhangtan/Ece_498/Practice/shifter2/shifter2.sim/sim_1/impl/timing/xsim/BS_TB_time_impl.v
// Design      : shifter2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ea8d280c" *) 
(* NotValidForBitStream *)
module shifter2
   (clk,
    rst,
    shift_by,
    d_in,
    d_out);
  input clk;
  input rst;
  input [3:0]shift_by;
  input [16:0]d_in;
  output [16:0]d_out;

  wire [3:0]bit_r;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [16:0]d_in;
  wire [16:0]d_in_IBUF;
  wire [16:0]d_in_r;
  wire [16:0]d_out;
  wire \d_out[0]_i_2_n_0 ;
  wire \d_out[10]_i_2_n_0 ;
  wire \d_out[10]_i_3_n_0 ;
  wire \d_out[11]_i_2_n_0 ;
  wire \d_out[11]_i_3_n_0 ;
  wire \d_out[12]_i_2_n_0 ;
  wire \d_out[13]_i_2_n_0 ;
  wire \d_out[14]_i_2_n_0 ;
  wire \d_out[14]_i_3_n_0 ;
  wire \d_out[1]_i_2_n_0 ;
  wire \d_out[2]_i_2_n_0 ;
  wire \d_out[3]_i_2_n_0 ;
  wire \d_out[4]_i_2_n_0 ;
  wire \d_out[5]_i_2_n_0 ;
  wire \d_out[6]_i_2_n_0 ;
  wire \d_out[7]_i_2_n_0 ;
  wire \d_out[8]_i_2_n_0 ;
  wire \d_out[9]_i_2_n_0 ;
  wire [16:0]d_out_OBUF;
  wire [15:0]d_out_r;
  wire rst;
  wire rst_IBUF;
  wire [3:0]shift_by;
  wire [3:0]shift_by_IBUF;

initial begin
 $sdf_annotate("BS_TB_time_impl.sdf",,,,"tool_control");
end
  FDRE #(
    .INIT(1'b0)) 
    \bit_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shift_by_IBUF[0]),
        .Q(bit_r[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shift_by_IBUF[1]),
        .Q(bit_r[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shift_by_IBUF[2]),
        .Q(bit_r[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(shift_by_IBUF[3]),
        .Q(bit_r[3]),
        .R(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \d_in_IBUF[0]_inst 
       (.I(d_in[0]),
        .O(d_in_IBUF[0]));
  IBUF \d_in_IBUF[10]_inst 
       (.I(d_in[10]),
        .O(d_in_IBUF[10]));
  IBUF \d_in_IBUF[11]_inst 
       (.I(d_in[11]),
        .O(d_in_IBUF[11]));
  IBUF \d_in_IBUF[12]_inst 
       (.I(d_in[12]),
        .O(d_in_IBUF[12]));
  IBUF \d_in_IBUF[13]_inst 
       (.I(d_in[13]),
        .O(d_in_IBUF[13]));
  IBUF \d_in_IBUF[14]_inst 
       (.I(d_in[14]),
        .O(d_in_IBUF[14]));
  IBUF \d_in_IBUF[15]_inst 
       (.I(d_in[15]),
        .O(d_in_IBUF[15]));
  IBUF \d_in_IBUF[16]_inst 
       (.I(d_in[16]),
        .O(d_in_IBUF[16]));
  IBUF \d_in_IBUF[1]_inst 
       (.I(d_in[1]),
        .O(d_in_IBUF[1]));
  IBUF \d_in_IBUF[2]_inst 
       (.I(d_in[2]),
        .O(d_in_IBUF[2]));
  IBUF \d_in_IBUF[3]_inst 
       (.I(d_in[3]),
        .O(d_in_IBUF[3]));
  IBUF \d_in_IBUF[4]_inst 
       (.I(d_in[4]),
        .O(d_in_IBUF[4]));
  IBUF \d_in_IBUF[5]_inst 
       (.I(d_in[5]),
        .O(d_in_IBUF[5]));
  IBUF \d_in_IBUF[6]_inst 
       (.I(d_in[6]),
        .O(d_in_IBUF[6]));
  IBUF \d_in_IBUF[7]_inst 
       (.I(d_in[7]),
        .O(d_in_IBUF[7]));
  IBUF \d_in_IBUF[8]_inst 
       (.I(d_in[8]),
        .O(d_in_IBUF[8]));
  IBUF \d_in_IBUF[9]_inst 
       (.I(d_in[9]),
        .O(d_in_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[0]),
        .Q(d_in_r[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[10]),
        .Q(d_in_r[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[11]),
        .Q(d_in_r[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[12]),
        .Q(d_in_r[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[13]),
        .Q(d_in_r[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[14]),
        .Q(d_in_r[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[15]),
        .Q(d_in_r[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[16]),
        .Q(d_in_r[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[1]),
        .Q(d_in_r[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[2]),
        .Q(d_in_r[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[3]),
        .Q(d_in_r[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[4]),
        .Q(d_in_r[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[5]),
        .Q(d_in_r[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[6]),
        .Q(d_in_r[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[7]),
        .Q(d_in_r[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[8]),
        .Q(d_in_r[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_IBUF[9]),
        .Q(d_in_r[9]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[0]_i_1 
       (.I0(\d_out[3]_i_2_n_0 ),
        .I1(\d_out[1]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[2]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[0]_i_2_n_0 ),
        .O(d_out_r[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[0]_i_2 
       (.I0(d_in_r[12]),
        .I1(d_in_r[4]),
        .I2(bit_r[2]),
        .I3(d_in_r[8]),
        .I4(bit_r[3]),
        .I5(d_in_r[0]),
        .O(\d_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[10]_i_1 
       (.I0(\d_out[11]_i_2_n_0 ),
        .I1(\d_out[11]_i_3_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[10]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[10]_i_3_n_0 ),
        .O(d_out_r[10]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \d_out[10]_i_2 
       (.I0(bit_r[2]),
        .I1(d_in_r[16]),
        .I2(bit_r[3]),
        .I3(d_in_r[12]),
        .O(\d_out[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \d_out[10]_i_3 
       (.I0(d_in_r[14]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[10]),
        .O(\d_out[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \d_out[11]_i_1 
       (.I0(\d_out[12]_i_2_n_0 ),
        .I1(bit_r[0]),
        .I2(\d_out[11]_i_2_n_0 ),
        .I3(bit_r[1]),
        .I4(\d_out[11]_i_3_n_0 ),
        .O(d_out_r[11]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \d_out[11]_i_2 
       (.I0(bit_r[2]),
        .I1(d_in_r[16]),
        .I2(bit_r[3]),
        .I3(d_in_r[13]),
        .O(\d_out[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \d_out[11]_i_3 
       (.I0(d_in_r[15]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[11]),
        .O(\d_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[12]_i_1 
       (.I0(\d_out[13]_i_2_n_0 ),
        .I1(bit_r[0]),
        .I2(\d_out[12]_i_2_n_0 ),
        .O(d_out_r[12]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \d_out[12]_i_2 
       (.I0(d_in_r[14]),
        .I1(bit_r[1]),
        .I2(bit_r[2]),
        .I3(d_in_r[16]),
        .I4(bit_r[3]),
        .I5(d_in_r[12]),
        .O(\d_out[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[13]_i_1 
       (.I0(\d_out[14]_i_3_n_0 ),
        .I1(bit_r[0]),
        .I2(\d_out[13]_i_2_n_0 ),
        .O(d_out_r[13]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \d_out[13]_i_2 
       (.I0(d_in_r[15]),
        .I1(bit_r[1]),
        .I2(bit_r[2]),
        .I3(d_in_r[16]),
        .I4(bit_r[3]),
        .I5(d_in_r[13]),
        .O(\d_out[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[14]_i_1 
       (.I0(\d_out[14]_i_2_n_0 ),
        .I1(bit_r[0]),
        .I2(\d_out[14]_i_3_n_0 ),
        .O(d_out_r[14]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \d_out[14]_i_2 
       (.I0(bit_r[1]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[15]),
        .O(\d_out[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \d_out[14]_i_3 
       (.I0(bit_r[1]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[14]),
        .O(\d_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \d_out[15]_i_1 
       (.I0(bit_r[0]),
        .I1(bit_r[1]),
        .I2(bit_r[2]),
        .I3(d_in_r[16]),
        .I4(bit_r[3]),
        .I5(d_in_r[15]),
        .O(d_out_r[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[1]_i_1 
       (.I0(\d_out[4]_i_2_n_0 ),
        .I1(\d_out[2]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[3]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[1]_i_2_n_0 ),
        .O(d_out_r[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[1]_i_2 
       (.I0(d_in_r[13]),
        .I1(d_in_r[5]),
        .I2(bit_r[2]),
        .I3(d_in_r[9]),
        .I4(bit_r[3]),
        .I5(d_in_r[1]),
        .O(\d_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[2]_i_1 
       (.I0(\d_out[5]_i_2_n_0 ),
        .I1(\d_out[3]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[4]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[2]_i_2_n_0 ),
        .O(d_out_r[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[2]_i_2 
       (.I0(d_in_r[14]),
        .I1(d_in_r[6]),
        .I2(bit_r[2]),
        .I3(d_in_r[10]),
        .I4(bit_r[3]),
        .I5(d_in_r[2]),
        .O(\d_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[3]_i_1 
       (.I0(\d_out[6]_i_2_n_0 ),
        .I1(\d_out[4]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[5]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[3]_i_2_n_0 ),
        .O(d_out_r[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[3]_i_2 
       (.I0(d_in_r[15]),
        .I1(d_in_r[7]),
        .I2(bit_r[2]),
        .I3(d_in_r[11]),
        .I4(bit_r[3]),
        .I5(d_in_r[3]),
        .O(\d_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[4]_i_1 
       (.I0(\d_out[7]_i_2_n_0 ),
        .I1(\d_out[5]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[6]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[4]_i_2_n_0 ),
        .O(d_out_r[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[4]_i_2 
       (.I0(d_in_r[16]),
        .I1(d_in_r[8]),
        .I2(bit_r[2]),
        .I3(d_in_r[12]),
        .I4(bit_r[3]),
        .I5(d_in_r[4]),
        .O(\d_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[5]_i_1 
       (.I0(\d_out[8]_i_2_n_0 ),
        .I1(\d_out[6]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[7]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[5]_i_2_n_0 ),
        .O(d_out_r[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[5]_i_2 
       (.I0(d_in_r[16]),
        .I1(d_in_r[9]),
        .I2(bit_r[2]),
        .I3(d_in_r[13]),
        .I4(bit_r[3]),
        .I5(d_in_r[5]),
        .O(\d_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[6]_i_1 
       (.I0(\d_out[9]_i_2_n_0 ),
        .I1(\d_out[7]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[8]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[6]_i_2_n_0 ),
        .O(d_out_r[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[6]_i_2 
       (.I0(d_in_r[16]),
        .I1(d_in_r[10]),
        .I2(bit_r[2]),
        .I3(d_in_r[14]),
        .I4(bit_r[3]),
        .I5(d_in_r[6]),
        .O(\d_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[7]_i_1 
       (.I0(\d_out[10]_i_3_n_0 ),
        .I1(\d_out[8]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[9]_i_2_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[7]_i_2_n_0 ),
        .O(d_out_r[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[7]_i_2 
       (.I0(d_in_r[16]),
        .I1(d_in_r[11]),
        .I2(bit_r[2]),
        .I3(d_in_r[15]),
        .I4(bit_r[3]),
        .I5(d_in_r[7]),
        .O(\d_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[8]_i_1 
       (.I0(\d_out[11]_i_3_n_0 ),
        .I1(\d_out[9]_i_2_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[10]_i_3_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[8]_i_2_n_0 ),
        .O(d_out_r[8]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \d_out[8]_i_2 
       (.I0(d_in_r[12]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[8]),
        .O(\d_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \d_out[9]_i_1 
       (.I0(\d_out[10]_i_2_n_0 ),
        .I1(\d_out[10]_i_3_n_0 ),
        .I2(bit_r[0]),
        .I3(\d_out[11]_i_3_n_0 ),
        .I4(bit_r[1]),
        .I5(\d_out[9]_i_2_n_0 ),
        .O(d_out_r[9]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \d_out[9]_i_2 
       (.I0(d_in_r[13]),
        .I1(bit_r[2]),
        .I2(d_in_r[16]),
        .I3(bit_r[3]),
        .I4(d_in_r[9]),
        .O(\d_out[9]_i_2_n_0 ));
  OBUF \d_out_OBUF[0]_inst 
       (.I(d_out_OBUF[0]),
        .O(d_out[0]));
  OBUF \d_out_OBUF[10]_inst 
       (.I(d_out_OBUF[10]),
        .O(d_out[10]));
  OBUF \d_out_OBUF[11]_inst 
       (.I(d_out_OBUF[11]),
        .O(d_out[11]));
  OBUF \d_out_OBUF[12]_inst 
       (.I(d_out_OBUF[12]),
        .O(d_out[12]));
  OBUF \d_out_OBUF[13]_inst 
       (.I(d_out_OBUF[13]),
        .O(d_out[13]));
  OBUF \d_out_OBUF[14]_inst 
       (.I(d_out_OBUF[14]),
        .O(d_out[14]));
  OBUF \d_out_OBUF[15]_inst 
       (.I(d_out_OBUF[15]),
        .O(d_out[15]));
  OBUF \d_out_OBUF[16]_inst 
       (.I(d_out_OBUF[16]),
        .O(d_out[16]));
  OBUF \d_out_OBUF[1]_inst 
       (.I(d_out_OBUF[1]),
        .O(d_out[1]));
  OBUF \d_out_OBUF[2]_inst 
       (.I(d_out_OBUF[2]),
        .O(d_out[2]));
  OBUF \d_out_OBUF[3]_inst 
       (.I(d_out_OBUF[3]),
        .O(d_out[3]));
  OBUF \d_out_OBUF[4]_inst 
       (.I(d_out_OBUF[4]),
        .O(d_out[4]));
  OBUF \d_out_OBUF[5]_inst 
       (.I(d_out_OBUF[5]),
        .O(d_out[5]));
  OBUF \d_out_OBUF[6]_inst 
       (.I(d_out_OBUF[6]),
        .O(d_out[6]));
  OBUF \d_out_OBUF[7]_inst 
       (.I(d_out_OBUF[7]),
        .O(d_out[7]));
  OBUF \d_out_OBUF[8]_inst 
       (.I(d_out_OBUF[8]),
        .O(d_out[8]));
  OBUF \d_out_OBUF[9]_inst 
       (.I(d_out_OBUF[9]),
        .O(d_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[0]),
        .Q(d_out_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[10]),
        .Q(d_out_OBUF[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[11]),
        .Q(d_out_OBUF[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[12]),
        .Q(d_out_OBUF[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[13]),
        .Q(d_out_OBUF[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[14]),
        .Q(d_out_OBUF[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[15]),
        .Q(d_out_OBUF[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_in_r[16]),
        .Q(d_out_OBUF[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[1]),
        .Q(d_out_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[2]),
        .Q(d_out_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[3]),
        .Q(d_out_OBUF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[4]),
        .Q(d_out_OBUF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[5]),
        .Q(d_out_OBUF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[6]),
        .Q(d_out_OBUF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[7]),
        .Q(d_out_OBUF[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[8]),
        .Q(d_out_OBUF[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(d_out_r[9]),
        .Q(d_out_OBUF[9]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \shift_by_IBUF[0]_inst 
       (.I(shift_by[0]),
        .O(shift_by_IBUF[0]));
  IBUF \shift_by_IBUF[1]_inst 
       (.I(shift_by[1]),
        .O(shift_by_IBUF[1]));
  IBUF \shift_by_IBUF[2]_inst 
       (.I(shift_by[2]),
        .O(shift_by_IBUF[2]));
  IBUF \shift_by_IBUF[3]_inst 
       (.I(shift_by[3]),
        .O(shift_by_IBUF[3]));
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
