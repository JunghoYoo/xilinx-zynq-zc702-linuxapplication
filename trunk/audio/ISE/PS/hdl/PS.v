//-----------------------------------------------------------------------------
// PS.v
//-----------------------------------------------------------------------------

module PS
  (
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
    axi_i2s_adi_0_DATA_CLK_I_pin,
    processing_system7_0_UART0_TX_pin,
    processing_system7_0_UART0_RX_pin,
    processing_system7_0_I2C1_SDA_pin,
    processing_system7_0_I2C1_SCL_pin
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
  input axi_i2s_adi_0_DATA_CLK_I_pin;
  output processing_system7_0_UART0_TX_pin;
  input processing_system7_0_UART0_RX_pin;
  inout processing_system7_0_I2C1_SDA_pin;
  inout processing_system7_0_I2C1_SCL_pin;

  // Internal signals

  wire [0:0] axi_i2s_adi_0_BCLK_O;
  wire axi_i2s_adi_0_DMA_REQ_RX_DAREADY;
  wire axi_i2s_adi_0_DMA_REQ_RX_DRLAST;
  wire [1:0] axi_i2s_adi_0_DMA_REQ_RX_DRTYPE;
  wire axi_i2s_adi_0_DMA_REQ_RX_DRVALID;
  wire [0:0] axi_i2s_adi_0_LRCLK_O;
  wire [0:0] axi_i2s_adi_0_SDATA_I;
  wire [0:0] axi_i2s_adi_0_SDATA_O;
  wire [31:0] axi_interconnect_1_M_ARADDR;
  wire [0:0] axi_interconnect_1_M_ARESETN;
  wire [0:0] axi_interconnect_1_M_ARREADY;
  wire [0:0] axi_interconnect_1_M_ARVALID;
  wire [31:0] axi_interconnect_1_M_AWADDR;
  wire [0:0] axi_interconnect_1_M_AWREADY;
  wire [0:0] axi_interconnect_1_M_AWVALID;
  wire [0:0] axi_interconnect_1_M_BREADY;
  wire [1:0] axi_interconnect_1_M_BRESP;
  wire [0:0] axi_interconnect_1_M_BVALID;
  wire [31:0] axi_interconnect_1_M_RDATA;
  wire [0:0] axi_interconnect_1_M_RREADY;
  wire [1:0] axi_interconnect_1_M_RRESP;
  wire [0:0] axi_interconnect_1_M_RVALID;
  wire [31:0] axi_interconnect_1_M_WDATA;
  wire [0:0] axi_interconnect_1_M_WREADY;
  wire [3:0] axi_interconnect_1_M_WSTRB;
  wire [0:0] axi_interconnect_1_M_WVALID;
  wire [31:0] axi_interconnect_1_S_ARADDR;
  wire [1:0] axi_interconnect_1_S_ARBURST;
  wire [3:0] axi_interconnect_1_S_ARCACHE;
  wire [11:0] axi_interconnect_1_S_ARID;
  wire [7:0] axi_interconnect_1_S_ARLEN;
  wire [1:0] axi_interconnect_1_S_ARLOCK;
  wire [2:0] axi_interconnect_1_S_ARPROT;
  wire [3:0] axi_interconnect_1_S_ARQOS;
  wire [0:0] axi_interconnect_1_S_ARREADY;
  wire [2:0] axi_interconnect_1_S_ARSIZE;
  wire [0:0] axi_interconnect_1_S_ARVALID;
  wire [31:0] axi_interconnect_1_S_AWADDR;
  wire [1:0] axi_interconnect_1_S_AWBURST;
  wire [3:0] axi_interconnect_1_S_AWCACHE;
  wire [11:0] axi_interconnect_1_S_AWID;
  wire [7:0] axi_interconnect_1_S_AWLEN;
  wire [1:0] axi_interconnect_1_S_AWLOCK;
  wire [2:0] axi_interconnect_1_S_AWPROT;
  wire [3:0] axi_interconnect_1_S_AWQOS;
  wire [0:0] axi_interconnect_1_S_AWREADY;
  wire [2:0] axi_interconnect_1_S_AWSIZE;
  wire [0:0] axi_interconnect_1_S_AWVALID;
  wire [11:0] axi_interconnect_1_S_BID;
  wire [0:0] axi_interconnect_1_S_BREADY;
  wire [1:0] axi_interconnect_1_S_BRESP;
  wire [0:0] axi_interconnect_1_S_BVALID;
  wire [31:0] axi_interconnect_1_S_RDATA;
  wire [11:0] axi_interconnect_1_S_RID;
  wire [0:0] axi_interconnect_1_S_RLAST;
  wire [0:0] axi_interconnect_1_S_RREADY;
  wire [1:0] axi_interconnect_1_S_RRESP;
  wire [0:0] axi_interconnect_1_S_RVALID;
  wire [31:0] axi_interconnect_1_S_WDATA;
  wire [11:0] axi_interconnect_1_S_WID;
  wire [0:0] axi_interconnect_1_S_WLAST;
  wire [0:0] axi_interconnect_1_S_WREADY;
  wire [3:0] axi_interconnect_1_S_WSTRB;
  wire [0:0] axi_interconnect_1_S_WVALID;
  wire net_axi_i2s_adi_0_DATA_CLK_I_pin;
  wire net_gnd0;
  wire [0:0] net_gnd1;
  wire [1:0] net_gnd2;
  wire [2:0] net_gnd3;
  wire [3:0] net_gnd4;
  wire [4:0] net_gnd5;
  wire [5:0] net_gnd6;
  wire [7:0] net_gnd8;
  wire [11:0] net_gnd12;
  wire [31:0] net_gnd32;
  wire [63:0] net_gnd64;
  wire processing_system7_0_DDR_WEB;
  wire processing_system7_0_DMA1_DAREADY;
  wire [1:0] processing_system7_0_DMA1_DATYPE;
  wire processing_system7_0_DMA1_DAVALID;
  wire processing_system7_0_DMA1_DRLAST;
  wire processing_system7_0_DMA1_DRREADY;
  wire [1:0] processing_system7_0_DMA1_DRTYPE;
  wire processing_system7_0_DMA1_DRVALID;
  wire processing_system7_0_DMA1_RSTN;
  wire [1:0] processing_system7_0_DMA2_DATYPE;
  wire processing_system7_0_DMA2_DAVALID;
  wire processing_system7_0_DMA2_DRREADY;
  wire processing_system7_0_DMA2_RSTN;
  wire [0:0] processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_I2C1_SCL_I;
  wire processing_system7_0_I2C1_SCL_O;
  wire processing_system7_0_I2C1_SCL_T;
  wire processing_system7_0_I2C1_SDA_I;
  wire processing_system7_0_I2C1_SDA_O;
  wire processing_system7_0_I2C1_SDA_T;
  wire processing_system7_0_PS_CLK;
  wire processing_system7_0_PS_PORB;
  wire processing_system7_0_PS_SRSTB;
  wire processing_system7_0_UART0_RX;
  wire processing_system7_0_UART0_TX;

  // Internal assignments

  assign processing_system7_0_PS_SRSTB = processing_system7_0_PS_SRSTB_pin;
  assign processing_system7_0_PS_CLK = processing_system7_0_PS_CLK_pin;
  assign processing_system7_0_PS_PORB = processing_system7_0_PS_PORB_pin;
  assign processing_system7_0_DDR_WEB_pin = processing_system7_0_DDR_WEB;
  assign axi_i2s_adi_0_BCLK_O_pin = axi_i2s_adi_0_BCLK_O[0];
  assign axi_i2s_adi_0_LRCLK_O_pin = axi_i2s_adi_0_LRCLK_O[0];
  assign axi_i2s_adi_0_SDATA_O_pin = axi_i2s_adi_0_SDATA_O[0];
  assign axi_i2s_adi_0_SDATA_I[0] = axi_i2s_adi_0_SDATA_I_pin;
  assign net_axi_i2s_adi_0_DATA_CLK_I_pin = axi_i2s_adi_0_DATA_CLK_I_pin;
  assign processing_system7_0_UART0_TX_pin = processing_system7_0_UART0_TX;
  assign processing_system7_0_UART0_RX = processing_system7_0_UART0_RX_pin;
  assign net_gnd0 = 1'b0;
  assign net_gnd1[0:0] = 1'b0;
  assign net_gnd12[11:0] = 12'b000000000000;
  assign net_gnd2[1:0] = 2'b00;
  assign net_gnd3[2:0] = 3'b000;
  assign net_gnd32[31:0] = 32'b00000000000000000000000000000000;
  assign net_gnd4[3:0] = 4'b0000;
  assign net_gnd5[4:0] = 5'b00000;
  assign net_gnd6[5:0] = 6'b000000;
  assign net_gnd64[63:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  assign net_gnd8[7:0] = 8'b00000000;

  (* CORE_GENERATION_INFO = "processing_system7_0,processing_system7,{C_DDR_V4.00.A_C_S_AXI_HP3_HIGHADDR = 0x3FFFFFFF,C_DDR_V4.00.A_C_S_AXI_HP2_HIGHADDR = 0x3FFFFFFF,C_DDR_V4.00.A_C_S_AXI_HP1_HIGHADDR = 0x3FFFFFFF,C_DDR_V4.00.A_C_S_AXI_HP0_HIGHADDR = 0x3FFFFFFF,C_DDR_V4.00.A_C_S_AXI_HP3_BASEADDR = 0x00000000,C_DDR_V4.00.A_C_S_AXI_HP2_BASEADDR = 0x00000000,C_DDR_V4.00.A_C_S_AXI_HP1_BASEADDR = 0x00000000,C_DDR_V4.00.A_C_S_AXI_HP0_BASEADDR = 0x00000000,C_GPIO_PERIPHERAL_ENABLE = 1,C_FPGA3_PERIPHERAL_FREQMHZ = 100.000000,C_FPGA2_PERIPHERAL_FREQMHZ = 100.000000,C_FPGA1_PERIPHERAL_FREQMHZ = 100.000000,C_FPGA0_PERIPHERAL_FREQMHZ = 100.000000,C_APU_PERIPHERAL_FREQMHZ = 666.666666,C_PRESET_GLOBAL_CONFIG = Default,C_PRESET_GLOBAL_DEFAULT = powerup,C_ENET0_PERIPHERAL_FREQMHZ = 100 Mbps,C_SDIO_PERIPHERAL_FREQMHZ = 50,C_CAN_PERIPHERAL_FREQMHZ = 23.8095,C_UART_PERIPHERAL_FREQMHZ = 50,C_PRESET_BANK0_VOLTAGE = LVCMOS 1.8V,C_PRESET_FPGA_SPEED = -1,C_PRESET_BANK1_VOLTAGE = LVCMOS 1.8V,C_PRESET_FPGA_PARTNUMBER = xc7z020clg484-1,C_TTC0_PERIPHERAL_ENABLE = 1,C_ENET1_RESET_IO = -1,C_USB0_RESET_IO = MIO 7,C_USB0_PERIPHERAL_ENABLE = 1,C_USB0_RESET_ENABLE = 1,C_USB1_RESET_IO = -1,C_QSPI_GRP_FBCLK_ENABLE = 1,C_QSPI_PERIPHERAL_ENABLE = 1,C_WDT_PERIPHERAL_ENABLE = 1,C_PJTAG_PERIPHERAL_ENABLE = 0,C_MIO_MIO[3]_SLEW = slow,C_MIO_MIO[2]_PULLUP = disabled,C_MIO_MIO[2]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[1]_SLEW = slow,C_MIO_MIO[0]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[5]_PULLUP = disabled,C_MIO_MIO[5]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[5]_SLEW = slow,C_MIO_MIO[4]_PULLUP = disabled,C_MIO_MIO[4]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[4]_SLEW = slow,C_MIO_MIO[3]_PULLUP = disabled,C_MIO_MIO[3]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[2]_SLEW = slow,C_MIO_MIO[1]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[0]_SLEW = slow,C_MIO_MIO[7]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[7]_PULLUP = disabled,C_MIO_MIO[9]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[8]_PULLUP = disabled,C_MIO_MIO[8]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[6]_SLEW = slow,C_MIO_MIO[6]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[6]_PULLUP = disabled,C_MIO_MIO[16]_IOTYPE = HSTL 1.8V,C_MIO_MIO[15]_SLEW = slow,C_MIO_MIO[14]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[12]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[10]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[16]_SLEW = slow,C_MIO_MIO[15]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[13]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[11]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[17]_SLEW = slow,C_MIO_MIO[20]_IOTYPE = HSTL 1.8V,C_MIO_MIO[20]_SLEW = slow,C_MIO_MIO[19]_IOTYPE = HSTL 1.8V,C_MIO_MIO[19]_SLEW = slow,C_MIO_MIO[18]_IOTYPE = HSTL 1.8V,C_MIO_MIO[18]_SLEW = slow,C_MIO_MIO[17]_IOTYPE = HSTL 1.8V,C_MIO_MIO[22]_IOTYPE = HSTL 1.8V,C_MIO_MIO[21]_SLEW = slow,C_MIO_MIO[21]_IOTYPE = HSTL 1.8V,C_MIO_MIO[22]_SLEW = slow,C_MIO_MIO[23]_SLEW = slow,C_MIO_MIO[25]_SLEW = slow,C_MIO_MIO[24]_SLEW = slow,C_MIO_MIO[23]_IOTYPE = HSTL 1.8V,C_MIO_MIO[25]_IOTYPE = HSTL 1.8V,C_MIO_MIO[24]_IOTYPE = HSTL 1.8V,C_MIO_MIO[30]_SLEW = slow,C_MIO_MIO[29]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[27]_SLEW = slow,C_MIO_MIO[26]_IOTYPE = HSTL 1.8V,C_MIO_MIO[30]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[29]_SLEW = slow,C_MIO_MIO[28]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[26]_SLEW = slow,C_MIO_MIO[28]_SLEW = slow,C_MIO_MIO[27]_IOTYPE = HSTL 1.8V,C_MIO_MIO[32]_SLEW = slow,C_MIO_MIO[31]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[32]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[31]_SLEW = slow,C_MIO_MIO[33]_SLEW = slow,C_MIO_MIO[39]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[39]_SLEW = slow,C_MIO_MIO[38]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[38]_SLEW = slow,C_MIO_MIO[37]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[36]_SLEW = slow,C_MIO_MIO[35]_SLEW = slow,C_MIO_MIO[34]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[37]_SLEW = slow,C_MIO_MIO[36]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[35]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[33]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[34]_SLEW = slow,C_MIO_MIO[40]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[40]_SLEW = slow,C_MIO_MIO[43]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[43]_SLEW = slow,C_MIO_MIO[42]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[42]_SLEW = slow,C_MIO_MIO[41]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[41]_SLEW = slow,C_MIO_MIO[49]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[53]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[51]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[52]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[50]_IOTYPE = LVCMOS 1.8V,C_UIPARAM_DDR_MEMORY_TYPE = DDR 3,C_UIPARAM_DDR_CL = 7,C_UIPARAM_DDR_FREQ_MHZ = 533.333333,C_UIPARAM_DDR_SPEED_BIN = DDR3_1066F,C_UIPARAM_DDR_DEVICE_CAPACITY = 2048 MBits,C_UIPARAM_DDR_DRAM_WIDTH = 8 Bits,C_UIPARAM_DDR_BL = 8,C_UIPARAM_DDR_T_RC = 49.5,C_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 = 0.089,C_UIPARAM_DDR_T_RP = 7,C_UIPARAM_DDR_CWL = 6,C_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 = 0.248,C_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 = 0.217,C_UIPARAM_DDR_T_RAS_MIN = 36.0,C_UIPARAM_DDR_PARTNO = MT41J256M8 HX-15E,C_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 = 0.133,C_UIPARAM_DDR_T_FAW = 30.0,C_UIPARAM_DDR_T_RCD = 7,C_UART0_PERIPHERAL_ENABLE = 1,C_I2C0_RESET_ENABLE = 1,C_I2C0_I2C0_IO = MIO 50 .. 51,C_I2C0_PERIPHERAL_ENABLE = 1,C_UART1_PERIPHERAL_ENABLE = 1,C_GPIO_V2.00.A_C_EN_EMIO_GPIO = 0,C:GPIO_EMIO_GPIO_WIDTH = 64,C_UIPARAM_DDR_BOARD_DELAY3 = 0.521,C_UIPARAM_DDR_BOARD_DELAY2 = 0.464,C_UIPARAM_DDR_BOARD_DELAY1 = 0.442,C_UIPARAM_DDR_BOARD_DELAY0 = 0.537,C_UIPARAM_DDR_USE_INTERNAL_VREF = 1,C_UIPARAM_DDR_TRAIN_DATA_EYE = 1,C_UIPARAM_DDR_TRAIN_READ_GATE = 1,C_UIPARAM_DDR_TRAIN_WRITE_LEVEL = 1,C_MIO_MIO[45]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[45]_SLEW = slow,C_MIO_MIO[44]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[44]_SLEW = slow,C_I2C1_RESET_IO = -1,C_I2C1_PERIPHERAL_ENABLE = 1,C_CAN0_CAN0_IO = MIO 46 .. 47,C_CAN0_PERIPHERAL_ENABLE = 1,C_SD0_GRP_WP_ENABLE = 1,C_SD0_GRP_CD_ENABLE = 1,C_SD0_PERIPHERAL_ENABLE = 1,C_SD0_GRP_CD_IO = MIO 0,C_SD0_GRP_WP_IO = MIO 15,C_ENET0_GRP_MDIO_IO = MIO 52 .. 53,C_ENET0_RESET_IO = MIO 11,C_ENET0_RESET_ENABLE = 1,C_ENET0_ENET0_IO = MIO 16 .. 27,C_ENET0_GRP_MDIO_ENABLE = 1,C_ENET0_PERIPHERAL_ENABLE = 1,C_MIO_MIO[48]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[47]_IOTYPE = LVCMOS 1.8V,C_MIO_MIO[46]_IOTYPE = LVCMOS 1.8V,C_I2C0_RESET_IO = MIO 13}" *)

  (* BOX_TYPE = "user_black_box" *)
  PS_processing_system7_0_wrapper
    processing_system7_0 (
      .CAN0_PHY_TX (  ),
      .CAN0_PHY_RX ( net_gnd0 ),
      .CAN1_PHY_TX (  ),
      .CAN1_PHY_RX ( net_gnd0 ),
      .ENET0_GMII_TX_EN (  ),
      .ENET0_GMII_TX_ER (  ),
      .ENET0_MDIO_MDC (  ),
      .ENET0_MDIO_O (  ),
      .ENET0_MDIO_T (  ),
      .ENET0_PTP_DELAY_REQ_RX (  ),
      .ENET0_PTP_DELAY_REQ_TX (  ),
      .ENET0_PTP_PDELAY_REQ_RX (  ),
      .ENET0_PTP_PDELAY_REQ_TX (  ),
      .ENET0_PTP_PDELAY_RESP_RX (  ),
      .ENET0_PTP_PDELAY_RESP_TX (  ),
      .ENET0_PTP_SYNC_FRAME_RX (  ),
      .ENET0_PTP_SYNC_FRAME_TX (  ),
      .ENET0_SOF_RX (  ),
      .ENET0_SOF_TX (  ),
      .ENET0_GMII_TXD (  ),
      .ENET0_GMII_COL ( net_gnd0 ),
      .ENET0_GMII_CRS ( net_gnd0 ),
      .ENET0_EXT_INTIN ( net_gnd0 ),
      .ENET0_GMII_RX_CLK ( net_gnd0 ),
      .ENET0_GMII_RX_DV ( net_gnd0 ),
      .ENET0_GMII_RX_ER ( net_gnd0 ),
      .ENET0_GMII_TX_CLK ( net_gnd0 ),
      .ENET0_MDIO_I ( net_gnd0 ),
      .ENET0_GMII_RXD ( net_gnd8 ),
      .ENET1_GMII_TX_EN (  ),
      .ENET1_GMII_TX_ER (  ),
      .ENET1_MDIO_MDC (  ),
      .ENET1_MDIO_O (  ),
      .ENET1_MDIO_T (  ),
      .ENET1_PTP_DELAY_REQ_RX (  ),
      .ENET1_PTP_DELAY_REQ_TX (  ),
      .ENET1_PTP_PDELAY_REQ_RX (  ),
      .ENET1_PTP_PDELAY_REQ_TX (  ),
      .ENET1_PTP_PDELAY_RESP_RX (  ),
      .ENET1_PTP_PDELAY_RESP_TX (  ),
      .ENET1_PTP_SYNC_FRAME_RX (  ),
      .ENET1_PTP_SYNC_FRAME_TX (  ),
      .ENET1_SOF_RX (  ),
      .ENET1_SOF_TX (  ),
      .ENET1_GMII_TXD (  ),
      .ENET1_GMII_COL ( net_gnd0 ),
      .ENET1_GMII_CRS ( net_gnd0 ),
      .ENET1_EXT_INTIN ( net_gnd0 ),
      .ENET1_GMII_RX_CLK ( net_gnd0 ),
      .ENET1_GMII_RX_DV ( net_gnd0 ),
      .ENET1_GMII_RX_ER ( net_gnd0 ),
      .ENET1_GMII_TX_CLK ( net_gnd0 ),
      .ENET1_MDIO_I ( net_gnd0 ),
      .ENET1_GMII_RXD ( net_gnd8 ),
      .GPIO_I ( net_gnd64 ),
      .GPIO_O (  ),
      .GPIO_T (  ),
      .I2C0_SDA_I ( net_gnd0 ),
      .I2C0_SDA_O (  ),
      .I2C0_SDA_T (  ),
      .I2C0_SCL_I ( net_gnd0 ),
      .I2C0_SCL_O (  ),
      .I2C0_SCL_T (  ),
      .I2C1_SDA_I ( processing_system7_0_I2C1_SDA_I ),
      .I2C1_SDA_O ( processing_system7_0_I2C1_SDA_O ),
      .I2C1_SDA_T ( processing_system7_0_I2C1_SDA_T ),
      .I2C1_SCL_I ( processing_system7_0_I2C1_SCL_I ),
      .I2C1_SCL_O ( processing_system7_0_I2C1_SCL_O ),
      .I2C1_SCL_T ( processing_system7_0_I2C1_SCL_T ),
      .PJTAG_TCK ( net_gnd0 ),
      .PJTAG_TMS ( net_gnd0 ),
      .PJTAG_TD_I ( net_gnd0 ),
      .PJTAG_TD_T (  ),
      .PJTAG_TD_O (  ),
      .SDIO0_CLK (  ),
      .SDIO0_CLK_FB ( net_gnd0 ),
      .SDIO0_CMD_O (  ),
      .SDIO0_CMD_I ( net_gnd0 ),
      .SDIO0_CMD_T (  ),
      .SDIO0_DATA_I ( net_gnd4 ),
      .SDIO0_DATA_O (  ),
      .SDIO0_DATA_T (  ),
      .SDIO0_LED (  ),
      .SDIO0_CDN ( net_gnd0 ),
      .SDIO0_WP ( net_gnd0 ),
      .SDIO0_BUSPOW (  ),
      .SDIO0_BUSVOLT (  ),
      .SDIO1_CLK (  ),
      .SDIO1_CLK_FB ( net_gnd0 ),
      .SDIO1_CMD_O (  ),
      .SDIO1_CMD_I ( net_gnd0 ),
      .SDIO1_CMD_T (  ),
      .SDIO1_DATA_I ( net_gnd4 ),
      .SDIO1_DATA_O (  ),
      .SDIO1_DATA_T (  ),
      .SDIO1_LED (  ),
      .SDIO1_CDN ( net_gnd0 ),
      .SDIO1_WP ( net_gnd0 ),
      .SDIO1_BUSPOW (  ),
      .SDIO1_BUSVOLT (  ),
      .SPI0_SCLK_I ( net_gnd0 ),
      .SPI0_SCLK_O (  ),
      .SPI0_SCLK_T (  ),
      .SPI0_MOSI_I ( net_gnd0 ),
      .SPI0_MOSI_O (  ),
      .SPI0_MOSI_T (  ),
      .SPI0_MISO_I ( net_gnd0 ),
      .SPI0_MISO_O (  ),
      .SPI0_MISO_T (  ),
      .SPI0_SS_I ( net_gnd0 ),
      .SPI0_SS_O (  ),
      .SPI0_SS1_O (  ),
      .SPI0_SS2_O (  ),
      .SPI0_SS_T (  ),
      .SPI1_SCLK_I ( net_gnd0 ),
      .SPI1_SCLK_O (  ),
      .SPI1_SCLK_T (  ),
      .SPI1_MOSI_I ( net_gnd0 ),
      .SPI1_MOSI_O (  ),
      .SPI1_MOSI_T (  ),
      .SPI1_MISO_I ( net_gnd0 ),
      .SPI1_MISO_O (  ),
      .SPI1_MISO_T (  ),
      .SPI1_SS_I ( net_gnd0 ),
      .SPI1_SS_O (  ),
      .SPI1_SS1_O (  ),
      .SPI1_SS2_O (  ),
      .SPI1_SS_T (  ),
      .UART0_DTRN (  ),
      .UART0_RTSN (  ),
      .UART0_TX ( processing_system7_0_UART0_TX ),
      .UART0_CTSN ( net_gnd0 ),
      .UART0_DCDN ( net_gnd0 ),
      .UART0_DSRN ( net_gnd0 ),
      .UART0_RIN ( net_gnd0 ),
      .UART0_RX ( processing_system7_0_UART0_RX ),
      .UART1_DTRN (  ),
      .UART1_RTSN (  ),
      .UART1_TX (  ),
      .UART1_CTSN ( net_gnd0 ),
      .UART1_DCDN ( net_gnd0 ),
      .UART1_DSRN ( net_gnd0 ),
      .UART1_RIN ( net_gnd0 ),
      .UART1_RX ( net_gnd0 ),
      .TTC0_WAVE0_OUT (  ),
      .TTC0_WAVE1_OUT (  ),
      .TTC0_WAVE2_OUT (  ),
      .TTC0_CLK0_IN ( net_gnd0 ),
      .TTC0_CLK1_IN ( net_gnd0 ),
      .TTC0_CLK2_IN ( net_gnd0 ),
      .TTC1_WAVE0_OUT (  ),
      .TTC1_WAVE1_OUT (  ),
      .TTC1_WAVE2_OUT (  ),
      .TTC1_CLK0_IN ( net_gnd0 ),
      .TTC1_CLK1_IN ( net_gnd0 ),
      .TTC1_CLK2_IN ( net_gnd0 ),
      .WDT_CLK_IN ( net_gnd0 ),
      .WDT_RST_OUT (  ),
      .TRACE_CLK ( net_gnd0 ),
      .TRACE_CTL (  ),
      .TRACE_DATA (  ),
      .USB0_PORT_INDCTL (  ),
      .USB1_PORT_INDCTL (  ),
      .USB0_VBUS_PWRSELECT (  ),
      .USB1_VBUS_PWRSELECT (  ),
      .USB0_VBUS_PWRFAULT ( net_gnd0 ),
      .USB1_VBUS_PWRFAULT ( net_gnd0 ),
      .SRAM_INTIN ( net_gnd0 ),
      .M_AXI_GP0_ARESETN (  ),
      .M_AXI_GP0_ARVALID ( axi_interconnect_1_S_ARVALID[0] ),
      .M_AXI_GP0_AWVALID ( axi_interconnect_1_S_AWVALID[0] ),
      .M_AXI_GP0_BREADY ( axi_interconnect_1_S_BREADY[0] ),
      .M_AXI_GP0_RREADY ( axi_interconnect_1_S_RREADY[0] ),
      .M_AXI_GP0_WLAST ( axi_interconnect_1_S_WLAST[0] ),
      .M_AXI_GP0_WVALID ( axi_interconnect_1_S_WVALID[0] ),
      .M_AXI_GP0_ARID ( axi_interconnect_1_S_ARID ),
      .M_AXI_GP0_AWID ( axi_interconnect_1_S_AWID ),
      .M_AXI_GP0_WID ( axi_interconnect_1_S_WID ),
      .M_AXI_GP0_ARBURST ( axi_interconnect_1_S_ARBURST ),
      .M_AXI_GP0_ARLOCK ( axi_interconnect_1_S_ARLOCK ),
      .M_AXI_GP0_ARSIZE ( axi_interconnect_1_S_ARSIZE ),
      .M_AXI_GP0_AWBURST ( axi_interconnect_1_S_AWBURST ),
      .M_AXI_GP0_AWLOCK ( axi_interconnect_1_S_AWLOCK ),
      .M_AXI_GP0_AWSIZE ( axi_interconnect_1_S_AWSIZE ),
      .M_AXI_GP0_ARPROT ( axi_interconnect_1_S_ARPROT ),
      .M_AXI_GP0_AWPROT ( axi_interconnect_1_S_AWPROT ),
      .M_AXI_GP0_ARADDR ( axi_interconnect_1_S_ARADDR ),
      .M_AXI_GP0_AWADDR ( axi_interconnect_1_S_AWADDR ),
      .M_AXI_GP0_WDATA ( axi_interconnect_1_S_WDATA ),
      .M_AXI_GP0_ARCACHE ( axi_interconnect_1_S_ARCACHE ),
      .M_AXI_GP0_ARLEN ( axi_interconnect_1_S_ARLEN[3:0] ),
      .M_AXI_GP0_ARQOS ( axi_interconnect_1_S_ARQOS ),
      .M_AXI_GP0_AWCACHE ( axi_interconnect_1_S_AWCACHE ),
      .M_AXI_GP0_AWLEN ( axi_interconnect_1_S_AWLEN[3:0] ),
      .M_AXI_GP0_AWQOS ( axi_interconnect_1_S_AWQOS ),
      .M_AXI_GP0_WSTRB ( axi_interconnect_1_S_WSTRB ),
      .M_AXI_GP0_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .M_AXI_GP0_ARREADY ( axi_interconnect_1_S_ARREADY[0] ),
      .M_AXI_GP0_AWREADY ( axi_interconnect_1_S_AWREADY[0] ),
      .M_AXI_GP0_BVALID ( axi_interconnect_1_S_BVALID[0] ),
      .M_AXI_GP0_RLAST ( axi_interconnect_1_S_RLAST[0] ),
      .M_AXI_GP0_RVALID ( axi_interconnect_1_S_RVALID[0] ),
      .M_AXI_GP0_WREADY ( axi_interconnect_1_S_WREADY[0] ),
      .M_AXI_GP0_BID ( axi_interconnect_1_S_BID ),
      .M_AXI_GP0_RID ( axi_interconnect_1_S_RID ),
      .M_AXI_GP0_BRESP ( axi_interconnect_1_S_BRESP ),
      .M_AXI_GP0_RRESP ( axi_interconnect_1_S_RRESP ),
      .M_AXI_GP0_RDATA ( axi_interconnect_1_S_RDATA ),
      .M_AXI_GP1_ARESETN (  ),
      .M_AXI_GP1_ARVALID (  ),
      .M_AXI_GP1_AWVALID (  ),
      .M_AXI_GP1_BREADY (  ),
      .M_AXI_GP1_RREADY (  ),
      .M_AXI_GP1_WLAST (  ),
      .M_AXI_GP1_WVALID (  ),
      .M_AXI_GP1_ARID (  ),
      .M_AXI_GP1_AWID (  ),
      .M_AXI_GP1_WID (  ),
      .M_AXI_GP1_ARBURST (  ),
      .M_AXI_GP1_ARLOCK (  ),
      .M_AXI_GP1_ARSIZE (  ),
      .M_AXI_GP1_AWBURST (  ),
      .M_AXI_GP1_AWLOCK (  ),
      .M_AXI_GP1_AWSIZE (  ),
      .M_AXI_GP1_ARPROT (  ),
      .M_AXI_GP1_AWPROT (  ),
      .M_AXI_GP1_ARADDR (  ),
      .M_AXI_GP1_AWADDR (  ),
      .M_AXI_GP1_WDATA (  ),
      .M_AXI_GP1_ARCACHE (  ),
      .M_AXI_GP1_ARLEN (  ),
      .M_AXI_GP1_ARQOS (  ),
      .M_AXI_GP1_AWCACHE (  ),
      .M_AXI_GP1_AWLEN (  ),
      .M_AXI_GP1_AWQOS (  ),
      .M_AXI_GP1_WSTRB (  ),
      .M_AXI_GP1_ACLK ( net_gnd0 ),
      .M_AXI_GP1_ARREADY ( net_gnd0 ),
      .M_AXI_GP1_AWREADY ( net_gnd0 ),
      .M_AXI_GP1_BVALID ( net_gnd0 ),
      .M_AXI_GP1_RLAST ( net_gnd0 ),
      .M_AXI_GP1_RVALID ( net_gnd0 ),
      .M_AXI_GP1_WREADY ( net_gnd0 ),
      .M_AXI_GP1_BID ( net_gnd12 ),
      .M_AXI_GP1_RID ( net_gnd12 ),
      .M_AXI_GP1_BRESP ( net_gnd2 ),
      .M_AXI_GP1_RRESP ( net_gnd2 ),
      .M_AXI_GP1_RDATA ( net_gnd32 ),
      .S_AXI_GP0_ARESETN (  ),
      .S_AXI_GP0_ARREADY (  ),
      .S_AXI_GP0_AWREADY (  ),
      .S_AXI_GP0_BVALID (  ),
      .S_AXI_GP0_RLAST (  ),
      .S_AXI_GP0_RVALID (  ),
      .S_AXI_GP0_WREADY (  ),
      .S_AXI_GP0_BRESP (  ),
      .S_AXI_GP0_RRESP (  ),
      .S_AXI_GP0_RDATA (  ),
      .S_AXI_GP0_BID (  ),
      .S_AXI_GP0_RID (  ),
      .S_AXI_GP0_ACLK ( net_gnd0 ),
      .S_AXI_GP0_ARVALID ( net_gnd0 ),
      .S_AXI_GP0_AWVALID ( net_gnd0 ),
      .S_AXI_GP0_BREADY ( net_gnd0 ),
      .S_AXI_GP0_RREADY ( net_gnd0 ),
      .S_AXI_GP0_WLAST ( net_gnd0 ),
      .S_AXI_GP0_WVALID ( net_gnd0 ),
      .S_AXI_GP0_ARBURST ( net_gnd2 ),
      .S_AXI_GP0_ARLOCK ( net_gnd2 ),
      .S_AXI_GP0_ARSIZE ( net_gnd3 ),
      .S_AXI_GP0_AWBURST ( net_gnd2 ),
      .S_AXI_GP0_AWLOCK ( net_gnd2 ),
      .S_AXI_GP0_AWSIZE ( net_gnd3 ),
      .S_AXI_GP0_ARPROT ( net_gnd3 ),
      .S_AXI_GP0_AWPROT ( net_gnd3 ),
      .S_AXI_GP0_ARADDR ( net_gnd32 ),
      .S_AXI_GP0_AWADDR ( net_gnd32 ),
      .S_AXI_GP0_WDATA ( net_gnd32 ),
      .S_AXI_GP0_ARCACHE ( net_gnd4 ),
      .S_AXI_GP0_ARLEN ( net_gnd4 ),
      .S_AXI_GP0_ARQOS ( net_gnd4 ),
      .S_AXI_GP0_AWCACHE ( net_gnd4 ),
      .S_AXI_GP0_AWLEN ( net_gnd4 ),
      .S_AXI_GP0_AWQOS ( net_gnd4 ),
      .S_AXI_GP0_WSTRB ( net_gnd4 ),
      .S_AXI_GP0_ARID ( net_gnd6 ),
      .S_AXI_GP0_AWID ( net_gnd6 ),
      .S_AXI_GP0_WID ( net_gnd6 ),
      .S_AXI_GP1_ARESETN (  ),
      .S_AXI_GP1_ARREADY (  ),
      .S_AXI_GP1_AWREADY (  ),
      .S_AXI_GP1_BVALID (  ),
      .S_AXI_GP1_RLAST (  ),
      .S_AXI_GP1_RVALID (  ),
      .S_AXI_GP1_WREADY (  ),
      .S_AXI_GP1_BRESP (  ),
      .S_AXI_GP1_RRESP (  ),
      .S_AXI_GP1_RDATA (  ),
      .S_AXI_GP1_BID (  ),
      .S_AXI_GP1_RID (  ),
      .S_AXI_GP1_ACLK ( net_gnd0 ),
      .S_AXI_GP1_ARVALID ( net_gnd0 ),
      .S_AXI_GP1_AWVALID ( net_gnd0 ),
      .S_AXI_GP1_BREADY ( net_gnd0 ),
      .S_AXI_GP1_RREADY ( net_gnd0 ),
      .S_AXI_GP1_WLAST ( net_gnd0 ),
      .S_AXI_GP1_WVALID ( net_gnd0 ),
      .S_AXI_GP1_ARBURST ( net_gnd2 ),
      .S_AXI_GP1_ARLOCK ( net_gnd2 ),
      .S_AXI_GP1_ARSIZE ( net_gnd3 ),
      .S_AXI_GP1_AWBURST ( net_gnd2 ),
      .S_AXI_GP1_AWLOCK ( net_gnd2 ),
      .S_AXI_GP1_AWSIZE ( net_gnd3 ),
      .S_AXI_GP1_ARPROT ( net_gnd3 ),
      .S_AXI_GP1_AWPROT ( net_gnd3 ),
      .S_AXI_GP1_ARADDR ( net_gnd32 ),
      .S_AXI_GP1_AWADDR ( net_gnd32 ),
      .S_AXI_GP1_WDATA ( net_gnd32 ),
      .S_AXI_GP1_ARCACHE ( net_gnd4 ),
      .S_AXI_GP1_ARLEN ( net_gnd4 ),
      .S_AXI_GP1_ARQOS ( net_gnd4 ),
      .S_AXI_GP1_AWCACHE ( net_gnd4 ),
      .S_AXI_GP1_AWLEN ( net_gnd4 ),
      .S_AXI_GP1_AWQOS ( net_gnd4 ),
      .S_AXI_GP1_WSTRB ( net_gnd4 ),
      .S_AXI_GP1_ARID ( net_gnd6 ),
      .S_AXI_GP1_AWID ( net_gnd6 ),
      .S_AXI_GP1_WID ( net_gnd6 ),
      .S_AXI_ACP_ARESETN (  ),
      .S_AXI_ACP_AWREADY (  ),
      .S_AXI_ACP_ARREADY (  ),
      .S_AXI_ACP_BVALID (  ),
      .S_AXI_ACP_RLAST (  ),
      .S_AXI_ACP_RVALID (  ),
      .S_AXI_ACP_WREADY (  ),
      .S_AXI_ACP_BRESP (  ),
      .S_AXI_ACP_RRESP (  ),
      .S_AXI_ACP_BID (  ),
      .S_AXI_ACP_RID (  ),
      .S_AXI_ACP_RDATA (  ),
      .S_AXI_ACP_ACLK ( net_gnd0 ),
      .S_AXI_ACP_ARVALID ( net_gnd0 ),
      .S_AXI_ACP_AWVALID ( net_gnd0 ),
      .S_AXI_ACP_BREADY ( net_gnd0 ),
      .S_AXI_ACP_RREADY ( net_gnd0 ),
      .S_AXI_ACP_WLAST ( net_gnd0 ),
      .S_AXI_ACP_WVALID ( net_gnd0 ),
      .S_AXI_ACP_ARID ( net_gnd3 ),
      .S_AXI_ACP_ARPROT ( net_gnd3 ),
      .S_AXI_ACP_AWID ( net_gnd3 ),
      .S_AXI_ACP_AWPROT ( net_gnd3 ),
      .S_AXI_ACP_WID ( net_gnd3 ),
      .S_AXI_ACP_ARADDR ( net_gnd32 ),
      .S_AXI_ACP_AWADDR ( net_gnd32 ),
      .S_AXI_ACP_ARCACHE ( net_gnd4 ),
      .S_AXI_ACP_ARLEN ( net_gnd4 ),
      .S_AXI_ACP_ARQOS ( net_gnd4 ),
      .S_AXI_ACP_AWCACHE ( net_gnd4 ),
      .S_AXI_ACP_AWLEN ( net_gnd4 ),
      .S_AXI_ACP_AWQOS ( net_gnd4 ),
      .S_AXI_ACP_ARBURST ( net_gnd2 ),
      .S_AXI_ACP_ARLOCK ( net_gnd2 ),
      .S_AXI_ACP_ARSIZE ( net_gnd3 ),
      .S_AXI_ACP_AWBURST ( net_gnd2 ),
      .S_AXI_ACP_AWLOCK ( net_gnd2 ),
      .S_AXI_ACP_AWSIZE ( net_gnd3 ),
      .S_AXI_ACP_ARUSER ( net_gnd5 ),
      .S_AXI_ACP_AWUSER ( net_gnd5 ),
      .S_AXI_ACP_WDATA ( net_gnd64 ),
      .S_AXI_ACP_WSTRB ( net_gnd8 ),
      .S_AXI_HP0_ARESETN (  ),
      .S_AXI_HP0_ARREADY (  ),
      .S_AXI_HP0_AWREADY (  ),
      .S_AXI_HP0_BVALID (  ),
      .S_AXI_HP0_RLAST (  ),
      .S_AXI_HP0_RVALID (  ),
      .S_AXI_HP0_WREADY (  ),
      .S_AXI_HP0_BRESP (  ),
      .S_AXI_HP0_RRESP (  ),
      .S_AXI_HP0_BID (  ),
      .S_AXI_HP0_RID (  ),
      .S_AXI_HP0_RDATA (  ),
      .S_AXI_HP0_RCOUNT (  ),
      .S_AXI_HP0_WCOUNT (  ),
      .S_AXI_HP0_RACOUNT (  ),
      .S_AXI_HP0_WACOUNT (  ),
      .S_AXI_HP0_ACLK ( net_gnd0 ),
      .S_AXI_HP0_ARVALID ( net_gnd0 ),
      .S_AXI_HP0_AWVALID ( net_gnd0 ),
      .S_AXI_HP0_BREADY ( net_gnd0 ),
      .S_AXI_HP0_RDISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP0_RREADY ( net_gnd0 ),
      .S_AXI_HP0_WLAST ( net_gnd0 ),
      .S_AXI_HP0_WRISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP0_WVALID ( net_gnd0 ),
      .S_AXI_HP0_ARBURST ( net_gnd2 ),
      .S_AXI_HP0_ARLOCK ( net_gnd2 ),
      .S_AXI_HP0_ARSIZE ( net_gnd3 ),
      .S_AXI_HP0_AWBURST ( net_gnd2 ),
      .S_AXI_HP0_AWLOCK ( net_gnd2 ),
      .S_AXI_HP0_AWSIZE ( net_gnd3 ),
      .S_AXI_HP0_ARPROT ( net_gnd3 ),
      .S_AXI_HP0_AWPROT ( net_gnd3 ),
      .S_AXI_HP0_ARADDR ( net_gnd32 ),
      .S_AXI_HP0_AWADDR ( net_gnd32 ),
      .S_AXI_HP0_ARCACHE ( net_gnd4 ),
      .S_AXI_HP0_ARLEN ( net_gnd4 ),
      .S_AXI_HP0_ARQOS ( net_gnd4 ),
      .S_AXI_HP0_AWCACHE ( net_gnd4 ),
      .S_AXI_HP0_AWLEN ( net_gnd4 ),
      .S_AXI_HP0_AWQOS ( net_gnd4 ),
      .S_AXI_HP0_ARID ( net_gnd6 ),
      .S_AXI_HP0_AWID ( net_gnd6 ),
      .S_AXI_HP0_WID ( net_gnd6 ),
      .S_AXI_HP0_WDATA ( net_gnd64 ),
      .S_AXI_HP0_WSTRB ( net_gnd8 ),
      .S_AXI_HP1_ARESETN (  ),
      .S_AXI_HP1_ARREADY (  ),
      .S_AXI_HP1_AWREADY (  ),
      .S_AXI_HP1_BVALID (  ),
      .S_AXI_HP1_RLAST (  ),
      .S_AXI_HP1_RVALID (  ),
      .S_AXI_HP1_WREADY (  ),
      .S_AXI_HP1_BRESP (  ),
      .S_AXI_HP1_RRESP (  ),
      .S_AXI_HP1_BID (  ),
      .S_AXI_HP1_RID (  ),
      .S_AXI_HP1_RDATA (  ),
      .S_AXI_HP1_RCOUNT (  ),
      .S_AXI_HP1_WCOUNT (  ),
      .S_AXI_HP1_RACOUNT (  ),
      .S_AXI_HP1_WACOUNT (  ),
      .S_AXI_HP1_ACLK ( net_gnd0 ),
      .S_AXI_HP1_ARVALID ( net_gnd0 ),
      .S_AXI_HP1_AWVALID ( net_gnd0 ),
      .S_AXI_HP1_BREADY ( net_gnd0 ),
      .S_AXI_HP1_RDISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP1_RREADY ( net_gnd0 ),
      .S_AXI_HP1_WLAST ( net_gnd0 ),
      .S_AXI_HP1_WRISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP1_WVALID ( net_gnd0 ),
      .S_AXI_HP1_ARBURST ( net_gnd2 ),
      .S_AXI_HP1_ARLOCK ( net_gnd2 ),
      .S_AXI_HP1_ARSIZE ( net_gnd3 ),
      .S_AXI_HP1_AWBURST ( net_gnd2 ),
      .S_AXI_HP1_AWLOCK ( net_gnd2 ),
      .S_AXI_HP1_AWSIZE ( net_gnd3 ),
      .S_AXI_HP1_ARPROT ( net_gnd3 ),
      .S_AXI_HP1_AWPROT ( net_gnd3 ),
      .S_AXI_HP1_ARADDR ( net_gnd32 ),
      .S_AXI_HP1_AWADDR ( net_gnd32 ),
      .S_AXI_HP1_ARCACHE ( net_gnd4 ),
      .S_AXI_HP1_ARLEN ( net_gnd4 ),
      .S_AXI_HP1_ARQOS ( net_gnd4 ),
      .S_AXI_HP1_AWCACHE ( net_gnd4 ),
      .S_AXI_HP1_AWLEN ( net_gnd4 ),
      .S_AXI_HP1_AWQOS ( net_gnd4 ),
      .S_AXI_HP1_ARID ( net_gnd6 ),
      .S_AXI_HP1_AWID ( net_gnd6 ),
      .S_AXI_HP1_WID ( net_gnd6 ),
      .S_AXI_HP1_WDATA ( net_gnd64 ),
      .S_AXI_HP1_WSTRB ( net_gnd8 ),
      .S_AXI_HP2_ARESETN (  ),
      .S_AXI_HP2_ARREADY (  ),
      .S_AXI_HP2_AWREADY (  ),
      .S_AXI_HP2_BVALID (  ),
      .S_AXI_HP2_RLAST (  ),
      .S_AXI_HP2_RVALID (  ),
      .S_AXI_HP2_WREADY (  ),
      .S_AXI_HP2_BRESP (  ),
      .S_AXI_HP2_RRESP (  ),
      .S_AXI_HP2_BID (  ),
      .S_AXI_HP2_RID (  ),
      .S_AXI_HP2_RDATA (  ),
      .S_AXI_HP2_RCOUNT (  ),
      .S_AXI_HP2_WCOUNT (  ),
      .S_AXI_HP2_RACOUNT (  ),
      .S_AXI_HP2_WACOUNT (  ),
      .S_AXI_HP2_ACLK ( net_gnd0 ),
      .S_AXI_HP2_ARVALID ( net_gnd0 ),
      .S_AXI_HP2_AWVALID ( net_gnd0 ),
      .S_AXI_HP2_BREADY ( net_gnd0 ),
      .S_AXI_HP2_RDISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP2_RREADY ( net_gnd0 ),
      .S_AXI_HP2_WLAST ( net_gnd0 ),
      .S_AXI_HP2_WRISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP2_WVALID ( net_gnd0 ),
      .S_AXI_HP2_ARBURST ( net_gnd2 ),
      .S_AXI_HP2_ARLOCK ( net_gnd2 ),
      .S_AXI_HP2_ARSIZE ( net_gnd3 ),
      .S_AXI_HP2_AWBURST ( net_gnd2 ),
      .S_AXI_HP2_AWLOCK ( net_gnd2 ),
      .S_AXI_HP2_AWSIZE ( net_gnd3 ),
      .S_AXI_HP2_ARPROT ( net_gnd3 ),
      .S_AXI_HP2_AWPROT ( net_gnd3 ),
      .S_AXI_HP2_ARADDR ( net_gnd32 ),
      .S_AXI_HP2_AWADDR ( net_gnd32 ),
      .S_AXI_HP2_ARCACHE ( net_gnd4 ),
      .S_AXI_HP2_ARLEN ( net_gnd4 ),
      .S_AXI_HP2_ARQOS ( net_gnd4 ),
      .S_AXI_HP2_AWCACHE ( net_gnd4 ),
      .S_AXI_HP2_AWLEN ( net_gnd4 ),
      .S_AXI_HP2_AWQOS ( net_gnd4 ),
      .S_AXI_HP2_ARID ( net_gnd6 ),
      .S_AXI_HP2_AWID ( net_gnd6 ),
      .S_AXI_HP2_WID ( net_gnd6 ),
      .S_AXI_HP2_WDATA ( net_gnd64 ),
      .S_AXI_HP2_WSTRB ( net_gnd8 ),
      .S_AXI_HP3_ARESETN (  ),
      .S_AXI_HP3_ARREADY (  ),
      .S_AXI_HP3_AWREADY (  ),
      .S_AXI_HP3_BVALID (  ),
      .S_AXI_HP3_RLAST (  ),
      .S_AXI_HP3_RVALID (  ),
      .S_AXI_HP3_WREADY (  ),
      .S_AXI_HP3_BRESP (  ),
      .S_AXI_HP3_RRESP (  ),
      .S_AXI_HP3_BID (  ),
      .S_AXI_HP3_RID (  ),
      .S_AXI_HP3_RDATA (  ),
      .S_AXI_HP3_RCOUNT (  ),
      .S_AXI_HP3_WCOUNT (  ),
      .S_AXI_HP3_RACOUNT (  ),
      .S_AXI_HP3_WACOUNT (  ),
      .S_AXI_HP3_ACLK ( net_gnd0 ),
      .S_AXI_HP3_ARVALID ( net_gnd0 ),
      .S_AXI_HP3_AWVALID ( net_gnd0 ),
      .S_AXI_HP3_BREADY ( net_gnd0 ),
      .S_AXI_HP3_RDISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP3_RREADY ( net_gnd0 ),
      .S_AXI_HP3_WLAST ( net_gnd0 ),
      .S_AXI_HP3_WRISSUECAP1_EN ( net_gnd0 ),
      .S_AXI_HP3_WVALID ( net_gnd0 ),
      .S_AXI_HP3_ARBURST ( net_gnd2 ),
      .S_AXI_HP3_ARLOCK ( net_gnd2 ),
      .S_AXI_HP3_ARSIZE ( net_gnd3 ),
      .S_AXI_HP3_AWBURST ( net_gnd2 ),
      .S_AXI_HP3_AWLOCK ( net_gnd2 ),
      .S_AXI_HP3_AWSIZE ( net_gnd3 ),
      .S_AXI_HP3_ARPROT ( net_gnd3 ),
      .S_AXI_HP3_AWPROT ( net_gnd3 ),
      .S_AXI_HP3_ARADDR ( net_gnd32 ),
      .S_AXI_HP3_AWADDR ( net_gnd32 ),
      .S_AXI_HP3_ARCACHE ( net_gnd4 ),
      .S_AXI_HP3_ARLEN ( net_gnd4 ),
      .S_AXI_HP3_ARQOS ( net_gnd4 ),
      .S_AXI_HP3_AWCACHE ( net_gnd4 ),
      .S_AXI_HP3_AWLEN ( net_gnd4 ),
      .S_AXI_HP3_AWQOS ( net_gnd4 ),
      .S_AXI_HP3_ARID ( net_gnd6 ),
      .S_AXI_HP3_AWID ( net_gnd6 ),
      .S_AXI_HP3_WID ( net_gnd6 ),
      .S_AXI_HP3_WDATA ( net_gnd64 ),
      .S_AXI_HP3_WSTRB ( net_gnd8 ),
      .DMA0_DATYPE (  ),
      .DMA0_DAVALID (  ),
      .DMA0_DRREADY (  ),
      .DMA0_RSTN (  ),
      .DMA0_ACLK ( net_gnd0 ),
      .DMA0_DAREADY ( net_gnd0 ),
      .DMA0_DRLAST ( net_gnd0 ),
      .DMA0_DRVALID ( net_gnd0 ),
      .DMA0_DRTYPE ( net_gnd2 ),
      .DMA1_DATYPE ( processing_system7_0_DMA1_DATYPE ),
      .DMA1_DAVALID ( processing_system7_0_DMA1_DAVALID ),
      .DMA1_DRREADY ( processing_system7_0_DMA1_DRREADY ),
      .DMA1_RSTN ( processing_system7_0_DMA1_RSTN ),
      .DMA1_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .DMA1_DAREADY ( processing_system7_0_DMA1_DAREADY ),
      .DMA1_DRLAST ( processing_system7_0_DMA1_DRLAST ),
      .DMA1_DRVALID ( processing_system7_0_DMA1_DRVALID ),
      .DMA1_DRTYPE ( processing_system7_0_DMA1_DRTYPE ),
      .DMA2_DATYPE ( processing_system7_0_DMA2_DATYPE ),
      .DMA2_DAVALID ( processing_system7_0_DMA2_DAVALID ),
      .DMA2_DRREADY ( processing_system7_0_DMA2_DRREADY ),
      .DMA2_RSTN ( processing_system7_0_DMA2_RSTN ),
      .DMA2_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .DMA2_DAREADY ( axi_i2s_adi_0_DMA_REQ_RX_DAREADY ),
      .DMA2_DRLAST ( axi_i2s_adi_0_DMA_REQ_RX_DRLAST ),
      .DMA2_DRVALID ( axi_i2s_adi_0_DMA_REQ_RX_DRVALID ),
      .DMA3_DRVALID ( net_gnd0 ),
      .DMA3_DATYPE (  ),
      .DMA3_DAVALID (  ),
      .DMA3_DRREADY (  ),
      .DMA3_RSTN (  ),
      .DMA3_ACLK ( net_gnd0 ),
      .DMA3_DAREADY ( net_gnd0 ),
      .DMA3_DRLAST ( net_gnd0 ),
      .DMA2_DRTYPE ( axi_i2s_adi_0_DMA_REQ_RX_DRTYPE ),
      .DMA3_DRTYPE ( net_gnd2 ),
      .FTMD_TRACEIN_DATA ( net_gnd32 ),
      .FTMD_TRACEIN_VALID ( net_gnd0 ),
      .FTMD_TRACEIN_CLK ( net_gnd0 ),
      .FTMD_TRACEIN_ATID ( net_gnd4 ),
      .FTMT_F2P_TRIG ( net_gnd4 ),
      .FTMT_F2P_TRIGACK (  ),
      .FTMT_F2P_DEBUG ( net_gnd32 ),
      .FTMT_P2F_TRIGACK ( net_gnd4 ),
      .FTMT_P2F_TRIG (  ),
      .FTMT_P2F_DEBUG (  ),
      .FCLK_CLK3 (  ),
      .FCLK_CLK2 (  ),
      .FCLK_CLK1 (  ),
      .FCLK_CLK0 ( processing_system7_0_FCLK_CLK0[0] ),
      .FCLK_CLKTRIG3_N ( net_gnd0 ),
      .FCLK_CLKTRIG2_N ( net_gnd0 ),
      .FCLK_CLKTRIG1_N ( net_gnd0 ),
      .FCLK_CLKTRIG0_N ( net_gnd0 ),
      .FCLK_RESET3_N (  ),
      .FCLK_RESET2_N (  ),
      .FCLK_RESET1_N (  ),
      .FCLK_RESET0_N ( processing_system7_0_FCLK_RESET0_N ),
      .FPGA_IDLE_N ( net_gnd0 ),
      .DDR_ARB ( net_gnd4 ),
      .IRQ_F2P ( net_gnd1[0:0] ),
      .Core0_nFIQ ( net_gnd0 ),
      .Core0_nIRQ ( net_gnd0 ),
      .Core1_nFIQ ( net_gnd0 ),
      .Core1_nIRQ ( net_gnd0 ),
      .EVENT_EVENTO (  ),
      .EVENT_STANDBYWFE (  ),
      .EVENT_STANDBYWFI (  ),
      .EVENT_EVENTI ( net_gnd0 ),
      .MIO ( processing_system7_0_MIO ),
      .DDR_Clk ( processing_system7_0_DDR_Clk ),
      .DDR_Clk_n ( processing_system7_0_DDR_Clk_n ),
      .DDR_CKE ( processing_system7_0_DDR_CKE ),
      .DDR_CS_n ( processing_system7_0_DDR_CS_n ),
      .DDR_RAS_n ( processing_system7_0_DDR_RAS_n ),
      .DDR_CAS_n ( processing_system7_0_DDR_CAS_n ),
      .DDR_WEB ( processing_system7_0_DDR_WEB ),
      .DDR_BankAddr ( processing_system7_0_DDR_BankAddr ),
      .DDR_Addr ( processing_system7_0_DDR_Addr ),
      .DDR_ODT ( processing_system7_0_DDR_ODT ),
      .DDR_DRSTB ( processing_system7_0_DDR_DRSTB ),
      .DDR_DQ ( processing_system7_0_DDR_DQ ),
      .DDR_DM ( processing_system7_0_DDR_DM ),
      .DDR_DQS ( processing_system7_0_DDR_DQS ),
      .DDR_DQS_n ( processing_system7_0_DDR_DQS_n ),
      .DDR_VRN ( processing_system7_0_DDR_VRN ),
      .DDR_VRP ( processing_system7_0_DDR_VRP ),
      .PS_SRSTB ( processing_system7_0_PS_SRSTB ),
      .PS_CLK ( processing_system7_0_PS_CLK ),
      .PS_PORB ( processing_system7_0_PS_PORB ),
      .IRQ_P2F_DMAC_ABORT (  ),
      .IRQ_P2F_DMAC0 (  ),
      .IRQ_P2F_DMAC1 (  ),
      .IRQ_P2F_DMAC2 (  ),
      .IRQ_P2F_DMAC3 (  ),
      .IRQ_P2F_DMAC4 (  ),
      .IRQ_P2F_DMAC5 (  ),
      .IRQ_P2F_DMAC6 (  ),
      .IRQ_P2F_DMAC7 (  ),
      .IRQ_P2F_SMC (  ),
      .IRQ_P2F_QSPI (  ),
      .IRQ_P2F_CTI (  ),
      .IRQ_P2F_GPIO (  ),
      .IRQ_P2F_USB0 (  ),
      .IRQ_P2F_ENET0 (  ),
      .IRQ_P2F_ENET_WAKE0 (  ),
      .IRQ_P2F_SDIO0 (  ),
      .IRQ_P2F_I2C0 (  ),
      .IRQ_P2F_SPI0 (  ),
      .IRQ_P2F_UART0 (  ),
      .IRQ_P2F_CAN0 (  ),
      .IRQ_P2F_USB1 (  ),
      .IRQ_P2F_ENET1 (  ),
      .IRQ_P2F_ENET_WAKE1 (  ),
      .IRQ_P2F_SDIO1 (  ),
      .IRQ_P2F_I2C1 (  ),
      .IRQ_P2F_SPI1 (  ),
      .IRQ_P2F_UART1 (  ),
      .IRQ_P2F_CAN1 (  )
    );

  (* BOX_TYPE = "user_black_box" *)
  PS_axi_i2s_adi_0_wrapper
    axi_i2s_adi_0 (
      .DATA_CLK_I ( net_axi_i2s_adi_0_DATA_CLK_I_pin ),
      .BCLK_O ( axi_i2s_adi_0_BCLK_O[0:0] ),
      .LRCLK_O ( axi_i2s_adi_0_LRCLK_O[0:0] ),
      .SDATA_O ( axi_i2s_adi_0_SDATA_O[0:0] ),
      .SDATA_I ( axi_i2s_adi_0_SDATA_I[0:0] ),
      .S_AXIS_ACLK ( net_gnd0 ),
      .S_AXIS_ARESETN ( net_gnd0 ),
      .S_AXIS_TREADY (  ),
      .S_AXIS_TDATA ( net_gnd32 ),
      .S_AXIS_TLAST ( net_gnd0 ),
      .S_AXIS_TVALID ( net_gnd0 ),
      .M_AXIS_ACLK ( net_gnd0 ),
      .M_AXIS_TVALID (  ),
      .M_AXIS_TDATA (  ),
      .M_AXIS_TLAST (  ),
      .M_AXIS_TREADY ( net_gnd0 ),
      .M_AXIS_TKEEP (  ),
      .S_AXI_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .S_AXI_ARESETN ( axi_interconnect_1_M_ARESETN[0] ),
      .S_AXI_AWADDR ( axi_interconnect_1_M_AWADDR ),
      .S_AXI_AWVALID ( axi_interconnect_1_M_AWVALID[0] ),
      .S_AXI_WDATA ( axi_interconnect_1_M_WDATA ),
      .S_AXI_WSTRB ( axi_interconnect_1_M_WSTRB ),
      .S_AXI_WVALID ( axi_interconnect_1_M_WVALID[0] ),
      .S_AXI_BREADY ( axi_interconnect_1_M_BREADY[0] ),
      .S_AXI_ARADDR ( axi_interconnect_1_M_ARADDR ),
      .S_AXI_ARVALID ( axi_interconnect_1_M_ARVALID[0] ),
      .S_AXI_RREADY ( axi_interconnect_1_M_RREADY[0] ),
      .S_AXI_ARREADY ( axi_interconnect_1_M_ARREADY[0] ),
      .S_AXI_RDATA ( axi_interconnect_1_M_RDATA ),
      .S_AXI_RRESP ( axi_interconnect_1_M_RRESP ),
      .S_AXI_RVALID ( axi_interconnect_1_M_RVALID[0] ),
      .S_AXI_WREADY ( axi_interconnect_1_M_WREADY[0] ),
      .S_AXI_BRESP ( axi_interconnect_1_M_BRESP ),
      .S_AXI_BVALID ( axi_interconnect_1_M_BVALID[0] ),
      .S_AXI_AWREADY ( axi_interconnect_1_M_AWREADY[0] ),
      .DMA_REQ_TX_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .DMA_REQ_TX_RSTN ( processing_system7_0_DMA1_RSTN ),
      .DMA_REQ_TX_DAVALID ( processing_system7_0_DMA1_DAVALID ),
      .DMA_REQ_TX_DATYPE ( processing_system7_0_DMA1_DATYPE ),
      .DMA_REQ_TX_DRREADY ( processing_system7_0_DMA1_DRREADY ),
      .DMA_REQ_TX_DRVALID ( processing_system7_0_DMA1_DRVALID ),
      .DMA_REQ_TX_DRTYPE ( processing_system7_0_DMA1_DRTYPE ),
      .DMA_REQ_TX_DRLAST ( processing_system7_0_DMA1_DRLAST ),
      .DMA_REQ_TX_DAREADY ( processing_system7_0_DMA1_DAREADY ),
      .DMA_REQ_RX_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .DMA_REQ_RX_RSTN ( processing_system7_0_DMA2_RSTN ),
      .DMA_REQ_RX_DAVALID ( processing_system7_0_DMA2_DAVALID ),
      .DMA_REQ_RX_DATYPE ( processing_system7_0_DMA2_DATYPE ),
      .DMA_REQ_RX_DRREADY ( processing_system7_0_DMA2_DRREADY ),
      .DMA_REQ_RX_DRVALID ( axi_i2s_adi_0_DMA_REQ_RX_DRVALID ),
      .DMA_REQ_RX_DRTYPE ( axi_i2s_adi_0_DMA_REQ_RX_DRTYPE ),
      .DMA_REQ_RX_DRLAST ( axi_i2s_adi_0_DMA_REQ_RX_DRLAST ),
      .DMA_REQ_RX_DAREADY ( axi_i2s_adi_0_DMA_REQ_RX_DAREADY )
    );

  (* BOX_TYPE = "user_black_box" *)
  PS_axi_interconnect_1_wrapper
    axi_interconnect_1 (
      .INTERCONNECT_ACLK ( processing_system7_0_FCLK_CLK0[0] ),
      .INTERCONNECT_ARESETN ( processing_system7_0_FCLK_RESET0_N ),
      .S_AXI_ARESET_OUT_N (  ),
      .M_AXI_ARESET_OUT_N ( axi_interconnect_1_M_ARESETN[0:0] ),
      .IRQ (  ),
      .S_AXI_ACLK ( processing_system7_0_FCLK_CLK0[0:0] ),
      .S_AXI_AWID ( axi_interconnect_1_S_AWID ),
      .S_AXI_AWADDR ( axi_interconnect_1_S_AWADDR ),
      .S_AXI_AWLEN ( axi_interconnect_1_S_AWLEN ),
      .S_AXI_AWSIZE ( axi_interconnect_1_S_AWSIZE ),
      .S_AXI_AWBURST ( axi_interconnect_1_S_AWBURST ),
      .S_AXI_AWLOCK ( axi_interconnect_1_S_AWLOCK ),
      .S_AXI_AWCACHE ( axi_interconnect_1_S_AWCACHE ),
      .S_AXI_AWPROT ( axi_interconnect_1_S_AWPROT ),
      .S_AXI_AWQOS ( axi_interconnect_1_S_AWQOS ),
      .S_AXI_AWUSER ( net_gnd1[0:0] ),
      .S_AXI_AWVALID ( axi_interconnect_1_S_AWVALID[0:0] ),
      .S_AXI_AWREADY ( axi_interconnect_1_S_AWREADY[0:0] ),
      .S_AXI_WID ( axi_interconnect_1_S_WID ),
      .S_AXI_WDATA ( axi_interconnect_1_S_WDATA ),
      .S_AXI_WSTRB ( axi_interconnect_1_S_WSTRB ),
      .S_AXI_WLAST ( axi_interconnect_1_S_WLAST[0:0] ),
      .S_AXI_WUSER ( net_gnd1[0:0] ),
      .S_AXI_WVALID ( axi_interconnect_1_S_WVALID[0:0] ),
      .S_AXI_WREADY ( axi_interconnect_1_S_WREADY[0:0] ),
      .S_AXI_BID ( axi_interconnect_1_S_BID ),
      .S_AXI_BRESP ( axi_interconnect_1_S_BRESP ),
      .S_AXI_BUSER (  ),
      .S_AXI_BVALID ( axi_interconnect_1_S_BVALID[0:0] ),
      .S_AXI_BREADY ( axi_interconnect_1_S_BREADY[0:0] ),
      .S_AXI_ARID ( axi_interconnect_1_S_ARID ),
      .S_AXI_ARADDR ( axi_interconnect_1_S_ARADDR ),
      .S_AXI_ARLEN ( axi_interconnect_1_S_ARLEN ),
      .S_AXI_ARSIZE ( axi_interconnect_1_S_ARSIZE ),
      .S_AXI_ARBURST ( axi_interconnect_1_S_ARBURST ),
      .S_AXI_ARLOCK ( axi_interconnect_1_S_ARLOCK ),
      .S_AXI_ARCACHE ( axi_interconnect_1_S_ARCACHE ),
      .S_AXI_ARPROT ( axi_interconnect_1_S_ARPROT ),
      .S_AXI_ARQOS ( axi_interconnect_1_S_ARQOS ),
      .S_AXI_ARUSER ( net_gnd1[0:0] ),
      .S_AXI_ARVALID ( axi_interconnect_1_S_ARVALID[0:0] ),
      .S_AXI_ARREADY ( axi_interconnect_1_S_ARREADY[0:0] ),
      .S_AXI_RID ( axi_interconnect_1_S_RID ),
      .S_AXI_RDATA ( axi_interconnect_1_S_RDATA ),
      .S_AXI_RRESP ( axi_interconnect_1_S_RRESP ),
      .S_AXI_RLAST ( axi_interconnect_1_S_RLAST[0:0] ),
      .S_AXI_RUSER (  ),
      .S_AXI_RVALID ( axi_interconnect_1_S_RVALID[0:0] ),
      .S_AXI_RREADY ( axi_interconnect_1_S_RREADY[0:0] ),
      .M_AXI_ACLK ( processing_system7_0_FCLK_CLK0[0:0] ),
      .M_AXI_AWID (  ),
      .M_AXI_AWADDR ( axi_interconnect_1_M_AWADDR ),
      .M_AXI_AWLEN (  ),
      .M_AXI_AWSIZE (  ),
      .M_AXI_AWBURST (  ),
      .M_AXI_AWLOCK (  ),
      .M_AXI_AWCACHE (  ),
      .M_AXI_AWPROT (  ),
      .M_AXI_AWREGION (  ),
      .M_AXI_AWQOS (  ),
      .M_AXI_AWUSER (  ),
      .M_AXI_AWVALID ( axi_interconnect_1_M_AWVALID[0:0] ),
      .M_AXI_AWREADY ( axi_interconnect_1_M_AWREADY[0:0] ),
      .M_AXI_WID (  ),
      .M_AXI_WDATA ( axi_interconnect_1_M_WDATA ),
      .M_AXI_WSTRB ( axi_interconnect_1_M_WSTRB ),
      .M_AXI_WLAST (  ),
      .M_AXI_WUSER (  ),
      .M_AXI_WVALID ( axi_interconnect_1_M_WVALID[0:0] ),
      .M_AXI_WREADY ( axi_interconnect_1_M_WREADY[0:0] ),
      .M_AXI_BID ( net_gnd12 ),
      .M_AXI_BRESP ( axi_interconnect_1_M_BRESP ),
      .M_AXI_BUSER ( net_gnd1[0:0] ),
      .M_AXI_BVALID ( axi_interconnect_1_M_BVALID[0:0] ),
      .M_AXI_BREADY ( axi_interconnect_1_M_BREADY[0:0] ),
      .M_AXI_ARID (  ),
      .M_AXI_ARADDR ( axi_interconnect_1_M_ARADDR ),
      .M_AXI_ARLEN (  ),
      .M_AXI_ARSIZE (  ),
      .M_AXI_ARBURST (  ),
      .M_AXI_ARLOCK (  ),
      .M_AXI_ARCACHE (  ),
      .M_AXI_ARPROT (  ),
      .M_AXI_ARREGION (  ),
      .M_AXI_ARQOS (  ),
      .M_AXI_ARUSER (  ),
      .M_AXI_ARVALID ( axi_interconnect_1_M_ARVALID[0:0] ),
      .M_AXI_ARREADY ( axi_interconnect_1_M_ARREADY[0:0] ),
      .M_AXI_RID ( net_gnd12 ),
      .M_AXI_RDATA ( axi_interconnect_1_M_RDATA ),
      .M_AXI_RRESP ( axi_interconnect_1_M_RRESP ),
      .M_AXI_RLAST ( net_gnd1[0:0] ),
      .M_AXI_RUSER ( net_gnd1[0:0] ),
      .M_AXI_RVALID ( axi_interconnect_1_M_RVALID[0:0] ),
      .M_AXI_RREADY ( axi_interconnect_1_M_RREADY[0:0] ),
      .S_AXI_CTRL_AWADDR ( net_gnd32 ),
      .S_AXI_CTRL_AWVALID ( net_gnd0 ),
      .S_AXI_CTRL_AWREADY (  ),
      .S_AXI_CTRL_WDATA ( net_gnd32 ),
      .S_AXI_CTRL_WVALID ( net_gnd0 ),
      .S_AXI_CTRL_WREADY (  ),
      .S_AXI_CTRL_BRESP (  ),
      .S_AXI_CTRL_BVALID (  ),
      .S_AXI_CTRL_BREADY ( net_gnd0 ),
      .S_AXI_CTRL_ARADDR ( net_gnd32 ),
      .S_AXI_CTRL_ARVALID ( net_gnd0 ),
      .S_AXI_CTRL_ARREADY (  ),
      .S_AXI_CTRL_RDATA (  ),
      .S_AXI_CTRL_RRESP (  ),
      .S_AXI_CTRL_RVALID (  ),
      .S_AXI_CTRL_RREADY ( net_gnd0 ),
      .INTERCONNECT_ARESET_OUT_N (  ),
      .DEBUG_AW_TRANS_SEQ (  ),
      .DEBUG_AW_ARB_GRANT (  ),
      .DEBUG_AR_TRANS_SEQ (  ),
      .DEBUG_AR_ARB_GRANT (  ),
      .DEBUG_AW_TRANS_QUAL (  ),
      .DEBUG_AW_ACCEPT_CNT (  ),
      .DEBUG_AW_ACTIVE_THREAD (  ),
      .DEBUG_AW_ACTIVE_TARGET (  ),
      .DEBUG_AW_ACTIVE_REGION (  ),
      .DEBUG_AW_ERROR (  ),
      .DEBUG_AW_TARGET (  ),
      .DEBUG_AR_TRANS_QUAL (  ),
      .DEBUG_AR_ACCEPT_CNT (  ),
      .DEBUG_AR_ACTIVE_THREAD (  ),
      .DEBUG_AR_ACTIVE_TARGET (  ),
      .DEBUG_AR_ACTIVE_REGION (  ),
      .DEBUG_AR_ERROR (  ),
      .DEBUG_AR_TARGET (  ),
      .DEBUG_B_TRANS_SEQ (  ),
      .DEBUG_R_BEAT_CNT (  ),
      .DEBUG_R_TRANS_SEQ (  ),
      .DEBUG_AW_ISSUING_CNT (  ),
      .DEBUG_AR_ISSUING_CNT (  ),
      .DEBUG_W_BEAT_CNT (  ),
      .DEBUG_W_TRANS_SEQ (  ),
      .DEBUG_BID_TARGET (  ),
      .DEBUG_BID_ERROR (  ),
      .DEBUG_RID_TARGET (  ),
      .DEBUG_RID_ERROR (  ),
      .DEBUG_SR_SC_ARADDR (  ),
      .DEBUG_SR_SC_ARADDRCONTROL (  ),
      .DEBUG_SR_SC_AWADDR (  ),
      .DEBUG_SR_SC_AWADDRCONTROL (  ),
      .DEBUG_SR_SC_BRESP (  ),
      .DEBUG_SR_SC_RDATA (  ),
      .DEBUG_SR_SC_RDATACONTROL (  ),
      .DEBUG_SR_SC_WDATA (  ),
      .DEBUG_SR_SC_WDATACONTROL (  ),
      .DEBUG_SC_SF_ARADDR (  ),
      .DEBUG_SC_SF_ARADDRCONTROL (  ),
      .DEBUG_SC_SF_AWADDR (  ),
      .DEBUG_SC_SF_AWADDRCONTROL (  ),
      .DEBUG_SC_SF_BRESP (  ),
      .DEBUG_SC_SF_RDATA (  ),
      .DEBUG_SC_SF_RDATACONTROL (  ),
      .DEBUG_SC_SF_WDATA (  ),
      .DEBUG_SC_SF_WDATACONTROL (  ),
      .DEBUG_SF_CB_ARADDR (  ),
      .DEBUG_SF_CB_ARADDRCONTROL (  ),
      .DEBUG_SF_CB_AWADDR (  ),
      .DEBUG_SF_CB_AWADDRCONTROL (  ),
      .DEBUG_SF_CB_BRESP (  ),
      .DEBUG_SF_CB_RDATA (  ),
      .DEBUG_SF_CB_RDATACONTROL (  ),
      .DEBUG_SF_CB_WDATA (  ),
      .DEBUG_SF_CB_WDATACONTROL (  ),
      .DEBUG_CB_MF_ARADDR (  ),
      .DEBUG_CB_MF_ARADDRCONTROL (  ),
      .DEBUG_CB_MF_AWADDR (  ),
      .DEBUG_CB_MF_AWADDRCONTROL (  ),
      .DEBUG_CB_MF_BRESP (  ),
      .DEBUG_CB_MF_RDATA (  ),
      .DEBUG_CB_MF_RDATACONTROL (  ),
      .DEBUG_CB_MF_WDATA (  ),
      .DEBUG_CB_MF_WDATACONTROL (  ),
      .DEBUG_MF_MC_ARADDR (  ),
      .DEBUG_MF_MC_ARADDRCONTROL (  ),
      .DEBUG_MF_MC_AWADDR (  ),
      .DEBUG_MF_MC_AWADDRCONTROL (  ),
      .DEBUG_MF_MC_BRESP (  ),
      .DEBUG_MF_MC_RDATA (  ),
      .DEBUG_MF_MC_RDATACONTROL (  ),
      .DEBUG_MF_MC_WDATA (  ),
      .DEBUG_MF_MC_WDATACONTROL (  ),
      .DEBUG_MC_MP_ARADDR (  ),
      .DEBUG_MC_MP_ARADDRCONTROL (  ),
      .DEBUG_MC_MP_AWADDR (  ),
      .DEBUG_MC_MP_AWADDRCONTROL (  ),
      .DEBUG_MC_MP_BRESP (  ),
      .DEBUG_MC_MP_RDATA (  ),
      .DEBUG_MC_MP_RDATACONTROL (  ),
      .DEBUG_MC_MP_WDATA (  ),
      .DEBUG_MC_MP_WDATACONTROL (  ),
      .DEBUG_MP_MR_ARADDR (  ),
      .DEBUG_MP_MR_ARADDRCONTROL (  ),
      .DEBUG_MP_MR_AWADDR (  ),
      .DEBUG_MP_MR_AWADDRCONTROL (  ),
      .DEBUG_MP_MR_BRESP (  ),
      .DEBUG_MP_MR_RDATA (  ),
      .DEBUG_MP_MR_RDATACONTROL (  ),
      .DEBUG_MP_MR_WDATA (  ),
      .DEBUG_MP_MR_WDATACONTROL (  )
    );

  IOBUF
    iobuf_0 (
      .I ( processing_system7_0_I2C1_SDA_O ),
      .IO ( processing_system7_0_I2C1_SDA_pin ),
      .O ( processing_system7_0_I2C1_SDA_I ),
      .T ( processing_system7_0_I2C1_SDA_T )
    );

  IOBUF
    iobuf_1 (
      .I ( processing_system7_0_I2C1_SCL_O ),
      .IO ( processing_system7_0_I2C1_SCL_pin ),
      .O ( processing_system7_0_I2C1_SCL_I ),
      .T ( processing_system7_0_I2C1_SCL_T )
    );

endmodule

module PS_processing_system7_0_wrapper
  (
    CAN0_PHY_TX,
    CAN0_PHY_RX,
    CAN1_PHY_TX,
    CAN1_PHY_RX,
    ENET0_GMII_TX_EN,
    ENET0_GMII_TX_ER,
    ENET0_MDIO_MDC,
    ENET0_MDIO_O,
    ENET0_MDIO_T,
    ENET0_PTP_DELAY_REQ_RX,
    ENET0_PTP_DELAY_REQ_TX,
    ENET0_PTP_PDELAY_REQ_RX,
    ENET0_PTP_PDELAY_REQ_TX,
    ENET0_PTP_PDELAY_RESP_RX,
    ENET0_PTP_PDELAY_RESP_TX,
    ENET0_PTP_SYNC_FRAME_RX,
    ENET0_PTP_SYNC_FRAME_TX,
    ENET0_SOF_RX,
    ENET0_SOF_TX,
    ENET0_GMII_TXD,
    ENET0_GMII_COL,
    ENET0_GMII_CRS,
    ENET0_EXT_INTIN,
    ENET0_GMII_RX_CLK,
    ENET0_GMII_RX_DV,
    ENET0_GMII_RX_ER,
    ENET0_GMII_TX_CLK,
    ENET0_MDIO_I,
    ENET0_GMII_RXD,
    ENET1_GMII_TX_EN,
    ENET1_GMII_TX_ER,
    ENET1_MDIO_MDC,
    ENET1_MDIO_O,
    ENET1_MDIO_T,
    ENET1_PTP_DELAY_REQ_RX,
    ENET1_PTP_DELAY_REQ_TX,
    ENET1_PTP_PDELAY_REQ_RX,
    ENET1_PTP_PDELAY_REQ_TX,
    ENET1_PTP_PDELAY_RESP_RX,
    ENET1_PTP_PDELAY_RESP_TX,
    ENET1_PTP_SYNC_FRAME_RX,
    ENET1_PTP_SYNC_FRAME_TX,
    ENET1_SOF_RX,
    ENET1_SOF_TX,
    ENET1_GMII_TXD,
    ENET1_GMII_COL,
    ENET1_GMII_CRS,
    ENET1_EXT_INTIN,
    ENET1_GMII_RX_CLK,
    ENET1_GMII_RX_DV,
    ENET1_GMII_RX_ER,
    ENET1_GMII_TX_CLK,
    ENET1_MDIO_I,
    ENET1_GMII_RXD,
    GPIO_I,
    GPIO_O,
    GPIO_T,
    I2C0_SDA_I,
    I2C0_SDA_O,
    I2C0_SDA_T,
    I2C0_SCL_I,
    I2C0_SCL_O,
    I2C0_SCL_T,
    I2C1_SDA_I,
    I2C1_SDA_O,
    I2C1_SDA_T,
    I2C1_SCL_I,
    I2C1_SCL_O,
    I2C1_SCL_T,
    PJTAG_TCK,
    PJTAG_TMS,
    PJTAG_TD_I,
    PJTAG_TD_T,
    PJTAG_TD_O,
    SDIO0_CLK,
    SDIO0_CLK_FB,
    SDIO0_CMD_O,
    SDIO0_CMD_I,
    SDIO0_CMD_T,
    SDIO0_DATA_I,
    SDIO0_DATA_O,
    SDIO0_DATA_T,
    SDIO0_LED,
    SDIO0_CDN,
    SDIO0_WP,
    SDIO0_BUSPOW,
    SDIO0_BUSVOLT,
    SDIO1_CLK,
    SDIO1_CLK_FB,
    SDIO1_CMD_O,
    SDIO1_CMD_I,
    SDIO1_CMD_T,
    SDIO1_DATA_I,
    SDIO1_DATA_O,
    SDIO1_DATA_T,
    SDIO1_LED,
    SDIO1_CDN,
    SDIO1_WP,
    SDIO1_BUSPOW,
    SDIO1_BUSVOLT,
    SPI0_SCLK_I,
    SPI0_SCLK_O,
    SPI0_SCLK_T,
    SPI0_MOSI_I,
    SPI0_MOSI_O,
    SPI0_MOSI_T,
    SPI0_MISO_I,
    SPI0_MISO_O,
    SPI0_MISO_T,
    SPI0_SS_I,
    SPI0_SS_O,
    SPI0_SS1_O,
    SPI0_SS2_O,
    SPI0_SS_T,
    SPI1_SCLK_I,
    SPI1_SCLK_O,
    SPI1_SCLK_T,
    SPI1_MOSI_I,
    SPI1_MOSI_O,
    SPI1_MOSI_T,
    SPI1_MISO_I,
    SPI1_MISO_O,
    SPI1_MISO_T,
    SPI1_SS_I,
    SPI1_SS_O,
    SPI1_SS1_O,
    SPI1_SS2_O,
    SPI1_SS_T,
    UART0_DTRN,
    UART0_RTSN,
    UART0_TX,
    UART0_CTSN,
    UART0_DCDN,
    UART0_DSRN,
    UART0_RIN,
    UART0_RX,
    UART1_DTRN,
    UART1_RTSN,
    UART1_TX,
    UART1_CTSN,
    UART1_DCDN,
    UART1_DSRN,
    UART1_RIN,
    UART1_RX,
    TTC0_WAVE0_OUT,
    TTC0_WAVE1_OUT,
    TTC0_WAVE2_OUT,
    TTC0_CLK0_IN,
    TTC0_CLK1_IN,
    TTC0_CLK2_IN,
    TTC1_WAVE0_OUT,
    TTC1_WAVE1_OUT,
    TTC1_WAVE2_OUT,
    TTC1_CLK0_IN,
    TTC1_CLK1_IN,
    TTC1_CLK2_IN,
    WDT_CLK_IN,
    WDT_RST_OUT,
    TRACE_CLK,
    TRACE_CTL,
    TRACE_DATA,
    USB0_PORT_INDCTL,
    USB1_PORT_INDCTL,
    USB0_VBUS_PWRSELECT,
    USB1_VBUS_PWRSELECT,
    USB0_VBUS_PWRFAULT,
    USB1_VBUS_PWRFAULT,
    SRAM_INTIN,
    M_AXI_GP0_ARESETN,
    M_AXI_GP0_ARVALID,
    M_AXI_GP0_AWVALID,
    M_AXI_GP0_BREADY,
    M_AXI_GP0_RREADY,
    M_AXI_GP0_WLAST,
    M_AXI_GP0_WVALID,
    M_AXI_GP0_ARID,
    M_AXI_GP0_AWID,
    M_AXI_GP0_WID,
    M_AXI_GP0_ARBURST,
    M_AXI_GP0_ARLOCK,
    M_AXI_GP0_ARSIZE,
    M_AXI_GP0_AWBURST,
    M_AXI_GP0_AWLOCK,
    M_AXI_GP0_AWSIZE,
    M_AXI_GP0_ARPROT,
    M_AXI_GP0_AWPROT,
    M_AXI_GP0_ARADDR,
    M_AXI_GP0_AWADDR,
    M_AXI_GP0_WDATA,
    M_AXI_GP0_ARCACHE,
    M_AXI_GP0_ARLEN,
    M_AXI_GP0_ARQOS,
    M_AXI_GP0_AWCACHE,
    M_AXI_GP0_AWLEN,
    M_AXI_GP0_AWQOS,
    M_AXI_GP0_WSTRB,
    M_AXI_GP0_ACLK,
    M_AXI_GP0_ARREADY,
    M_AXI_GP0_AWREADY,
    M_AXI_GP0_BVALID,
    M_AXI_GP0_RLAST,
    M_AXI_GP0_RVALID,
    M_AXI_GP0_WREADY,
    M_AXI_GP0_BID,
    M_AXI_GP0_RID,
    M_AXI_GP0_BRESP,
    M_AXI_GP0_RRESP,
    M_AXI_GP0_RDATA,
    M_AXI_GP1_ARESETN,
    M_AXI_GP1_ARVALID,
    M_AXI_GP1_AWVALID,
    M_AXI_GP1_BREADY,
    M_AXI_GP1_RREADY,
    M_AXI_GP1_WLAST,
    M_AXI_GP1_WVALID,
    M_AXI_GP1_ARID,
    M_AXI_GP1_AWID,
    M_AXI_GP1_WID,
    M_AXI_GP1_ARBURST,
    M_AXI_GP1_ARLOCK,
    M_AXI_GP1_ARSIZE,
    M_AXI_GP1_AWBURST,
    M_AXI_GP1_AWLOCK,
    M_AXI_GP1_AWSIZE,
    M_AXI_GP1_ARPROT,
    M_AXI_GP1_AWPROT,
    M_AXI_GP1_ARADDR,
    M_AXI_GP1_AWADDR,
    M_AXI_GP1_WDATA,
    M_AXI_GP1_ARCACHE,
    M_AXI_GP1_ARLEN,
    M_AXI_GP1_ARQOS,
    M_AXI_GP1_AWCACHE,
    M_AXI_GP1_AWLEN,
    M_AXI_GP1_AWQOS,
    M_AXI_GP1_WSTRB,
    M_AXI_GP1_ACLK,
    M_AXI_GP1_ARREADY,
    M_AXI_GP1_AWREADY,
    M_AXI_GP1_BVALID,
    M_AXI_GP1_RLAST,
    M_AXI_GP1_RVALID,
    M_AXI_GP1_WREADY,
    M_AXI_GP1_BID,
    M_AXI_GP1_RID,
    M_AXI_GP1_BRESP,
    M_AXI_GP1_RRESP,
    M_AXI_GP1_RDATA,
    S_AXI_GP0_ARESETN,
    S_AXI_GP0_ARREADY,
    S_AXI_GP0_AWREADY,
    S_AXI_GP0_BVALID,
    S_AXI_GP0_RLAST,
    S_AXI_GP0_RVALID,
    S_AXI_GP0_WREADY,
    S_AXI_GP0_BRESP,
    S_AXI_GP0_RRESP,
    S_AXI_GP0_RDATA,
    S_AXI_GP0_BID,
    S_AXI_GP0_RID,
    S_AXI_GP0_ACLK,
    S_AXI_GP0_ARVALID,
    S_AXI_GP0_AWVALID,
    S_AXI_GP0_BREADY,
    S_AXI_GP0_RREADY,
    S_AXI_GP0_WLAST,
    S_AXI_GP0_WVALID,
    S_AXI_GP0_ARBURST,
    S_AXI_GP0_ARLOCK,
    S_AXI_GP0_ARSIZE,
    S_AXI_GP0_AWBURST,
    S_AXI_GP0_AWLOCK,
    S_AXI_GP0_AWSIZE,
    S_AXI_GP0_ARPROT,
    S_AXI_GP0_AWPROT,
    S_AXI_GP0_ARADDR,
    S_AXI_GP0_AWADDR,
    S_AXI_GP0_WDATA,
    S_AXI_GP0_ARCACHE,
    S_AXI_GP0_ARLEN,
    S_AXI_GP0_ARQOS,
    S_AXI_GP0_AWCACHE,
    S_AXI_GP0_AWLEN,
    S_AXI_GP0_AWQOS,
    S_AXI_GP0_WSTRB,
    S_AXI_GP0_ARID,
    S_AXI_GP0_AWID,
    S_AXI_GP0_WID,
    S_AXI_GP1_ARESETN,
    S_AXI_GP1_ARREADY,
    S_AXI_GP1_AWREADY,
    S_AXI_GP1_BVALID,
    S_AXI_GP1_RLAST,
    S_AXI_GP1_RVALID,
    S_AXI_GP1_WREADY,
    S_AXI_GP1_BRESP,
    S_AXI_GP1_RRESP,
    S_AXI_GP1_RDATA,
    S_AXI_GP1_BID,
    S_AXI_GP1_RID,
    S_AXI_GP1_ACLK,
    S_AXI_GP1_ARVALID,
    S_AXI_GP1_AWVALID,
    S_AXI_GP1_BREADY,
    S_AXI_GP1_RREADY,
    S_AXI_GP1_WLAST,
    S_AXI_GP1_WVALID,
    S_AXI_GP1_ARBURST,
    S_AXI_GP1_ARLOCK,
    S_AXI_GP1_ARSIZE,
    S_AXI_GP1_AWBURST,
    S_AXI_GP1_AWLOCK,
    S_AXI_GP1_AWSIZE,
    S_AXI_GP1_ARPROT,
    S_AXI_GP1_AWPROT,
    S_AXI_GP1_ARADDR,
    S_AXI_GP1_AWADDR,
    S_AXI_GP1_WDATA,
    S_AXI_GP1_ARCACHE,
    S_AXI_GP1_ARLEN,
    S_AXI_GP1_ARQOS,
    S_AXI_GP1_AWCACHE,
    S_AXI_GP1_AWLEN,
    S_AXI_GP1_AWQOS,
    S_AXI_GP1_WSTRB,
    S_AXI_GP1_ARID,
    S_AXI_GP1_AWID,
    S_AXI_GP1_WID,
    S_AXI_ACP_ARESETN,
    S_AXI_ACP_AWREADY,
    S_AXI_ACP_ARREADY,
    S_AXI_ACP_BVALID,
    S_AXI_ACP_RLAST,
    S_AXI_ACP_RVALID,
    S_AXI_ACP_WREADY,
    S_AXI_ACP_BRESP,
    S_AXI_ACP_RRESP,
    S_AXI_ACP_BID,
    S_AXI_ACP_RID,
    S_AXI_ACP_RDATA,
    S_AXI_ACP_ACLK,
    S_AXI_ACP_ARVALID,
    S_AXI_ACP_AWVALID,
    S_AXI_ACP_BREADY,
    S_AXI_ACP_RREADY,
    S_AXI_ACP_WLAST,
    S_AXI_ACP_WVALID,
    S_AXI_ACP_ARID,
    S_AXI_ACP_ARPROT,
    S_AXI_ACP_AWID,
    S_AXI_ACP_AWPROT,
    S_AXI_ACP_WID,
    S_AXI_ACP_ARADDR,
    S_AXI_ACP_AWADDR,
    S_AXI_ACP_ARCACHE,
    S_AXI_ACP_ARLEN,
    S_AXI_ACP_ARQOS,
    S_AXI_ACP_AWCACHE,
    S_AXI_ACP_AWLEN,
    S_AXI_ACP_AWQOS,
    S_AXI_ACP_ARBURST,
    S_AXI_ACP_ARLOCK,
    S_AXI_ACP_ARSIZE,
    S_AXI_ACP_AWBURST,
    S_AXI_ACP_AWLOCK,
    S_AXI_ACP_AWSIZE,
    S_AXI_ACP_ARUSER,
    S_AXI_ACP_AWUSER,
    S_AXI_ACP_WDATA,
    S_AXI_ACP_WSTRB,
    S_AXI_HP0_ARESETN,
    S_AXI_HP0_ARREADY,
    S_AXI_HP0_AWREADY,
    S_AXI_HP0_BVALID,
    S_AXI_HP0_RLAST,
    S_AXI_HP0_RVALID,
    S_AXI_HP0_WREADY,
    S_AXI_HP0_BRESP,
    S_AXI_HP0_RRESP,
    S_AXI_HP0_BID,
    S_AXI_HP0_RID,
    S_AXI_HP0_RDATA,
    S_AXI_HP0_RCOUNT,
    S_AXI_HP0_WCOUNT,
    S_AXI_HP0_RACOUNT,
    S_AXI_HP0_WACOUNT,
    S_AXI_HP0_ACLK,
    S_AXI_HP0_ARVALID,
    S_AXI_HP0_AWVALID,
    S_AXI_HP0_BREADY,
    S_AXI_HP0_RDISSUECAP1_EN,
    S_AXI_HP0_RREADY,
    S_AXI_HP0_WLAST,
    S_AXI_HP0_WRISSUECAP1_EN,
    S_AXI_HP0_WVALID,
    S_AXI_HP0_ARBURST,
    S_AXI_HP0_ARLOCK,
    S_AXI_HP0_ARSIZE,
    S_AXI_HP0_AWBURST,
    S_AXI_HP0_AWLOCK,
    S_AXI_HP0_AWSIZE,
    S_AXI_HP0_ARPROT,
    S_AXI_HP0_AWPROT,
    S_AXI_HP0_ARADDR,
    S_AXI_HP0_AWADDR,
    S_AXI_HP0_ARCACHE,
    S_AXI_HP0_ARLEN,
    S_AXI_HP0_ARQOS,
    S_AXI_HP0_AWCACHE,
    S_AXI_HP0_AWLEN,
    S_AXI_HP0_AWQOS,
    S_AXI_HP0_ARID,
    S_AXI_HP0_AWID,
    S_AXI_HP0_WID,
    S_AXI_HP0_WDATA,
    S_AXI_HP0_WSTRB,
    S_AXI_HP1_ARESETN,
    S_AXI_HP1_ARREADY,
    S_AXI_HP1_AWREADY,
    S_AXI_HP1_BVALID,
    S_AXI_HP1_RLAST,
    S_AXI_HP1_RVALID,
    S_AXI_HP1_WREADY,
    S_AXI_HP1_BRESP,
    S_AXI_HP1_RRESP,
    S_AXI_HP1_BID,
    S_AXI_HP1_RID,
    S_AXI_HP1_RDATA,
    S_AXI_HP1_RCOUNT,
    S_AXI_HP1_WCOUNT,
    S_AXI_HP1_RACOUNT,
    S_AXI_HP1_WACOUNT,
    S_AXI_HP1_ACLK,
    S_AXI_HP1_ARVALID,
    S_AXI_HP1_AWVALID,
    S_AXI_HP1_BREADY,
    S_AXI_HP1_RDISSUECAP1_EN,
    S_AXI_HP1_RREADY,
    S_AXI_HP1_WLAST,
    S_AXI_HP1_WRISSUECAP1_EN,
    S_AXI_HP1_WVALID,
    S_AXI_HP1_ARBURST,
    S_AXI_HP1_ARLOCK,
    S_AXI_HP1_ARSIZE,
    S_AXI_HP1_AWBURST,
    S_AXI_HP1_AWLOCK,
    S_AXI_HP1_AWSIZE,
    S_AXI_HP1_ARPROT,
    S_AXI_HP1_AWPROT,
    S_AXI_HP1_ARADDR,
    S_AXI_HP1_AWADDR,
    S_AXI_HP1_ARCACHE,
    S_AXI_HP1_ARLEN,
    S_AXI_HP1_ARQOS,
    S_AXI_HP1_AWCACHE,
    S_AXI_HP1_AWLEN,
    S_AXI_HP1_AWQOS,
    S_AXI_HP1_ARID,
    S_AXI_HP1_AWID,
    S_AXI_HP1_WID,
    S_AXI_HP1_WDATA,
    S_AXI_HP1_WSTRB,
    S_AXI_HP2_ARESETN,
    S_AXI_HP2_ARREADY,
    S_AXI_HP2_AWREADY,
    S_AXI_HP2_BVALID,
    S_AXI_HP2_RLAST,
    S_AXI_HP2_RVALID,
    S_AXI_HP2_WREADY,
    S_AXI_HP2_BRESP,
    S_AXI_HP2_RRESP,
    S_AXI_HP2_BID,
    S_AXI_HP2_RID,
    S_AXI_HP2_RDATA,
    S_AXI_HP2_RCOUNT,
    S_AXI_HP2_WCOUNT,
    S_AXI_HP2_RACOUNT,
    S_AXI_HP2_WACOUNT,
    S_AXI_HP2_ACLK,
    S_AXI_HP2_ARVALID,
    S_AXI_HP2_AWVALID,
    S_AXI_HP2_BREADY,
    S_AXI_HP2_RDISSUECAP1_EN,
    S_AXI_HP2_RREADY,
    S_AXI_HP2_WLAST,
    S_AXI_HP2_WRISSUECAP1_EN,
    S_AXI_HP2_WVALID,
    S_AXI_HP2_ARBURST,
    S_AXI_HP2_ARLOCK,
    S_AXI_HP2_ARSIZE,
    S_AXI_HP2_AWBURST,
    S_AXI_HP2_AWLOCK,
    S_AXI_HP2_AWSIZE,
    S_AXI_HP2_ARPROT,
    S_AXI_HP2_AWPROT,
    S_AXI_HP2_ARADDR,
    S_AXI_HP2_AWADDR,
    S_AXI_HP2_ARCACHE,
    S_AXI_HP2_ARLEN,
    S_AXI_HP2_ARQOS,
    S_AXI_HP2_AWCACHE,
    S_AXI_HP2_AWLEN,
    S_AXI_HP2_AWQOS,
    S_AXI_HP2_ARID,
    S_AXI_HP2_AWID,
    S_AXI_HP2_WID,
    S_AXI_HP2_WDATA,
    S_AXI_HP2_WSTRB,
    S_AXI_HP3_ARESETN,
    S_AXI_HP3_ARREADY,
    S_AXI_HP3_AWREADY,
    S_AXI_HP3_BVALID,
    S_AXI_HP3_RLAST,
    S_AXI_HP3_RVALID,
    S_AXI_HP3_WREADY,
    S_AXI_HP3_BRESP,
    S_AXI_HP3_RRESP,
    S_AXI_HP3_BID,
    S_AXI_HP3_RID,
    S_AXI_HP3_RDATA,
    S_AXI_HP3_RCOUNT,
    S_AXI_HP3_WCOUNT,
    S_AXI_HP3_RACOUNT,
    S_AXI_HP3_WACOUNT,
    S_AXI_HP3_ACLK,
    S_AXI_HP3_ARVALID,
    S_AXI_HP3_AWVALID,
    S_AXI_HP3_BREADY,
    S_AXI_HP3_RDISSUECAP1_EN,
    S_AXI_HP3_RREADY,
    S_AXI_HP3_WLAST,
    S_AXI_HP3_WRISSUECAP1_EN,
    S_AXI_HP3_WVALID,
    S_AXI_HP3_ARBURST,
    S_AXI_HP3_ARLOCK,
    S_AXI_HP3_ARSIZE,
    S_AXI_HP3_AWBURST,
    S_AXI_HP3_AWLOCK,
    S_AXI_HP3_AWSIZE,
    S_AXI_HP3_ARPROT,
    S_AXI_HP3_AWPROT,
    S_AXI_HP3_ARADDR,
    S_AXI_HP3_AWADDR,
    S_AXI_HP3_ARCACHE,
    S_AXI_HP3_ARLEN,
    S_AXI_HP3_ARQOS,
    S_AXI_HP3_AWCACHE,
    S_AXI_HP3_AWLEN,
    S_AXI_HP3_AWQOS,
    S_AXI_HP3_ARID,
    S_AXI_HP3_AWID,
    S_AXI_HP3_WID,
    S_AXI_HP3_WDATA,
    S_AXI_HP3_WSTRB,
    DMA0_DATYPE,
    DMA0_DAVALID,
    DMA0_DRREADY,
    DMA0_RSTN,
    DMA0_ACLK,
    DMA0_DAREADY,
    DMA0_DRLAST,
    DMA0_DRVALID,
    DMA0_DRTYPE,
    DMA1_DATYPE,
    DMA1_DAVALID,
    DMA1_DRREADY,
    DMA1_RSTN,
    DMA1_ACLK,
    DMA1_DAREADY,
    DMA1_DRLAST,
    DMA1_DRVALID,
    DMA1_DRTYPE,
    DMA2_DATYPE,
    DMA2_DAVALID,
    DMA2_DRREADY,
    DMA2_RSTN,
    DMA2_ACLK,
    DMA2_DAREADY,
    DMA2_DRLAST,
    DMA2_DRVALID,
    DMA3_DRVALID,
    DMA3_DATYPE,
    DMA3_DAVALID,
    DMA3_DRREADY,
    DMA3_RSTN,
    DMA3_ACLK,
    DMA3_DAREADY,
    DMA3_DRLAST,
    DMA2_DRTYPE,
    DMA3_DRTYPE,
    FTMD_TRACEIN_DATA,
    FTMD_TRACEIN_VALID,
    FTMD_TRACEIN_CLK,
    FTMD_TRACEIN_ATID,
    FTMT_F2P_TRIG,
    FTMT_F2P_TRIGACK,
    FTMT_F2P_DEBUG,
    FTMT_P2F_TRIGACK,
    FTMT_P2F_TRIG,
    FTMT_P2F_DEBUG,
    FCLK_CLK3,
    FCLK_CLK2,
    FCLK_CLK1,
    FCLK_CLK0,
    FCLK_CLKTRIG3_N,
    FCLK_CLKTRIG2_N,
    FCLK_CLKTRIG1_N,
    FCLK_CLKTRIG0_N,
    FCLK_RESET3_N,
    FCLK_RESET2_N,
    FCLK_RESET1_N,
    FCLK_RESET0_N,
    FPGA_IDLE_N,
    DDR_ARB,
    IRQ_F2P,
    Core0_nFIQ,
    Core0_nIRQ,
    Core1_nFIQ,
    Core1_nIRQ,
    EVENT_EVENTO,
    EVENT_STANDBYWFE,
    EVENT_STANDBYWFI,
    EVENT_EVENTI,
    MIO,
    DDR_Clk,
    DDR_Clk_n,
    DDR_CKE,
    DDR_CS_n,
    DDR_RAS_n,
    DDR_CAS_n,
    DDR_WEB,
    DDR_BankAddr,
    DDR_Addr,
    DDR_ODT,
    DDR_DRSTB,
    DDR_DQ,
    DDR_DM,
    DDR_DQS,
    DDR_DQS_n,
    DDR_VRN,
    DDR_VRP,
    PS_SRSTB,
    PS_CLK,
    PS_PORB,
    IRQ_P2F_DMAC_ABORT,
    IRQ_P2F_DMAC0,
    IRQ_P2F_DMAC1,
    IRQ_P2F_DMAC2,
    IRQ_P2F_DMAC3,
    IRQ_P2F_DMAC4,
    IRQ_P2F_DMAC5,
    IRQ_P2F_DMAC6,
    IRQ_P2F_DMAC7,
    IRQ_P2F_SMC,
    IRQ_P2F_QSPI,
    IRQ_P2F_CTI,
    IRQ_P2F_GPIO,
    IRQ_P2F_USB0,
    IRQ_P2F_ENET0,
    IRQ_P2F_ENET_WAKE0,
    IRQ_P2F_SDIO0,
    IRQ_P2F_I2C0,
    IRQ_P2F_SPI0,
    IRQ_P2F_UART0,
    IRQ_P2F_CAN0,
    IRQ_P2F_USB1,
    IRQ_P2F_ENET1,
    IRQ_P2F_ENET_WAKE1,
    IRQ_P2F_SDIO1,
    IRQ_P2F_I2C1,
    IRQ_P2F_SPI1,
    IRQ_P2F_UART1,
    IRQ_P2F_CAN1
  );
  output CAN0_PHY_TX;
  input CAN0_PHY_RX;
  output CAN1_PHY_TX;
  input CAN1_PHY_RX;
  output ENET0_GMII_TX_EN;
  output ENET0_GMII_TX_ER;
  output ENET0_MDIO_MDC;
  output ENET0_MDIO_O;
  output ENET0_MDIO_T;
  output ENET0_PTP_DELAY_REQ_RX;
  output ENET0_PTP_DELAY_REQ_TX;
  output ENET0_PTP_PDELAY_REQ_RX;
  output ENET0_PTP_PDELAY_REQ_TX;
  output ENET0_PTP_PDELAY_RESP_RX;
  output ENET0_PTP_PDELAY_RESP_TX;
  output ENET0_PTP_SYNC_FRAME_RX;
  output ENET0_PTP_SYNC_FRAME_TX;
  output ENET0_SOF_RX;
  output ENET0_SOF_TX;
  output [7:0] ENET0_GMII_TXD;
  input ENET0_GMII_COL;
  input ENET0_GMII_CRS;
  input ENET0_EXT_INTIN;
  input ENET0_GMII_RX_CLK;
  input ENET0_GMII_RX_DV;
  input ENET0_GMII_RX_ER;
  input ENET0_GMII_TX_CLK;
  input ENET0_MDIO_I;
  input [7:0] ENET0_GMII_RXD;
  output ENET1_GMII_TX_EN;
  output ENET1_GMII_TX_ER;
  output ENET1_MDIO_MDC;
  output ENET1_MDIO_O;
  output ENET1_MDIO_T;
  output ENET1_PTP_DELAY_REQ_RX;
  output ENET1_PTP_DELAY_REQ_TX;
  output ENET1_PTP_PDELAY_REQ_RX;
  output ENET1_PTP_PDELAY_REQ_TX;
  output ENET1_PTP_PDELAY_RESP_RX;
  output ENET1_PTP_PDELAY_RESP_TX;
  output ENET1_PTP_SYNC_FRAME_RX;
  output ENET1_PTP_SYNC_FRAME_TX;
  output ENET1_SOF_RX;
  output ENET1_SOF_TX;
  output [7:0] ENET1_GMII_TXD;
  input ENET1_GMII_COL;
  input ENET1_GMII_CRS;
  input ENET1_EXT_INTIN;
  input ENET1_GMII_RX_CLK;
  input ENET1_GMII_RX_DV;
  input ENET1_GMII_RX_ER;
  input ENET1_GMII_TX_CLK;
  input ENET1_MDIO_I;
  input [7:0] ENET1_GMII_RXD;
  input [63:0] GPIO_I;
  output [63:0] GPIO_O;
  output [63:0] GPIO_T;
  input I2C0_SDA_I;
  output I2C0_SDA_O;
  output I2C0_SDA_T;
  input I2C0_SCL_I;
  output I2C0_SCL_O;
  output I2C0_SCL_T;
  input I2C1_SDA_I;
  output I2C1_SDA_O;
  output I2C1_SDA_T;
  input I2C1_SCL_I;
  output I2C1_SCL_O;
  output I2C1_SCL_T;
  input PJTAG_TCK;
  input PJTAG_TMS;
  input PJTAG_TD_I;
  output PJTAG_TD_T;
  output PJTAG_TD_O;
  output SDIO0_CLK;
  input SDIO0_CLK_FB;
  output SDIO0_CMD_O;
  input SDIO0_CMD_I;
  output SDIO0_CMD_T;
  input [3:0] SDIO0_DATA_I;
  output [3:0] SDIO0_DATA_O;
  output [3:0] SDIO0_DATA_T;
  output SDIO0_LED;
  input SDIO0_CDN;
  input SDIO0_WP;
  output SDIO0_BUSPOW;
  output [2:0] SDIO0_BUSVOLT;
  output SDIO1_CLK;
  input SDIO1_CLK_FB;
  output SDIO1_CMD_O;
  input SDIO1_CMD_I;
  output SDIO1_CMD_T;
  input [3:0] SDIO1_DATA_I;
  output [3:0] SDIO1_DATA_O;
  output [3:0] SDIO1_DATA_T;
  output SDIO1_LED;
  input SDIO1_CDN;
  input SDIO1_WP;
  output SDIO1_BUSPOW;
  output [2:0] SDIO1_BUSVOLT;
  input SPI0_SCLK_I;
  output SPI0_SCLK_O;
  output SPI0_SCLK_T;
  input SPI0_MOSI_I;
  output SPI0_MOSI_O;
  output SPI0_MOSI_T;
  input SPI0_MISO_I;
  output SPI0_MISO_O;
  output SPI0_MISO_T;
  input SPI0_SS_I;
  output SPI0_SS_O;
  output SPI0_SS1_O;
  output SPI0_SS2_O;
  output SPI0_SS_T;
  input SPI1_SCLK_I;
  output SPI1_SCLK_O;
  output SPI1_SCLK_T;
  input SPI1_MOSI_I;
  output SPI1_MOSI_O;
  output SPI1_MOSI_T;
  input SPI1_MISO_I;
  output SPI1_MISO_O;
  output SPI1_MISO_T;
  input SPI1_SS_I;
  output SPI1_SS_O;
  output SPI1_SS1_O;
  output SPI1_SS2_O;
  output SPI1_SS_T;
  output UART0_DTRN;
  output UART0_RTSN;
  output UART0_TX;
  input UART0_CTSN;
  input UART0_DCDN;
  input UART0_DSRN;
  input UART0_RIN;
  input UART0_RX;
  output UART1_DTRN;
  output UART1_RTSN;
  output UART1_TX;
  input UART1_CTSN;
  input UART1_DCDN;
  input UART1_DSRN;
  input UART1_RIN;
  input UART1_RX;
  output TTC0_WAVE0_OUT;
  output TTC0_WAVE1_OUT;
  output TTC0_WAVE2_OUT;
  input TTC0_CLK0_IN;
  input TTC0_CLK1_IN;
  input TTC0_CLK2_IN;
  output TTC1_WAVE0_OUT;
  output TTC1_WAVE1_OUT;
  output TTC1_WAVE2_OUT;
  input TTC1_CLK0_IN;
  input TTC1_CLK1_IN;
  input TTC1_CLK2_IN;
  input WDT_CLK_IN;
  output WDT_RST_OUT;
  input TRACE_CLK;
  output TRACE_CTL;
  output [31:0] TRACE_DATA;
  output [1:0] USB0_PORT_INDCTL;
  output [1:0] USB1_PORT_INDCTL;
  output USB0_VBUS_PWRSELECT;
  output USB1_VBUS_PWRSELECT;
  input USB0_VBUS_PWRFAULT;
  input USB1_VBUS_PWRFAULT;
  input SRAM_INTIN;
  output M_AXI_GP0_ARESETN;
  output M_AXI_GP0_ARVALID;
  output M_AXI_GP0_AWVALID;
  output M_AXI_GP0_BREADY;
  output M_AXI_GP0_RREADY;
  output M_AXI_GP0_WLAST;
  output M_AXI_GP0_WVALID;
  output [11:0] M_AXI_GP0_ARID;
  output [11:0] M_AXI_GP0_AWID;
  output [11:0] M_AXI_GP0_WID;
  output [1:0] M_AXI_GP0_ARBURST;
  output [1:0] M_AXI_GP0_ARLOCK;
  output [2:0] M_AXI_GP0_ARSIZE;
  output [1:0] M_AXI_GP0_AWBURST;
  output [1:0] M_AXI_GP0_AWLOCK;
  output [2:0] M_AXI_GP0_AWSIZE;
  output [2:0] M_AXI_GP0_ARPROT;
  output [2:0] M_AXI_GP0_AWPROT;
  output [31:0] M_AXI_GP0_ARADDR;
  output [31:0] M_AXI_GP0_AWADDR;
  output [31:0] M_AXI_GP0_WDATA;
  output [3:0] M_AXI_GP0_ARCACHE;
  output [3:0] M_AXI_GP0_ARLEN;
  output [3:0] M_AXI_GP0_ARQOS;
  output [3:0] M_AXI_GP0_AWCACHE;
  output [3:0] M_AXI_GP0_AWLEN;
  output [3:0] M_AXI_GP0_AWQOS;
  output [3:0] M_AXI_GP0_WSTRB;
  input M_AXI_GP0_ACLK;
  input M_AXI_GP0_ARREADY;
  input M_AXI_GP0_AWREADY;
  input M_AXI_GP0_BVALID;
  input M_AXI_GP0_RLAST;
  input M_AXI_GP0_RVALID;
  input M_AXI_GP0_WREADY;
  input [11:0] M_AXI_GP0_BID;
  input [11:0] M_AXI_GP0_RID;
  input [1:0] M_AXI_GP0_BRESP;
  input [1:0] M_AXI_GP0_RRESP;
  input [31:0] M_AXI_GP0_RDATA;
  output M_AXI_GP1_ARESETN;
  output M_AXI_GP1_ARVALID;
  output M_AXI_GP1_AWVALID;
  output M_AXI_GP1_BREADY;
  output M_AXI_GP1_RREADY;
  output M_AXI_GP1_WLAST;
  output M_AXI_GP1_WVALID;
  output [11:0] M_AXI_GP1_ARID;
  output [11:0] M_AXI_GP1_AWID;
  output [11:0] M_AXI_GP1_WID;
  output [1:0] M_AXI_GP1_ARBURST;
  output [1:0] M_AXI_GP1_ARLOCK;
  output [2:0] M_AXI_GP1_ARSIZE;
  output [1:0] M_AXI_GP1_AWBURST;
  output [1:0] M_AXI_GP1_AWLOCK;
  output [2:0] M_AXI_GP1_AWSIZE;
  output [2:0] M_AXI_GP1_ARPROT;
  output [2:0] M_AXI_GP1_AWPROT;
  output [31:0] M_AXI_GP1_ARADDR;
  output [31:0] M_AXI_GP1_AWADDR;
  output [31:0] M_AXI_GP1_WDATA;
  output [3:0] M_AXI_GP1_ARCACHE;
  output [3:0] M_AXI_GP1_ARLEN;
  output [3:0] M_AXI_GP1_ARQOS;
  output [3:0] M_AXI_GP1_AWCACHE;
  output [3:0] M_AXI_GP1_AWLEN;
  output [3:0] M_AXI_GP1_AWQOS;
  output [3:0] M_AXI_GP1_WSTRB;
  input M_AXI_GP1_ACLK;
  input M_AXI_GP1_ARREADY;
  input M_AXI_GP1_AWREADY;
  input M_AXI_GP1_BVALID;
  input M_AXI_GP1_RLAST;
  input M_AXI_GP1_RVALID;
  input M_AXI_GP1_WREADY;
  input [11:0] M_AXI_GP1_BID;
  input [11:0] M_AXI_GP1_RID;
  input [1:0] M_AXI_GP1_BRESP;
  input [1:0] M_AXI_GP1_RRESP;
  input [31:0] M_AXI_GP1_RDATA;
  output S_AXI_GP0_ARESETN;
  output S_AXI_GP0_ARREADY;
  output S_AXI_GP0_AWREADY;
  output S_AXI_GP0_BVALID;
  output S_AXI_GP0_RLAST;
  output S_AXI_GP0_RVALID;
  output S_AXI_GP0_WREADY;
  output [1:0] S_AXI_GP0_BRESP;
  output [1:0] S_AXI_GP0_RRESP;
  output [31:0] S_AXI_GP0_RDATA;
  output [5:0] S_AXI_GP0_BID;
  output [5:0] S_AXI_GP0_RID;
  input S_AXI_GP0_ACLK;
  input S_AXI_GP0_ARVALID;
  input S_AXI_GP0_AWVALID;
  input S_AXI_GP0_BREADY;
  input S_AXI_GP0_RREADY;
  input S_AXI_GP0_WLAST;
  input S_AXI_GP0_WVALID;
  input [1:0] S_AXI_GP0_ARBURST;
  input [1:0] S_AXI_GP0_ARLOCK;
  input [2:0] S_AXI_GP0_ARSIZE;
  input [1:0] S_AXI_GP0_AWBURST;
  input [1:0] S_AXI_GP0_AWLOCK;
  input [2:0] S_AXI_GP0_AWSIZE;
  input [2:0] S_AXI_GP0_ARPROT;
  input [2:0] S_AXI_GP0_AWPROT;
  input [31:0] S_AXI_GP0_ARADDR;
  input [31:0] S_AXI_GP0_AWADDR;
  input [31:0] S_AXI_GP0_WDATA;
  input [3:0] S_AXI_GP0_ARCACHE;
  input [3:0] S_AXI_GP0_ARLEN;
  input [3:0] S_AXI_GP0_ARQOS;
  input [3:0] S_AXI_GP0_AWCACHE;
  input [3:0] S_AXI_GP0_AWLEN;
  input [3:0] S_AXI_GP0_AWQOS;
  input [3:0] S_AXI_GP0_WSTRB;
  input [5:0] S_AXI_GP0_ARID;
  input [5:0] S_AXI_GP0_AWID;
  input [5:0] S_AXI_GP0_WID;
  output S_AXI_GP1_ARESETN;
  output S_AXI_GP1_ARREADY;
  output S_AXI_GP1_AWREADY;
  output S_AXI_GP1_BVALID;
  output S_AXI_GP1_RLAST;
  output S_AXI_GP1_RVALID;
  output S_AXI_GP1_WREADY;
  output [1:0] S_AXI_GP1_BRESP;
  output [1:0] S_AXI_GP1_RRESP;
  output [31:0] S_AXI_GP1_RDATA;
  output [5:0] S_AXI_GP1_BID;
  output [5:0] S_AXI_GP1_RID;
  input S_AXI_GP1_ACLK;
  input S_AXI_GP1_ARVALID;
  input S_AXI_GP1_AWVALID;
  input S_AXI_GP1_BREADY;
  input S_AXI_GP1_RREADY;
  input S_AXI_GP1_WLAST;
  input S_AXI_GP1_WVALID;
  input [1:0] S_AXI_GP1_ARBURST;
  input [1:0] S_AXI_GP1_ARLOCK;
  input [2:0] S_AXI_GP1_ARSIZE;
  input [1:0] S_AXI_GP1_AWBURST;
  input [1:0] S_AXI_GP1_AWLOCK;
  input [2:0] S_AXI_GP1_AWSIZE;
  input [2:0] S_AXI_GP1_ARPROT;
  input [2:0] S_AXI_GP1_AWPROT;
  input [31:0] S_AXI_GP1_ARADDR;
  input [31:0] S_AXI_GP1_AWADDR;
  input [31:0] S_AXI_GP1_WDATA;
  input [3:0] S_AXI_GP1_ARCACHE;
  input [3:0] S_AXI_GP1_ARLEN;
  input [3:0] S_AXI_GP1_ARQOS;
  input [3:0] S_AXI_GP1_AWCACHE;
  input [3:0] S_AXI_GP1_AWLEN;
  input [3:0] S_AXI_GP1_AWQOS;
  input [3:0] S_AXI_GP1_WSTRB;
  input [5:0] S_AXI_GP1_ARID;
  input [5:0] S_AXI_GP1_AWID;
  input [5:0] S_AXI_GP1_WID;
  output S_AXI_ACP_ARESETN;
  output S_AXI_ACP_AWREADY;
  output S_AXI_ACP_ARREADY;
  output S_AXI_ACP_BVALID;
  output S_AXI_ACP_RLAST;
  output S_AXI_ACP_RVALID;
  output S_AXI_ACP_WREADY;
  output [1:0] S_AXI_ACP_BRESP;
  output [1:0] S_AXI_ACP_RRESP;
  output [2:0] S_AXI_ACP_BID;
  output [2:0] S_AXI_ACP_RID;
  output [63:0] S_AXI_ACP_RDATA;
  input S_AXI_ACP_ACLK;
  input S_AXI_ACP_ARVALID;
  input S_AXI_ACP_AWVALID;
  input S_AXI_ACP_BREADY;
  input S_AXI_ACP_RREADY;
  input S_AXI_ACP_WLAST;
  input S_AXI_ACP_WVALID;
  input [2:0] S_AXI_ACP_ARID;
  input [2:0] S_AXI_ACP_ARPROT;
  input [2:0] S_AXI_ACP_AWID;
  input [2:0] S_AXI_ACP_AWPROT;
  input [2:0] S_AXI_ACP_WID;
  input [31:0] S_AXI_ACP_ARADDR;
  input [31:0] S_AXI_ACP_AWADDR;
  input [3:0] S_AXI_ACP_ARCACHE;
  input [3:0] S_AXI_ACP_ARLEN;
  input [3:0] S_AXI_ACP_ARQOS;
  input [3:0] S_AXI_ACP_AWCACHE;
  input [3:0] S_AXI_ACP_AWLEN;
  input [3:0] S_AXI_ACP_AWQOS;
  input [1:0] S_AXI_ACP_ARBURST;
  input [1:0] S_AXI_ACP_ARLOCK;
  input [2:0] S_AXI_ACP_ARSIZE;
  input [1:0] S_AXI_ACP_AWBURST;
  input [1:0] S_AXI_ACP_AWLOCK;
  input [2:0] S_AXI_ACP_AWSIZE;
  input [4:0] S_AXI_ACP_ARUSER;
  input [4:0] S_AXI_ACP_AWUSER;
  input [63:0] S_AXI_ACP_WDATA;
  input [7:0] S_AXI_ACP_WSTRB;
  output S_AXI_HP0_ARESETN;
  output S_AXI_HP0_ARREADY;
  output S_AXI_HP0_AWREADY;
  output S_AXI_HP0_BVALID;
  output S_AXI_HP0_RLAST;
  output S_AXI_HP0_RVALID;
  output S_AXI_HP0_WREADY;
  output [1:0] S_AXI_HP0_BRESP;
  output [1:0] S_AXI_HP0_RRESP;
  output [5:0] S_AXI_HP0_BID;
  output [5:0] S_AXI_HP0_RID;
  output [63:0] S_AXI_HP0_RDATA;
  output [7:0] S_AXI_HP0_RCOUNT;
  output [7:0] S_AXI_HP0_WCOUNT;
  output [2:0] S_AXI_HP0_RACOUNT;
  output [5:0] S_AXI_HP0_WACOUNT;
  input S_AXI_HP0_ACLK;
  input S_AXI_HP0_ARVALID;
  input S_AXI_HP0_AWVALID;
  input S_AXI_HP0_BREADY;
  input S_AXI_HP0_RDISSUECAP1_EN;
  input S_AXI_HP0_RREADY;
  input S_AXI_HP0_WLAST;
  input S_AXI_HP0_WRISSUECAP1_EN;
  input S_AXI_HP0_WVALID;
  input [1:0] S_AXI_HP0_ARBURST;
  input [1:0] S_AXI_HP0_ARLOCK;
  input [2:0] S_AXI_HP0_ARSIZE;
  input [1:0] S_AXI_HP0_AWBURST;
  input [1:0] S_AXI_HP0_AWLOCK;
  input [2:0] S_AXI_HP0_AWSIZE;
  input [2:0] S_AXI_HP0_ARPROT;
  input [2:0] S_AXI_HP0_AWPROT;
  input [31:0] S_AXI_HP0_ARADDR;
  input [31:0] S_AXI_HP0_AWADDR;
  input [3:0] S_AXI_HP0_ARCACHE;
  input [3:0] S_AXI_HP0_ARLEN;
  input [3:0] S_AXI_HP0_ARQOS;
  input [3:0] S_AXI_HP0_AWCACHE;
  input [3:0] S_AXI_HP0_AWLEN;
  input [3:0] S_AXI_HP0_AWQOS;
  input [5:0] S_AXI_HP0_ARID;
  input [5:0] S_AXI_HP0_AWID;
  input [5:0] S_AXI_HP0_WID;
  input [63:0] S_AXI_HP0_WDATA;
  input [7:0] S_AXI_HP0_WSTRB;
  output S_AXI_HP1_ARESETN;
  output S_AXI_HP1_ARREADY;
  output S_AXI_HP1_AWREADY;
  output S_AXI_HP1_BVALID;
  output S_AXI_HP1_RLAST;
  output S_AXI_HP1_RVALID;
  output S_AXI_HP1_WREADY;
  output [1:0] S_AXI_HP1_BRESP;
  output [1:0] S_AXI_HP1_RRESP;
  output [5:0] S_AXI_HP1_BID;
  output [5:0] S_AXI_HP1_RID;
  output [63:0] S_AXI_HP1_RDATA;
  output [7:0] S_AXI_HP1_RCOUNT;
  output [7:0] S_AXI_HP1_WCOUNT;
  output [2:0] S_AXI_HP1_RACOUNT;
  output [5:0] S_AXI_HP1_WACOUNT;
  input S_AXI_HP1_ACLK;
  input S_AXI_HP1_ARVALID;
  input S_AXI_HP1_AWVALID;
  input S_AXI_HP1_BREADY;
  input S_AXI_HP1_RDISSUECAP1_EN;
  input S_AXI_HP1_RREADY;
  input S_AXI_HP1_WLAST;
  input S_AXI_HP1_WRISSUECAP1_EN;
  input S_AXI_HP1_WVALID;
  input [1:0] S_AXI_HP1_ARBURST;
  input [1:0] S_AXI_HP1_ARLOCK;
  input [2:0] S_AXI_HP1_ARSIZE;
  input [1:0] S_AXI_HP1_AWBURST;
  input [1:0] S_AXI_HP1_AWLOCK;
  input [2:0] S_AXI_HP1_AWSIZE;
  input [2:0] S_AXI_HP1_ARPROT;
  input [2:0] S_AXI_HP1_AWPROT;
  input [31:0] S_AXI_HP1_ARADDR;
  input [31:0] S_AXI_HP1_AWADDR;
  input [3:0] S_AXI_HP1_ARCACHE;
  input [3:0] S_AXI_HP1_ARLEN;
  input [3:0] S_AXI_HP1_ARQOS;
  input [3:0] S_AXI_HP1_AWCACHE;
  input [3:0] S_AXI_HP1_AWLEN;
  input [3:0] S_AXI_HP1_AWQOS;
  input [5:0] S_AXI_HP1_ARID;
  input [5:0] S_AXI_HP1_AWID;
  input [5:0] S_AXI_HP1_WID;
  input [63:0] S_AXI_HP1_WDATA;
  input [7:0] S_AXI_HP1_WSTRB;
  output S_AXI_HP2_ARESETN;
  output S_AXI_HP2_ARREADY;
  output S_AXI_HP2_AWREADY;
  output S_AXI_HP2_BVALID;
  output S_AXI_HP2_RLAST;
  output S_AXI_HP2_RVALID;
  output S_AXI_HP2_WREADY;
  output [1:0] S_AXI_HP2_BRESP;
  output [1:0] S_AXI_HP2_RRESP;
  output [5:0] S_AXI_HP2_BID;
  output [5:0] S_AXI_HP2_RID;
  output [63:0] S_AXI_HP2_RDATA;
  output [7:0] S_AXI_HP2_RCOUNT;
  output [7:0] S_AXI_HP2_WCOUNT;
  output [2:0] S_AXI_HP2_RACOUNT;
  output [5:0] S_AXI_HP2_WACOUNT;
  input S_AXI_HP2_ACLK;
  input S_AXI_HP2_ARVALID;
  input S_AXI_HP2_AWVALID;
  input S_AXI_HP2_BREADY;
  input S_AXI_HP2_RDISSUECAP1_EN;
  input S_AXI_HP2_RREADY;
  input S_AXI_HP2_WLAST;
  input S_AXI_HP2_WRISSUECAP1_EN;
  input S_AXI_HP2_WVALID;
  input [1:0] S_AXI_HP2_ARBURST;
  input [1:0] S_AXI_HP2_ARLOCK;
  input [2:0] S_AXI_HP2_ARSIZE;
  input [1:0] S_AXI_HP2_AWBURST;
  input [1:0] S_AXI_HP2_AWLOCK;
  input [2:0] S_AXI_HP2_AWSIZE;
  input [2:0] S_AXI_HP2_ARPROT;
  input [2:0] S_AXI_HP2_AWPROT;
  input [31:0] S_AXI_HP2_ARADDR;
  input [31:0] S_AXI_HP2_AWADDR;
  input [3:0] S_AXI_HP2_ARCACHE;
  input [3:0] S_AXI_HP2_ARLEN;
  input [3:0] S_AXI_HP2_ARQOS;
  input [3:0] S_AXI_HP2_AWCACHE;
  input [3:0] S_AXI_HP2_AWLEN;
  input [3:0] S_AXI_HP2_AWQOS;
  input [5:0] S_AXI_HP2_ARID;
  input [5:0] S_AXI_HP2_AWID;
  input [5:0] S_AXI_HP2_WID;
  input [63:0] S_AXI_HP2_WDATA;
  input [7:0] S_AXI_HP2_WSTRB;
  output S_AXI_HP3_ARESETN;
  output S_AXI_HP3_ARREADY;
  output S_AXI_HP3_AWREADY;
  output S_AXI_HP3_BVALID;
  output S_AXI_HP3_RLAST;
  output S_AXI_HP3_RVALID;
  output S_AXI_HP3_WREADY;
  output [1:0] S_AXI_HP3_BRESP;
  output [1:0] S_AXI_HP3_RRESP;
  output [5:0] S_AXI_HP3_BID;
  output [5:0] S_AXI_HP3_RID;
  output [63:0] S_AXI_HP3_RDATA;
  output [7:0] S_AXI_HP3_RCOUNT;
  output [7:0] S_AXI_HP3_WCOUNT;
  output [2:0] S_AXI_HP3_RACOUNT;
  output [5:0] S_AXI_HP3_WACOUNT;
  input S_AXI_HP3_ACLK;
  input S_AXI_HP3_ARVALID;
  input S_AXI_HP3_AWVALID;
  input S_AXI_HP3_BREADY;
  input S_AXI_HP3_RDISSUECAP1_EN;
  input S_AXI_HP3_RREADY;
  input S_AXI_HP3_WLAST;
  input S_AXI_HP3_WRISSUECAP1_EN;
  input S_AXI_HP3_WVALID;
  input [1:0] S_AXI_HP3_ARBURST;
  input [1:0] S_AXI_HP3_ARLOCK;
  input [2:0] S_AXI_HP3_ARSIZE;
  input [1:0] S_AXI_HP3_AWBURST;
  input [1:0] S_AXI_HP3_AWLOCK;
  input [2:0] S_AXI_HP3_AWSIZE;
  input [2:0] S_AXI_HP3_ARPROT;
  input [2:0] S_AXI_HP3_AWPROT;
  input [31:0] S_AXI_HP3_ARADDR;
  input [31:0] S_AXI_HP3_AWADDR;
  input [3:0] S_AXI_HP3_ARCACHE;
  input [3:0] S_AXI_HP3_ARLEN;
  input [3:0] S_AXI_HP3_ARQOS;
  input [3:0] S_AXI_HP3_AWCACHE;
  input [3:0] S_AXI_HP3_AWLEN;
  input [3:0] S_AXI_HP3_AWQOS;
  input [5:0] S_AXI_HP3_ARID;
  input [5:0] S_AXI_HP3_AWID;
  input [5:0] S_AXI_HP3_WID;
  input [63:0] S_AXI_HP3_WDATA;
  input [7:0] S_AXI_HP3_WSTRB;
  output [1:0] DMA0_DATYPE;
  output DMA0_DAVALID;
  output DMA0_DRREADY;
  output DMA0_RSTN;
  input DMA0_ACLK;
  input DMA0_DAREADY;
  input DMA0_DRLAST;
  input DMA0_DRVALID;
  input [1:0] DMA0_DRTYPE;
  output [1:0] DMA1_DATYPE;
  output DMA1_DAVALID;
  output DMA1_DRREADY;
  output DMA1_RSTN;
  input DMA1_ACLK;
  input DMA1_DAREADY;
  input DMA1_DRLAST;
  input DMA1_DRVALID;
  input [1:0] DMA1_DRTYPE;
  output [1:0] DMA2_DATYPE;
  output DMA2_DAVALID;
  output DMA2_DRREADY;
  output DMA2_RSTN;
  input DMA2_ACLK;
  input DMA2_DAREADY;
  input DMA2_DRLAST;
  input DMA2_DRVALID;
  input DMA3_DRVALID;
  output [1:0] DMA3_DATYPE;
  output DMA3_DAVALID;
  output DMA3_DRREADY;
  output DMA3_RSTN;
  input DMA3_ACLK;
  input DMA3_DAREADY;
  input DMA3_DRLAST;
  input [1:0] DMA2_DRTYPE;
  input [1:0] DMA3_DRTYPE;
  input [31:0] FTMD_TRACEIN_DATA;
  input FTMD_TRACEIN_VALID;
  input FTMD_TRACEIN_CLK;
  input [3:0] FTMD_TRACEIN_ATID;
  input [3:0] FTMT_F2P_TRIG;
  output [3:0] FTMT_F2P_TRIGACK;
  input [31:0] FTMT_F2P_DEBUG;
  input [3:0] FTMT_P2F_TRIGACK;
  output [3:0] FTMT_P2F_TRIG;
  output [31:0] FTMT_P2F_DEBUG;
  output FCLK_CLK3;
  output FCLK_CLK2;
  output FCLK_CLK1;
  output FCLK_CLK0;
  input FCLK_CLKTRIG3_N;
  input FCLK_CLKTRIG2_N;
  input FCLK_CLKTRIG1_N;
  input FCLK_CLKTRIG0_N;
  output FCLK_RESET3_N;
  output FCLK_RESET2_N;
  output FCLK_RESET1_N;
  output FCLK_RESET0_N;
  input FPGA_IDLE_N;
  input [3:0] DDR_ARB;
  input [0:0] IRQ_F2P;
  input Core0_nFIQ;
  input Core0_nIRQ;
  input Core1_nFIQ;
  input Core1_nIRQ;
  output EVENT_EVENTO;
  output [1:0] EVENT_STANDBYWFE;
  output [1:0] EVENT_STANDBYWFI;
  input EVENT_EVENTI;
  inout [53:0] MIO;
  inout DDR_Clk;
  inout DDR_Clk_n;
  inout DDR_CKE;
  inout DDR_CS_n;
  inout DDR_RAS_n;
  inout DDR_CAS_n;
  output DDR_WEB;
  inout [2:0] DDR_BankAddr;
  inout [14:0] DDR_Addr;
  inout DDR_ODT;
  inout DDR_DRSTB;
  inout [31:0] DDR_DQ;
  inout [3:0] DDR_DM;
  inout [3:0] DDR_DQS;
  inout [3:0] DDR_DQS_n;
  inout DDR_VRN;
  inout DDR_VRP;
  input PS_SRSTB;
  input PS_CLK;
  input PS_PORB;
  output IRQ_P2F_DMAC_ABORT;
  output IRQ_P2F_DMAC0;
  output IRQ_P2F_DMAC1;
  output IRQ_P2F_DMAC2;
  output IRQ_P2F_DMAC3;
  output IRQ_P2F_DMAC4;
  output IRQ_P2F_DMAC5;
  output IRQ_P2F_DMAC6;
  output IRQ_P2F_DMAC7;
  output IRQ_P2F_SMC;
  output IRQ_P2F_QSPI;
  output IRQ_P2F_CTI;
  output IRQ_P2F_GPIO;
  output IRQ_P2F_USB0;
  output IRQ_P2F_ENET0;
  output IRQ_P2F_ENET_WAKE0;
  output IRQ_P2F_SDIO0;
  output IRQ_P2F_I2C0;
  output IRQ_P2F_SPI0;
  output IRQ_P2F_UART0;
  output IRQ_P2F_CAN0;
  output IRQ_P2F_USB1;
  output IRQ_P2F_ENET1;
  output IRQ_P2F_ENET_WAKE1;
  output IRQ_P2F_SDIO1;
  output IRQ_P2F_I2C1;
  output IRQ_P2F_SPI1;
  output IRQ_P2F_UART1;
  output IRQ_P2F_CAN1;
endmodule

module PS_axi_i2s_adi_0_wrapper
  (
    DATA_CLK_I,
    BCLK_O,
    LRCLK_O,
    SDATA_O,
    SDATA_I,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TLAST,
    S_AXIS_TVALID,
    M_AXIS_ACLK,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TREADY,
    M_AXIS_TKEEP,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    DMA_REQ_TX_ACLK,
    DMA_REQ_TX_RSTN,
    DMA_REQ_TX_DAVALID,
    DMA_REQ_TX_DATYPE,
    DMA_REQ_TX_DRREADY,
    DMA_REQ_TX_DRVALID,
    DMA_REQ_TX_DRTYPE,
    DMA_REQ_TX_DRLAST,
    DMA_REQ_TX_DAREADY,
    DMA_REQ_RX_ACLK,
    DMA_REQ_RX_RSTN,
    DMA_REQ_RX_DAVALID,
    DMA_REQ_RX_DATYPE,
    DMA_REQ_RX_DRREADY,
    DMA_REQ_RX_DRVALID,
    DMA_REQ_RX_DRTYPE,
    DMA_REQ_RX_DRLAST,
    DMA_REQ_RX_DAREADY
  );
  input DATA_CLK_I;
  output [0:0] BCLK_O;
  output [0:0] LRCLK_O;
  output [0:0] SDATA_O;
  input [0:0] SDATA_I;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  output S_AXIS_TREADY;
  input [31:0] S_AXIS_TDATA;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;
  input M_AXIS_ACLK;
  output M_AXIS_TVALID;
  output [31:0] M_AXIS_TDATA;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;
  output [3:0] M_AXIS_TKEEP;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0] S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input [31:0] S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  output S_AXI_ARREADY;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output [1:0] S_AXI_BRESP;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  input DMA_REQ_TX_ACLK;
  input DMA_REQ_TX_RSTN;
  input DMA_REQ_TX_DAVALID;
  input [1:0] DMA_REQ_TX_DATYPE;
  input DMA_REQ_TX_DRREADY;
  output DMA_REQ_TX_DRVALID;
  output [1:0] DMA_REQ_TX_DRTYPE;
  output DMA_REQ_TX_DRLAST;
  output DMA_REQ_TX_DAREADY;
  input DMA_REQ_RX_ACLK;
  input DMA_REQ_RX_RSTN;
  input DMA_REQ_RX_DAVALID;
  input [1:0] DMA_REQ_RX_DATYPE;
  input DMA_REQ_RX_DRREADY;
  output DMA_REQ_RX_DRVALID;
  output [1:0] DMA_REQ_RX_DRTYPE;
  output DMA_REQ_RX_DRLAST;
  output DMA_REQ_RX_DAREADY;
endmodule

module PS_axi_interconnect_1_wrapper
  (
    INTERCONNECT_ACLK,
    INTERCONNECT_ARESETN,
    S_AXI_ARESET_OUT_N,
    M_AXI_ARESET_OUT_N,
    IRQ,
    S_AXI_ACLK,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWUSER,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WID,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WUSER,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BUSER,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARUSER,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RUSER,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_ACLK,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWREGION,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARREGION,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY,
    INTERCONNECT_ARESET_OUT_N,
    DEBUG_AW_TRANS_SEQ,
    DEBUG_AW_ARB_GRANT,
    DEBUG_AR_TRANS_SEQ,
    DEBUG_AR_ARB_GRANT,
    DEBUG_AW_TRANS_QUAL,
    DEBUG_AW_ACCEPT_CNT,
    DEBUG_AW_ACTIVE_THREAD,
    DEBUG_AW_ACTIVE_TARGET,
    DEBUG_AW_ACTIVE_REGION,
    DEBUG_AW_ERROR,
    DEBUG_AW_TARGET,
    DEBUG_AR_TRANS_QUAL,
    DEBUG_AR_ACCEPT_CNT,
    DEBUG_AR_ACTIVE_THREAD,
    DEBUG_AR_ACTIVE_TARGET,
    DEBUG_AR_ACTIVE_REGION,
    DEBUG_AR_ERROR,
    DEBUG_AR_TARGET,
    DEBUG_B_TRANS_SEQ,
    DEBUG_R_BEAT_CNT,
    DEBUG_R_TRANS_SEQ,
    DEBUG_AW_ISSUING_CNT,
    DEBUG_AR_ISSUING_CNT,
    DEBUG_W_BEAT_CNT,
    DEBUG_W_TRANS_SEQ,
    DEBUG_BID_TARGET,
    DEBUG_BID_ERROR,
    DEBUG_RID_TARGET,
    DEBUG_RID_ERROR,
    DEBUG_SR_SC_ARADDR,
    DEBUG_SR_SC_ARADDRCONTROL,
    DEBUG_SR_SC_AWADDR,
    DEBUG_SR_SC_AWADDRCONTROL,
    DEBUG_SR_SC_BRESP,
    DEBUG_SR_SC_RDATA,
    DEBUG_SR_SC_RDATACONTROL,
    DEBUG_SR_SC_WDATA,
    DEBUG_SR_SC_WDATACONTROL,
    DEBUG_SC_SF_ARADDR,
    DEBUG_SC_SF_ARADDRCONTROL,
    DEBUG_SC_SF_AWADDR,
    DEBUG_SC_SF_AWADDRCONTROL,
    DEBUG_SC_SF_BRESP,
    DEBUG_SC_SF_RDATA,
    DEBUG_SC_SF_RDATACONTROL,
    DEBUG_SC_SF_WDATA,
    DEBUG_SC_SF_WDATACONTROL,
    DEBUG_SF_CB_ARADDR,
    DEBUG_SF_CB_ARADDRCONTROL,
    DEBUG_SF_CB_AWADDR,
    DEBUG_SF_CB_AWADDRCONTROL,
    DEBUG_SF_CB_BRESP,
    DEBUG_SF_CB_RDATA,
    DEBUG_SF_CB_RDATACONTROL,
    DEBUG_SF_CB_WDATA,
    DEBUG_SF_CB_WDATACONTROL,
    DEBUG_CB_MF_ARADDR,
    DEBUG_CB_MF_ARADDRCONTROL,
    DEBUG_CB_MF_AWADDR,
    DEBUG_CB_MF_AWADDRCONTROL,
    DEBUG_CB_MF_BRESP,
    DEBUG_CB_MF_RDATA,
    DEBUG_CB_MF_RDATACONTROL,
    DEBUG_CB_MF_WDATA,
    DEBUG_CB_MF_WDATACONTROL,
    DEBUG_MF_MC_ARADDR,
    DEBUG_MF_MC_ARADDRCONTROL,
    DEBUG_MF_MC_AWADDR,
    DEBUG_MF_MC_AWADDRCONTROL,
    DEBUG_MF_MC_BRESP,
    DEBUG_MF_MC_RDATA,
    DEBUG_MF_MC_RDATACONTROL,
    DEBUG_MF_MC_WDATA,
    DEBUG_MF_MC_WDATACONTROL,
    DEBUG_MC_MP_ARADDR,
    DEBUG_MC_MP_ARADDRCONTROL,
    DEBUG_MC_MP_AWADDR,
    DEBUG_MC_MP_AWADDRCONTROL,
    DEBUG_MC_MP_BRESP,
    DEBUG_MC_MP_RDATA,
    DEBUG_MC_MP_RDATACONTROL,
    DEBUG_MC_MP_WDATA,
    DEBUG_MC_MP_WDATACONTROL,
    DEBUG_MP_MR_ARADDR,
    DEBUG_MP_MR_ARADDRCONTROL,
    DEBUG_MP_MR_AWADDR,
    DEBUG_MP_MR_AWADDRCONTROL,
    DEBUG_MP_MR_BRESP,
    DEBUG_MP_MR_RDATA,
    DEBUG_MP_MR_RDATACONTROL,
    DEBUG_MP_MR_WDATA,
    DEBUG_MP_MR_WDATACONTROL
  );
  input INTERCONNECT_ACLK;
  input INTERCONNECT_ARESETN;
  output [0:0] S_AXI_ARESET_OUT_N;
  output [0:0] M_AXI_ARESET_OUT_N;
  output IRQ;
  input [0:0] S_AXI_ACLK;
  input [11:0] S_AXI_AWID;
  input [31:0] S_AXI_AWADDR;
  input [7:0] S_AXI_AWLEN;
  input [2:0] S_AXI_AWSIZE;
  input [1:0] S_AXI_AWBURST;
  input [1:0] S_AXI_AWLOCK;
  input [3:0] S_AXI_AWCACHE;
  input [2:0] S_AXI_AWPROT;
  input [3:0] S_AXI_AWQOS;
  input [0:0] S_AXI_AWUSER;
  input [0:0] S_AXI_AWVALID;
  output [0:0] S_AXI_AWREADY;
  input [11:0] S_AXI_WID;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input [0:0] S_AXI_WLAST;
  input [0:0] S_AXI_WUSER;
  input [0:0] S_AXI_WVALID;
  output [0:0] S_AXI_WREADY;
  output [11:0] S_AXI_BID;
  output [1:0] S_AXI_BRESP;
  output [0:0] S_AXI_BUSER;
  output [0:0] S_AXI_BVALID;
  input [0:0] S_AXI_BREADY;
  input [11:0] S_AXI_ARID;
  input [31:0] S_AXI_ARADDR;
  input [7:0] S_AXI_ARLEN;
  input [2:0] S_AXI_ARSIZE;
  input [1:0] S_AXI_ARBURST;
  input [1:0] S_AXI_ARLOCK;
  input [3:0] S_AXI_ARCACHE;
  input [2:0] S_AXI_ARPROT;
  input [3:0] S_AXI_ARQOS;
  input [0:0] S_AXI_ARUSER;
  input [0:0] S_AXI_ARVALID;
  output [0:0] S_AXI_ARREADY;
  output [11:0] S_AXI_RID;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output [0:0] S_AXI_RLAST;
  output [0:0] S_AXI_RUSER;
  output [0:0] S_AXI_RVALID;
  input [0:0] S_AXI_RREADY;
  input [0:0] M_AXI_ACLK;
  output [11:0] M_AXI_AWID;
  output [31:0] M_AXI_AWADDR;
  output [7:0] M_AXI_AWLEN;
  output [2:0] M_AXI_AWSIZE;
  output [1:0] M_AXI_AWBURST;
  output [1:0] M_AXI_AWLOCK;
  output [3:0] M_AXI_AWCACHE;
  output [2:0] M_AXI_AWPROT;
  output [3:0] M_AXI_AWREGION;
  output [3:0] M_AXI_AWQOS;
  output [0:0] M_AXI_AWUSER;
  output [0:0] M_AXI_AWVALID;
  input [0:0] M_AXI_AWREADY;
  output [11:0] M_AXI_WID;
  output [31:0] M_AXI_WDATA;
  output [3:0] M_AXI_WSTRB;
  output [0:0] M_AXI_WLAST;
  output [0:0] M_AXI_WUSER;
  output [0:0] M_AXI_WVALID;
  input [0:0] M_AXI_WREADY;
  input [11:0] M_AXI_BID;
  input [1:0] M_AXI_BRESP;
  input [0:0] M_AXI_BUSER;
  input [0:0] M_AXI_BVALID;
  output [0:0] M_AXI_BREADY;
  output [11:0] M_AXI_ARID;
  output [31:0] M_AXI_ARADDR;
  output [7:0] M_AXI_ARLEN;
  output [2:0] M_AXI_ARSIZE;
  output [1:0] M_AXI_ARBURST;
  output [1:0] M_AXI_ARLOCK;
  output [3:0] M_AXI_ARCACHE;
  output [2:0] M_AXI_ARPROT;
  output [3:0] M_AXI_ARREGION;
  output [3:0] M_AXI_ARQOS;
  output [0:0] M_AXI_ARUSER;
  output [0:0] M_AXI_ARVALID;
  input [0:0] M_AXI_ARREADY;
  input [11:0] M_AXI_RID;
  input [31:0] M_AXI_RDATA;
  input [1:0] M_AXI_RRESP;
  input [0:0] M_AXI_RLAST;
  input [0:0] M_AXI_RUSER;
  input [0:0] M_AXI_RVALID;
  output [0:0] M_AXI_RREADY;
  input [31:0] S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0] S_AXI_CTRL_WDATA;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0] S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0] S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0] S_AXI_CTRL_RDATA;
  output [1:0] S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
  output INTERCONNECT_ARESET_OUT_N;
  output [7:0] DEBUG_AW_TRANS_SEQ;
  output [7:0] DEBUG_AW_ARB_GRANT;
  output [7:0] DEBUG_AR_TRANS_SEQ;
  output [7:0] DEBUG_AR_ARB_GRANT;
  output [0:0] DEBUG_AW_TRANS_QUAL;
  output [7:0] DEBUG_AW_ACCEPT_CNT;
  output [15:0] DEBUG_AW_ACTIVE_THREAD;
  output [7:0] DEBUG_AW_ACTIVE_TARGET;
  output [7:0] DEBUG_AW_ACTIVE_REGION;
  output [7:0] DEBUG_AW_ERROR;
  output [7:0] DEBUG_AW_TARGET;
  output [0:0] DEBUG_AR_TRANS_QUAL;
  output [7:0] DEBUG_AR_ACCEPT_CNT;
  output [15:0] DEBUG_AR_ACTIVE_THREAD;
  output [7:0] DEBUG_AR_ACTIVE_TARGET;
  output [7:0] DEBUG_AR_ACTIVE_REGION;
  output [7:0] DEBUG_AR_ERROR;
  output [7:0] DEBUG_AR_TARGET;
  output [7:0] DEBUG_B_TRANS_SEQ;
  output [7:0] DEBUG_R_BEAT_CNT;
  output [7:0] DEBUG_R_TRANS_SEQ;
  output [7:0] DEBUG_AW_ISSUING_CNT;
  output [7:0] DEBUG_AR_ISSUING_CNT;
  output [7:0] DEBUG_W_BEAT_CNT;
  output [7:0] DEBUG_W_TRANS_SEQ;
  output [7:0] DEBUG_BID_TARGET;
  output DEBUG_BID_ERROR;
  output [7:0] DEBUG_RID_TARGET;
  output DEBUG_RID_ERROR;
  output [31:0] DEBUG_SR_SC_ARADDR;
  output [34:0] DEBUG_SR_SC_ARADDRCONTROL;
  output [31:0] DEBUG_SR_SC_AWADDR;
  output [34:0] DEBUG_SR_SC_AWADDRCONTROL;
  output [15:0] DEBUG_SR_SC_BRESP;
  output [31:0] DEBUG_SR_SC_RDATA;
  output [16:0] DEBUG_SR_SC_RDATACONTROL;
  output [31:0] DEBUG_SR_SC_WDATA;
  output [6:0] DEBUG_SR_SC_WDATACONTROL;
  output [31:0] DEBUG_SC_SF_ARADDR;
  output [34:0] DEBUG_SC_SF_ARADDRCONTROL;
  output [31:0] DEBUG_SC_SF_AWADDR;
  output [34:0] DEBUG_SC_SF_AWADDRCONTROL;
  output [15:0] DEBUG_SC_SF_BRESP;
  output [31:0] DEBUG_SC_SF_RDATA;
  output [16:0] DEBUG_SC_SF_RDATACONTROL;
  output [31:0] DEBUG_SC_SF_WDATA;
  output [6:0] DEBUG_SC_SF_WDATACONTROL;
  output [31:0] DEBUG_SF_CB_ARADDR;
  output [34:0] DEBUG_SF_CB_ARADDRCONTROL;
  output [31:0] DEBUG_SF_CB_AWADDR;
  output [34:0] DEBUG_SF_CB_AWADDRCONTROL;
  output [15:0] DEBUG_SF_CB_BRESP;
  output [31:0] DEBUG_SF_CB_RDATA;
  output [16:0] DEBUG_SF_CB_RDATACONTROL;
  output [31:0] DEBUG_SF_CB_WDATA;
  output [6:0] DEBUG_SF_CB_WDATACONTROL;
  output [31:0] DEBUG_CB_MF_ARADDR;
  output [34:0] DEBUG_CB_MF_ARADDRCONTROL;
  output [31:0] DEBUG_CB_MF_AWADDR;
  output [34:0] DEBUG_CB_MF_AWADDRCONTROL;
  output [15:0] DEBUG_CB_MF_BRESP;
  output [31:0] DEBUG_CB_MF_RDATA;
  output [16:0] DEBUG_CB_MF_RDATACONTROL;
  output [31:0] DEBUG_CB_MF_WDATA;
  output [6:0] DEBUG_CB_MF_WDATACONTROL;
  output [31:0] DEBUG_MF_MC_ARADDR;
  output [34:0] DEBUG_MF_MC_ARADDRCONTROL;
  output [31:0] DEBUG_MF_MC_AWADDR;
  output [34:0] DEBUG_MF_MC_AWADDRCONTROL;
  output [15:0] DEBUG_MF_MC_BRESP;
  output [31:0] DEBUG_MF_MC_RDATA;
  output [16:0] DEBUG_MF_MC_RDATACONTROL;
  output [31:0] DEBUG_MF_MC_WDATA;
  output [6:0] DEBUG_MF_MC_WDATACONTROL;
  output [31:0] DEBUG_MC_MP_ARADDR;
  output [34:0] DEBUG_MC_MP_ARADDRCONTROL;
  output [31:0] DEBUG_MC_MP_AWADDR;
  output [34:0] DEBUG_MC_MP_AWADDRCONTROL;
  output [15:0] DEBUG_MC_MP_BRESP;
  output [31:0] DEBUG_MC_MP_RDATA;
  output [16:0] DEBUG_MC_MP_RDATACONTROL;
  output [31:0] DEBUG_MC_MP_WDATA;
  output [6:0] DEBUG_MC_MP_WDATACONTROL;
  output [31:0] DEBUG_MP_MR_ARADDR;
  output [34:0] DEBUG_MP_MR_ARADDRCONTROL;
  output [31:0] DEBUG_MP_MR_AWADDR;
  output [34:0] DEBUG_MP_MR_AWADDRCONTROL;
  output [15:0] DEBUG_MP_MR_BRESP;
  output [31:0] DEBUG_MP_MR_RDATA;
  output [16:0] DEBUG_MP_MR_RDATACONTROL;
  output [31:0] DEBUG_MP_MR_WDATA;
  output [6:0] DEBUG_MP_MR_WDATACONTROL;
endmodule

