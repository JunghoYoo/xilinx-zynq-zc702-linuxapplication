//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Sat Dec 26 23:47:01 2015
//Host        : Peter-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (BCLK_O,
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
    GPIO_I,
    GPIO_O,
    GPIO_T,
    I2C1_SCL_I,
    I2C1_SCL_O,
    I2C1_SCL_T,
    I2C1_SDA_I,
    I2C1_SDA_O,
    I2C1_SDA_T,
    LRCLK_O,
    SDATA_I,
    SDATA_O,
    SDIO1_buspow,
    SDIO1_busvolt,
    SDIO1_cdn,
    SDIO1_clk,
    SDIO1_clk_fb,
    SDIO1_led,
    SDIO1_wp,
    UART0_RX,
    UART0_TX,
    clkout12288,
    hdmi_data,
    hdmi_data_e,
    hdmi_hsync,
    hdmi_out_clk,
    hdmi_vsync,
    iic_main_scl_io,
    iic_main_sda_io,
    ps_intr_0,
    ps_intr_1,
    ps_intr_10,
    ps_intr_11,
    ps_intr_12,
    ps_intr_13,
    ps_intr_2,
    ps_intr_3,
    ps_intr_4,
    ps_intr_5,
    ps_intr_6,
    ps_intr_7,
    ps_intr_8,
    ps_intr_9,
    sdio1_cmd_i,
    sdio1_cmd_o,
    sdio1_cmd_t,
    sdio1_data_i,
    sdio1_data_o,
    sdio1_data_t,
    spdif,
    spi0_io0_io,
    spi0_io1_io,
    spi0_sck_io,
    spi0_ss1_o,
    spi0_ss2_o,
    spi0_ss_o,
    spi0_ss_t);
  output [0:0]BCLK_O;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [7:0]GPIO_I;
  output [7:0]GPIO_O;
  output [7:0]GPIO_T;
  input I2C1_SCL_I;
  output I2C1_SCL_O;
  output I2C1_SCL_T;
  input I2C1_SDA_I;
  output I2C1_SDA_O;
  output I2C1_SDA_T;
  output [0:0]LRCLK_O;
  input [0:0]SDATA_I;
  output [0:0]SDATA_O;
  output SDIO1_buspow;
  output [2:0]SDIO1_busvolt;
  input SDIO1_cdn;
  output SDIO1_clk;
  input SDIO1_clk_fb;
  output SDIO1_led;
  input SDIO1_wp;
  input UART0_RX;
  output UART0_TX;
  output clkout12288;
  output [15:0]hdmi_data;
  output hdmi_data_e;
  output hdmi_hsync;
  output hdmi_out_clk;
  output hdmi_vsync;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  input ps_intr_0;
  input ps_intr_1;
  input ps_intr_10;
  input ps_intr_11;
  input ps_intr_12;
  input ps_intr_13;
  input ps_intr_2;
  input ps_intr_3;
  input ps_intr_4;
  input ps_intr_5;
  input ps_intr_6;
  input ps_intr_7;
  input ps_intr_8;
  input ps_intr_9;
  input sdio1_cmd_i;
  output sdio1_cmd_o;
  output sdio1_cmd_t;
  input [3:0]sdio1_data_i;
  output [3:0]sdio1_data_o;
  output [3:0]sdio1_data_t;
  output spdif;
  inout spi0_io0_io;
  inout spi0_io1_io;
  inout spi0_sck_io;
  output spi0_ss1_o;
  output spi0_ss2_o;
  output spi0_ss_o;
  output spi0_ss_t;

  wire [0:0]BCLK_O;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]GPIO_I;
  wire [7:0]GPIO_O;
  wire [7:0]GPIO_T;
  wire I2C1_SCL_I;
  wire I2C1_SCL_O;
  wire I2C1_SCL_T;
  wire I2C1_SDA_I;
  wire I2C1_SDA_O;
  wire I2C1_SDA_T;
  wire [0:0]LRCLK_O;
  wire [0:0]SDATA_I;
  wire [0:0]SDATA_O;
  wire SDIO1_buspow;
  wire [2:0]SDIO1_busvolt;
  wire SDIO1_cdn;
  wire SDIO1_clk;
  wire SDIO1_clk_fb;
  wire SDIO1_led;
  wire SDIO1_wp;
  wire UART0_RX;
  wire UART0_TX;
  wire clkout12288;
  wire [15:0]hdmi_data;
  wire hdmi_data_e;
  wire hdmi_hsync;
  wire hdmi_out_clk;
  wire hdmi_vsync;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire ps_intr_0;
  wire ps_intr_1;
  wire ps_intr_10;
  wire ps_intr_11;
  wire ps_intr_12;
  wire ps_intr_13;
  wire ps_intr_2;
  wire ps_intr_3;
  wire ps_intr_4;
  wire ps_intr_5;
  wire ps_intr_6;
  wire ps_intr_7;
  wire ps_intr_8;
  wire ps_intr_9;
  wire sdio1_cmd_i;
  wire sdio1_cmd_o;
  wire sdio1_cmd_t;
  wire [3:0]sdio1_data_i;
  wire [3:0]sdio1_data_o;
  wire [3:0]sdio1_data_t;
  wire spdif;
  wire spi0_io0_i;
  wire spi0_io0_io;
  wire spi0_io0_o;
  wire spi0_io0_t;
  wire spi0_io1_i;
  wire spi0_io1_io;
  wire spi0_io1_o;
  wire spi0_io1_t;
  wire spi0_sck_i;
  wire spi0_sck_io;
  wire spi0_sck_o;
  wire spi0_sck_t;
  wire spi0_ss1_o;
  wire spi0_ss2_o;
  wire spi0_ss_o;
  wire spi0_ss_t;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF spi0_io0_iobuf
       (.I(spi0_io0_o),
        .IO(spi0_io0_io),
        .O(spi0_io0_i),
        .T(spi0_io0_t));
  IOBUF spi0_io1_iobuf
       (.I(spi0_io1_o),
        .IO(spi0_io1_io),
        .O(spi0_io1_i),
        .T(spi0_io1_t));
  IOBUF spi0_sck_iobuf
       (.I(spi0_sck_o),
        .IO(spi0_sck_io),
        .O(spi0_sck_i),
        .T(spi0_sck_t));
  system system_i
       (.BCLK_O(BCLK_O),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_I(GPIO_I),
        .GPIO_O(GPIO_O),
        .GPIO_T(GPIO_T),
        .I2C1_SCL_I(I2C1_SCL_I),
        .I2C1_SCL_O(I2C1_SCL_O),
        .I2C1_SCL_T(I2C1_SCL_T),
        .I2C1_SDA_I(I2C1_SDA_I),
        .I2C1_SDA_O(I2C1_SDA_O),
        .I2C1_SDA_T(I2C1_SDA_T),
        .IIC_MAIN_scl_i(iic_main_scl_i),
        .IIC_MAIN_scl_o(iic_main_scl_o),
        .IIC_MAIN_scl_t(iic_main_scl_t),
        .IIC_MAIN_sda_i(iic_main_sda_i),
        .IIC_MAIN_sda_o(iic_main_sda_o),
        .IIC_MAIN_sda_t(iic_main_sda_t),
        .LRCLK_O(LRCLK_O),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .SDIO1_buspow(SDIO1_buspow),
        .SDIO1_busvolt(SDIO1_busvolt),
        .SDIO1_cdn(SDIO1_cdn),
        .SDIO1_clk(SDIO1_clk),
        .SDIO1_clk_fb(SDIO1_clk_fb),
        .SDIO1_cmd_i(sdio1_cmd_i),
        .SDIO1_cmd_o(sdio1_cmd_o),
        .SDIO1_data_i(sdio1_data_i),
        .SDIO1_data_o(sdio1_data_o),
        .SDIO1_led(SDIO1_led),
        .SDIO1_wp(SDIO1_wp),
        .SPI0_io0_i(spi0_io0_i),
        .SPI0_io0_o(spi0_io0_o),
        .SPI0_io0_t(spi0_io0_t),
        .SPI0_io1_i(spi0_io1_i),
        .SPI0_io1_o(spi0_io1_o),
        .SPI0_io1_t(spi0_io1_t),
        .SPI0_sck_i(spi0_sck_i),
        .SPI0_sck_o(spi0_sck_o),
        .SPI0_sck_t(spi0_sck_t),
        .SPI0_ss1_o(spi0_ss1_o),
        .SPI0_ss2_o(spi0_ss2_o),
        .SPI0_ss_o(spi0_ss_o),
        .SPI0_ss_t(spi0_ss_t),
        .UART0_RX(UART0_RX),
        .UART0_TX(UART0_TX),
        .clkout12288(clkout12288),
        .hdmi_data(hdmi_data),
        .hdmi_data_e(hdmi_data_e),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_out_clk(hdmi_out_clk),
        .hdmi_vsync(hdmi_vsync),
        .ps_intr_0(ps_intr_0),
        .ps_intr_1(ps_intr_1),
        .ps_intr_10(ps_intr_10),
        .ps_intr_11(ps_intr_11),
        .ps_intr_12(ps_intr_12),
        .ps_intr_13(ps_intr_13),
        .ps_intr_2(ps_intr_2),
        .ps_intr_3(ps_intr_3),
        .ps_intr_4(ps_intr_4),
        .ps_intr_5(ps_intr_5),
        .ps_intr_6(ps_intr_6),
        .ps_intr_7(ps_intr_7),
        .ps_intr_8(ps_intr_8),
        .ps_intr_9(ps_intr_9),
        .sdio1_cmd_t(sdio1_cmd_t),
        .sdio1_data_t(sdio1_data_t),
        .spdif(spdif));
endmodule
