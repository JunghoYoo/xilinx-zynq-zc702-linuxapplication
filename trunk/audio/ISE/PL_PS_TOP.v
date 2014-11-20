`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:50 11/20/2014 
// Design Name: 
// Module Name:    PL_PS_TOP 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PL_PS_TOP(
    processing_system7_0_MIO,
    processing_system7_0_PS_SRSTB_pin,
    processing_system7_0_PS_CLK_pin,
    processing_system7_0_PS_PORB_pin,
    processing_system7_0_DDR_Clk,
    processing_system7_0_DDR_Clk_n,
    processing_system7_0_DDR_CKE,
    processing_system7_0_DDR_CS_n,
    processing_system7_0_DDR_RAS_n,
    processing_system7_0_DDR_CAS_n,
    processing_system7_0_DDR_WEB_pin,
    processing_system7_0_DDR_BankAddr,
    processing_system7_0_DDR_Addr,
    processing_system7_0_DDR_ODT,
    processing_system7_0_DDR_DRSTB,
    processing_system7_0_DDR_DQ,
    processing_system7_0_DDR_DM,
    processing_system7_0_DDR_DQS,
    processing_system7_0_DDR_DQS_n,
    processing_system7_0_DDR_VRN,
    processing_system7_0_DDR_VRP,
	 
    axi_i2s_adi_0_BCLK_O_pin,
    axi_i2s_adi_0_LRCLK_O_pin,
    axi_i2s_adi_0_SDATA_O_pin,
    axi_i2s_adi_0_SDATA_I_pin,
	 
	 processing_system7_0_I2C1_SDA_pin,
    processing_system7_0_I2C1_SCL_pin,
	 
    processing_system7_0_UART0_TX_pin,
    processing_system7_0_UART0_RX_pin,
	 
	 CLKIN200_P,
	 CLKIN200_N,
	 CLKOUT12288
  ); 
  
  inout [53:0] processing_system7_0_MIO;
  input processing_system7_0_PS_SRSTB_pin;
  input processing_system7_0_PS_CLK_pin;
  input processing_system7_0_PS_PORB_pin;
  inout processing_system7_0_DDR_Clk;
  inout processing_system7_0_DDR_Clk_n;
  inout processing_system7_0_DDR_CKE;
  inout processing_system7_0_DDR_CS_n;
  inout processing_system7_0_DDR_RAS_n;
  inout processing_system7_0_DDR_CAS_n;
  output processing_system7_0_DDR_WEB_pin;
  inout [2:0] processing_system7_0_DDR_BankAddr;
  inout [14:0] processing_system7_0_DDR_Addr;
  inout processing_system7_0_DDR_ODT;
  inout processing_system7_0_DDR_DRSTB;
  inout [31:0] processing_system7_0_DDR_DQ;
  inout [3:0] processing_system7_0_DDR_DM;
  inout [3:0] processing_system7_0_DDR_DQS;
  inout [3:0] processing_system7_0_DDR_DQS_n;
  inout processing_system7_0_DDR_VRN;
  inout processing_system7_0_DDR_VRP;
  
  output axi_i2s_adi_0_BCLK_O_pin;
  output axi_i2s_adi_0_LRCLK_O_pin;
  output axi_i2s_adi_0_SDATA_O_pin;
  input axi_i2s_adi_0_SDATA_I_pin;
  
  inout processing_system7_0_I2C1_SDA_pin;
  inout processing_system7_0_I2C1_SCL_pin;
  
  output processing_system7_0_UART0_TX_pin;
  input processing_system7_0_UART0_RX_pin;
  
  input CLKIN200_P;
  input CLKIN200_N;

  // ADAU1761 MCLK
  output CLKOUT12288;

  // I2S_Data_CLK
  wire axi_i2s_adi_0_DATA_CLK_I_pin;
  
PS_top PS_top (
    .processing_system7_0_MIO(processing_system7_0_MIO), 
    .processing_system7_0_PS_SRSTB_pin(processing_system7_0_PS_SRSTB_pin), 
    .processing_system7_0_PS_CLK_pin(processing_system7_0_PS_CLK_pin), 
    .processing_system7_0_PS_PORB_pin(processing_system7_0_PS_PORB_pin), 
    .processing_system7_0_DDR_Clk(processing_system7_0_DDR_Clk), 
    .processing_system7_0_DDR_Clk_n(processing_system7_0_DDR_Clk_n), 
    .processing_system7_0_DDR_CKE(processing_system7_0_DDR_CKE), 
    .processing_system7_0_DDR_CS_n(processing_system7_0_DDR_CS_n), 
    .processing_system7_0_DDR_RAS_n(processing_system7_0_DDR_RAS_n), 
    .processing_system7_0_DDR_CAS_n(processing_system7_0_DDR_CAS_n), 
    .processing_system7_0_DDR_WEB_pin(processing_system7_0_DDR_WEB_pin), 
    .processing_system7_0_DDR_BankAddr(processing_system7_0_DDR_BankAddr), 
    .processing_system7_0_DDR_Addr(processing_system7_0_DDR_Addr), 
    .processing_system7_0_DDR_ODT(processing_system7_0_DDR_ODT), 
    .processing_system7_0_DDR_DRSTB(processing_system7_0_DDR_DRSTB), 
    .processing_system7_0_DDR_DQ(processing_system7_0_DDR_DQ), 
    .processing_system7_0_DDR_DM(processing_system7_0_DDR_DM), 
    .processing_system7_0_DDR_DQS(processing_system7_0_DDR_DQS), 
    .processing_system7_0_DDR_DQS_n(processing_system7_0_DDR_DQS_n), 
    .processing_system7_0_DDR_VRN(processing_system7_0_DDR_VRN), 
    .processing_system7_0_DDR_VRP(processing_system7_0_DDR_VRP), 
    
	 .axi_i2s_adi_0_BCLK_O_pin(axi_i2s_adi_0_BCLK_O_pin), 
    .axi_i2s_adi_0_LRCLK_O_pin(axi_i2s_adi_0_LRCLK_O_pin), 
    .axi_i2s_adi_0_SDATA_O_pin(axi_i2s_adi_0_SDATA_O_pin), 
    .axi_i2s_adi_0_SDATA_I_pin(axi_i2s_adi_0_SDATA_I_pin), 
    .axi_i2s_adi_0_DATA_CLK_I_pin(axi_i2s_adi_0_DATA_CLK_I_pin), 
	 
	 
    .processing_system7_0_UART0_TX_pin(processing_system7_0_UART0_TX_pin), 
    .processing_system7_0_UART0_RX_pin(processing_system7_0_UART0_RX_pin),

    .processing_system7_0_I2C1_SDA_pin(processing_system7_0_I2C1_SDA_pin), 
    .processing_system7_0_I2C1_SCL_pin(processing_system7_0_I2C1_SCL_pin)
    );

  CLK12288 CLK12288
   (// Clock in ports
    .CLK_IN1_P(CLKIN200_P),    // IN
    .CLK_IN1_N(CLKIN200_N),    // IN
    // Clock out ports
    .CLK_OUT1(CLKOUT12288),     // OUT
    .CLK_OUT2(axi_i2s_adi_0_DATA_CLK_I_pin),     // OUT
    // Status and control signals
    .RESET(1'd0));       // IN
	 
endmodule
