-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: analog.com:user:axi_hdmi_tx:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_axi_hdmi_core_0
  PORT (
    hdmi_clk : IN STD_LOGIC;
    hdmi_out_clk : OUT STD_LOGIC;
    hdmi_16_hsync : OUT STD_LOGIC;
    hdmi_16_vsync : OUT STD_LOGIC;
    hdmi_16_data_e : OUT STD_LOGIC;
    hdmi_16_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    hdmi_16_es_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    hdmi_24_hsync : OUT STD_LOGIC;
    hdmi_24_vsync : OUT STD_LOGIC;
    hdmi_24_data_e : OUT STD_LOGIC;
    hdmi_24_data : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    hdmi_36_hsync : OUT STD_LOGIC;
    hdmi_36_vsync : OUT STD_LOGIC;
    hdmi_36_data_e : OUT STD_LOGIC;
    hdmi_36_data : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    m_axis_mm2s_clk : IN STD_LOGIC;
    m_axis_mm2s_fsync : OUT STD_LOGIC;
    m_axis_mm2s_fsync_ret : IN STD_LOGIC;
    m_axis_mm2s_tvalid : IN STD_LOGIC;
    m_axis_mm2s_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_mm2s_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_mm2s_tlast : IN STD_LOGIC;
    m_axis_mm2s_tready : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bready : IN STD_LOGIC;
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rready : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_axi_hdmi_core_0
  PORT MAP (
    hdmi_clk => hdmi_clk,
    hdmi_out_clk => hdmi_out_clk,
    hdmi_16_hsync => hdmi_16_hsync,
    hdmi_16_vsync => hdmi_16_vsync,
    hdmi_16_data_e => hdmi_16_data_e,
    hdmi_16_data => hdmi_16_data,
    hdmi_16_es_data => hdmi_16_es_data,
    hdmi_24_hsync => hdmi_24_hsync,
    hdmi_24_vsync => hdmi_24_vsync,
    hdmi_24_data_e => hdmi_24_data_e,
    hdmi_24_data => hdmi_24_data,
    hdmi_36_hsync => hdmi_36_hsync,
    hdmi_36_vsync => hdmi_36_vsync,
    hdmi_36_data_e => hdmi_36_data_e,
    hdmi_36_data => hdmi_36_data,
    m_axis_mm2s_clk => m_axis_mm2s_clk,
    m_axis_mm2s_fsync => m_axis_mm2s_fsync,
    m_axis_mm2s_fsync_ret => m_axis_mm2s_fsync_ret,
    m_axis_mm2s_tvalid => m_axis_mm2s_tvalid,
    m_axis_mm2s_tdata => m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep => m_axis_mm2s_tkeep,
    m_axis_mm2s_tlast => m_axis_mm2s_tlast,
    m_axis_mm2s_tready => m_axis_mm2s_tready,
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_awready => s_axi_awready,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wdata => s_axi_wdata,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wready => s_axi_wready,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_bresp => s_axi_bresp,
    s_axi_bready => s_axi_bready,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_araddr => s_axi_araddr,
    s_axi_arready => s_axi_arready,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rdata => s_axi_rdata,
    s_axi_rresp => s_axi_rresp,
    s_axi_rready => s_axi_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

