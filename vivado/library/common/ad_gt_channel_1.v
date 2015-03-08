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

`timescale 1ns/1ps

module ad_gt_channel_1 (

  // rst and clocks

  ref_clk,
  cpll_pd,
  cpll_rst,
  qpll_clk,
  qpll_ref_clk,
  qpll_locked,

  // receive

  rx_rst,
  rx_p,
  rx_n,

  rx_sys_clk_sel,
  rx_out_clk_sel,
  rx_out_clk,
  rx_rst_done,
  rx_pll_locked,

  rx_clk,
  rx_charisk,
  rx_disperr,
  rx_notintable,
  rx_data,
  rx_comma_align_enb,

  // transmit

  tx_rst,
  tx_p,
  tx_n,

  tx_sys_clk_sel,
  tx_out_clk_sel,
  tx_out_clk,
  tx_rst_done,
  tx_pll_locked,

  tx_clk,
  tx_charisk,
  tx_data,

  // drp interface

  drp_clk,
  drp_sel,
  drp_addr,
  drp_wr,
  drp_wdata,
  drp_rdata,
  drp_ready,
  drp_lanesel,
  drp_rx_rate,

  // monitor signals

  rx_mon_trigger,
  rx_mon_data);

  // parameters

  parameter   DRP_ID = 0;
  parameter   GTH_GTX_N = 0;
  parameter   CPLL_FBDIV = 2;
  parameter   RX_OUT_DIV = 1;
  parameter   TX_OUT_DIV = 1;
  parameter   RX_CLK25_DIV = 10;
  parameter   TX_CLK25_DIV = 10;
  parameter   PMA_RSV = 32'h00018480;
  parameter   RX_CDR_CFG = 72'h03000023ff20400020;

  // rst and clocks

  input           ref_clk;
  input           cpll_pd;
  input           cpll_rst;
  input           qpll_clk;
  input           qpll_ref_clk;
  input           qpll_locked;

  // receive

  input           rx_rst;
  input           rx_p;
  input           rx_n;

  input   [ 1:0]  rx_sys_clk_sel;
  input   [ 2:0]  rx_out_clk_sel;
  output          rx_out_clk;
  output          rx_rst_done;
  output          rx_pll_locked;

  input           rx_clk;
  output  [ 3:0]  rx_charisk;
  output  [ 3:0]  rx_disperr;
  output  [ 3:0]  rx_notintable;
  output  [31:0]  rx_data;
  input           rx_comma_align_enb;

  // transmit

  input           tx_rst;
  output          tx_p;
  output          tx_n;

  input   [ 1:0]  tx_sys_clk_sel;
  input   [ 2:0]  tx_out_clk_sel;
  output          tx_out_clk;
  output          tx_rst_done;
  output          tx_pll_locked;

  input           tx_clk;
  input   [ 3:0]  tx_charisk;
  input   [31:0]  tx_data;

  // drp interface

  input           drp_clk;
  input           drp_sel;
  input   [11:0]  drp_addr;
  input           drp_wr;
  input   [15:0]  drp_wdata;
  output  [15:0]  drp_rdata;
  output          drp_ready;
  input   [ 7:0]  drp_lanesel;
  output  [ 7:0]  drp_rx_rate;

  // monitor signals

  output          rx_mon_trigger;
  output  [49:0]  rx_mon_data;

  // internal registers

  reg     [ 3:0]  rx_user_ready = 'd0;
  reg     [ 3:0]  tx_user_ready = 'd0;
  reg             drp_sel_int = 'd0;
  reg     [11:0]  drp_addr_int = 'd0;
  reg             drp_wr_int = 'd0;
  reg     [15:0]  drp_wdata_int = 'd0;
  reg     [15:0]  drp_rdata = 'd0;
  reg             drp_ready = 'd0;
  reg     [ 7:0]  drp_rx_rate = 'd0;

  // internal signals

  wire            rx_ilas_f_s;
  wire            rx_ilas_q_s;
  wire            rx_ilas_a_s;
  wire            rx_ilas_r_s;
  wire            rx_cgs_k_s;
  wire    [ 3:0]  rx_valid_k_s;
  wire            rx_valid_k_1_s;
  wire    [ 2:0]  rx_rate_p_s;
  wire    [ 7:0]  rx_rate_s;
  wire    [ 3:0]  rx_charisk_open_s;
  wire    [ 3:0]  rx_disperr_open_s;
  wire    [ 3:0]  rx_notintable_open_s;
  wire    [31:0]  rx_data_open_s;
  wire            cpll_locked_s;
  wire    [15:0]  drp_rdata_s;
  wire            drp_ready_s;

  // monitor interface

  assign rx_mon_data[31: 0] = rx_data;
  assign rx_mon_data[35:32] = rx_notintable;
  assign rx_mon_data[39:36] = rx_disperr;
  assign rx_mon_data[43:40] = rx_charisk;
  assign rx_mon_data[44:44] = rx_valid_k_1_s;
  assign rx_mon_data[45:45] = rx_cgs_k_s;
  assign rx_mon_data[46:46] = rx_ilas_r_s;
  assign rx_mon_data[47:47] = rx_ilas_a_s;
  assign rx_mon_data[48:48] = rx_ilas_q_s;
  assign rx_mon_data[49:49] = rx_ilas_f_s;

  assign rx_mon_trigger = rx_valid_k_1_s;

  // ilas frame characters

  assign rx_ilas_f_s = 
    (((rx_data[31:24] == 8'hfc) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'hfc) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'hfc) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'hfc) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_q_s = 
    (((rx_data[31:24] == 8'h9c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h9c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h9c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h9c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_a_s = 
    (((rx_data[31:24] == 8'h7c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h7c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h7c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h7c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_r_s = 
    (((rx_data[31:24] == 8'h1c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h1c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h1c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h1c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_cgs_k_s = 
    (((rx_data[31:24] == 8'hbc) && (rx_valid_k_s[ 3] == 1'b1)) &&
     ((rx_data[23:16] == 8'hbc) && (rx_valid_k_s[ 2] == 1'b1)) &&
     ((rx_data[15: 8] == 8'hbc) && (rx_valid_k_s[ 1] == 1'b1)) &&
     ((rx_data[ 7: 0] == 8'hbc) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  // validate all characters

  assign rx_valid_k_s = rx_charisk & (~rx_disperr) & (~rx_notintable);
  assign rx_valid_k_1_s = (rx_valid_k_s == 4'd0) ? 1'b0 : 1'b1;

  // rate 

  assign rx_rate_p_s = 0;
  assign rx_rate_s =  (rx_rate_p_s == 3'd0) ? RX_OUT_DIV :
                      (rx_rate_p_s == 3'd1) ? 8'h01 :
                      (rx_rate_p_s == 3'd2) ? 8'h02 :
                      (rx_rate_p_s == 3'd3) ? 8'h04 :
                      (rx_rate_p_s == 3'd4) ? 8'h08 :
                      (rx_rate_p_s == 3'd5) ? 8'h10 : 8'h00;

  // pll locked

  generate
  if (GTH_GTX_N == 0) begin
  assign rx_pll_locked = (rx_sys_clk_sel[0] == 1'b1) ? qpll_locked : cpll_locked_s;
  assign tx_pll_locked = (tx_sys_clk_sel[0] == 1'b1) ? qpll_locked : cpll_locked_s;
  end
  if (GTH_GTX_N == 1) begin
  assign rx_pll_locked = (rx_sys_clk_sel[1] == 1'b1) ? qpll_locked : cpll_locked_s;
  assign tx_pll_locked = (tx_sys_clk_sel[1] == 1'b1) ? qpll_locked : cpll_locked_s;
  end
  endgenerate

  // user ready

  always @(posedge drp_clk) begin
    if ((rx_rst == 1'b1) || (rx_pll_locked == 1'b0)) begin
      rx_user_ready <= 4'd0;
    end else begin
      rx_user_ready <= {rx_user_ready[2:0], 1'b1};
    end
  end

  always @(posedge drp_clk) begin
    if ((tx_rst == 1'b1) || (tx_pll_locked == 1'b0)) begin
      tx_user_ready <= 4'd0;
    end else begin
      tx_user_ready <= {tx_user_ready[2:0], 1'b1};
    end
  end

  // drp control

  always @(posedge drp_clk) begin
    if (drp_lanesel == DRP_ID) begin
      drp_sel_int <= drp_sel;
      drp_addr_int <= drp_addr;
      drp_wr_int <= drp_wr;
      drp_wdata_int <= drp_wdata;
      drp_rdata <= drp_rdata_s;
      drp_ready <= drp_ready_s;
      drp_rx_rate <= rx_rate_s;
    end else begin
      drp_sel_int <= 1'd0;
      drp_addr_int <= 12'd0;
      drp_wr_int <= 1'd0;
      drp_wdata_int <= 16'd0;
      drp_rdata <= 16'd0;
      drp_ready <= 1'd0;
      drp_rx_rate <= 8'd0;
    end
  end

  // instantiations

  generate
  if (GTH_GTX_N == 0) begin
  GTXE2_CHANNEL #(
    .SIM_RECEIVER_DETECT_PASS ("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL ("X"), 
    .SIM_RESET_SPEEDUP ("TRUE"),
    .SIM_CPLLREFCLK_SEL (3'b001),
    .SIM_VERSION ("3.0"),
    .ALIGN_COMMA_DOUBLE ("FALSE"),
    .ALIGN_COMMA_ENABLE (10'b1111111111),
    .ALIGN_COMMA_WORD (1),
    .ALIGN_MCOMMA_DET ("TRUE"),
    .ALIGN_MCOMMA_VALUE (10'b1010000011),
    .ALIGN_PCOMMA_DET ("TRUE"),
    .ALIGN_PCOMMA_VALUE (10'b0101111100),
    .SHOW_REALIGN_COMMA ("TRUE"),
    .RXSLIDE_AUTO_WAIT (7),
    .RXSLIDE_MODE ("OFF"),
    .RX_SIG_VALID_DLY (10),
    .RX_DISPERR_SEQ_MATCH ("TRUE"),
    .DEC_MCOMMA_DETECT ("TRUE"),
    .DEC_PCOMMA_DETECT ("TRUE"),
    .DEC_VALID_COMMA_ONLY ("FALSE"),
    .CBCC_DATA_SOURCE_SEL ("DECODED"),
    .CLK_COR_SEQ_2_USE ("FALSE"),
    .CLK_COR_KEEP_IDLE ("FALSE"),
    .CLK_COR_MAX_LAT (35),
    .CLK_COR_MIN_LAT (31),
    .CLK_COR_PRECEDENCE ("TRUE"),
    .CLK_COR_REPEAT_WAIT (0),
    .CLK_COR_SEQ_LEN (1),
    .CLK_COR_SEQ_1_ENABLE (4'b1111),
    .CLK_COR_SEQ_1_1 (10'b0000000000),
    .CLK_COR_SEQ_1_2 (10'b0000000000),
    .CLK_COR_SEQ_1_3 (10'b0000000000),
    .CLK_COR_SEQ_1_4 (10'b0000000000),
    .CLK_CORRECT_USE ("FALSE"),
    .CLK_COR_SEQ_2_ENABLE (4'b1111),
    .CLK_COR_SEQ_2_1 (10'b0000000000),
    .CLK_COR_SEQ_2_2 (10'b0000000000),
    .CLK_COR_SEQ_2_3 (10'b0000000000),
    .CLK_COR_SEQ_2_4 (10'b0000000000),
    .CHAN_BOND_KEEP_ALIGN ("FALSE"),
    .CHAN_BOND_MAX_SKEW (7),
    .CHAN_BOND_SEQ_LEN (1),
    .CHAN_BOND_SEQ_1_1 (10'b0000000000),
    .CHAN_BOND_SEQ_1_2 (10'b0000000000),
    .CHAN_BOND_SEQ_1_3 (10'b0000000000),
    .CHAN_BOND_SEQ_1_4 (10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE (4'b1111),
    .CHAN_BOND_SEQ_2_1 (10'b0000000000),
    .CHAN_BOND_SEQ_2_2 (10'b0000000000),
    .CHAN_BOND_SEQ_2_3 (10'b0000000000),
    .CHAN_BOND_SEQ_2_4 (10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE (4'b1111),
    .CHAN_BOND_SEQ_2_USE ("FALSE"),
    .FTS_DESKEW_SEQ_ENABLE (4'b1111),
    .FTS_LANE_DESKEW_CFG (4'b1111),
    .FTS_LANE_DESKEW_EN ("FALSE"),
    .ES_CONTROL (6'b000000),
    .ES_ERRDET_EN ("TRUE"),
    .ES_EYE_SCAN_EN ("TRUE"),
    .ES_HORZ_OFFSET (12'h000),
    .ES_PMA_CFG (10'b0000000000),
    .ES_PRESCALE (5'b00000),
    .ES_QUALIFIER (80'h00000000000000000000),
    .ES_QUAL_MASK (80'h00000000000000000000),
    .ES_SDATA_MASK (80'h00000000000000000000),
    .ES_VERT_OFFSET (9'b000000000),
    .RX_DATA_WIDTH (40),
    .OUTREFCLK_SEL_INV (2'b11),
    .PMA_RSV (PMA_RSV),
    .PMA_RSV2 (16'h2070),
    .PMA_RSV3 (2'b00),
    .PMA_RSV4 (32'h00000000),
    .RX_BIAS_CFG (12'b000000000100),
    .DMONITOR_CFG (24'h000A00),
    .RX_CM_SEL (2'b11),
    .RX_CM_TRIM (3'b010),
    .RX_DEBUG_CFG (12'b000000000000),
    .RX_OS_CFG (13'b0000010000000),
    .TERM_RCAL_CFG (5'b10000),
    .TERM_RCAL_OVRD (1'b0),
    .TST_RSV (32'h00000000),
    .RX_CLK25_DIV (RX_CLK25_DIV),
    .TX_CLK25_DIV (TX_CLK25_DIV),
    .UCODEER_CLR (1'b0),
    .PCS_PCIE_EN ("FALSE"),
    .PCS_RSVD_ATTR (48'h000000000000),
    .RXBUF_ADDR_MODE ("FULL"),
    .RXBUF_EIDLE_HI_CNT (4'b1000),
    .RXBUF_EIDLE_LO_CNT (4'b0000),
    .RXBUF_EN ("TRUE"),
    .RX_BUFFER_CFG (6'b000000),
    .RXBUF_RESET_ON_CB_CHANGE ("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN ("FALSE"),
    .RXBUF_RESET_ON_EIDLE ("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE ("TRUE"),
    .RXBUFRESET_TIME (5'b00001),
    .RXBUF_THRESH_OVFLW (61),
    .RXBUF_THRESH_OVRD ("FALSE"),
    .RXBUF_THRESH_UNDFLW (4),
    .RXDLY_CFG (16'h001F),
    .RXDLY_LCFG (9'h030),
    .RXDLY_TAP_CFG (16'h0000),
    .RXPH_CFG (24'h000000),
    .RXPHDLY_CFG (24'h084020),
    .RXPH_MONITOR_SEL (5'b00000),
    .RX_XCLK_SEL ("RXREC"),
    .RX_DDI_SEL (6'b000000),
    .RX_DEFER_RESET_BUF_EN ("TRUE"),
    .RXCDR_CFG (RX_CDR_CFG),
    .RXCDR_FR_RESET_ON_EIDLE (1'b0),
    .RXCDR_HOLD_DURING_EIDLE (1'b0),
    .RXCDR_PH_RESET_ON_EIDLE (1'b0),
    .RXCDR_LOCK_CFG (6'b010101),
    .RXCDRFREQRESET_TIME (5'b00001),
    .RXCDRPHRESET_TIME (5'b00001),
    .RXISCANRESET_TIME (5'b00001),
    .RXPCSRESET_TIME (5'b00001),
    .RXPMARESET_TIME (5'b00011),
    .RXOOB_CFG (7'b0000110),
    .RXGEARBOX_EN ("FALSE"),
    .GEARBOX_MODE (3'b000),
    .RXPRBS_ERR_LOOPBACK (1'b0),
    .PD_TRANS_TIME_FROM_P2 (12'h03c),
    .PD_TRANS_TIME_NONE_P2 (8'h3c),
    .PD_TRANS_TIME_TO_P2 (8'h64),
    .SAS_MAX_COM (64),
    .SAS_MIN_COM (36),
    .SATA_BURST_SEQ_LEN (4'b1111),
    .SATA_BURST_VAL (3'b100),
    .SATA_EIDLE_VAL (3'b100),
    .SATA_MAX_BURST (8),
    .SATA_MAX_INIT (21),
    .SATA_MAX_WAKE (7),
    .SATA_MIN_BURST (4),
    .SATA_MIN_INIT (12),
    .SATA_MIN_WAKE (4),
    .TRANS_TIME_RATE (8'h0E),
    .TXBUF_EN ("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE ("TRUE"),
    .TXDLY_CFG (16'h001F),
    .TXDLY_LCFG (9'h030),
    .TXDLY_TAP_CFG (16'h0000),
    .TXPH_CFG (16'h0780),
    .TXPHDLY_CFG (24'h084020),
    .TXPH_MONITOR_SEL (5'b00000),
    .TX_XCLK_SEL ("TXOUT"),
    .TX_DATA_WIDTH (40),
    .TX_DEEMPH0 (5'b00000),
    .TX_DEEMPH1 (5'b00000),
    .TX_EIDLE_ASSERT_DELAY (3'b110),
    .TX_EIDLE_DEASSERT_DELAY (3'b100),
    .TX_LOOPBACK_DRIVE_HIZ ("FALSE"),
    .TX_MAINCURSOR_SEL (1'b0),
    .TX_DRIVE_MODE ("DIRECT"),
    .TX_MARGIN_FULL_0 (7'b1001110),
    .TX_MARGIN_FULL_1 (7'b1001001),
    .TX_MARGIN_FULL_2 (7'b1000101),
    .TX_MARGIN_FULL_3 (7'b1000010),
    .TX_MARGIN_FULL_4 (7'b1000000),
    .TX_MARGIN_LOW_0 (7'b1000110),
    .TX_MARGIN_LOW_1 (7'b1000100),
    .TX_MARGIN_LOW_2 (7'b1000010),
    .TX_MARGIN_LOW_3 (7'b1000000),
    .TX_MARGIN_LOW_4 (7'b1000000),
    .TXGEARBOX_EN ("FALSE"),
    .TXPCSRESET_TIME (5'b00001),
    .TXPMARESET_TIME (5'b00001),
    .TX_RXDETECT_CFG (14'h1832),
    .TX_RXDETECT_REF (3'b100),
    .CPLL_CFG (24'hBC07DC),
    .CPLL_FBDIV (CPLL_FBDIV),
    .CPLL_FBDIV_45 (5),
    .CPLL_INIT_CFG (24'h00001E),
    .CPLL_LOCK_CFG (16'h01E8),
    .CPLL_REFCLK_DIV (1),
    .RXOUT_DIV (RX_OUT_DIV),
    .TXOUT_DIV (TX_OUT_DIV),
    .SATA_CPLL_CFG ("VCO_3000MHZ"),
    .RXDFELPMRESET_TIME (7'b0001111),
    .RXLPM_HF_CFG (14'b00000011110000),
    .RXLPM_LF_CFG (14'b00000011110000),
    .RX_DFE_GAIN_CFG (23'h020FEA),
    .RX_DFE_H2_CFG (12'b000000000000),
    .RX_DFE_H3_CFG (12'b000001000000),
    .RX_DFE_H4_CFG (11'b00011110000),
    .RX_DFE_H5_CFG (11'b00011100000),
    .RX_DFE_KL_CFG (13'b0000011111110),
    .RX_DFE_LPM_CFG (16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE (1'b0),
    .RX_DFE_UT_CFG (17'b10001111000000000),
    .RX_DFE_VP_CFG (17'b00011111100000011),
    .RX_CLKMUX_PD (1'b1),
    .TX_CLKMUX_PD (1'b1),
    .RX_INT_DATAWIDTH (1),
    .TX_INT_DATAWIDTH (1),
    .TX_QPI_STATUS_EN (1'b0),
    .RX_DFE_KL_CFG2 (32'h3010D90C),
    .RX_DFE_XYD_CFG (13'b0001100010000),
    .TX_PREDRIVER_MODE (1'b0))
  i_gtxe2_channel (
    .CPLLFBCLKLOST (),
    .CPLLLOCK (cpll_locked_s),
    .CPLLLOCKDETCLK (drp_clk),
    .CPLLLOCKEN (1'd1),
    .CPLLPD (cpll_pd),
    .CPLLREFCLKLOST (),
    .CPLLREFCLKSEL (3'b001),
    .CPLLRESET (cpll_rst),
    .GTRSVD (16'b0000000000000000),
    .PCSRSVDIN (16'b0000000000000000),
    .PCSRSVDIN2 (5'b00000),
    .PMARSVDIN (5'b00000),
    .PMARSVDIN2 (5'b00000),
    .TSTIN (20'b11111111111111111111),
    .TSTOUT (),
    .CLKRSVD (4'b0000),
    .GTGREFCLK (1'd0),
    .GTNORTHREFCLK0 (1'd0),
    .GTNORTHREFCLK1 (1'd0),
    .GTREFCLK0 (ref_clk),
    .GTREFCLK1 (1'd0),
    .GTSOUTHREFCLK0 (1'd0),
    .GTSOUTHREFCLK1 (1'd0),
    .DRPADDR (drp_addr_int[8:0]),
    .DRPCLK (drp_clk),
    .DRPDI (drp_wdata_int),
    .DRPDO (drp_rdata_s),
    .DRPEN (drp_sel_int),
    .DRPRDY (drp_ready_s),
    .DRPWE (drp_wr_int),
    .GTREFCLKMONITOR (),
    .QPLLCLK (qpll_clk),
    .QPLLREFCLK (qpll_ref_clk),
    .RXSYSCLKSEL (rx_sys_clk_sel),
    .TXSYSCLKSEL (tx_sys_clk_sel),
    .DMONITOROUT (),
    .TX8B10BEN (1'd1),
    .LOOPBACK (3'd0),
    .PHYSTATUS (),
    .RXRATE (rx_rate_p_s),
    .RXVALID (),
    .RXPD (2'b00),
    .TXPD (2'b00),
    .SETERRSTATUS (1'd0),
    .EYESCANRESET (1'd0),
    .RXUSERRDY (rx_user_ready[3]),
    .EYESCANDATAERROR (),
    .EYESCANMODE (1'd0),
    .EYESCANTRIGGER (1'd0),
    .RXCDRFREQRESET (1'd0),
    .RXCDRHOLD (1'd0),
    .RXCDRLOCK (),
    .RXCDROVRDEN (1'd0),
    .RXCDRRESET (1'd0),
    .RXCDRRESETRSV (1'd0),
    .RXCLKCORCNT (),
    .RX8B10BEN (1'd1),
    .RXUSRCLK (rx_clk),
    .RXUSRCLK2 (rx_clk),
    .RXDATA ({rx_data_open_s, rx_data}),
    .RXPRBSERR (),
    .RXPRBSSEL (3'd0),
    .RXPRBSCNTRESET (1'd0),
    .RXDFEXYDEN (1'd0),
    .RXDFEXYDHOLD (1'd0),
    .RXDFEXYDOVRDEN (1'd0),
    .RXDISPERR ({rx_disperr_open_s, rx_disperr}),
    .RXNOTINTABLE ({rx_notintable_open_s, rx_notintable}),
    .GTXRXP (rx_p),
    .GTXRXN (rx_n),
    .RXBUFRESET (1'd0),
    .RXBUFSTATUS (),
    .RXDDIEN (1'd0),
    .RXDLYBYPASS (1'd1),
    .RXDLYEN (1'd0),
    .RXDLYOVRDEN (1'd0),
    .RXDLYSRESET (1'd0),
    .RXDLYSRESETDONE (),
    .RXPHALIGN (1'd0),
    .RXPHALIGNDONE (),
    .RXPHALIGNEN (1'd0),
    .RXPHDLYPD (1'd0),
    .RXPHDLYRESET (1'd0),
    .RXPHMONITOR (),
    .RXPHOVRDEN (1'd0),
    .RXPHSLIPMONITOR (),
    .RXSTATUS (),
    .RXBYTEISALIGNED (),
    .RXBYTEREALIGN (),
    .RXCOMMADET (),
    .RXCOMMADETEN (1'd1),
    .RXMCOMMAALIGNEN (rx_comma_align_enb),
    .RXPCOMMAALIGNEN (rx_comma_align_enb),
    .RXCHANBONDSEQ (),
    .RXCHBONDEN (1'd0),
    .RXCHBONDLEVEL (3'd0),
    .RXCHBONDMASTER (1'd1),
    .RXCHBONDO (),
    .RXCHBONDSLAVE (1'd0),
    .RXCHANISALIGNED (),
    .RXCHANREALIGN (),
    .RXDFEAGCHOLD (1'd0),
    .RXDFEAGCOVRDEN (1'd0),
    .RXDFECM1EN (1'd0),
    .RXDFELFHOLD (1'd0),
    .RXDFELFOVRDEN (1'd1),
    .RXDFELPMRESET (1'd0),
    .RXDFETAP2HOLD (1'd0),
    .RXDFETAP2OVRDEN (1'd0),
    .RXDFETAP3HOLD (1'd0),
    .RXDFETAP3OVRDEN (1'd0),
    .RXDFETAP4HOLD (1'd0),
    .RXDFETAP4OVRDEN (1'd0),
    .RXDFETAP5HOLD (1'd0),
    .RXDFETAP5OVRDEN (1'd0),
    .RXDFEUTHOLD (1'd0),
    .RXDFEUTOVRDEN (1'd0),
    .RXDFEVPHOLD (1'd0),
    .RXDFEVPOVRDEN (1'd0),
    .RXDFEVSEN (1'd0),
    .RXLPMLFKLOVRDEN (1'd0),
    .RXMONITOROUT (),
    .RXMONITORSEL (2'd0),
    .RXOSHOLD (1'd0),
    .RXOSOVRDEN (1'd0),
    .RXLPMHFHOLD (1'd0),
    .RXLPMHFOVRDEN (1'd0),
    .RXLPMLFHOLD (1'd0),
    .RXRATEDONE (),
    .RXOUTCLK (rx_out_clk),
    .RXOUTCLKFABRIC (),
    .RXOUTCLKPCS (),
    .RXOUTCLKSEL (rx_out_clk_sel),
    .RXDATAVALID (),
    .RXHEADER (),
    .RXHEADERVALID (),
    .RXSTARTOFSEQ (),
    .RXGEARBOXSLIP (1'd0),
    .GTRXRESET (rx_rst),
    .RXOOBRESET (1'd0),
    .RXPCSRESET (1'd0),
    .RXPMARESET (1'd0),
    .RXLPMEN (1'd0),
    .RXCOMSASDET (),
    .RXCOMWAKEDET (),
    .RXCOMINITDET (),
    .RXELECIDLE (),
    .RXELECIDLEMODE (2'b10),
    .RXPOLARITY (1'd0),
    .RXSLIDE (1'd0),
    .RXCHARISCOMMA (),
    .RXCHARISK ({rx_charisk_open_s, rx_charisk}),
    .RXCHBONDI (5'd0),
    .RXRESETDONE (rx_rst_done),
    .RXQPIEN (1'd0),
    .RXQPISENN (),
    .RXQPISENP (),
    .TXPHDLYTSTCLK (1'd0),
    .TXPOSTCURSOR (5'd0),
    .TXPOSTCURSORINV (1'd0),
    .TXPRECURSOR (5'd0),
    .TXPRECURSORINV (1'd0),
    .TXQPIBIASEN (1'd0),
    .TXQPISTRONGPDOWN (1'd0),
    .TXQPIWEAKPUP (1'd0),
    .CFGRESET (1'd0),
    .GTTXRESET (tx_rst),
    .PCSRSVDOUT (),
    .TXUSERRDY (tx_user_ready[3]),
    .GTRESETSEL (1'd0),
    .RESETOVRD (1'd0),
    .TXCHARDISPMODE (8'd0),
    .TXCHARDISPVAL (8'd0),
    .TXUSRCLK (tx_clk),
    .TXUSRCLK2 (tx_clk),
    .TXELECIDLE (1'd0),
    .TXMARGIN (3'd0),
    .TXRATE (3'd0),
    .TXSWING (1'd0),
    .TXPRBSFORCEERR (1'd0),
    .TXDLYBYPASS (1'd1),
    .TXDLYEN (1'd0),
    .TXDLYHOLD (1'd0),
    .TXDLYOVRDEN (1'd0),
    .TXDLYSRESET (1'd0),
    .TXDLYSRESETDONE (),
    .TXDLYUPDOWN (1'd0),
    .TXPHALIGN (1'd0),
    .TXPHALIGNDONE (),
    .TXPHALIGNEN (1'd0),
    .TXPHDLYPD (1'd0),
    .TXPHDLYRESET (1'd0),
    .TXPHINIT (1'd0),
    .TXPHINITDONE (),
    .TXPHOVRDEN (1'd0),
    .TXBUFSTATUS (),
    .TXBUFDIFFCTRL (3'b100),
    .TXDEEMPH (1'd0),
    .TXDIFFCTRL (4'b1000),
    .TXDIFFPD (1'd0),
    .TXINHIBIT (1'd0),
    .TXMAINCURSOR (7'b0000000),
    .TXPISOPD (1'd0),
    .TXDATA ({32'd0, tx_data}),
    .GTXTXP (tx_p),
    .GTXTXN (tx_n),
    .TXOUTCLK (tx_out_clk),
    .TXOUTCLKFABRIC (),
    .TXOUTCLKPCS (),
    .TXOUTCLKSEL (tx_out_clk_sel),
    .TXRATEDONE (),
    .TXCHARISK ({4'd0, tx_charisk}),
    .TXGEARBOXREADY (),
    .TXHEADER (3'd0),
    .TXSEQUENCE (7'd0),
    .TXSTARTSEQ (1'd0),
    .TXPCSRESET (1'd0),
    .TXPMARESET (1'd0),
    .TXRESETDONE (tx_rst_done),
    .TXCOMFINISH (),
    .TXCOMINIT (1'd0),
    .TXCOMSAS (1'd0),
    .TXCOMWAKE (1'd0),
    .TXPDELECIDLEMODE (1'd0),
    .TXPOLARITY (1'd0),
    .TXDETECTRX (1'd0),
    .TX8B10BBYPASS (8'd0),
    .TXPRBSSEL (3'd0),
    .TXQPISENP (),
    .TXQPISENN ());
  end

  if (GTH_GTX_N == 1) begin
  GTHE3_CHANNEL #(
    .ACJTAG_DEBUG_MODE (1'b0),
    .ACJTAG_MODE (1'b0),
    .ACJTAG_RESET (1'b0),
    .ADAPT_CFG0 (16'b1111100000000000),
    .ADAPT_CFG1 (16'b0000000000000000),
    .ALIGN_COMMA_DOUBLE ("FALSE"),
    .ALIGN_COMMA_ENABLE (10'b1111111111),
    .ALIGN_COMMA_WORD (1),
    .ALIGN_MCOMMA_DET ("TRUE"),
    .ALIGN_MCOMMA_VALUE (10'b1010000011),
    .ALIGN_PCOMMA_DET ("TRUE"),
    .ALIGN_PCOMMA_VALUE (10'b0101111100),
    .A_RXOSCALRESET (1'b0),
    .A_RXPROGDIVRESET (1'b0),
    .A_TXPROGDIVRESET (1'b0),
    .CBCC_DATA_SOURCE_SEL ("DECODED"),
    .CDR_SWAP_MODE_EN (1'b0),
    .CHAN_BOND_KEEP_ALIGN ("FALSE"),
    .CHAN_BOND_MAX_SKEW (1),
    .CHAN_BOND_SEQ_1_1 (10'b0000000000),
    .CHAN_BOND_SEQ_1_2 (10'b0000000000),
    .CHAN_BOND_SEQ_1_3 (10'b0000000000),
    .CHAN_BOND_SEQ_1_4 (10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE (4'b1111),
    .CHAN_BOND_SEQ_2_1 (10'b0000000000),
    .CHAN_BOND_SEQ_2_2 (10'b0000000000),
    .CHAN_BOND_SEQ_2_3 (10'b0000000000),
    .CHAN_BOND_SEQ_2_4 (10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE (4'b1111),
    .CHAN_BOND_SEQ_2_USE ("FALSE"),
    .CHAN_BOND_SEQ_LEN (1),
    .CLK_CORRECT_USE ("FALSE"),
    .CLK_COR_KEEP_IDLE ("FALSE"),
    .CLK_COR_MAX_LAT (12),
    .CLK_COR_MIN_LAT (8),
    .CLK_COR_PRECEDENCE ("TRUE"),
    .CLK_COR_REPEAT_WAIT (0),
    .CLK_COR_SEQ_1_1 (10'b0100000000),
    .CLK_COR_SEQ_1_2 (10'b0100000000),
    .CLK_COR_SEQ_1_3 (10'b0100000000),
    .CLK_COR_SEQ_1_4 (10'b0100000000),
    .CLK_COR_SEQ_1_ENABLE (4'b1111),
    .CLK_COR_SEQ_2_1 (10'b0100000000),
    .CLK_COR_SEQ_2_2 (10'b0100000000),
    .CLK_COR_SEQ_2_3 (10'b0100000000),
    .CLK_COR_SEQ_2_4 (10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE (4'b1111),
    .CLK_COR_SEQ_2_USE ("FALSE"),
    .CLK_COR_SEQ_LEN (1),
    .CPLL_CFG0 (16'b0110011111111010),
    .CPLL_CFG1 (16'b1010010010010100),
    .CPLL_CFG2 (16'b1111000000000111),
    .CPLL_CFG3 (6'b000000),
    .CPLL_FBDIV (CPLL_FBDIV),
    .CPLL_FBDIV_45 (5),
    .CPLL_INIT_CFG0 (16'b0000000000011110),
    .CPLL_INIT_CFG1 (8'b00000000),
    .CPLL_LOCK_CFG (16'b0000000111101000),
    .CPLL_REFCLK_DIV (1),
    .DDI_CTRL (2'b00),
    .DDI_REALIGN_WAIT (15),
    .DEC_MCOMMA_DETECT ("TRUE"),
    .DEC_PCOMMA_DETECT ("TRUE"),
    .DEC_VALID_COMMA_ONLY ("FALSE"),
    .DFE_D_X_REL_POS (1'b0),
    .DFE_VCM_COMP_EN (1'b0),
    .DMONITOR_CFG0 (10'b0000000000),
    .DMONITOR_CFG1 (8'b00000000),
    .ES_CLK_PHASE_SEL (1'b0),
    .ES_CONTROL (6'b000000),
    .ES_ERRDET_EN ("TRUE"),
    .ES_EYE_SCAN_EN ("TRUE"),
    .ES_HORZ_OFFSET (12'b000000000000),
    .ES_PMA_CFG (10'b0000000000),
    .ES_PRESCALE (5'b00000),
    .ES_QUALIFIER0 (16'b0000000000000000),
    .ES_QUALIFIER1 (16'b0000000000000000),
    .ES_QUALIFIER2 (16'b0000000000000000),
    .ES_QUALIFIER3 (16'b0000000000000000),
    .ES_QUALIFIER4 (16'b0000000000000000),
    .ES_QUAL_MASK0 (16'b0000000000000000),
    .ES_QUAL_MASK1 (16'b0000000000000000),
    .ES_QUAL_MASK2 (16'b0000000000000000),
    .ES_QUAL_MASK3 (16'b0000000000000000),
    .ES_QUAL_MASK4 (16'b0000000000000000),
    .ES_SDATA_MASK0 (16'b0000000000000000),
    .ES_SDATA_MASK1 (16'b0000000000000000),
    .ES_SDATA_MASK2 (16'b0000000000000000),
    .ES_SDATA_MASK3 (16'b0000000000000000),
    .ES_SDATA_MASK4 (16'b0000000000000000),
    .EVODD_PHI_CFG (11'b00000000000),
    .EYE_SCAN_SWAP_EN (1'b0),
    .FTS_DESKEW_SEQ_ENABLE (4'b1111),
    .FTS_LANE_DESKEW_CFG (4'b1111),
    .FTS_LANE_DESKEW_EN ("FALSE"),
    .GEARBOX_MODE (5'b00000),
    .GM_BIAS_SELECT (1'b0),
    .LOCAL_MASTER (1'b1),
    .OOBDIVCTL (2'b00),
    .OOB_PWRUP (1'b0),
    .PCI3_AUTO_REALIGN ("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE (1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS (2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE (1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT (6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE (3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT (6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE (1'b0),
    .PCI3_RX_FIFO_DISABLE (1'b0),
    .PCIE_BUFG_DIV_CTRL (16'b0011010100001001),
    .PCIE_RXPCS_CFG_GEN3 (16'b0000001010100100),
    .PCIE_RXPMA_CFG (16'b0000000000001010),
    .PCIE_TXPCS_CFG_GEN3 (16'b0010010010100000),
    .PCIE_TXPMA_CFG (16'b0000000000001010),
    .PCS_PCIE_EN ("FALSE"),
    .PCS_RSVD0 (16'b0000000000000000),
    .PCS_RSVD1 (3'b000),
    .PD_TRANS_TIME_FROM_P2 (12'b000000111100),
    .PD_TRANS_TIME_NONE_P2 (8'b00011001),
    .PD_TRANS_TIME_TO_P2 (8'b01100100),
    .PLL_SEL_MODE_GEN12 (2'b11),
    .PLL_SEL_MODE_GEN3 (2'b11),
    .PMA_RSV1 (16'b0001000000000000),
    .PROCESS_PAR (3'b010),
    .RATE_SW_USE_DRP (1'b0),
    .RESET_POWERSAVE_DISABLE (1'b0),
    .RXBUFRESET_TIME (5'b00011),
    .RXBUF_ADDR_MODE ("FAST"),
    .RXBUF_EIDLE_HI_CNT (4'b1000),
    .RXBUF_EIDLE_LO_CNT (4'b0000),
    .RXBUF_EN ("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE ("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN ("FALSE"),
    .RXBUF_RESET_ON_EIDLE ("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE ("FALSE"),
    .RXBUF_THRESH_OVFLW (57),
    .RXBUF_THRESH_OVRD ("TRUE"),
    .RXBUF_THRESH_UNDFLW (3),
    .RXCDRFREQRESET_TIME (5'b00001),
    .RXCDRPHRESET_TIME (5'b00001),
    .RXCDR_CFG0 (16'b0000000000000000),
    .RXCDR_CFG0_GEN3 (16'b0000000000000000),
    .RXCDR_CFG1 (16'b0000000000000000),
    .RXCDR_CFG1_GEN3 (16'b0000000000000000),
    .RXCDR_CFG2 (16'b0000011101100110),
    .RXCDR_CFG2_GEN3 (16'b0000011101100110),
    .RXCDR_CFG3 (16'b0000000000000000),
    .RXCDR_CFG3_GEN3 (16'b0000000000000000),
    .RXCDR_CFG4 (16'b0000000000000000),
    .RXCDR_CFG4_GEN3 (16'b0000000000000000),
    .RXCDR_CFG5 (16'b0000000000000000),
    .RXCDR_CFG5_GEN3 (16'b0000000000000000),
    .RXCDR_FR_RESET_ON_EIDLE (1'b0),
    .RXCDR_HOLD_DURING_EIDLE (1'b0),
    .RXCDR_LOCK_CFG0 (16'b0100010010000000),
    .RXCDR_LOCK_CFG1 (16'b0101111111111111),
    .RXCDR_LOCK_CFG2 (16'b0111011111000011),
    .RXCDR_PH_RESET_ON_EIDLE (1'b0),
    .RXCFOK_CFG0 (16'b0100000000000000),
    .RXCFOK_CFG1 (16'b0000000001100101),
    .RXCFOK_CFG2 (16'b0000000000101110),
    .RXDFELPMRESET_TIME (7'b0001111),
    .RXDFELPM_KL_CFG0 (16'b0000000000000000),
    .RXDFELPM_KL_CFG1 (16'b0000000000000010),
    .RXDFELPM_KL_CFG2 (16'b0000000000000000),
    .RXDFE_CFG0 (16'b0000101000000000),
    .RXDFE_CFG1 (16'b0000000000000000),
    .RXDFE_GC_CFG0 (16'b0000000000000000),
    .RXDFE_GC_CFG1 (16'b0111100001100000),
    .RXDFE_GC_CFG2 (16'b0000000000000000),
    .RXDFE_H2_CFG0 (16'b0000000000000000),
    .RXDFE_H2_CFG1 (16'b0000000000000000),
    .RXDFE_H3_CFG0 (16'b0100000000000000),
    .RXDFE_H3_CFG1 (16'b0000000000000000),
    .RXDFE_H4_CFG0 (16'b0010000000000000),
    .RXDFE_H4_CFG1 (16'b0000000000000011),
    .RXDFE_H5_CFG0 (16'b0010000000000000),
    .RXDFE_H5_CFG1 (16'b0000000000000011),
    .RXDFE_H6_CFG0 (16'b0010000000000000),
    .RXDFE_H6_CFG1 (16'b0000000000000000),
    .RXDFE_H7_CFG0 (16'b0010000000000000),
    .RXDFE_H7_CFG1 (16'b0000000000000000),
    .RXDFE_H8_CFG0 (16'b0010000000000000),
    .RXDFE_H8_CFG1 (16'b0000000000000000),
    .RXDFE_H9_CFG0 (16'b0010000000000000),
    .RXDFE_H9_CFG1 (16'b0000000000000000),
    .RXDFE_HA_CFG0 (16'b0010000000000000),
    .RXDFE_HA_CFG1 (16'b0000000000000000),
    .RXDFE_HB_CFG0 (16'b0010000000000000),
    .RXDFE_HB_CFG1 (16'b0000000000000000),
    .RXDFE_HC_CFG0 (16'b0000000000000000),
    .RXDFE_HC_CFG1 (16'b0000000000000000),
    .RXDFE_HD_CFG0 (16'b0000000000000000),
    .RXDFE_HD_CFG1 (16'b0000000000000000),
    .RXDFE_HE_CFG0 (16'b0000000000000000),
    .RXDFE_HE_CFG1 (16'b0000000000000000),
    .RXDFE_HF_CFG0 (16'b0000000000000000),
    .RXDFE_HF_CFG1 (16'b0000000000000000),
    .RXDFE_OS_CFG0 (16'b1000000000000000),
    .RXDFE_OS_CFG1 (16'b0000000000000000),
    .RXDFE_UT_CFG0 (16'b1000000000000000),
    .RXDFE_UT_CFG1 (16'b0000000000000011),
    .RXDFE_VP_CFG0 (16'b1010101000000000),
    .RXDFE_VP_CFG1 (16'b0000000000110011),
    .RXDLY_CFG (16'b0000000000011111),
    .RXDLY_LCFG (16'b0000000000110000),
    .RXELECIDLE_CFG ("Sigcfg_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR (4),
    .RXGEARBOX_EN ("FALSE"),
    .RXISCANRESET_TIME (5'b00001),
    .RXLPM_CFG (16'b0000000000000000),
    .RXLPM_GC_CFG (16'b0000000000000000),
    .RXLPM_KH_CFG0 (16'b0000000000000000),
    .RXLPM_KH_CFG1 (16'b0000000000000010),
    .RXLPM_OS_CFG0 (16'b1000000000000000),
    .RXLPM_OS_CFG1 (16'b0000000000000010),
    .RXOOB_CFG (9'b000000110),
    .RXOOB_CLK_CFG ("PMA"),
    .RXOSCALRESET_TIME (5'b00011),
    .RXOUT_DIV (RX_OUT_DIV),
    .RXPCSRESET_TIME (5'b00011),
    .RXPHBEACON_CFG (16'b0000000000000000),
    .RXPHDLY_CFG (16'b0010000000100000),
    .RXPHSAMP_CFG (16'b0010000100000000),
    .RXPHSLIP_CFG (16'b0110011000100010),
    .RXPH_MONITOR_SEL (5'b00000),
    .RXPI_CFG0 (2'b00),
    .RXPI_CFG1 (2'b00),
    .RXPI_CFG2 (2'b00),
    .RXPI_CFG3 (2'b00),
    .RXPI_CFG4 (1'b0),
    .RXPI_CFG5 (1'b1),
    .RXPI_CFG6 (3'b000),
    .RXPI_LPM (1'b0),
    .RXPI_VREFSEL (1'b0),
    .RXPMACLK_SEL ("DATA"),
    .RXPMARESET_TIME (5'b00011),
    .RXPRBS_ERR_LOOPBACK (1'b0),
    .RXPRBS_LINKACQ_CNT (15),
    .RXSLIDE_AUTO_WAIT (7),
    .RXSLIDE_MODE ("OFF"),
    .RXSYNC_MULTILANE (1'b1),
    .RXSYNC_OVRD (1'b0),
    .RXSYNC_SKIP_DA (1'b0),
    .RX_AFE_CM_EN (1'b0),
    .RX_BIAS_CFG0 (16'b0000101010110100),
    .RX_BUFFER_CFG (6'b000000),
    .RX_CAPFF_SARC_ENB (1'b0),
    .RX_CLK25_DIV (RX_CLK25_DIV),
    .RX_CLKMUX_EN (1'b1),
    .RX_CLK_SLIP_OVRD (5'b00000),
    .RX_CM_BUF_CFG (4'b1010),
    .RX_CM_BUF_PD (1'b0),
    .RX_CM_SEL (2'b11),
    .RX_CM_TRIM (4'b1010),
    .RX_CTLE3_LPF (8'b00000001),
    .RX_DATA_WIDTH (40),
    .RX_DDI_SEL (6'b000000),
    .RX_DEFER_RESET_BUF_EN ("TRUE"),
    .RX_DFELPM_CFG0 (4'b0110),
    .RX_DFELPM_CFG1 (1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN (1'b1),
    .RX_DFE_AGC_CFG0 (2'b10),
    .RX_DFE_AGC_CFG1 (3'b100),
    .RX_DFE_KL_LPM_KH_CFG0 (2'b01),
    .RX_DFE_KL_LPM_KH_CFG1 (3'b100),
    .RX_DFE_KL_LPM_KL_CFG0 (2'b01),
    .RX_DFE_KL_LPM_KL_CFG1 (3'b100),
    .RX_DFE_LPM_HOLD_DURING_EIDLE (1'b0),
    .RX_DISPERR_SEQ_MATCH ("TRUE"),
    .RX_DIVRESET_TIME (5'b00001),
    .RX_EN_HI_LR (1'b1),
    .RX_EYESCAN_VS_CODE (7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR (1'b0),
    .RX_EYESCAN_VS_RANGE (2'b00),
    .RX_EYESCAN_VS_UT_SIGN (1'b0),
    .RX_FABINT_USRCLK_FLOP (1'b0),
    .RX_INT_DATAWIDTH (1),
    .RX_PMA_POWER_SAVE (1'b0),
    .RX_PROGDIV_CFG (20.0),
    .RX_SAMPLE_PERIOD (3'b101),
    .RX_SIG_VALID_DLY (11),
    .RX_SUM_DFETAPREP_EN (1'b0),
    .RX_SUM_IREF_TUNE (4'b0000),
    .RX_SUM_RES_CTRL (2'b00),
    .RX_SUM_VCMTUNE (4'b0000),
    .RX_SUM_VCM_OVWR (1'b0),
    .RX_SUM_VREF_TUNE (3'b000),
    .RX_TUNE_AFE_OS (2'b10),
    .RX_WIDEMODE_CDR (1'b1),
    .RX_XCLK_SEL ("RXDES"),
    .SAS_MAX_COM (64),
    .SAS_MIN_COM (36),
    .SATA_BURST_SEQ_LEN (4'b1111),
    .SATA_BURST_VAL (3'b100),
    .SATA_CPLL_CFG ("VCO_3000MHZ"),
    .SATA_EIDLE_VAL (3'b100),
    .SATA_MAX_BURST (8),
    .SATA_MAX_INIT (21),
    .SATA_MAX_WAKE (7),
    .SATA_MIN_BURST (4),
    .SATA_MIN_INIT (12),
    .SATA_MIN_WAKE (4),
    .SHOW_REALIGN_COMMA ("TRUE"),
    .SIM_RECEIVER_DETECT_PASS ("TRUE"),
    .SIM_RESET_SPEEDUP ("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL (1'b0),
    .SIM_VERSION ("Ver_1"),
    .TAPDLY_SET_TX (2'b00),
    .TEMPERATUR_PAR (4'b0010),
    .TERM_RCAL_CFG (15'b100001000010000),
    .TERM_RCAL_OVRD (3'b000),
    .TRANS_TIME_RATE (8'b00001110),
    .TST_RSV0 (8'b00000000),
    .TST_RSV1 (8'b00000000),
    .TXBUF_EN ("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE ("TRUE"),
    .TXDLY_CFG (16'b0000000000001001),
    .TXDLY_LCFG (16'b0000000001010000),
    .TXDRVBIAS_N (4'b1010),
    .TXDRVBIAS_P (4'b1010),
    .TXFIFO_ADDR_CFG ("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR (4),
    .TXGEARBOX_EN ("FALSE"),
    .TXOUT_DIV (TX_OUT_DIV),
    .TXPCSRESET_TIME (5'b00011),
    .TXPHDLY_CFG0 (16'b0010000000100000),
    .TXPHDLY_CFG1 (16'b0000000011010101),
    .TXPH_CFG (16'b0000100110000000),
    .TXPH_MONITOR_SEL (5'b00000),
    .TXPI_CFG0 (2'b00),
    .TXPI_CFG1 (2'b00),
    .TXPI_CFG2 (2'b00),
    .TXPI_CFG3 (1'b0),
    .TXPI_CFG4 (1'b1),
    .TXPI_CFG5 (3'b000),
    .TXPI_GRAY_SEL (1'b0),
    .TXPI_INVSTROBE_SEL (1'b0),
    .TXPI_LPM (1'b0),
    .TXPI_PPMCLK_SEL ("TXUSRCLK2"),
    .TXPI_PPM_CFG (8'b00000000),
    .TXPI_SYNFREQ_PPM (3'b000),
    .TXPI_VREFSEL (1'b0),
    .TXPMARESET_TIME (5'b00011),
    .TXSYNC_MULTILANE (1'b1),
    .TXSYNC_OVRD (1'b0),
    .TXSYNC_SKIP_DA (1'b0),
    .TX_CLK25_DIV (TX_CLK25_DIV),
    .TX_CLKMUX_EN (1'b1),
    .TX_DATA_WIDTH (40),
    .TX_DCD_CFG (6'b000010),
    .TX_DCD_EN (1'b0),
    .TX_DEEMPH0 (6'b000000),
    .TX_DEEMPH1 (6'b000000),
    .TX_DIVRESET_TIME (5'b00001),
    .TX_DRIVE_MODE ("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY (3'b100),
    .TX_EIDLE_DEASSERT_DELAY (3'b011),
    .TX_EML_PHI_TUNE (1'b0),
    .TX_FABINT_USRCLK_FLOP (1'b0),
    .TX_IDLE_DATA_ZERO (1'b0),
    .TX_INT_DATAWIDTH (1),
    .TX_LOOPBACK_DRIVE_HIZ ("FALSE"),
    .TX_MAINCURSOR_SEL (1'b0),
    .TX_MARGIN_FULL_0 (7'b1001111),
    .TX_MARGIN_FULL_1 (7'b1001110),
    .TX_MARGIN_FULL_2 (7'b1001100),
    .TX_MARGIN_FULL_3 (7'b1001010),
    .TX_MARGIN_FULL_4 (7'b1001000),
    .TX_MARGIN_LOW_0 (7'b1000110),
    .TX_MARGIN_LOW_1 (7'b1000101),
    .TX_MARGIN_LOW_2 (7'b1000011),
    .TX_MARGIN_LOW_3 (7'b1000010),
    .TX_MARGIN_LOW_4 (7'b1000000),
    .TX_MODE_SEL (3'b000),
    .TX_PMADATA_OPT (1'b0),
    .TX_PMA_POWER_SAVE (1'b0),
    .TX_PROGCLK_SEL ("PREPI"),
    .TX_PROGDIV_CFG (20.0),
    .TX_QPI_STATUS_EN (1'b0),
    .TX_RXDETECT_CFG (14'b00000000110010),
    .TX_RXDETECT_REF (3'b100),
    .TX_SAMPLE_PERIOD (3'b101),
    .TX_SARC_LPBK_ENB (1'b0),                   
    .TX_XCLK_SEL ("TXOUT"),                     
    .USE_PCS_CLK_PHASE_SEL (1'b0),              
    .WB_MODE (2'b00))                                                                        
  i_gthe3_channel (                                                            
    .CFGRESET (1'd0),
    .CLKRSVD0 (1'd0),
    .CLKRSVD1 (1'd0),
    .CPLLLOCKDETCLK (drp_clk),
    .CPLLLOCKEN (1'd1),
    .CPLLPD (cpll_pd),
    .CPLLREFCLKSEL (3'b001),
    .CPLLRESET (cpll_rst),
    .DMONFIFORESET (1'd0),
    .DMONITORCLK (1'd0),
    .DRPADDR (drp_addr_int[8:0]),
    .DRPCLK (drp_clk),
    .DRPDI (drp_wdata_int),
    .DRPEN (drp_sel_int),
    .DRPWE (drp_wr_int),
    .EVODDPHICALDONE (1'd0),
    .EVODDPHICALSTART (1'd0),
    .EVODDPHIDRDEN (1'd0),
    .EVODDPHIDWREN (1'd0),
    .EVODDPHIXRDEN (1'd0),
    .EVODDPHIXWREN (1'd0),
    .EYESCANMODE (1'd0),
    .EYESCANRESET (1'd0),
    .EYESCANTRIGGER (1'd0),
    .GTGREFCLK (1'd0),
    .GTHRXN (rx_n),
    .GTHRXP (rx_p),
    .GTNORTHREFCLK0 (1'd0),
    .GTNORTHREFCLK1 (1'd0),
    .GTREFCLK0 (ref_clk),
    .GTREFCLK1 (1'd0),
    .GTRESETSEL (1'd0),
    .GTRSVD (15'd0),
    .GTRXRESET (rx_rst),
    .GTSOUTHREFCLK0 (1'd0),
    .GTSOUTHREFCLK1 (1'd0),
    .GTTXRESET (tx_rst),
    .LOOPBACK (3'd0),
    .LPBKRXTXSEREN (1'd0),
    .LPBKTXRXSEREN (1'd0),
    .PCIEEQRXEQADAPTDONE (1'd0),
    .PCIERSTIDLE (1'd0),
    .PCIERSTTXSYNCSTART (1'd0),
    .PCIEUSERRATEDONE (1'd0),
    .PCSRSVDIN (16'd0),
    .PCSRSVDIN2 (5'd0),
    .PMARSVDIN (5'd0),
    .QPLL0CLK (qpll_clk),
    .QPLL0REFCLK (qpll_ref_clk),
    .QPLL1CLK (1'd0),
    .QPLL1REFCLK (1'd0),
    .RESETOVRD (1'd0),
    .RSTCLKENTX (1'd0),
    .RXBUFRESET (1'd0),
    .RXCDRFREQRESET (1'd0),
    .RXCDRHOLD (1'd0),
    .RXCDROVRDEN (1'd0),
    .RXCDRRESET (1'd0),
    .RXCDRRESETRSV (1'd0),
    .RXCHBONDEN (1'd0),
    .RXCHBONDI (5'd0),
    .RXCHBONDLEVEL (2'd0),
    .RXCHBONDMASTER (1'd0),
    .RXCHBONDSLAVE (1'd0),
    .RXCOMMADETEN (1'd1),
    .RXDFEAGCCTRL (2'b01),
    .RXDFEAGCHOLD (1'd0),
    .RXDFEAGCOVRDEN (1'd0),
    .RXDFELFHOLD (1'd0),
    .RXDFELFOVRDEN (1'd0),
    .RXDFELPMRESET (1'd0),
    .RXDFETAP10HOLD (1'd0),
    .RXDFETAP10OVRDEN (1'd0),
    .RXDFETAP11HOLD (1'd0),
    .RXDFETAP11OVRDEN (1'd0),
    .RXDFETAP12HOLD (1'd0),
    .RXDFETAP12OVRDEN (1'd0),
    .RXDFETAP13HOLD (1'd0),
    .RXDFETAP13OVRDEN (1'd0),
    .RXDFETAP14HOLD (1'd0),
    .RXDFETAP14OVRDEN (1'd0),
    .RXDFETAP15HOLD (1'd0),
    .RXDFETAP15OVRDEN (1'd0),
    .RXDFETAP2HOLD (1'd0),
    .RXDFETAP2OVRDEN (1'd0),
    .RXDFETAP3HOLD (1'd0),
    .RXDFETAP3OVRDEN (1'd0),
    .RXDFETAP4HOLD (1'd0),
    .RXDFETAP4OVRDEN (1'd0),
    .RXDFETAP5HOLD (1'd0),
    .RXDFETAP5OVRDEN (1'd0),
    .RXDFETAP6HOLD (1'd0),
    .RXDFETAP6OVRDEN (1'd0),
    .RXDFETAP7HOLD (1'd0),
    .RXDFETAP7OVRDEN (1'd0),
    .RXDFETAP8HOLD (1'd0),
    .RXDFETAP8OVRDEN (1'd0),
    .RXDFETAP9HOLD (1'd0),
    .RXDFETAP9OVRDEN (1'd0),
    .RXDFEUTHOLD (1'd0),
    .RXDFEUTOVRDEN (1'd0),
    .RXDFEVPHOLD (1'd0),
    .RXDFEVPOVRDEN (1'd0),
    .RXDFEVSEN (1'd0),
    .RXDFEXYDEN (1'd1),
    .RXDLYBYPASS (1'd1),
    .RXDLYEN (1'd0),
    .RXDLYOVRDEN (1'd0),
    .RXDLYSRESET (1'd0),
    .RXELECIDLEMODE (2'b11),
    .RXGEARBOXSLIP (1'd0),
    .RXLATCLK (1'd0),
    .RXLPMEN (1'd0),
    .RXLPMGCHOLD (1'd0),
    .RXLPMGCOVRDEN (1'd0),
    .RXLPMHFHOLD (1'd0),
    .RXLPMHFOVRDEN (1'd0),
    .RXLPMLFHOLD (1'd0),
    .RXLPMLFKLOVRDEN (1'd0),
    .RXLPMOSHOLD (1'd0),
    .RXLPMOSOVRDEN (1'd0),
    .RXMCOMMAALIGNEN (rx_comma_align_enb),
    .RXMONITORSEL (2'd0),
    .RXOOBRESET (1'd0),
    .RXOSCALRESET (1'd0),
    .RXOSHOLD (1'd0),
    .RXOSINTCFG (4'b1101),
    .RXOSINTEN (1'd1),
    .RXOSINTHOLD (1'd0),
    .RXOSINTOVRDEN (1'd0),
    .RXOSINTSTROBE (1'd0),
    .RXOSINTTESTOVRDEN (1'd0),
    .RXOSOVRDEN (1'd0),
    .RXOUTCLKSEL (rx_out_clk_sel),
    .RXPCOMMAALIGNEN (rx_comma_align_enb),
    .RXPCSRESET (1'd0),
    .RXPD (2'd0),
    .RXPHALIGN (1'd0),
    .RXPHALIGNEN (1'd0),
    .RXPHDLYPD (1'd1),
    .RXPHDLYRESET (1'd0),
    .RXPHOVRDEN (1'd0),
    .RXPLLCLKSEL (2'b11),
    .RXPMARESET (1'd0),
    .RXPOLARITY (1'd0),
    .RXPRBSCNTRESET (1'd0),
    .RXPRBSSEL (4'd0),
    .RXPROGDIVRESET (1'd0),
    .RXQPIEN (1'd0),
    .RXRATE (rx_rate_p_s),
    .RXRATEMODE (1'd0),
    .RXSLIDE (1'd0),
    .RXSLIPOUTCLK (1'd0),
    .RXSLIPPMA (1'd0),
    .RXSYNCALLIN (1'd0),
    .RXSYNCIN (1'd0),
    .RXSYNCMODE (1'd0),
    .RXSYSCLKSEL (rx_sys_clk_sel),
    .RXUSERRDY (rx_user_ready[3]),
    .RXUSRCLK (rx_clk),
    .RXUSRCLK2 (rx_clk),
    .RX8B10BEN (1'd1),
    .SIGVALIDCLK (1'd0),
    .TSTIN (20'd0),
    .TXBUFDIFFCTRL (3'd0),
    .TXCOMINIT (1'd0),
    .TXCOMSAS (1'd0),
    .TXCOMWAKE (1'd0),
    .TXCTRL0 (16'd0),
    .TXCTRL1 (16'd0),
    .TXCTRL2 ({4'd0, tx_charisk}),
    .TXDATA ({32'd0, tx_data}),
    .TXDATAEXTENDRSVD (8'd0),
    .TXDEEMPH (1'd0),
    .TXDETECTRX (1'd0),
    .TXDIFFCTRL (4'b1100),
    .TXDIFFPD (1'd0),
    .TXDLYBYPASS (1'd1),
    .TXDLYEN (1'd0),
    .TXDLYHOLD (1'd0),
    .TXDLYOVRDEN (1'd0),
    .TXDLYSRESET (1'd0),
    .TXDLYUPDOWN (1'd0),
    .TXELECIDLE (1'd0),
    .TXHEADER (6'd0),
    .TXINHIBIT (1'd0),
    .TXLATCLK (1'd0),
    .TXMAINCURSOR (7'b1000000),
    .TXMARGIN (3'd0),
    .TXOUTCLKSEL (tx_out_clk_sel),
    .TXPCSRESET (1'd0),
    .TXPD (2'd0),
    .TXPDELECIDLEMODE (1'd0),
    .TXPHALIGN (1'd0),
    .TXPHALIGNEN (1'd0),
    .TXPHDLYPD (1'd1),
    .TXPHDLYRESET (1'd0),
    .TXPHDLYTSTCLK (1'd0),
    .TXPHINIT (1'd0),
    .TXPHOVRDEN (1'd0),
    .TXPIPPMEN (1'd0),
    .TXPIPPMOVRDEN (1'd0),
    .TXPIPPMPD (1'd0),
    .TXPIPPMSEL (1'd0),
    .TXPIPPMSTEPSIZE (5'd0),
    .TXPISOPD (1'd0),
    .TXPLLCLKSEL (2'd3),
    .TXPMARESET (1'd0),
    .TXPOLARITY (1'd0),
    .TXPOSTCURSOR (5'd0),
    .TXPOSTCURSORINV (1'd0),
    .TXPRBSFORCEERR (1'd0),
    .TXPRBSSEL (4'd0),
    .TXPRECURSOR (5'd0),
    .TXPRECURSORINV (1'd0),
    .TXPROGDIVRESET (tx_rst),
    .TXQPIBIASEN (1'd0),
    .TXQPISTRONGPDOWN (1'd0),
    .TXQPIWEAKPUP (1'd0),
    .TXRATE (3'd0),
    .TXRATEMODE (1'd0),
    .TXSEQUENCE (7'd0),
    .TXSWING (1'd0),
    .TXSYNCALLIN (1'd0),
    .TXSYNCIN (1'd0),
    .TXSYNCMODE (1'd0),
    .TXSYSCLKSEL (tx_sys_clk_sel),
    .TXUSERRDY (tx_user_ready[3]),
    .TXUSRCLK (tx_clk),
    .TXUSRCLK2 (tx_clk),
    .TX8B10BBYPASS (8'd0),
    .TX8B10BEN (1'd1),
    .BUFGTCE (),
    .BUFGTCEMASK (),
    .BUFGTDIV (),
    .BUFGTRESET (),
    .BUFGTRSTMASK (),
    .CPLLFBCLKLOST (),
    .CPLLLOCK (cpll_locked_s),
    .CPLLREFCLKLOST (),
    .DMONITOROUT (),
    .DRPDO (drp_rdata_s),
    .DRPRDY (drp_ready_s),
    .EYESCANDATAERROR (),
    .GTHTXN (tx_n),
    .GTHTXP (tx_p),
    .GTPOWERGOOD (),
    .GTREFCLKMONITOR (),
    .PCIERATEGEN3 (),
    .PCIERATEIDLE (),
    .PCIERATEQPLLPD (),
    .PCIERATEQPLLRESET (),
    .PCIESYNCTXSYNCDONE (),
    .PCIEUSERGEN3RDY (),
    .PCIEUSERPHYSTATUSRST (),
    .PCIEUSERRATESTART (),
    .PCSRSVDOUT (),
    .PHYSTATUS (),
    .PINRSRVDAS (),
    .RESETEXCEPTION (),
    .RXBUFSTATUS (),
    .RXBYTEISALIGNED (),
    .RXBYTEREALIGN (),
    .RXCDRLOCK (),
    .RXCDRPHDONE (),
    .RXCHANBONDSEQ (),
    .RXCHANISALIGNED (),
    .RXCHANREALIGN (),
    .RXCHBONDO (),
    .RXCLKCORCNT (),
    .RXCOMINITDET (),
    .RXCOMMADET (),
    .RXCOMSASDET (),
    .RXCOMWAKEDET (),
    .RXCTRL0 ({rx_charisk_open_s, rx_charisk}),
    .RXCTRL1 ({rx_disperr_open_s, rx_disperr}),
    .RXCTRL2 (),
    .RXCTRL3 ({rx_notintable_open_s, rx_notintable}),
    .RXDATA ({rx_data_open_s, rx_data}),
    .RXDATAEXTENDRSVD (),
    .RXDATAVALID (),
    .RXDLYSRESETDONE (),
    .RXELECIDLE (),
    .RXHEADER (),
    .RXHEADERVALID (),
    .RXMONITOROUT (),
    .RXOSINTDONE (),
    .RXOSINTSTARTED (),
    .RXOSINTSTROBEDONE (),
    .RXOSINTSTROBESTARTED (),
    .RXOUTCLK (rx_out_clk),
    .RXOUTCLKFABRIC (),
    .RXOUTCLKPCS (),
    .RXPHALIGNDONE (),
    .RXPHALIGNERR (),
    .RXPMARESETDONE (),
    .RXPRBSERR (),
    .RXPRBSLOCKED (),
    .RXPRGDIVRESETDONE (),
    .RXQPISENN (),
    .RXQPISENP (),
    .RXRATEDONE (),
    .RXRECCLKOUT (),
    .RXRESETDONE (rx_rst_done),
    .RXSLIDERDY (),
    .RXSLIPDONE (),
    .RXSLIPOUTCLKRDY (),
    .RXSLIPPMARDY (),
    .RXSTARTOFSEQ (),
    .RXSTATUS (),
    .RXSYNCDONE (),
    .RXSYNCOUT (),
    .RXVALID (),
    .TXBUFSTATUS (),
    .TXCOMFINISH (),
    .TXDLYSRESETDONE (),
    .TXOUTCLK (tx_out_clk),
    .TXOUTCLKFABRIC (),
    .TXOUTCLKPCS (),
    .TXPHALIGNDONE (),
    .TXPHINITDONE (),
    .TXPMARESETDONE (),
    .TXPRGDIVRESETDONE (),
    .TXQPISENN (),
    .TXQPISENP (),
    .TXRATEDONE (),
    .TXRESETDONE (tx_rst_done),
    .TXSYNCDONE (),
    .TXSYNCOUT ());
  end
  endgenerate

endmodule     

// ***************************************************************************
// ***************************************************************************

