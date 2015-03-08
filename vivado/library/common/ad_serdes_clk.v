// ***************************************************************************
// ***************************************************************************
// Copyright 2011(c) Analog Devices, Inc.
// 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//     - Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in
//       the documentation and/or other materials provided with the
//       distribution.
//     - Neither the name of Analog Devices, Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//     - The use of this software may or may not infringe the patent rights
//       of one or more patent holders.  This license does not release you
//       from the requirement that you obtain separate licenses from these
//       patent holders to use this software.
//     - Use of the software either in source or binary form, must be run
//       on or directly connected to an Analog Devices Inc. component.
//    
// THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE ARE DISCLAIMED.
//
// IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY
// RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// serial data output interface: serdes(x8) or oddr(x2) output module

`timescale 1ps/1ps

module ad_serdes_clk (

  // clock and divided clock

  mmcm_rst,
  clk_in_p,
  clk_in_n,

  clk,
  div_clk,

  // drp interface

  drp_clk,
  drp_rst,
  drp_sel,
  drp_wr,
  drp_addr,
  drp_wdata,
  drp_rdata,
  drp_ready,
  drp_locked);

  // parameters

  parameter   SERDES = 1;
  parameter   MMCM = 1;
  parameter   MMCM_DEVICE_TYPE = 0;
  parameter   MMCM_CLKIN_PERIOD  = 1.667;
  parameter   MMCM_VCO_DIV  = 6;
  parameter   MMCM_VCO_MUL = 12.000;
  parameter   MMCM_CLK0_DIV = 2.000;
  parameter   MMCM_CLK1_DIV = 6;

  // clock and divided clock

  input           mmcm_rst;
  input           clk_in_p;
  input           clk_in_n;

  output          clk;
  output          div_clk;

  // drp interface

  input           drp_clk;
  input           drp_rst;
  input           drp_sel;
  input           drp_wr;
  input   [11:0]  drp_addr;
  input   [15:0]  drp_wdata;
  output  [15:0]  drp_rdata;
  output          drp_ready;
  output          drp_locked;

  // internal signals

  wire            clk_in_s;

  // instantiations

  IBUFGDS i_clk_in_ibuf (
    .I (clk_in_p),
    .IB (clk_in_n),
    .O (clk_in_s));

  generate
  if (MMCM == 1) begin
  ad_mmcm_drp #(
    .MMCM_DEVICE_TYPE (MMCM_DEVICE_TYPE),
    .MMCM_CLKIN_PERIOD  (MMCM_CLKIN_PERIOD),
    .MMCM_VCO_DIV  (MMCM_VCO_DIV),
    .MMCM_VCO_MUL (MMCM_VCO_MUL),
    .MMCM_CLK0_DIV (MMCM_CLK0_DIV),
    .MMCM_CLK1_DIV (MMCM_CLK1_DIV))
  i_mmcm_drp (
    .clk (clk_in_s),
    .mmcm_rst (mmcm_rst),
    .mmcm_clk_0 (clk),
    .mmcm_clk_1 (div_clk),
    .drp_clk (drp_clk),
    .drp_rst (drp_rst),
    .drp_sel (drp_sel),
    .drp_wr (drp_wr),
    .drp_addr (drp_addr),
    .drp_wdata (drp_wdata),
    .drp_rdata (drp_rdata),
    .drp_ready (drp_ready),
    .drp_locked (drp_locked));
  end

  if ((MMCM == 0) && (SERDES == 0)) begin
  BUFR #(.BUFR_DIVIDE("BYPASS")) i_clk_buf (
    .CLR (1'b0),
    .CE (1'b1),
    .I (clk_in_s),
    .O (clk));

  assign div_clk = clk;
  end

  if ((MMCM == 0) && (SERDES == 1)) begin
  BUFIO i_clk_buf (
    .I (clk_in_s),
    .O (clk));

  BUFR #(.BUFR_DIVIDE("4")) i_div_clk_buf (
    .CLR (1'b0),
    .CE (1'b1),
    .I (clk_in_s),
    .O (div_clk));
  end
  endgenerate

endmodule

// ***************************************************************************
// ***************************************************************************

