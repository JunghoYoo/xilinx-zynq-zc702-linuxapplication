// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:processing_system7:5.5
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
system_sys_ps7_0 your_instance_name (
  .ENET0_PTP_DELAY_REQ_RX(ENET0_PTP_DELAY_REQ_RX),      // output wire ENET0_PTP_DELAY_REQ_RX
  .ENET0_PTP_DELAY_REQ_TX(ENET0_PTP_DELAY_REQ_TX),      // output wire ENET0_PTP_DELAY_REQ_TX
  .ENET0_PTP_PDELAY_REQ_RX(ENET0_PTP_PDELAY_REQ_RX),    // output wire ENET0_PTP_PDELAY_REQ_RX
  .ENET0_PTP_PDELAY_REQ_TX(ENET0_PTP_PDELAY_REQ_TX),    // output wire ENET0_PTP_PDELAY_REQ_TX
  .ENET0_PTP_PDELAY_RESP_RX(ENET0_PTP_PDELAY_RESP_RX),  // output wire ENET0_PTP_PDELAY_RESP_RX
  .ENET0_PTP_PDELAY_RESP_TX(ENET0_PTP_PDELAY_RESP_TX),  // output wire ENET0_PTP_PDELAY_RESP_TX
  .ENET0_PTP_SYNC_FRAME_RX(ENET0_PTP_SYNC_FRAME_RX),    // output wire ENET0_PTP_SYNC_FRAME_RX
  .ENET0_PTP_SYNC_FRAME_TX(ENET0_PTP_SYNC_FRAME_TX),    // output wire ENET0_PTP_SYNC_FRAME_TX
  .ENET0_SOF_RX(ENET0_SOF_RX),                          // output wire ENET0_SOF_RX
  .ENET0_SOF_TX(ENET0_SOF_TX),                          // output wire ENET0_SOF_TX
  .GPIO_I(GPIO_I),                                      // input wire [7 : 0] GPIO_I
  .GPIO_O(GPIO_O),                                      // output wire [7 : 0] GPIO_O
  .GPIO_T(GPIO_T),                                      // output wire [7 : 0] GPIO_T
  .I2C1_SDA_I(I2C1_SDA_I),                              // input wire I2C1_SDA_I
  .I2C1_SDA_O(I2C1_SDA_O),                              // output wire I2C1_SDA_O
  .I2C1_SDA_T(I2C1_SDA_T),                              // output wire I2C1_SDA_T
  .I2C1_SCL_I(I2C1_SCL_I),                              // input wire I2C1_SCL_I
  .I2C1_SCL_O(I2C1_SCL_O),                              // output wire I2C1_SCL_O
  .I2C1_SCL_T(I2C1_SCL_T),                              // output wire I2C1_SCL_T
  .SDIO1_CLK(SDIO1_CLK),                                // output wire SDIO1_CLK
  .SDIO1_CLK_FB(SDIO1_CLK_FB),                          // input wire SDIO1_CLK_FB
  .SDIO1_CMD_O(SDIO1_CMD_O),                            // output wire SDIO1_CMD_O
  .SDIO1_CMD_I(SDIO1_CMD_I),                            // input wire SDIO1_CMD_I
  .SDIO1_CMD_T(SDIO1_CMD_T),                            // output wire SDIO1_CMD_T
  .SDIO1_DATA_I(SDIO1_DATA_I),                          // input wire [3 : 0] SDIO1_DATA_I
  .SDIO1_DATA_O(SDIO1_DATA_O),                          // output wire [3 : 0] SDIO1_DATA_O
  .SDIO1_DATA_T(SDIO1_DATA_T),                          // output wire [3 : 0] SDIO1_DATA_T
  .SDIO1_LED(SDIO1_LED),                                // output wire SDIO1_LED
  .SDIO1_CDN(SDIO1_CDN),                                // input wire SDIO1_CDN
  .SDIO1_WP(SDIO1_WP),                                  // input wire SDIO1_WP
  .SDIO1_BUSPOW(SDIO1_BUSPOW),                          // output wire SDIO1_BUSPOW
  .SDIO1_BUSVOLT(SDIO1_BUSVOLT),                        // output wire [2 : 0] SDIO1_BUSVOLT
  .SPI0_SCLK_I(SPI0_SCLK_I),                            // input wire SPI0_SCLK_I
  .SPI0_SCLK_O(SPI0_SCLK_O),                            // output wire SPI0_SCLK_O
  .SPI0_SCLK_T(SPI0_SCLK_T),                            // output wire SPI0_SCLK_T
  .SPI0_MOSI_I(SPI0_MOSI_I),                            // input wire SPI0_MOSI_I
  .SPI0_MOSI_O(SPI0_MOSI_O),                            // output wire SPI0_MOSI_O
  .SPI0_MOSI_T(SPI0_MOSI_T),                            // output wire SPI0_MOSI_T
  .SPI0_MISO_I(SPI0_MISO_I),                            // input wire SPI0_MISO_I
  .SPI0_MISO_O(SPI0_MISO_O),                            // output wire SPI0_MISO_O
  .SPI0_MISO_T(SPI0_MISO_T),                            // output wire SPI0_MISO_T
  .SPI0_SS_I(SPI0_SS_I),                                // input wire SPI0_SS_I
  .SPI0_SS_O(SPI0_SS_O),                                // output wire SPI0_SS_O
  .SPI0_SS1_O(SPI0_SS1_O),                              // output wire SPI0_SS1_O
  .SPI0_SS2_O(SPI0_SS2_O),                              // output wire SPI0_SS2_O
  .SPI0_SS_T(SPI0_SS_T),                                // output wire SPI0_SS_T
  .UART0_TX(UART0_TX),                                  // output wire UART0_TX
  .UART0_RX(UART0_RX),                                  // input wire UART0_RX
  .USB0_PORT_INDCTL(USB0_PORT_INDCTL),                  // output wire [1 : 0] USB0_PORT_INDCTL
  .USB0_VBUS_PWRSELECT(USB0_VBUS_PWRSELECT),            // output wire USB0_VBUS_PWRSELECT
  .USB0_VBUS_PWRFAULT(USB0_VBUS_PWRFAULT),              // input wire USB0_VBUS_PWRFAULT
  .M_AXI_GP0_ARVALID(M_AXI_GP0_ARVALID),                // output wire M_AXI_GP0_ARVALID
  .M_AXI_GP0_AWVALID(M_AXI_GP0_AWVALID),                // output wire M_AXI_GP0_AWVALID
  .M_AXI_GP0_BREADY(M_AXI_GP0_BREADY),                  // output wire M_AXI_GP0_BREADY
  .M_AXI_GP0_RREADY(M_AXI_GP0_RREADY),                  // output wire M_AXI_GP0_RREADY
  .M_AXI_GP0_WLAST(M_AXI_GP0_WLAST),                    // output wire M_AXI_GP0_WLAST
  .M_AXI_GP0_WVALID(M_AXI_GP0_WVALID),                  // output wire M_AXI_GP0_WVALID
  .M_AXI_GP0_ARID(M_AXI_GP0_ARID),                      // output wire [11 : 0] M_AXI_GP0_ARID
  .M_AXI_GP0_AWID(M_AXI_GP0_AWID),                      // output wire [11 : 0] M_AXI_GP0_AWID
  .M_AXI_GP0_WID(M_AXI_GP0_WID),                        // output wire [11 : 0] M_AXI_GP0_WID
  .M_AXI_GP0_ARBURST(M_AXI_GP0_ARBURST),                // output wire [1 : 0] M_AXI_GP0_ARBURST
  .M_AXI_GP0_ARLOCK(M_AXI_GP0_ARLOCK),                  // output wire [1 : 0] M_AXI_GP0_ARLOCK
  .M_AXI_GP0_ARSIZE(M_AXI_GP0_ARSIZE),                  // output wire [2 : 0] M_AXI_GP0_ARSIZE
  .M_AXI_GP0_AWBURST(M_AXI_GP0_AWBURST),                // output wire [1 : 0] M_AXI_GP0_AWBURST
  .M_AXI_GP0_AWLOCK(M_AXI_GP0_AWLOCK),                  // output wire [1 : 0] M_AXI_GP0_AWLOCK
  .M_AXI_GP0_AWSIZE(M_AXI_GP0_AWSIZE),                  // output wire [2 : 0] M_AXI_GP0_AWSIZE
  .M_AXI_GP0_ARPROT(M_AXI_GP0_ARPROT),                  // output wire [2 : 0] M_AXI_GP0_ARPROT
  .M_AXI_GP0_AWPROT(M_AXI_GP0_AWPROT),                  // output wire [2 : 0] M_AXI_GP0_AWPROT
  .M_AXI_GP0_ARADDR(M_AXI_GP0_ARADDR),                  // output wire [31 : 0] M_AXI_GP0_ARADDR
  .M_AXI_GP0_AWADDR(M_AXI_GP0_AWADDR),                  // output wire [31 : 0] M_AXI_GP0_AWADDR
  .M_AXI_GP0_WDATA(M_AXI_GP0_WDATA),                    // output wire [31 : 0] M_AXI_GP0_WDATA
  .M_AXI_GP0_ARCACHE(M_AXI_GP0_ARCACHE),                // output wire [3 : 0] M_AXI_GP0_ARCACHE
  .M_AXI_GP0_ARLEN(M_AXI_GP0_ARLEN),                    // output wire [3 : 0] M_AXI_GP0_ARLEN
  .M_AXI_GP0_ARQOS(M_AXI_GP0_ARQOS),                    // output wire [3 : 0] M_AXI_GP0_ARQOS
  .M_AXI_GP0_AWCACHE(M_AXI_GP0_AWCACHE),                // output wire [3 : 0] M_AXI_GP0_AWCACHE
  .M_AXI_GP0_AWLEN(M_AXI_GP0_AWLEN),                    // output wire [3 : 0] M_AXI_GP0_AWLEN
  .M_AXI_GP0_AWQOS(M_AXI_GP0_AWQOS),                    // output wire [3 : 0] M_AXI_GP0_AWQOS
  .M_AXI_GP0_WSTRB(M_AXI_GP0_WSTRB),                    // output wire [3 : 0] M_AXI_GP0_WSTRB
  .M_AXI_GP0_ACLK(M_AXI_GP0_ACLK),                      // input wire M_AXI_GP0_ACLK
  .M_AXI_GP0_ARREADY(M_AXI_GP0_ARREADY),                // input wire M_AXI_GP0_ARREADY
  .M_AXI_GP0_AWREADY(M_AXI_GP0_AWREADY),                // input wire M_AXI_GP0_AWREADY
  .M_AXI_GP0_BVALID(M_AXI_GP0_BVALID),                  // input wire M_AXI_GP0_BVALID
  .M_AXI_GP0_RLAST(M_AXI_GP0_RLAST),                    // input wire M_AXI_GP0_RLAST
  .M_AXI_GP0_RVALID(M_AXI_GP0_RVALID),                  // input wire M_AXI_GP0_RVALID
  .M_AXI_GP0_WREADY(M_AXI_GP0_WREADY),                  // input wire M_AXI_GP0_WREADY
  .M_AXI_GP0_BID(M_AXI_GP0_BID),                        // input wire [11 : 0] M_AXI_GP0_BID
  .M_AXI_GP0_RID(M_AXI_GP0_RID),                        // input wire [11 : 0] M_AXI_GP0_RID
  .M_AXI_GP0_BRESP(M_AXI_GP0_BRESP),                    // input wire [1 : 0] M_AXI_GP0_BRESP
  .M_AXI_GP0_RRESP(M_AXI_GP0_RRESP),                    // input wire [1 : 0] M_AXI_GP0_RRESP
  .M_AXI_GP0_RDATA(M_AXI_GP0_RDATA),                    // input wire [31 : 0] M_AXI_GP0_RDATA
  .S_AXI_HP0_ARREADY(S_AXI_HP0_ARREADY),                // output wire S_AXI_HP0_ARREADY
  .S_AXI_HP0_AWREADY(S_AXI_HP0_AWREADY),                // output wire S_AXI_HP0_AWREADY
  .S_AXI_HP0_BVALID(S_AXI_HP0_BVALID),                  // output wire S_AXI_HP0_BVALID
  .S_AXI_HP0_RLAST(S_AXI_HP0_RLAST),                    // output wire S_AXI_HP0_RLAST
  .S_AXI_HP0_RVALID(S_AXI_HP0_RVALID),                  // output wire S_AXI_HP0_RVALID
  .S_AXI_HP0_WREADY(S_AXI_HP0_WREADY),                  // output wire S_AXI_HP0_WREADY
  .S_AXI_HP0_BRESP(S_AXI_HP0_BRESP),                    // output wire [1 : 0] S_AXI_HP0_BRESP
  .S_AXI_HP0_RRESP(S_AXI_HP0_RRESP),                    // output wire [1 : 0] S_AXI_HP0_RRESP
  .S_AXI_HP0_BID(S_AXI_HP0_BID),                        // output wire [5 : 0] S_AXI_HP0_BID
  .S_AXI_HP0_RID(S_AXI_HP0_RID),                        // output wire [5 : 0] S_AXI_HP0_RID
  .S_AXI_HP0_RDATA(S_AXI_HP0_RDATA),                    // output wire [63 : 0] S_AXI_HP0_RDATA
  .S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT),                  // output wire [7 : 0] S_AXI_HP0_RCOUNT
  .S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT),                  // output wire [7 : 0] S_AXI_HP0_WCOUNT
  .S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT),                // output wire [2 : 0] S_AXI_HP0_RACOUNT
  .S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT),                // output wire [5 : 0] S_AXI_HP0_WACOUNT
  .S_AXI_HP0_ACLK(S_AXI_HP0_ACLK),                      // input wire S_AXI_HP0_ACLK
  .S_AXI_HP0_ARVALID(S_AXI_HP0_ARVALID),                // input wire S_AXI_HP0_ARVALID
  .S_AXI_HP0_AWVALID(S_AXI_HP0_AWVALID),                // input wire S_AXI_HP0_AWVALID
  .S_AXI_HP0_BREADY(S_AXI_HP0_BREADY),                  // input wire S_AXI_HP0_BREADY
  .S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN),  // input wire S_AXI_HP0_RDISSUECAP1_EN
  .S_AXI_HP0_RREADY(S_AXI_HP0_RREADY),                  // input wire S_AXI_HP0_RREADY
  .S_AXI_HP0_WLAST(S_AXI_HP0_WLAST),                    // input wire S_AXI_HP0_WLAST
  .S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN),  // input wire S_AXI_HP0_WRISSUECAP1_EN
  .S_AXI_HP0_WVALID(S_AXI_HP0_WVALID),                  // input wire S_AXI_HP0_WVALID
  .S_AXI_HP0_ARBURST(S_AXI_HP0_ARBURST),                // input wire [1 : 0] S_AXI_HP0_ARBURST
  .S_AXI_HP0_ARLOCK(S_AXI_HP0_ARLOCK),                  // input wire [1 : 0] S_AXI_HP0_ARLOCK
  .S_AXI_HP0_ARSIZE(S_AXI_HP0_ARSIZE),                  // input wire [2 : 0] S_AXI_HP0_ARSIZE
  .S_AXI_HP0_AWBURST(S_AXI_HP0_AWBURST),                // input wire [1 : 0] S_AXI_HP0_AWBURST
  .S_AXI_HP0_AWLOCK(S_AXI_HP0_AWLOCK),                  // input wire [1 : 0] S_AXI_HP0_AWLOCK
  .S_AXI_HP0_AWSIZE(S_AXI_HP0_AWSIZE),                  // input wire [2 : 0] S_AXI_HP0_AWSIZE
  .S_AXI_HP0_ARPROT(S_AXI_HP0_ARPROT),                  // input wire [2 : 0] S_AXI_HP0_ARPROT
  .S_AXI_HP0_AWPROT(S_AXI_HP0_AWPROT),                  // input wire [2 : 0] S_AXI_HP0_AWPROT
  .S_AXI_HP0_ARADDR(S_AXI_HP0_ARADDR),                  // input wire [31 : 0] S_AXI_HP0_ARADDR
  .S_AXI_HP0_AWADDR(S_AXI_HP0_AWADDR),                  // input wire [31 : 0] S_AXI_HP0_AWADDR
  .S_AXI_HP0_ARCACHE(S_AXI_HP0_ARCACHE),                // input wire [3 : 0] S_AXI_HP0_ARCACHE
  .S_AXI_HP0_ARLEN(S_AXI_HP0_ARLEN),                    // input wire [3 : 0] S_AXI_HP0_ARLEN
  .S_AXI_HP0_ARQOS(S_AXI_HP0_ARQOS),                    // input wire [3 : 0] S_AXI_HP0_ARQOS
  .S_AXI_HP0_AWCACHE(S_AXI_HP0_AWCACHE),                // input wire [3 : 0] S_AXI_HP0_AWCACHE
  .S_AXI_HP0_AWLEN(S_AXI_HP0_AWLEN),                    // input wire [3 : 0] S_AXI_HP0_AWLEN
  .S_AXI_HP0_AWQOS(S_AXI_HP0_AWQOS),                    // input wire [3 : 0] S_AXI_HP0_AWQOS
  .S_AXI_HP0_ARID(S_AXI_HP0_ARID),                      // input wire [5 : 0] S_AXI_HP0_ARID
  .S_AXI_HP0_AWID(S_AXI_HP0_AWID),                      // input wire [5 : 0] S_AXI_HP0_AWID
  .S_AXI_HP0_WID(S_AXI_HP0_WID),                        // input wire [5 : 0] S_AXI_HP0_WID
  .S_AXI_HP0_WDATA(S_AXI_HP0_WDATA),                    // input wire [63 : 0] S_AXI_HP0_WDATA
  .S_AXI_HP0_WSTRB(S_AXI_HP0_WSTRB),                    // input wire [7 : 0] S_AXI_HP0_WSTRB
  .S_AXI_HP1_ARREADY(S_AXI_HP1_ARREADY),                // output wire S_AXI_HP1_ARREADY
  .S_AXI_HP1_AWREADY(S_AXI_HP1_AWREADY),                // output wire S_AXI_HP1_AWREADY
  .S_AXI_HP1_BVALID(S_AXI_HP1_BVALID),                  // output wire S_AXI_HP1_BVALID
  .S_AXI_HP1_RLAST(S_AXI_HP1_RLAST),                    // output wire S_AXI_HP1_RLAST
  .S_AXI_HP1_RVALID(S_AXI_HP1_RVALID),                  // output wire S_AXI_HP1_RVALID
  .S_AXI_HP1_WREADY(S_AXI_HP1_WREADY),                  // output wire S_AXI_HP1_WREADY
  .S_AXI_HP1_BRESP(S_AXI_HP1_BRESP),                    // output wire [1 : 0] S_AXI_HP1_BRESP
  .S_AXI_HP1_RRESP(S_AXI_HP1_RRESP),                    // output wire [1 : 0] S_AXI_HP1_RRESP
  .S_AXI_HP1_BID(S_AXI_HP1_BID),                        // output wire [5 : 0] S_AXI_HP1_BID
  .S_AXI_HP1_RID(S_AXI_HP1_RID),                        // output wire [5 : 0] S_AXI_HP1_RID
  .S_AXI_HP1_RDATA(S_AXI_HP1_RDATA),                    // output wire [63 : 0] S_AXI_HP1_RDATA
  .S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT),                  // output wire [7 : 0] S_AXI_HP1_RCOUNT
  .S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT),                  // output wire [7 : 0] S_AXI_HP1_WCOUNT
  .S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT),                // output wire [2 : 0] S_AXI_HP1_RACOUNT
  .S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT),                // output wire [5 : 0] S_AXI_HP1_WACOUNT
  .S_AXI_HP1_ACLK(S_AXI_HP1_ACLK),                      // input wire S_AXI_HP1_ACLK
  .S_AXI_HP1_ARVALID(S_AXI_HP1_ARVALID),                // input wire S_AXI_HP1_ARVALID
  .S_AXI_HP1_AWVALID(S_AXI_HP1_AWVALID),                // input wire S_AXI_HP1_AWVALID
  .S_AXI_HP1_BREADY(S_AXI_HP1_BREADY),                  // input wire S_AXI_HP1_BREADY
  .S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN),  // input wire S_AXI_HP1_RDISSUECAP1_EN
  .S_AXI_HP1_RREADY(S_AXI_HP1_RREADY),                  // input wire S_AXI_HP1_RREADY
  .S_AXI_HP1_WLAST(S_AXI_HP1_WLAST),                    // input wire S_AXI_HP1_WLAST
  .S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN),  // input wire S_AXI_HP1_WRISSUECAP1_EN
  .S_AXI_HP1_WVALID(S_AXI_HP1_WVALID),                  // input wire S_AXI_HP1_WVALID
  .S_AXI_HP1_ARBURST(S_AXI_HP1_ARBURST),                // input wire [1 : 0] S_AXI_HP1_ARBURST
  .S_AXI_HP1_ARLOCK(S_AXI_HP1_ARLOCK),                  // input wire [1 : 0] S_AXI_HP1_ARLOCK
  .S_AXI_HP1_ARSIZE(S_AXI_HP1_ARSIZE),                  // input wire [2 : 0] S_AXI_HP1_ARSIZE
  .S_AXI_HP1_AWBURST(S_AXI_HP1_AWBURST),                // input wire [1 : 0] S_AXI_HP1_AWBURST
  .S_AXI_HP1_AWLOCK(S_AXI_HP1_AWLOCK),                  // input wire [1 : 0] S_AXI_HP1_AWLOCK
  .S_AXI_HP1_AWSIZE(S_AXI_HP1_AWSIZE),                  // input wire [2 : 0] S_AXI_HP1_AWSIZE
  .S_AXI_HP1_ARPROT(S_AXI_HP1_ARPROT),                  // input wire [2 : 0] S_AXI_HP1_ARPROT
  .S_AXI_HP1_AWPROT(S_AXI_HP1_AWPROT),                  // input wire [2 : 0] S_AXI_HP1_AWPROT
  .S_AXI_HP1_ARADDR(S_AXI_HP1_ARADDR),                  // input wire [31 : 0] S_AXI_HP1_ARADDR
  .S_AXI_HP1_AWADDR(S_AXI_HP1_AWADDR),                  // input wire [31 : 0] S_AXI_HP1_AWADDR
  .S_AXI_HP1_ARCACHE(S_AXI_HP1_ARCACHE),                // input wire [3 : 0] S_AXI_HP1_ARCACHE
  .S_AXI_HP1_ARLEN(S_AXI_HP1_ARLEN),                    // input wire [3 : 0] S_AXI_HP1_ARLEN
  .S_AXI_HP1_ARQOS(S_AXI_HP1_ARQOS),                    // input wire [3 : 0] S_AXI_HP1_ARQOS
  .S_AXI_HP1_AWCACHE(S_AXI_HP1_AWCACHE),                // input wire [3 : 0] S_AXI_HP1_AWCACHE
  .S_AXI_HP1_AWLEN(S_AXI_HP1_AWLEN),                    // input wire [3 : 0] S_AXI_HP1_AWLEN
  .S_AXI_HP1_AWQOS(S_AXI_HP1_AWQOS),                    // input wire [3 : 0] S_AXI_HP1_AWQOS
  .S_AXI_HP1_ARID(S_AXI_HP1_ARID),                      // input wire [5 : 0] S_AXI_HP1_ARID
  .S_AXI_HP1_AWID(S_AXI_HP1_AWID),                      // input wire [5 : 0] S_AXI_HP1_AWID
  .S_AXI_HP1_WID(S_AXI_HP1_WID),                        // input wire [5 : 0] S_AXI_HP1_WID
  .S_AXI_HP1_WDATA(S_AXI_HP1_WDATA),                    // input wire [63 : 0] S_AXI_HP1_WDATA
  .S_AXI_HP1_WSTRB(S_AXI_HP1_WSTRB),                    // input wire [7 : 0] S_AXI_HP1_WSTRB
  .IRQ_F2P(IRQ_F2P),                                    // input wire [15 : 0] IRQ_F2P
  .DMA0_DATYPE(DMA0_DATYPE),                            // output wire [1 : 0] DMA0_DATYPE
  .DMA0_DAVALID(DMA0_DAVALID),                          // output wire DMA0_DAVALID
  .DMA0_DRREADY(DMA0_DRREADY),                          // output wire DMA0_DRREADY
  .DMA1_DATYPE(DMA1_DATYPE),                            // output wire [1 : 0] DMA1_DATYPE
  .DMA1_DAVALID(DMA1_DAVALID),                          // output wire DMA1_DAVALID
  .DMA1_DRREADY(DMA1_DRREADY),                          // output wire DMA1_DRREADY
  .DMA2_DATYPE(DMA2_DATYPE),                            // output wire [1 : 0] DMA2_DATYPE
  .DMA2_DAVALID(DMA2_DAVALID),                          // output wire DMA2_DAVALID
  .DMA2_DRREADY(DMA2_DRREADY),                          // output wire DMA2_DRREADY
  .DMA0_ACLK(DMA0_ACLK),                                // input wire DMA0_ACLK
  .DMA0_DAREADY(DMA0_DAREADY),                          // input wire DMA0_DAREADY
  .DMA0_DRLAST(DMA0_DRLAST),                            // input wire DMA0_DRLAST
  .DMA0_DRVALID(DMA0_DRVALID),                          // input wire DMA0_DRVALID
  .DMA1_ACLK(DMA1_ACLK),                                // input wire DMA1_ACLK
  .DMA1_DAREADY(DMA1_DAREADY),                          // input wire DMA1_DAREADY
  .DMA1_DRLAST(DMA1_DRLAST),                            // input wire DMA1_DRLAST
  .DMA1_DRVALID(DMA1_DRVALID),                          // input wire DMA1_DRVALID
  .DMA2_ACLK(DMA2_ACLK),                                // input wire DMA2_ACLK
  .DMA2_DAREADY(DMA2_DAREADY),                          // input wire DMA2_DAREADY
  .DMA2_DRLAST(DMA2_DRLAST),                            // input wire DMA2_DRLAST
  .DMA2_DRVALID(DMA2_DRVALID),                          // input wire DMA2_DRVALID
  .DMA0_DRTYPE(DMA0_DRTYPE),                            // input wire [1 : 0] DMA0_DRTYPE
  .DMA1_DRTYPE(DMA1_DRTYPE),                            // input wire [1 : 0] DMA1_DRTYPE
  .DMA2_DRTYPE(DMA2_DRTYPE),                            // input wire [1 : 0] DMA2_DRTYPE
  .FCLK_CLK0(FCLK_CLK0),                                // output wire FCLK_CLK0
  .FCLK_CLK1(FCLK_CLK1),                                // output wire FCLK_CLK1
  .FCLK_CLK2(FCLK_CLK2),                                // output wire FCLK_CLK2
  .FCLK_RESET0_N(FCLK_RESET0_N),                        // output wire FCLK_RESET0_N
  .MIO(MIO),                                            // inout wire [53 : 0] MIO
  .DDR_CAS_n(DDR_CAS_n),                                // inout wire DDR_CAS_n
  .DDR_CKE(DDR_CKE),                                    // inout wire DDR_CKE
  .DDR_Clk_n(DDR_Clk_n),                                // inout wire DDR_Clk_n
  .DDR_Clk(DDR_Clk),                                    // inout wire DDR_Clk
  .DDR_CS_n(DDR_CS_n),                                  // inout wire DDR_CS_n
  .DDR_DRSTB(DDR_DRSTB),                                // inout wire DDR_DRSTB
  .DDR_ODT(DDR_ODT),                                    // inout wire DDR_ODT
  .DDR_RAS_n(DDR_RAS_n),                                // inout wire DDR_RAS_n
  .DDR_WEB(DDR_WEB),                                    // inout wire DDR_WEB
  .DDR_BankAddr(DDR_BankAddr),                          // inout wire [2 : 0] DDR_BankAddr
  .DDR_Addr(DDR_Addr),                                  // inout wire [14 : 0] DDR_Addr
  .DDR_VRN(DDR_VRN),                                    // inout wire DDR_VRN
  .DDR_VRP(DDR_VRP),                                    // inout wire DDR_VRP
  .DDR_DM(DDR_DM),                                      // inout wire [3 : 0] DDR_DM
  .DDR_DQ(DDR_DQ),                                      // inout wire [31 : 0] DDR_DQ
  .DDR_DQS_n(DDR_DQS_n),                                // inout wire [3 : 0] DDR_DQS_n
  .DDR_DQS(DDR_DQS),                                    // inout wire [3 : 0] DDR_DQS
  .PS_SRSTB(PS_SRSTB),                                  // inout wire PS_SRSTB
  .PS_CLK(PS_CLK),                                      // inout wire PS_CLK
  .PS_PORB(PS_PORB)                                    // inout wire PS_PORB
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file system_sys_ps7_0.v when simulating
// the core, system_sys_ps7_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

