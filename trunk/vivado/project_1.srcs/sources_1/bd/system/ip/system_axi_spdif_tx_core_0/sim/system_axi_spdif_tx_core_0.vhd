-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: analog.com:user:axi_spdif_tx:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_axi_spdif_tx_core_0 IS
  PORT (
    spdif_data_clk : IN STD_LOGIC;
    spdif_tx_o : OUT STD_LOGIC;
    S_AXI_ACLK : IN STD_LOGIC;
    S_AXI_ARESETN : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC;
    DMA_REQ_ACLK : IN STD_LOGIC;
    DMA_REQ_RSTN : IN STD_LOGIC;
    DMA_REQ_DAVALID : IN STD_LOGIC;
    DMA_REQ_DATYPE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_DAREADY : OUT STD_LOGIC;
    DMA_REQ_DRVALID : OUT STD_LOGIC;
    DMA_REQ_DRTYPE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_DRLAST : OUT STD_LOGIC;
    DMA_REQ_DRREADY : IN STD_LOGIC
  );
END system_axi_spdif_tx_core_0;

ARCHITECTURE system_axi_spdif_tx_core_0_arch OF system_axi_spdif_tx_core_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_axi_spdif_tx_core_0_arch: ARCHITECTURE IS "yes";

  COMPONENT axi_spdif_tx IS
    GENERIC (
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_FAMILY : STRING;
      C_DMA_TYPE : INTEGER
    );
    PORT (
      spdif_data_clk : IN STD_LOGIC;
      spdif_tx_o : OUT STD_LOGIC;
      S_AXI_ACLK : IN STD_LOGIC;
      S_AXI_ARESETN : IN STD_LOGIC;
      S_AXI_AWADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S_AXI_AWVALID : IN STD_LOGIC;
      S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_WVALID : IN STD_LOGIC;
      S_AXI_BREADY : IN STD_LOGIC;
      S_AXI_ARADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S_AXI_ARVALID : IN STD_LOGIC;
      S_AXI_RREADY : IN STD_LOGIC;
      S_AXI_ARREADY : OUT STD_LOGIC;
      S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_RVALID : OUT STD_LOGIC;
      S_AXI_WREADY : OUT STD_LOGIC;
      S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_BVALID : OUT STD_LOGIC;
      S_AXI_AWREADY : OUT STD_LOGIC;
      S_AXIS_ACLK : IN STD_LOGIC;
      S_AXIS_ARESETN : IN STD_LOGIC;
      S_AXIS_TREADY : OUT STD_LOGIC;
      S_AXIS_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXIS_TLAST : IN STD_LOGIC;
      S_AXIS_TVALID : IN STD_LOGIC;
      DMA_REQ_ACLK : IN STD_LOGIC;
      DMA_REQ_RSTN : IN STD_LOGIC;
      DMA_REQ_DAVALID : IN STD_LOGIC;
      DMA_REQ_DATYPE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DMA_REQ_DAREADY : OUT STD_LOGIC;
      DMA_REQ_DRVALID : OUT STD_LOGIC;
      DMA_REQ_DRTYPE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      DMA_REQ_DRLAST : OUT STD_LOGIC;
      DMA_REQ_DRREADY : IN STD_LOGIC
    );
  END COMPONENT axi_spdif_tx;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF spdif_data_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 spdif_data_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 DMA_REQ_signal_clock CLK, xilinx.com:signal:clock:1.0 DMA_REQ_DMA_ACK_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_RSTN: SIGNAL IS "xilinx.com:signal:reset:1.0 DMA_REQ_DMA_ACK_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DAVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_ACK TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DATYPE: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_ACK TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DAREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_ACK TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DRVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_REQ TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DRTYPE: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_REQ TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DRLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_REQ TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF DMA_REQ_DRREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 DMA_REQ TREADY";
BEGIN
  U0 : axi_spdif_tx
    GENERIC MAP (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 16,
      C_FAMILY => "zynq",
      C_DMA_TYPE => 1
    )
    PORT MAP (
      spdif_data_clk => spdif_data_clk,
      spdif_tx_o => spdif_tx_o,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXIS_ACLK => '0',
      S_AXIS_ARESETN => '0',
      S_AXIS_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      S_AXIS_TLAST => '0',
      S_AXIS_TVALID => '0',
      DMA_REQ_ACLK => DMA_REQ_ACLK,
      DMA_REQ_RSTN => DMA_REQ_RSTN,
      DMA_REQ_DAVALID => DMA_REQ_DAVALID,
      DMA_REQ_DATYPE => DMA_REQ_DATYPE,
      DMA_REQ_DAREADY => DMA_REQ_DAREADY,
      DMA_REQ_DRVALID => DMA_REQ_DRVALID,
      DMA_REQ_DRTYPE => DMA_REQ_DRTYPE,
      DMA_REQ_DRLAST => DMA_REQ_DRLAST,
      DMA_REQ_DRREADY => DMA_REQ_DRREADY
    );
END system_axi_spdif_tx_core_0_arch;
