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

`timescale 1ns/100ps

module system_top (

  DDR_addr,
  DDR_ba,
  DDR_cas_n,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cke,
  DDR_cs_n,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  DDR_odt,
  DDR_ras_n,
  DDR_reset_n,
  DDR_we_n,

  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_mio,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  FIXED_IO_ps_srstb,

  gpio_io,

  BCLK_O,
  LRCLK_O,
  SDATA_I,
  SDATA_O,

  hdmi_out_clk,
  hdmi_vsync,
  hdmi_hsync,
  hdmi_data_e,
  hdmi_data,

  spdif,

  UART0_TX,
  UART0_RX,

  iic0_scl,
  iic0_sda,
  
  iic1_scl,
  iic1_sda,
  
  clkout12288,
  
  spi_io0_io,
  spi_io1_io,
  spi_sck_io,
  spi_ss_o,
  
  spi_ss_t, // not used, but keep float to normal operation
  spi_ss1_o, // not used, but keep float to normal operation
  spi_ss2_o, // not used, but keep float to normal operation
  
  CONV,
  
  sdio1_cmd_io,
  sdio1_data_io,
  
  sdio1_cdn,
  sdio1_clk,
  sdio1_wp,
  
  // TFT LCD
  VGA_INTF_clk,
  VGA_INTF_de,
  VGA_INTF_dps,
  VGA_INTF_hsync,
  VGA_INTF_vsync,
  VGA_INTF_red,
  VGA_INTF_green,
  VGA_INTF_blue  
  );

  inout   [14:0]  DDR_addr;
  inout   [ 2:0]  DDR_ba;
  inout           DDR_cas_n;
  inout           DDR_ck_n;
  inout           DDR_ck_p;
  inout           DDR_cke;
  inout           DDR_cs_n;
  inout   [ 3:0]  DDR_dm;
  inout   [31:0]  DDR_dq;
  inout   [ 3:0]  DDR_dqs_n;
  inout   [ 3:0]  DDR_dqs_p;
  inout           DDR_odt;
  inout           DDR_ras_n;
  inout           DDR_reset_n;
  inout           DDR_we_n;

  inout           FIXED_IO_ddr_vrn;
  inout           FIXED_IO_ddr_vrp;
  inout   [53:0]  FIXED_IO_mio;
  inout           FIXED_IO_ps_clk;
  inout           FIXED_IO_ps_porb;
  inout           FIXED_IO_ps_srstb;

  inout   [7:0]  gpio_io;

  output          hdmi_out_clk;
  output          hdmi_vsync;
  output          hdmi_hsync;
  output          hdmi_data_e;
  output  [15:0]  hdmi_data;

  output          spdif;

  inout iic0_scl;
  inout iic0_sda;

  inout iic1_scl;
  inout iic1_sda;

  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  input [0:0]SDATA_I;
  output [0:0]SDATA_O;
  
  input UART0_RX;
  output UART0_TX;
  output clkout12288;

  inout     spi_io0_io;
  inout     spi_io1_io;
  inout     spi_sck_io;
  output    spi_ss_o; 
  output    spi_ss1_o;  // not used, but keep external pin to normal operation
  output    spi_ss2_o;  // not used, but keep external pin to normal operation
  output    spi_ss_t;   // not used, but keep external pin to normal operation

  input     CONV;

  inout sdio1_cmd_io;
  inout [3:0]sdio1_data_io;
  input sdio1_cdn;
  output sdio1_clk;
  input sdio1_wp;
  
  output VGA_INTF_clk;
  output VGA_INTF_de;
  output VGA_INTF_dps;
  output VGA_INTF_hsync;
  output VGA_INTF_vsync;
  output [7:0]VGA_INTF_red;
  output [7:0]VGA_INTF_green;
  output [7:0]VGA_INTF_blue;    
  // internal signals

  wire    [7:0]  gpio_i;
  wire    [7:0]  gpio_o;
  wire    [7:0]  gpio_t;

  wire    [12:0]  ps_intrs;

  wire I2C1_SCL_I;
  wire I2C1_SCL_O;
  wire I2C1_SCL_T;
  
  wire I2C1_SDA_I;
  wire I2C1_SDA_O;
  wire I2C1_SDA_T;
  
  wire sdio1_clk_fb;
  wire sdio1_buspow;
  wire [2:0]sdio1_busvolt;
  wire sdio1_led;

  wire sdio1_cmd_i;
  wire sdio1_cmd_o;
  wire sdio1_cmd_t;
  wire sdio1_cmd_t_n;
  wire [3:0]sdio1_data_i;
  wire [3:0]sdio1_data_o;
  wire [3:0]sdio1_data_t;
  wire [3:0]sdio1_data_t_n;
  
  // AR# 47874 
  assign sdio1_cmd_t_n      = ~sdio1_cmd_t;
  assign sdio1_data_t_n[3]  = ~sdio1_data_t[3];
  assign sdio1_data_t_n[2]  = ~sdio1_data_t[2];
  assign sdio1_data_t_n[1]  = ~sdio1_data_t[1];
  assign sdio1_data_t_n[0]  = ~sdio1_data_t[0];
  
  // instantiations
  IOBUF I2C1_SCL_IOBUF
       (.I(I2C1_SCL_O),
        .IO(iic1_scl),
        .O(I2C1_SCL_I),
        .T(I2C1_SCL_T));
        
  IOBUF I2C1_SDA_IOBUF
       (.I(I2C1_SDA_O),
        .IO(iic1_sda),
        .O(I2C1_SDA_I),
        .T(I2C1_SDA_T));

   IOBUF #(
      .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("DEFAULT") // Specify the I/O standard
   ) IOBUF_SDIO1_CMD (
      .O(sdio1_cmd_i),     // Buffer output
      .IO(sdio1_cmd_io),   // Buffer inout port (connect directly to top-level port)
      .I(sdio1_cmd_o),     // Buffer input
      .T(sdio1_cmd_t_n)      // 3-state enable input, high=input, low=output
   );
  
   IOBUF #(
      .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("DEFAULT") // Specify the I/O standard
   ) IOBUF_SDIO1_DATA0 (
      .O(sdio1_data_i[0]),     // Buffer output
      .IO(sdio1_data_io[0]),   // Buffer inout port (connect directly to top-level port)
      .I(sdio1_data_o[0]),     // Buffer input
      .T(sdio1_data_t_n[0])      // 3-state enable input, high=input, low=output
   );  
        
   IOBUF #(
      .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("DEFAULT") // Specify the I/O standard
   ) IOBUF_SDIO1_DATA1 (
      .O(sdio1_data_i[1]),     // Buffer output
      .IO(sdio1_data_io[1]),   // Buffer inout port (connect directly to top-level port)
      .I(sdio1_data_o[1]),     // Buffer input
      .T(sdio1_data_t_n[1])      // 3-state enable input, high=input, low=output
   );  

   IOBUF #(
      .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("DEFAULT") // Specify the I/O standard
   ) IOBUF_SDIO1_DATA2 (
      .O(sdio1_data_i[2]),     // Buffer output
      .IO(sdio1_data_io[2]),   // Buffer inout port (connect directly to top-level port)
      .I(sdio1_data_o[2]),     // Buffer input
      .T(sdio1_data_t_n[2])      // 3-state enable input, high=input, low=output
   );  

   IOBUF #(
      .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("DEFAULT") // Specify the I/O standard
   ) IOBUF_SDIO1_DATA3 (
      .O(sdio1_data_i[3]),     // Buffer output
      .IO(sdio1_data_io[3]),   // Buffer inout port (connect directly to top-level port)
      .I(sdio1_data_o[3]),     // Buffer input
      .T(sdio1_data_t_n[3])      // 3-state enable input, high=input, low=output
   );  
   
   ad_iobuf #(
    .DATA_WIDTH(8)
  ) i_gpio_bd (
    .dt(gpio_t),
    .di(gpio_o),
    .do(gpio_i),
    .dio(gpio_io));
    
  // internal feedback
  assign sdio1_clk_fb = sdio1_clk;

  system_wrapper i_system_wrapper (
    .DDR_addr (DDR_addr),
    .DDR_ba (DDR_ba),
    .DDR_cas_n (DDR_cas_n),
    .DDR_ck_n (DDR_ck_n),
    .DDR_ck_p (DDR_ck_p),
    .DDR_cke (DDR_cke),
    .DDR_cs_n (DDR_cs_n),
    .DDR_dm (DDR_dm),
    .DDR_dq (DDR_dq),
    .DDR_dqs_n (DDR_dqs_n),
    .DDR_dqs_p (DDR_dqs_p),
    .DDR_odt (DDR_odt),
    .DDR_ras_n (DDR_ras_n),
    .DDR_reset_n (DDR_reset_n),
    .DDR_we_n (DDR_we_n),
    .FIXED_IO_ddr_vrn (FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp (FIXED_IO_ddr_vrp),
    .FIXED_IO_mio (FIXED_IO_mio),
    .FIXED_IO_ps_clk (FIXED_IO_ps_clk),
    .FIXED_IO_ps_porb (FIXED_IO_ps_porb),
    .FIXED_IO_ps_srstb (FIXED_IO_ps_srstb),
    
    .GPIO_I (gpio_i),
    .GPIO_O (gpio_o),
    .GPIO_T (gpio_t),
    
    .hdmi_data (hdmi_data),
    .hdmi_data_e (hdmi_data_e),
    .hdmi_hsync (hdmi_hsync),
    .hdmi_out_clk (hdmi_out_clk),
    .hdmi_vsync (hdmi_vsync),

    .I2C1_SCL_I(I2C1_SCL_I),
    .I2C1_SCL_O(I2C1_SCL_O),
    .I2C1_SCL_T(I2C1_SCL_T),
    .I2C1_SDA_I(I2C1_SDA_I),
    .I2C1_SDA_O(I2C1_SDA_O),
    .I2C1_SDA_T(I2C1_SDA_T),
    
    .iic_main_scl_io(iic0_scl),
    .iic_main_sda_io(iic0_sda),
    
    .BCLK_O(BCLK_O),
    .LRCLK_O(LRCLK_O),
    .SDATA_I(SDATA_I),
    .SDATA_O(SDATA_O),
    
    .UART0_RX(UART0_RX),
    .UART0_TX(UART0_TX),
    .clkout12288(clkout12288),

    .spi0_io0_io(spi_io0_io), // SPI_MOSI
    .spi0_io1_io(spi_io1_io), // SPI_MISO
    .spi0_sck_io(spi_sck_io),
    
    .spi0_ss_o(spi_ss_o),
    .spi0_ss_t(spi_ss_t),
    
    .spi0_ss1_o(spi_ss1_o),
    .spi0_ss2_o(spi_ss2_o), 

    .SDIO1_BUSPOW(sdio1_buspow),
    .SDIO1_BUSVOLT(sdio1_busvolt),
    .SDIO1_LED(sdio1_led),

    .SDIO1_CDN(sdio1_cdn),
    .SDIO1_CLK(sdio1_clk),
    .SDIO1_CLK_FB(sdio1_clk_fb),
    .SDIO1_WP(sdio1_wp),

    .SDIO1_CMD_I(sdio1_cmd_i),
    .SDIO1_CMD_O(sdio1_cmd_o),
    .SDIO1_CMD_T(sdio1_cmd_t),
    .SDIO1_DATA_I(sdio1_data_i),
    .SDIO1_DATA_O(sdio1_data_o),
    .SDIO1_DATA_T(sdio1_data_t),

    .VGA_INTF_clk(VGA_INTF_clk),
    .VGA_INTF_de(VGA_INTF_de),
    .VGA_INTF_dps(VGA_INTF_dps),
    .VGA_INTF_hsync(VGA_INTF_hsync),
    .VGA_INTF_vsync(VGA_INTF_vsync),
    .VGA_INTF_red(VGA_INTF_red),
    .VGA_INTF_green(VGA_INTF_green),
    .VGA_INTF_blue(VGA_INTF_blue),
                
    .ps_intr_0 (ps_intrs[0]),
    .ps_intr_1 (ps_intrs[1]),
    .ps_intr_2 (ps_intrs[2]),
    .ps_intr_3 (ps_intrs[3]),
    .ps_intr_4 (ps_intrs[4]),
    .ps_intr_5 (ps_intrs[5]),
    .ps_intr_6 (ps_intrs[6]),
    .ps_intr_7 (ps_intrs[7]),
    .ps_intr_8 (ps_intrs[8]),
    .ps_intr_9 (ps_intrs[9]),
    .ps_intr_10 (ps_intrs[10]),
    .ps_intr_11 (ps_intrs[11]),
    .ps_intr_12 (ps_intrs[12]),

    .spdif (spdif));

endmodule

// ***************************************************************************
// ***************************************************************************
