// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sat Jan 09 19:39:16 2016
// Host        : Peter-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               D:/Developers_KIT/Zynq702/TFTLCD/AXI_TFT/axi_tft_0_example/axi_tft_0_example.runs/axi_tft_0_synth_1/axi_tft_0_sim_netlist.v
// Design      : axi_tft_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_tft_0,axi_tft,{}" *) (* core_generation_info = "axi_tft_0,axi_tft,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_tft,x_ipVersion=2.1,x_ipCoreRevision=12,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_TFT_INTERFACE=0,C_EN_I2C_INTF=0,C_I2C_SLAVE_ADDR=0x76,C_DEFAULT_TFT_BASE_ADDR=0x00000000F0000000,C_M_AXI_ADDR_WIDTH=32,C_M_AXI_DATA_WIDTH=64,C_MAX_BURST_LEN=16,C_S_AXI_ADDR_WIDTH=3}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_tft,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module axi_tft_0
   (s_axi_aclk,
    s_axi_aresetn,
    m_axi_aclk,
    m_axi_aresetn,
    md_error,
    ip2intc_irpt,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sys_tft_clk,
    tft_hsync,
    tft_vsync,
    tft_de,
    tft_dps,
    tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) input m_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) input m_axi_aresetn;
  output md_error;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 TFT_INTR INTERRUPT" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARREADY" *) input m_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARVALID" *) output m_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARADDR" *) output [31:0]m_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARLEN" *) output [7:0]m_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARSIZE" *) output [2:0]m_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARBURST" *) output [1:0]m_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARPROT" *) output [2:0]m_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM ARCACHE" *) output [3:0]m_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RREADY" *) output m_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RVALID" *) input m_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RDATA" *) input [63:0]m_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RRESP" *) input [1:0]m_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM RLAST" *) input m_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWREADY" *) input m_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWVALID" *) output m_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWADDR" *) output [31:0]m_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWLEN" *) output [7:0]m_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWSIZE" *) output [2:0]m_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWBURST" *) output [1:0]m_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWPROT" *) output [2:0]m_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM AWCACHE" *) output [3:0]m_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WREADY" *) input m_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WVALID" *) output m_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WDATA" *) output [63:0]m_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WSTRB" *) output [7:0]m_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM WLAST" *) output m_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BREADY" *) output m_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BVALID" *) input m_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM BRESP" *) input [1:0]m_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWADDR" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MM RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 TFT_CLK CLK" *) input sys_tft_clk;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF HSYNC" *) output tft_hsync;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF VSYNC" *) output tft_vsync;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF DE" *) output tft_de;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF DPS" *) output tft_dps;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF CLK" *) output tft_vga_clk;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF RED" *) output [7:0]tft_vga_r;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF GREEN" *) output [7:0]tft_vga_g;
  (* x_interface_info = "xilinx.com:interface:vga:1.0 VGA_INTF BLUE" *) output [7:0]tft_vga_b;

  wire ip2intc_irpt;
  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sys_tft_clk;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire [7:0]tft_vga_b;
  wire tft_vga_clk;
  wire [7:0]tft_vga_g;
  wire [7:0]tft_vga_r;
  wire tft_vsync;
  wire NLW_U0_tft_dvi_clk_n_UNCONNECTED;
  wire NLW_U0_tft_dvi_clk_p_UNCONNECTED;
  wire NLW_U0_tft_iic_scl_o_UNCONNECTED;
  wire NLW_U0_tft_iic_scl_t_UNCONNECTED;
  wire NLW_U0_tft_iic_sda_o_UNCONNECTED;
  wire NLW_U0_tft_iic_sda_t_UNCONNECTED;
  wire [11:0]NLW_U0_tft_dvi_data_UNCONNECTED;

  (* C_DEFAULT_TFT_BASE_ADDR = "64'b0000000000000000000000000000000011110000000000000000000000000000" *) 
  (* C_EN_I2C_INTF = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_I2C_SLAVE_ADDR = "8'b01110110" *) 
  (* C_MAX_BURST_LEN = "16" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_DATA_WIDTH = "64" *) 
  (* C_S_AXI_ADDR_WIDTH = "3" *) 
  (* C_TFT_INTERFACE = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  axi_tft_0_axi_tft U0
       (.ip2intc_irpt(ip2intc_irpt),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sys_tft_clk(sys_tft_clk),
        .tft_de(tft_de),
        .tft_dps(tft_dps),
        .tft_dvi_clk_n(NLW_U0_tft_dvi_clk_n_UNCONNECTED),
        .tft_dvi_clk_p(NLW_U0_tft_dvi_clk_p_UNCONNECTED),
        .tft_dvi_data(NLW_U0_tft_dvi_data_UNCONNECTED[11:0]),
        .tft_hsync(tft_hsync),
        .tft_iic_scl_i(1'b0),
        .tft_iic_scl_o(NLW_U0_tft_iic_scl_o_UNCONNECTED),
        .tft_iic_scl_t(NLW_U0_tft_iic_scl_t_UNCONNECTED),
        .tft_iic_sda_i(1'b0),
        .tft_iic_sda_o(NLW_U0_tft_iic_sda_o_UNCONNECTED),
        .tft_iic_sda_t(NLW_U0_tft_iic_sda_t_UNCONNECTED),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module axi_tft_0_address_decoder
   (TFT_iic_xfer_reg,
    TFT_intr_en_reg,
    TFT_dps_reg_reg,
    TFT_status_reg_reg,
    TFT_iic_xfer_reg_0,
    E,
    \TFT_base_addr_reg[10] ,
    IP2Bus_Data,
    \IP2Bus_Data_reg[10] ,
    bus2ip_rdce_or,
    \IP2Bus_Data_reg[29] ,
    \IP2Bus_Data_reg[0] ,
    bus2ip_wrce_or,
    \IP2Bus_Data_reg[31] ,
    \IP2Bus_Data_reg[31]_0 ,
    \IP2Bus_Data_reg[31]_1 ,
    \IP2Bus_Data_reg[31]_2 ,
    TFT_iic_xfer_reg_1,
    TFT_status_reg_reg_0,
    TFT_intr_en_reg_0,
    TFT_dps_reg_reg_0,
    TFT_on_reg_reg,
    cs_ce_clr,
    start2,
    s_axi_aclk,
    Q,
    bus2ip_sreset,
    prmry_in,
    TFT_status_reg,
    tft_dps,
    \TFT_iic_reg_data_reg[0] ,
    TFT_intr_en_reg_1,
    \TFT_iic_reg_addr_reg[0] ,
    s_axi_wdata,
    TFT_iic_xfer,
    tft_status_d2_reg,
    bus2ip_rnw_i,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[2] );
  output TFT_iic_xfer_reg;
  output TFT_intr_en_reg;
  output TFT_dps_reg_reg;
  output TFT_status_reg_reg;
  output TFT_iic_xfer_reg_0;
  output [0:0]E;
  output [0:0]\TFT_base_addr_reg[10] ;
  output [24:0]IP2Bus_Data;
  output \IP2Bus_Data_reg[10] ;
  output bus2ip_rdce_or;
  output \IP2Bus_Data_reg[29] ;
  output \IP2Bus_Data_reg[0] ;
  output bus2ip_wrce_or;
  output \IP2Bus_Data_reg[31] ;
  output \IP2Bus_Data_reg[31]_0 ;
  output \IP2Bus_Data_reg[31]_1 ;
  output \IP2Bus_Data_reg[31]_2 ;
  output TFT_iic_xfer_reg_1;
  output TFT_status_reg_reg_0;
  output TFT_intr_en_reg_0;
  output TFT_dps_reg_reg_0;
  output TFT_on_reg_reg;
  input cs_ce_clr;
  input start2;
  input s_axi_aclk;
  input [9:0]Q;
  input bus2ip_sreset;
  input prmry_in;
  input TFT_status_reg;
  input tft_dps;
  input [6:0]\TFT_iic_reg_data_reg[0] ;
  input TFT_intr_en_reg_1;
  input [7:0]\TFT_iic_reg_addr_reg[0] ;
  input [3:0]s_axi_wdata;
  input TFT_iic_xfer;
  input tft_status_d2_reg;
  input bus2ip_rnw_i;
  input \bus2ip_addr_i_reg[3] ;
  input \bus2ip_addr_i_reg[2] ;

  wire Bus_RNW_reg_i_1_n_0;
  wire [0:0]E;
  wire [24:0]IP2Bus_Data;
  wire \IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[10] ;
  wire \IP2Bus_Data_reg[29] ;
  wire \IP2Bus_Data_reg[31] ;
  wire \IP2Bus_Data_reg[31]_0 ;
  wire \IP2Bus_Data_reg[31]_1 ;
  wire \IP2Bus_Data_reg[31]_2 ;
  wire [9:0]Q;
  wire [0:0]\TFT_base_addr_reg[10] ;
  wire TFT_dps_reg_reg;
  wire TFT_dps_reg_reg_0;
  wire [7:0]\TFT_iic_reg_addr_reg[0] ;
  wire [6:0]\TFT_iic_reg_data_reg[0] ;
  wire TFT_iic_xfer;
  wire TFT_iic_xfer_reg;
  wire TFT_iic_xfer_reg_0;
  wire TFT_iic_xfer_reg_1;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_intr_en_reg_1;
  wire TFT_on_reg_reg;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire TFT_status_reg_reg_0;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[3] ;
  wire bus2ip_rdce_or;
  wire bus2ip_rnw_i;
  wire bus2ip_sreset;
  wire bus2ip_wrce_or;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [3:0]s_axi_wdata;
  wire start2;
  wire tft_dps;
  wire tft_status_d2_reg;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(start2),
        .I2(TFT_iic_xfer_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(TFT_iic_xfer_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[2] ),
        .I1(start2),
        .I2(\bus2ip_addr_i_reg[3] ),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_3),
        .Q(TFT_status_reg_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(start2),
        .I1(\bus2ip_addr_i_reg[2] ),
        .I2(\bus2ip_addr_i_reg[3] ),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_2),
        .Q(TFT_dps_reg_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[3] ),
        .I1(start2),
        .I2(\bus2ip_addr_i_reg[2] ),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_1),
        .Q(TFT_intr_en_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\bus2ip_addr_i_reg[3] ),
        .I1(start2),
        .I2(\bus2ip_addr_i_reg[2] ),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_0),
        .Q(TFT_iic_xfer_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \IP2Bus_Data[0]_i_2 
       (.I0(TFT_status_reg_reg),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_intr_en_reg),
        .I3(TFT_iic_xfer_reg_0),
        .O(\IP2Bus_Data_reg[31]_2 ));
  LUT6 #(
    .INIT(64'hDFDFDFDDDFDFDFDF)) 
    \IP2Bus_Data[0]_i_3 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(bus2ip_sreset),
        .I2(TFT_status_reg_reg),
        .I3(TFT_intr_en_reg),
        .I4(TFT_dps_reg_reg),
        .I5(TFT_iic_xfer_reg),
        .O(\IP2Bus_Data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(Q[0]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(TFT_iic_xfer_reg),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_intr_en_reg),
        .I3(TFT_status_reg_reg),
        .I4(TFT_iic_xfer_reg_0),
        .I5(bus2ip_sreset),
        .O(\IP2Bus_Data_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[16]_i_2 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [7]),
        .O(IP2Bus_Data[14]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [6]),
        .O(IP2Bus_Data[13]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [5]),
        .O(IP2Bus_Data[12]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [4]),
        .O(IP2Bus_Data[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(bus2ip_sreset),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(\IP2Bus_Data_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[1]_i_2 
       (.I0(Q[9]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[24]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [3]),
        .O(IP2Bus_Data[10]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [2]),
        .O(IP2Bus_Data[9]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [1]),
        .O(IP2Bus_Data[8]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_addr_reg[0] [0]),
        .O(IP2Bus_Data[7]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_data_reg[0] [6]),
        .O(IP2Bus_Data[6]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_data_reg[0] [5]),
        .O(IP2Bus_Data[5]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_data_reg[0] [4]),
        .O(IP2Bus_Data[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_data_reg[0] [3]),
        .O(IP2Bus_Data[3]));
  LUT6 #(
    .INIT(64'h000A000CCCCCCCCC)) 
    \IP2Bus_Data[28]_i_2 
       (.I0(TFT_intr_en_reg_1),
        .I1(\TFT_iic_reg_data_reg[0] [2]),
        .I2(TFT_status_reg_reg),
        .I3(TFT_dps_reg_reg),
        .I4(TFT_intr_en_reg),
        .I5(TFT_iic_xfer_reg_0),
        .O(IP2Bus_Data[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \IP2Bus_Data[28]_i_3 
       (.I0(TFT_status_reg_reg),
        .I1(TFT_iic_xfer_reg_0),
        .O(\IP2Bus_Data_reg[31]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(TFT_iic_xfer_reg_0),
        .I1(TFT_intr_en_reg),
        .I2(TFT_dps_reg_reg),
        .I3(TFT_status_reg_reg),
        .I4(\TFT_iic_reg_data_reg[0] [1]),
        .O(IP2Bus_Data[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(Q[8]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[23]));
  LUT6 #(
    .INIT(64'h0A000A0CCCCCCCCC)) 
    \IP2Bus_Data[30]_i_2 
       (.I0(tft_dps),
        .I1(\TFT_iic_reg_data_reg[0] [0]),
        .I2(TFT_status_reg_reg),
        .I3(TFT_dps_reg_reg),
        .I4(TFT_intr_en_reg),
        .I5(TFT_iic_xfer_reg_0),
        .O(IP2Bus_Data[0]));
  LUT6 #(
    .INIT(64'h2020202030000000)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(prmry_in),
        .I1(TFT_status_reg_reg),
        .I2(TFT_iic_xfer_reg_0),
        .I3(TFT_intr_en_reg),
        .I4(TFT_status_reg),
        .I5(TFT_dps_reg_reg),
        .O(\IP2Bus_Data_reg[31]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \IP2Bus_Data[31]_i_3 
       (.I0(TFT_intr_en_reg),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_iic_xfer_reg),
        .O(\IP2Bus_Data_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(Q[7]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(Q[6]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Q[5]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(Q[4]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(Q[3]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(Q[2]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(Q[1]),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_status_reg_reg),
        .O(IP2Bus_Data[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TFT_base_addr[0]_i_1 
       (.I0(TFT_status_reg_reg),
        .I1(TFT_iic_xfer_reg_0),
        .O(\TFT_base_addr_reg[10] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_dps_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_iic_xfer_reg_0),
        .I3(tft_dps),
        .O(TFT_dps_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TFT_iic_reg_data[0]_i_1 
       (.I0(TFT_iic_xfer_reg),
        .I1(TFT_iic_xfer_reg_0),
        .O(E));
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_iic_xfer_i_1
       (.I0(s_axi_wdata[3]),
        .I1(TFT_iic_xfer_reg),
        .I2(TFT_iic_xfer_reg_0),
        .I3(TFT_iic_xfer),
        .O(TFT_iic_xfer_reg_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_intr_en_i_1
       (.I0(s_axi_wdata[2]),
        .I1(TFT_intr_en_reg),
        .I2(TFT_iic_xfer_reg_0),
        .I3(TFT_intr_en_reg_1),
        .O(TFT_intr_en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    TFT_on_reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_iic_xfer_reg_0),
        .I3(prmry_in),
        .O(TFT_on_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    TFT_status_reg_i_1
       (.I0(tft_status_d2_reg),
        .I1(bus2ip_sreset),
        .I2(TFT_status_reg_reg),
        .I3(TFT_iic_xfer_reg_0),
        .O(TFT_status_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    bus2ip_rdce_d1_i_1
       (.I0(TFT_intr_en_reg),
        .I1(TFT_dps_reg_reg),
        .I2(TFT_iic_xfer_reg),
        .I3(TFT_iic_xfer_reg_0),
        .I4(TFT_status_reg_reg),
        .O(bus2ip_rdce_or));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h33333332)) 
    bus2ip_wrce_d1_i_1
       (.I0(TFT_status_reg_reg),
        .I1(TFT_iic_xfer_reg_0),
        .I2(TFT_intr_en_reg),
        .I3(TFT_dps_reg_reg),
        .I4(TFT_iic_xfer_reg),
        .O(bus2ip_wrce_or));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module axi_tft_0_async_fifo_fg
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    AXI_BRAM_we_i,
    \BRAM_TFT_addr_reg[9] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input AXI_BRAM_we_i;
  input [0:0]\BRAM_TFT_addr_reg[9] ;

  wire AXI_BRAM_we_i;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [47:0]Q;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tft_rst;

  axi_tft_0_fifo_generator_v13_0_1 \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM 
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\BRAM_TFT_B_data_reg[7] (\BRAM_TFT_B_data_reg[7] ),
        .\BRAM_TFT_G_data_reg[7] (\BRAM_TFT_G_data_reg[7] ),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .D(D),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module axi_tft_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    E,
    \TFT_base_addr_reg[10] ,
    IP2Bus_Data,
    \IP2Bus_Data_reg[10] ,
    bus2ip_rdce_or,
    \IP2Bus_Data_reg[29] ,
    \IP2Bus_Data_reg[0] ,
    bus2ip_wrce_or,
    \IP2Bus_Data_reg[31] ,
    \IP2Bus_Data_reg[31]_0 ,
    \IP2Bus_Data_reg[31]_1 ,
    \IP2Bus_Data_reg[31]_2 ,
    TFT_iic_xfer_reg,
    TFT_status_reg_reg,
    TFT_intr_en_reg,
    TFT_dps_reg_reg,
    TFT_on_reg_reg,
    s_axi_rdata,
    bus2ip_sreset,
    s_axi_aclk,
    cs_ce_clr,
    bus2ip_wrce_d1,
    bus2ip_wrce_d2,
    s_axi_arvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arready,
    Q,
    prmry_in,
    TFT_status_reg,
    tft_dps,
    \TFT_iic_reg_data_reg[0] ,
    TFT_intr_en_reg_0,
    \TFT_iic_reg_addr_reg[0] ,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    s_axi_wdata,
    TFT_iic_xfer,
    tft_status_d2_reg,
    D,
    s_axi_awaddr,
    s_axi_araddr);
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]E;
  output [0:0]\TFT_base_addr_reg[10] ;
  output [24:0]IP2Bus_Data;
  output \IP2Bus_Data_reg[10] ;
  output bus2ip_rdce_or;
  output \IP2Bus_Data_reg[29] ;
  output \IP2Bus_Data_reg[0] ;
  output bus2ip_wrce_or;
  output \IP2Bus_Data_reg[31] ;
  output \IP2Bus_Data_reg[31]_0 ;
  output \IP2Bus_Data_reg[31]_1 ;
  output \IP2Bus_Data_reg[31]_2 ;
  output TFT_iic_xfer_reg;
  output TFT_status_reg_reg;
  output TFT_intr_en_reg;
  output TFT_dps_reg_reg;
  output TFT_on_reg_reg;
  output [26:0]s_axi_rdata;
  input bus2ip_sreset;
  input s_axi_aclk;
  input cs_ce_clr;
  input bus2ip_wrce_d1;
  input bus2ip_wrce_d2;
  input s_axi_arvalid;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arready;
  input [9:0]Q;
  input prmry_in;
  input TFT_status_reg;
  input tft_dps;
  input [6:0]\TFT_iic_reg_data_reg[0] ;
  input TFT_intr_en_reg_0;
  input [7:0]\TFT_iic_reg_addr_reg[0] ;
  input bus2ip_rdce_d1;
  input bus2ip_rdce_d2;
  input [3:0]s_axi_wdata;
  input TFT_iic_xfer;
  input tft_status_d2_reg;
  input [26:0]D;
  input [1:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;

  wire Bus_RNW_reg;
  wire [26:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [24:0]IP2Bus_Data;
  wire \IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[10] ;
  wire \IP2Bus_Data_reg[29] ;
  wire \IP2Bus_Data_reg[31] ;
  wire \IP2Bus_Data_reg[31]_0 ;
  wire \IP2Bus_Data_reg[31]_1 ;
  wire \IP2Bus_Data_reg[31]_2 ;
  wire [9:0]Q;
  wire [0:0]\TFT_base_addr_reg[10] ;
  wire TFT_dps_reg_reg;
  wire [7:0]\TFT_iic_reg_addr_reg[0] ;
  wire [6:0]\TFT_iic_reg_data_reg[0] ;
  wire TFT_iic_xfer;
  wire TFT_iic_xfer_reg;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_on_reg_reg;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire bus2ip_wrce_d1;
  wire bus2ip_wrce_d2;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [26:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire tft_dps;
  wire tft_status_d2_reg;

  axi_tft_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .IP2Bus_Data(IP2Bus_Data),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[10] (\IP2Bus_Data_reg[10] ),
        .\IP2Bus_Data_reg[29] (\IP2Bus_Data_reg[29] ),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .\IP2Bus_Data_reg[31]_0 (\IP2Bus_Data_reg[31]_0 ),
        .\IP2Bus_Data_reg[31]_1 (\IP2Bus_Data_reg[31]_1 ),
        .\IP2Bus_Data_reg[31]_2 (\IP2Bus_Data_reg[31]_2 ),
        .Q(Q),
        .\TFT_base_addr_reg[10] (\TFT_base_addr_reg[10] ),
        .TFT_dps_reg_reg(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .TFT_dps_reg_reg_0(TFT_dps_reg_reg),
        .\TFT_iic_reg_addr_reg[0] (\TFT_iic_reg_addr_reg[0] ),
        .\TFT_iic_reg_data_reg[0] (\TFT_iic_reg_data_reg[0] ),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_iic_xfer_reg(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .TFT_iic_xfer_reg_0(Bus_RNW_reg),
        .TFT_iic_xfer_reg_1(TFT_iic_xfer_reg),
        .TFT_intr_en_reg(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .TFT_intr_en_reg_0(TFT_intr_en_reg),
        .TFT_intr_en_reg_1(TFT_intr_en_reg_0),
        .TFT_on_reg_reg(TFT_on_reg_reg),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .TFT_status_reg_reg_0(TFT_status_reg_reg),
        .bus2ip_rdce_d1(bus2ip_rdce_d1),
        .bus2ip_rdce_d2(bus2ip_rdce_d2),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce_d1(bus2ip_wrce_d1),
        .bus2ip_wrce_d2(bus2ip_wrce_d2),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .tft_dps(tft_dps),
        .tft_status_d2_reg(tft_status_d2_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst" *) 
module axi_tft_0_axi_master_burst
   (m_axi_wvalid,
    m_axi_awburst,
    m_axi_arvalid,
    sig_cmd_empty_reg,
    bus2ip_mst_cmplt,
    md_error,
    bus2ip_mst_cmdack,
    sig_rd2llink_strm_tlast,
    sig_llink2cmd_rd_busy,
    m_axi_rready,
    sig_rd_discontinue,
    AXI_BRAM_we_i_reg,
    \trans_cnt_reg[0] ,
    bus2ip_mstrd_eof_n,
    m_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_wstrb,
    Q,
    m_axi_aclk,
    E,
    ip2bus_mstrd_req,
    IP2Bus_Mst_Type,
    scndry_out,
    m_axi_aresetn,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_rresp,
    IP2Bus_MstRd_dst_rdy,
    m_axi_bvalid,
    m_axi_wready,
    eof_n,
    m_axi_arready,
    m_axi_rdata,
    D);
  output m_axi_wvalid;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output sig_cmd_empty_reg;
  output bus2ip_mst_cmplt;
  output md_error;
  output bus2ip_mst_cmdack;
  output sig_rd2llink_strm_tlast;
  output sig_llink2cmd_rd_busy;
  output m_axi_rready;
  output sig_rd_discontinue;
  output AXI_BRAM_we_i_reg;
  output [0:0]\trans_cnt_reg[0] ;
  output bus2ip_mstrd_eof_n;
  output m_axi_bready;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awsize;
  output [7:0]m_axi_wstrb;
  output [47:0]Q;
  input m_axi_aclk;
  input [0:0]E;
  input ip2bus_mstrd_req;
  input IP2Bus_Mst_Type;
  input scndry_out;
  input m_axi_aresetn;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input IP2Bus_MstRd_dst_rdy;
  input m_axi_bvalid;
  input m_axi_wready;
  input eof_n;
  input m_axi_arready;
  input [47:0]m_axi_rdata;
  input [24:0]D;

  wire AXI_BRAM_we_i_reg;
  wire [24:0]D;
  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_Mst_Type;
  wire \I_ADDR_CNTL/sig_rd_addr_valid_reg0 ;
  wire I_CMD_STATUS_MODULE_n_15;
  wire I_CMD_STATUS_MODULE_n_19;
  wire [2:0]\I_MSTR_PCC/p_1_in ;
  wire [7:7]\I_MSTR_PCC/sig_btt_cntr0 ;
  wire \I_MSTR_PCC/sig_calc_error_pushed ;
  wire \I_MSTR_PCC/sig_input_reg_empty ;
  wire \I_MSTR_PCC/sig_push_input_reg16_out ;
  wire \I_MSTR_PCC/sig_sm_halt_reg ;
  wire I_RD_LLINK_ADAPTER_n_4;
  wire \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ;
  wire I_RD_WR_CNTRL_MODULE_n_115;
  wire I_RD_WR_CNTRL_MODULE_n_116;
  wire I_RD_WR_CNTRL_MODULE_n_117;
  wire I_RD_WR_CNTRL_MODULE_n_19;
  wire \I_READ_STREAM_SKID_BUF/p_0_in2_in ;
  wire \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ;
  wire \I_WRITE_STRM_SKID_BUF/sig_strb_reg_out0 ;
  wire \I_WR_LLINK_ADAPTER/sig_allow_wr_requests0 ;
  wire [47:0]Q;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire eof_n;
  wire ip2bus_mstrd_req;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awsize;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [47:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire scndry_out;
  wire sig_addr2pcc_cmd_ready;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [31:7]sig_addr_out;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_empty_reg;
  wire sig_cmd_mstrd_req0;
  wire sig_doing_read_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire [3:0]sig_muxed_length;
  wire sig_pcc2data_calc_error;
  wire sig_pcc_taking_command;
  wire sig_push_status1_out;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd2llink_strm_tvalid;
  wire sig_rd_discontinue;
  wire sig_rd_llink_enable;
  wire sig_rdwr2llink_int_err;
  wire [4:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2cmd_stat_reset;
  wire sig_status_reg_empty;
  wire [0:0]\trans_cnt_reg[0] ;

  axi_tft_0_axi_master_burst_cmd_status I_CMD_STATUS_MODULE
       (.D(I_CMD_STATUS_MODULE_n_15),
        .E(E),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] (\I_MSTR_PCC/p_1_in ),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] (sig_addr_out),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q({I_RD_WR_CNTRL_MODULE_n_115,I_RD_WR_CNTRL_MODULE_n_116,I_RD_WR_CNTRL_MODULE_n_117}),
        .SR(sig_cmd_mstrd_req0),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .m_axi_aclk(m_axi_aclk),
        .md_error(md_error),
        .sig_btt_cntr0(\I_MSTR_PCC/sig_btt_cntr0 ),
        .sig_calc_error_pushed(\I_MSTR_PCC/sig_calc_error_pushed ),
        .sig_calc_error_reg_reg(I_CMD_STATUS_MODULE_n_19),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_cmplt_reg_reg_0(bus2ip_mst_cmplt),
        .sig_cmd_empty_reg(sig_cmd_empty_reg),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_input_reg_empty(\I_MSTR_PCC/sig_input_reg_empty ),
        .sig_llink_busy_reg(sig_llink2cmd_rd_busy),
        .sig_muxed_length(sig_muxed_length),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_input_reg16_out(\I_MSTR_PCC/sig_push_input_reg16_out ),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd_addr_valid_reg0(\I_ADDR_CNTL/sig_rd_addr_valid_reg0 ),
        .sig_rd_llink_enable(sig_rd_llink_enable),
        .sig_rd_sts_interr_reg_reg(I_RD_WR_CNTRL_MODULE_n_19),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_rst2cmd_stat_reset(sig_rst2cmd_stat_reset),
        .sig_sm_halt_reg(\I_MSTR_PCC/sig_sm_halt_reg ),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_strb_reg_out0(\I_WRITE_STRM_SKID_BUF/sig_strb_reg_out0 ),
        .\tft_base_addr_reg[0] (D));
  axi_tft_0_axi_master_burst_rd_llink I_RD_LLINK_ADAPTER
       (.AXI_BRAM_we_i_reg(AXI_BRAM_we_i_reg),
        .E(\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .eof_n(eof_n),
        .eof_n_reg(sig_llink2cmd_rd_busy),
        .eof_n_reg_0(sig_rd_discontinue),
        .m_axi_aclk(m_axi_aclk),
        .p_0_in2_in(\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_addr2pcc_cmd_ready(sig_addr2pcc_cmd_ready),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_allow_wr_requests0(\I_WR_LLINK_ADAPTER/sig_allow_wr_requests0 ),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_last_reg_out_reg(sig_rd2llink_strm_tlast),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_rd2llink_strm_tvalid(sig_rd2llink_strm_tvalid),
        .sig_rd_llink_enable(sig_rd_llink_enable),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_s_ready_out_reg(I_RD_LLINK_ADAPTER_n_4),
        .\trans_cnt_reg[0] (\trans_cnt_reg[0] ));
  axi_tft_0_axi_master_burst_rd_wr_cntlr I_RD_WR_CNTRL_MODULE
       (.D(\I_MSTR_PCC/p_1_in ),
        .E(E),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ({I_RD_WR_CNTRL_MODULE_n_115,I_RD_WR_CNTRL_MODULE_n_116,I_RD_WR_CNTRL_MODULE_n_117}),
        .IP2Bus_MstRd_dst_rdy_reg(\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .Q(Q),
        .SR(sig_cmd_mstrd_req0),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
        .p_0_in2_in(\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_addr2pcc_cmd_ready(sig_addr2pcc_cmd_ready),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_btt_cntr0(\I_MSTR_PCC/sig_btt_cntr0 ),
        .sig_calc_error_pushed(\I_MSTR_PCC/sig_calc_error_pushed ),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .\sig_cmd_mst_addr_reg[31] (sig_addr_out),
        .\sig_cmd_mst_length_reg[7] (I_CMD_STATUS_MODULE_n_19),
        .sig_cmd_type_req_reg(I_CMD_STATUS_MODULE_n_15),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_error_sh_reg_reg(sig_rsc2stat_status),
        .sig_error_sh_reg_reg_0(I_RD_WR_CNTRL_MODULE_n_19),
        .sig_input_reg_empty(\I_MSTR_PCC/sig_input_reg_empty ),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_llink_busy_reg(I_RD_LLINK_ADAPTER_n_4),
        .sig_muxed_length(sig_muxed_length),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_input_reg16_out(\I_MSTR_PCC/sig_push_input_reg16_out ),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd2llink_strm_tvalid(sig_rd2llink_strm_tvalid),
        .sig_rd_addr_valid_reg0(\I_ADDR_CNTL/sig_rd_addr_valid_reg0 ),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_rst2cmd_stat_reset(sig_rst2cmd_stat_reset),
        .sig_sm_halt_reg(\I_MSTR_PCC/sig_sm_halt_reg ),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_strb_reg_out0(\I_WRITE_STRM_SKID_BUF/sig_strb_reg_out0 ));
  axi_tft_0_axi_master_burst_reset I_RESET_MODULE
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .scndry_out(scndry_out),
        .sig_allow_wr_requests0(\I_WR_LLINK_ADAPTER/sig_allow_wr_requests0 ),
        .sig_rst2cmd_stat_reset(sig_rst2cmd_stat_reset),
        .sig_strb_reg_out0(\I_WRITE_STRM_SKID_BUF/sig_strb_reg_out0 ));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_addr_cntl" *) 
module axi_tft_0_axi_master_burst_addr_cntl
   (sig_addr2data_addr_posted,
    m_axi_awburst,
    m_axi_arvalid,
    sig_addr_reg_empty_reg_0,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    sig_push_addr_reg1_out,
    sig_pcc2data_calc_error,
    m_axi_aclk,
    sig_pcc2addr_burst,
    sig_rd_addr_valid_reg0,
    sig_strb_reg_out0,
    sig_cmd2all_doing_read,
    m_axi_arready,
    sig_pcc2addr_cmd_valid,
    sig_llink2rd_allow_addr_req,
    Q,
    \sig_xfer_len_reg_reg[3] );
  output sig_addr2data_addr_posted;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output sig_addr_reg_empty_reg_0;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awsize;
  input sig_push_addr_reg1_out;
  input sig_pcc2data_calc_error;
  input m_axi_aclk;
  input [0:0]sig_pcc2addr_burst;
  input sig_rd_addr_valid_reg0;
  input sig_strb_reg_out0;
  input sig_cmd2all_doing_read;
  input m_axi_arready;
  input sig_pcc2addr_cmd_valid;
  input sig_llink2rd_allow_addr_req;
  input [31:0]Q;
  input [3:0]\sig_xfer_len_reg_reg[3] ;

  wire [31:0]Q;
  wire m_axi_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awsize;
  wire sig_addr2stat_calc_error;
  wire sig_addr_reg_empty_i_1_n_0;
  wire sig_addr_reg_empty_reg_0;
  wire sig_addr_reg_full;
  wire sig_addr_reg_full_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire sig_llink2rd_allow_addr_req;
  wire sig_next_addr_reg0;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;
  wire sig_rd_addr_valid_reg0;
  wire sig_strb_reg_out0;
  wire [3:0]\sig_xfer_len_reg_reg[3] ;

  assign sig_addr2data_addr_posted = sig_posted_to_axi;
  LUT5 #(
    .INIT(32'hFFFF4CCC)) 
    sig_addr_reg_empty_i_1
       (.I0(sig_pcc2addr_cmd_valid),
        .I1(sig_addr_reg_empty_reg_0),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_next_addr_reg0),
        .O(sig_addr_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_addr_reg_empty_i_1_n_0),
        .Q(sig_addr_reg_empty_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFAA3FAA)) 
    sig_addr_reg_full_i_1
       (.I0(sig_push_addr_reg1_out),
        .I1(m_axi_arready),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_addr_reg_full),
        .I4(sig_addr2stat_calc_error),
        .I5(sig_strb_reg_out0),
        .O(sig_addr_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_addr_reg_full_i_1_n_0),
        .Q(sig_addr_reg_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2data_calc_error),
        .Q(sig_addr2stat_calc_error),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[0]),
        .Q(m_axi_awaddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[10]),
        .Q(m_axi_awaddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[11]),
        .Q(m_axi_awaddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[12]),
        .Q(m_axi_awaddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[13]),
        .Q(m_axi_awaddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[14]),
        .Q(m_axi_awaddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[15]),
        .Q(m_axi_awaddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[16]),
        .Q(m_axi_awaddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[17]),
        .Q(m_axi_awaddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[18]),
        .Q(m_axi_awaddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[19]),
        .Q(m_axi_awaddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[1]),
        .Q(m_axi_awaddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[20]),
        .Q(m_axi_awaddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[21]),
        .Q(m_axi_awaddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[22]),
        .Q(m_axi_awaddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[23]),
        .Q(m_axi_awaddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[24]),
        .Q(m_axi_awaddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[25]),
        .Q(m_axi_awaddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[26]),
        .Q(m_axi_awaddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[27]),
        .Q(m_axi_awaddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[28]),
        .Q(m_axi_awaddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[29]),
        .Q(m_axi_awaddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[2]),
        .Q(m_axi_awaddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[30]),
        .Q(m_axi_awaddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[31]),
        .Q(m_axi_awaddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[3]),
        .Q(m_axi_awaddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[4]),
        .Q(m_axi_awaddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[5]),
        .Q(m_axi_awaddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[6]),
        .Q(m_axi_awaddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[7]),
        .Q(m_axi_awaddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[8]),
        .Q(m_axi_awaddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[9]),
        .Q(m_axi_awaddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2addr_burst),
        .Q(m_axi_awburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [0]),
        .Q(m_axi_awlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [1]),
        .Q(m_axi_awlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [2]),
        .Q(m_axi_awlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [3]),
        .Q(m_axi_awlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(m_axi_awsize[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(m_axi_awsize[1]),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi_2),
        .R(sig_strb_reg_out0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi),
        .R(sig_strb_reg_out0));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    sig_rd_addr_valid_reg_i_1
       (.I0(sig_strb_reg_out0),
        .I1(sig_addr2stat_calc_error),
        .I2(sig_addr_reg_full),
        .I3(sig_cmd2all_doing_read),
        .I4(m_axi_arready),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_addr_valid_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_rd_addr_valid_reg0),
        .Q(m_axi_arvalid),
        .R(sig_next_addr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_cmd_status" *) 
module axi_tft_0_axi_master_burst_cmd_status
   (sig_cmd_empty_reg,
    sig_cmd2all_doing_read,
    sig_cmd_cmplt_reg_reg_0,
    sig_status_reg_empty,
    md_error,
    sig_rdwr2llink_int_err,
    bus2ip_mst_cmdack,
    sig_rd_sts_tag_reg0,
    sig_push_status1_out,
    sig_rd_addr_valid_reg0,
    sig_rd_llink_enable,
    sig_muxed_length,
    D,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ,
    sig_calc_error_reg_reg,
    sig_cmd2pcc_cmd_valid,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ,
    sig_rst2cmd_stat_reset,
    m_axi_aclk,
    SR,
    E,
    ip2bus_mstrd_req,
    IP2Bus_Mst_Type,
    sig_rd_sts_interr_reg_reg,
    sig_strb_reg_out0,
    sig_rsc2stat_status_valid,
    sig_pcc2data_calc_error,
    sig_doing_read_reg,
    sig_pcc_taking_command,
    sig_rsc2stat_status,
    sig_llink_busy_reg,
    sig_push_input_reg16_out,
    sig_btt_cntr0,
    Q,
    sig_calc_error_pushed,
    sig_input_reg_empty,
    sig_sm_halt_reg,
    \tft_base_addr_reg[0] );
  output sig_cmd_empty_reg;
  output sig_cmd2all_doing_read;
  output sig_cmd_cmplt_reg_reg_0;
  output sig_status_reg_empty;
  output md_error;
  output sig_rdwr2llink_int_err;
  output bus2ip_mst_cmdack;
  output sig_rd_sts_tag_reg0;
  output sig_push_status1_out;
  output sig_rd_addr_valid_reg0;
  output sig_rd_llink_enable;
  output [3:0]sig_muxed_length;
  output [0:0]D;
  output [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ;
  output sig_calc_error_reg_reg;
  output sig_cmd2pcc_cmd_valid;
  output [24:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ;
  input sig_rst2cmd_stat_reset;
  input m_axi_aclk;
  input [0:0]SR;
  input [0:0]E;
  input ip2bus_mstrd_req;
  input IP2Bus_Mst_Type;
  input sig_rd_sts_interr_reg_reg;
  input sig_strb_reg_out0;
  input sig_rsc2stat_status_valid;
  input sig_pcc2data_calc_error;
  input sig_doing_read_reg;
  input sig_pcc_taking_command;
  input [0:0]sig_rsc2stat_status;
  input sig_llink_busy_reg;
  input sig_push_input_reg16_out;
  input [0:0]sig_btt_cntr0;
  input [2:0]Q;
  input sig_calc_error_pushed;
  input sig_input_reg_empty;
  input sig_sm_halt_reg;
  input [24:0]\tft_base_addr_reg[0] ;

  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]_i_2_n_0 ;
  wire [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ;
  wire [24:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ;
  wire IP2Bus_Mst_Type;
  wire [2:0]Q;
  wire [0:0]SR;
  wire bus2ip_mst_cmdack;
  wire ip2bus_mstrd_req;
  wire m_axi_aclk;
  wire md_error;
  wire [0:0]sig_btt_cntr0;
  wire \sig_btt_cntr[0]_i_4_n_0 ;
  wire \sig_btt_cntr[0]_i_5_n_0 ;
  wire \sig_btt_cntr[0]_i_6_n_0 ;
  wire \sig_btt_cntr[0]_i_7_n_0 ;
  wire \sig_btt_cntr[1]_i_3_n_0 ;
  wire \sig_btt_cntr[1]_i_4_n_0 ;
  wire \sig_btt_cntr[1]_i_5_n_0 ;
  wire \sig_btt_cntr[2]_i_3_n_0 ;
  wire \sig_btt_cntr[2]_i_4_n_0 ;
  wire \sig_btt_cntr[2]_i_5_n_0 ;
  wire \sig_btt_cntr[3]_i_4_n_0 ;
  wire \sig_btt_cntr_reg[0]_i_3_n_0 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_cmplt_reg_i_1_n_0;
  wire sig_cmd_cmplt_reg_reg_0;
  wire sig_cmd_empty_reg;
  wire sig_cmd_empty_reg_i_1_n_0;
  wire sig_cmd_full_reg_i_1_n_0;
  wire [7:0]sig_cmd_mst_be;
  wire [7:7]sig_cmd_mst_length;
  wire sig_cmd_mstrd_req;
  wire sig_cmd_type_req;
  wire sig_cmdack_reg_i_1_n_0;
  wire sig_doing_read_reg;
  wire sig_doing_read_reg_i_1_n_0;
  wire sig_init_reg1;
  wire sig_init_reg2;
  wire sig_input_reg_empty;
  wire sig_int_error_pulse_reg_i_1_n_0;
  wire sig_llink_busy_reg;
  wire [3:0]sig_muxed_length;
  wire sig_pcc2data_calc_error;
  wire sig_pcc_taking_command;
  wire sig_push_input_reg16_out;
  wire sig_push_status1_out;
  wire sig_rd_addr_valid_reg0;
  wire sig_rd_llink_enable;
  wire sig_rd_sts_interr_reg_reg;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdwr2llink_int_err;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2cmd_stat_reset;
  wire sig_sm_halt_reg;
  wire sig_status_reg_empty;
  wire sig_status_reg_empty_i_1_n_0;
  wire sig_status_reg_full;
  wire sig_status_reg_full_i_1_n_0;
  wire sig_strb_reg_out0;
  wire [24:0]\tft_base_addr_reg[0] ;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1 
       (.I0(sig_cmd_mst_be[0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]_i_2_n_0 ),
        .I2(sig_cmd_type_req),
        .I3(sig_push_input_reg16_out),
        .I4(Q[0]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] [0]));
  LUT6 #(
    .INIT(64'h00000000D0110D02)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_3 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[4]),
        .I3(sig_cmd_mst_be[5]),
        .I4(sig_cmd_mst_be[3]),
        .I5(sig_cmd_mst_be[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD101000000010001)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_4 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[2]),
        .I5(sig_cmd_mst_be[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1 
       (.I0(sig_cmd_mst_be[0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_2_n_0 ),
        .I2(sig_cmd_mst_be[1]),
        .I3(sig_cmd_type_req),
        .I4(sig_push_input_reg16_out),
        .I5(Q[1]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] [1]));
  LUT6 #(
    .INIT(64'hD1010001D101000E)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_2 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[3]),
        .I5(sig_cmd_mst_be[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1 
       (.I0(sig_cmd_mst_be[0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_2_n_0 ),
        .I2(sig_cmd_mst_be[1]),
        .I3(sig_cmd_type_req),
        .I4(sig_push_input_reg16_out),
        .I5(Q[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] [2]));
  LUT6 #(
    .INIT(64'h000000D1000000DE)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_2 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[2]),
        .I4(sig_cmd_mst_be[3]),
        .I5(sig_cmd_mst_be[4]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_2_n_0 ));
  MUXF7 \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_3_n_0 ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_4_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]_i_2_n_0 ),
        .S(sig_cmd_mst_be[1]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \sig_btt_cntr[0]_i_2 
       (.I0(\sig_btt_cntr_reg[0]_i_3_n_0 ),
        .I1(sig_cmd_mst_be[0]),
        .I2(\sig_btt_cntr[0]_i_4_n_0 ),
        .I3(sig_cmd_mst_be[1]),
        .I4(\sig_btt_cntr[0]_i_5_n_0 ),
        .I5(sig_cmd_type_req),
        .O(sig_muxed_length[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sig_btt_cntr[0]_i_4 
       (.I0(sig_cmd_mst_be[6]),
        .I1(sig_cmd_mst_be[4]),
        .I2(sig_cmd_mst_be[3]),
        .I3(sig_cmd_mst_be[2]),
        .I4(sig_cmd_mst_be[5]),
        .I5(sig_cmd_mst_be[7]),
        .O(\sig_btt_cntr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080004010)) 
    \sig_btt_cntr[0]_i_5 
       (.I0(sig_cmd_mst_be[5]),
        .I1(sig_cmd_mst_be[4]),
        .I2(sig_cmd_mst_be[2]),
        .I3(sig_cmd_mst_be[3]),
        .I4(sig_cmd_mst_be[6]),
        .I5(sig_cmd_mst_be[7]),
        .O(\sig_btt_cntr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4100900100014196)) 
    \sig_btt_cntr[0]_i_6 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[2]),
        .I5(sig_cmd_mst_be[3]),
        .O(\sig_btt_cntr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000040001001)) 
    \sig_btt_cntr[0]_i_7 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[4]),
        .I2(sig_cmd_mst_be[2]),
        .I3(sig_cmd_mst_be[3]),
        .I4(sig_cmd_mst_be[5]),
        .I5(sig_cmd_mst_be[6]),
        .O(\sig_btt_cntr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \sig_btt_cntr[1]_i_2 
       (.I0(\sig_btt_cntr[1]_i_3_n_0 ),
        .I1(sig_cmd_mst_be[1]),
        .I2(\sig_btt_cntr[1]_i_4_n_0 ),
        .I3(sig_cmd_mst_be[0]),
        .I4(\sig_btt_cntr[1]_i_5_n_0 ),
        .I5(sig_cmd_type_req),
        .O(sig_muxed_length[1]));
  LUT6 #(
    .INIT(64'h81010000110050C8)) 
    \sig_btt_cntr[1]_i_3 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[3]),
        .I5(sig_cmd_mst_be[2]),
        .O(\sig_btt_cntr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC000000000050000)) 
    \sig_btt_cntr[1]_i_4 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[3]),
        .I2(sig_cmd_mst_be[6]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[2]),
        .I5(sig_cmd_mst_be[5]),
        .O(\sig_btt_cntr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080008101)) 
    \sig_btt_cntr[1]_i_5 
       (.I0(sig_cmd_mst_be[4]),
        .I1(sig_cmd_mst_be[3]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[2]),
        .I4(sig_cmd_mst_be[6]),
        .I5(sig_cmd_mst_be[7]),
        .O(\sig_btt_cntr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \sig_btt_cntr[2]_i_2 
       (.I0(\sig_btt_cntr[2]_i_3_n_0 ),
        .I1(sig_cmd_mst_be[1]),
        .I2(\sig_btt_cntr[2]_i_4_n_0 ),
        .I3(sig_cmd_mst_be[0]),
        .I4(\sig_btt_cntr[2]_i_5_n_0 ),
        .I5(sig_cmd_type_req),
        .O(sig_muxed_length[2]));
  LUT6 #(
    .INIT(64'hD000C08000000000)) 
    \sig_btt_cntr[2]_i_3 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[6]),
        .I2(sig_cmd_mst_be[4]),
        .I3(sig_cmd_mst_be[3]),
        .I4(sig_cmd_mst_be[2]),
        .I5(sig_cmd_mst_be[5]),
        .O(\sig_btt_cntr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC500000000000000)) 
    \sig_btt_cntr[2]_i_4 
       (.I0(sig_cmd_mst_be[7]),
        .I1(sig_cmd_mst_be[5]),
        .I2(sig_cmd_mst_be[6]),
        .I3(sig_cmd_mst_be[2]),
        .I4(sig_cmd_mst_be[3]),
        .I5(sig_cmd_mst_be[4]),
        .O(\sig_btt_cntr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080008808)) 
    \sig_btt_cntr[2]_i_5 
       (.I0(sig_cmd_mst_be[2]),
        .I1(sig_cmd_mst_be[3]),
        .I2(sig_cmd_mst_be[5]),
        .I3(sig_cmd_mst_be[4]),
        .I4(sig_cmd_mst_be[6]),
        .I5(sig_cmd_mst_be[7]),
        .O(\sig_btt_cntr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sig_btt_cntr[3]_i_2 
       (.I0(sig_cmd_mst_be[0]),
        .I1(sig_cmd_mst_be[7]),
        .I2(\sig_btt_cntr[3]_i_4_n_0 ),
        .I3(sig_cmd_mst_be[6]),
        .I4(sig_cmd_mst_be[1]),
        .I5(sig_cmd_type_req),
        .O(sig_muxed_length[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_btt_cntr[3]_i_4 
       (.I0(sig_cmd_mst_be[4]),
        .I1(sig_cmd_mst_be[3]),
        .I2(sig_cmd_mst_be[2]),
        .I3(sig_cmd_mst_be[5]),
        .O(\sig_btt_cntr[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[7]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length),
        .I2(sig_push_input_reg16_out),
        .I3(sig_btt_cntr0),
        .O(D));
  MUXF7 \sig_btt_cntr_reg[0]_i_3 
       (.I0(\sig_btt_cntr[0]_i_6_n_0 ),
        .I1(\sig_btt_cntr[0]_i_7_n_0 ),
        .O(\sig_btt_cntr_reg[0]_i_3_n_0 ),
        .S(sig_cmd_mst_be[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_calc_error_reg_i_2
       (.I0(sig_muxed_length[1]),
        .I1(sig_cmd_mst_length),
        .I2(sig_cmd_type_req),
        .O(sig_calc_error_reg_reg));
  LUT5 #(
    .INIT(32'h00000070)) 
    sig_cmd_cmplt_reg_i_1
       (.I0(sig_llink_busy_reg),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_status_reg_full),
        .I3(sig_rst2cmd_stat_reset),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_cmd_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_cmplt_reg_i_1_n_0),
        .Q(sig_cmd_cmplt_reg_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    sig_cmd_empty_reg_i_1
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_mstrd_req),
        .I2(sig_init_reg1),
        .I3(sig_init_reg2),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_cmd_empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_empty_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_empty_reg_i_1_n_0),
        .Q(sig_cmd_empty_reg),
        .R(sig_rst2cmd_stat_reset));
  LUT6 #(
    .INIT(64'h00000000FFFFAA8A)) 
    sig_cmd_full_reg_i_1
       (.I0(sig_cmd2pcc_cmd_valid),
        .I1(sig_calc_error_pushed),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(E),
        .I5(sig_rst2cmd_stat_reset),
        .O(sig_cmd_full_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_full_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_full_reg_i_1_n_0),
        .Q(sig_cmd2pcc_cmd_valid),
        .R(1'b0));
  FDRE \sig_cmd_mst_addr_reg[10] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [3]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[11] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [4]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [4]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[12] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [5]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [5]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[13] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [6]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [6]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[14] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [7]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [7]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[15] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [8]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [8]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[16] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [9]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [9]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[17] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [10]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [10]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[18] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [11]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [11]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[19] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [12]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [12]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[20] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [13]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [13]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[21] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [14]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [14]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[22] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [15]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [15]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[23] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [16]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [16]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[24] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [17]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [17]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[25] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [18]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [18]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[26] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [19]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [19]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[27] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [20]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [20]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[28] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [21]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [21]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[29] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [22]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [22]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[30] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [23]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [23]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[31] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [24]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [24]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[9] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(\tft_base_addr_reg[0] [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] [2]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[0]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[1]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[2]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[3]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[4]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[5]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[6]),
        .R(SR));
  FDRE \sig_cmd_mst_be_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_be[7]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(sig_cmd_mst_length),
        .R(SR));
  FDRE sig_cmd_mstrd_req_reg
       (.C(m_axi_aclk),
        .CE(E),
        .D(ip2bus_mstrd_req),
        .Q(sig_cmd_mstrd_req),
        .R(SR));
  FDRE sig_cmd_type_req_reg
       (.C(m_axi_aclk),
        .CE(E),
        .D(IP2Bus_Mst_Type),
        .Q(sig_cmd_type_req),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    sig_cmdack_reg_i_1
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_mstrd_req),
        .I2(bus2ip_mst_cmdack),
        .I3(sig_rst2cmd_stat_reset),
        .O(sig_cmdack_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmdack_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmdack_reg_i_1_n_0),
        .Q(bus2ip_mst_cmdack),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    sig_doing_read_reg_i_1
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_pcc_taking_command),
        .I2(sig_cmd_mstrd_req),
        .I3(sig_rst2cmd_stat_reset),
        .I4(sig_cmd_cmplt_reg_reg_0),
        .O(sig_doing_read_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_doing_read_reg_i_1_n_0),
        .Q(sig_cmd2all_doing_read),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_error_sh_reg_i_2
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_status_reg_empty),
        .I2(sig_cmd2all_doing_read),
        .O(sig_push_status1_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_error_sh_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_sts_interr_reg_reg),
        .Q(md_error),
        .R(sig_rst2cmd_stat_reset));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_init_reg1),
        .R(sig_rst2cmd_stat_reset));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg1),
        .Q(sig_init_reg2),
        .R(sig_rst2cmd_stat_reset));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    sig_int_error_pulse_reg_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(sig_push_status1_out),
        .I2(sig_rsc2stat_status),
        .I3(sig_llink_busy_reg),
        .I4(sig_cmd2all_doing_read),
        .I5(sig_rst2cmd_stat_reset),
        .O(sig_int_error_pulse_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_int_error_pulse_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_int_error_pulse_reg_i_1_n_0),
        .Q(sig_rdwr2llink_int_err),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_llink_busy_i_2
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_doing_read_reg),
        .O(sig_rd_llink_enable));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_rd_addr_valid_reg_i_3
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_pcc2data_calc_error),
        .O(sig_rd_addr_valid_reg0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_rd_sts_reg_full_i_1
       (.I0(sig_strb_reg_out0),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_status_reg_empty),
        .I3(sig_rsc2stat_status_valid),
        .O(sig_rd_sts_tag_reg0));
  LUT6 #(
    .INIT(64'hF2FFF2F2FFFFF2F2)) 
    sig_status_reg_empty_i_1
       (.I0(sig_init_reg1),
        .I1(sig_init_reg2),
        .I2(sig_cmd_cmplt_reg_reg_0),
        .I3(sig_cmd2all_doing_read),
        .I4(sig_status_reg_empty),
        .I5(sig_rsc2stat_status_valid),
        .O(sig_status_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_empty_i_1_n_0),
        .Q(sig_status_reg_empty),
        .R(sig_rst2cmd_stat_reset));
  LUT6 #(
    .INIT(64'h00000000F2222222)) 
    sig_status_reg_full_i_1
       (.I0(sig_status_reg_full),
        .I1(sig_cmd_cmplt_reg_reg_0),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_status_reg_empty),
        .I4(sig_rsc2stat_status_valid),
        .I5(sig_rst2cmd_stat_reset),
        .O(sig_status_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_full_i_1_n_0),
        .Q(sig_status_reg_full),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_fifo" *) 
module axi_tft_0_axi_master_burst_fifo
   (sig_init_reg2_reg_0,
    sig_m_valid_out_reg,
    m_axi_bready,
    sig_s_ready_out_reg,
    sig_strb_reg_out0,
    m_axi_aclk,
    m_axi_bvalid,
    p_0_in2_in,
    m_axi_wready,
    p_0_in3_in);
  output sig_init_reg2_reg_0;
  output sig_m_valid_out_reg;
  output m_axi_bready;
  output sig_s_ready_out_reg;
  input sig_strb_reg_out0;
  input m_axi_aclk;
  input m_axi_bvalid;
  input p_0_in2_in;
  input m_axi_wready;
  input p_0_in3_in;

  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_i_1_n_0;
  wire sig_init_reg2_reg_0;
  wire sig_m_valid_out_reg;
  wire sig_s_ready_out_reg;
  wire sig_strb_reg_out0;

  axi_tft_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(sig_strb_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sig_init_done_i_1
       (.I0(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .I1(sig_init_reg2_reg_0),
        .I2(sig_init_done),
        .I3(sig_strb_reg_out0),
        .O(sig_init_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg2_reg_0),
        .Q(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .S(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_strb_reg_out0),
        .Q(sig_init_reg2_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h10)) 
    sig_m_valid_dup_i_1__1
       (.I0(sig_init_reg2_reg_0),
        .I1(sig_strb_reg_out0),
        .I2(p_0_in2_in),
        .O(sig_m_valid_out_reg));
  LUT4 #(
    .INIT(16'h5554)) 
    sig_s_ready_dup_i_1__1
       (.I0(sig_strb_reg_out0),
        .I1(sig_init_reg2_reg_0),
        .I2(m_axi_wready),
        .I3(p_0_in3_in),
        .O(sig_s_ready_out_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_pcc" *) 
module axi_tft_0_axi_master_burst_pcc
   (sig_sm_pop_input_reg,
    sig_cmd_mstrd_req_reg,
    sig_pcc2addr_burst,
    sig_push_xfer_reg15_out,
    sig_pcc2data_cmd_cmplt,
    sig_pcc2data_calc_error,
    sig_xfer_calc_err_reg_reg_0,
    sig_pcc2data_eof,
    sig_pcc2data_sequential,
    sig_parent_done,
    sig_cmd_mstrd_req_reg_0,
    sig_xfer_reg_empty,
    sig_input_eof_reg_reg_0,
    sig_input_eof_reg,
    SR,
    sig_pcc_taking_command,
    sig_push_addr_reg1_out,
    sig_pcc2addr_cmd_valid,
    sig_last_dbeat_reg,
    Q,
    sig_calc_error_reg0,
    sig_parent_done0,
    sig_sm_ld_calc1_reg_reg_0,
    sig_ld_xfer_reg,
    \sig_xfer_len_reg_reg[0]_0 ,
    sig_pcc2data_cmd_valid,
    sig_xfer_cmd_cmplt_reg_reg_0,
    sig_parent_done_reg_0,
    sig_parent_done_reg_1,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 ,
    \sig_next_addr_reg_reg[31] ,
    sig_btt_cntr0,
    sig_strb_reg_out0,
    m_axi_aclk,
    sig_calc_error_reg_reg_0,
    sig_parent_done_reg_2,
    sig_input_reg_empty_reg_0,
    sig_ld_xfer_reg_reg_0,
    sig_calc_error_reg_reg_1,
    sig_input_eof_reg_reg_1,
    sig_rst2cmd_stat_reset,
    E,
    sig_cmd2pcc_cmd_valid,
    sig_addr2stat_cmd_fifo_empty,
    sig_cmd2all_doing_read,
    sig_llink2rd_allow_addr_req,
    \sig_cmd_mst_addr_reg[31] ,
    sig_muxed_length,
    sig_addr2pcc_cmd_ready,
    sig_rd_sts_reg_full_reg,
    sig_dqual_reg_empty_reg,
    sig_cmd_type_req_reg,
    D,
    sig_data2pcc_cmd_ready);
  output sig_sm_pop_input_reg;
  output sig_cmd_mstrd_req_reg;
  output [0:0]sig_pcc2addr_burst;
  output sig_push_xfer_reg15_out;
  output sig_pcc2data_cmd_cmplt;
  output sig_pcc2data_calc_error;
  output sig_xfer_calc_err_reg_reg_0;
  output sig_pcc2data_eof;
  output sig_pcc2data_sequential;
  output sig_parent_done;
  output sig_cmd_mstrd_req_reg_0;
  output sig_xfer_reg_empty;
  output sig_input_eof_reg_reg_0;
  output sig_input_eof_reg;
  output [0:0]SR;
  output sig_pcc_taking_command;
  output sig_push_addr_reg1_out;
  output sig_pcc2addr_cmd_valid;
  output sig_last_dbeat_reg;
  output [3:0]Q;
  output sig_calc_error_reg0;
  output sig_parent_done0;
  output sig_sm_ld_calc1_reg_reg_0;
  output sig_ld_xfer_reg;
  output \sig_xfer_len_reg_reg[0]_0 ;
  output sig_pcc2data_cmd_valid;
  output sig_xfer_cmd_cmplt_reg_reg_0;
  output sig_parent_done_reg_0;
  output sig_parent_done_reg_1;
  output [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 ;
  output [31:0]\sig_next_addr_reg_reg[31] ;
  output [0:0]sig_btt_cntr0;
  input sig_strb_reg_out0;
  input m_axi_aclk;
  input sig_calc_error_reg_reg_0;
  input sig_parent_done_reg_2;
  input sig_input_reg_empty_reg_0;
  input sig_ld_xfer_reg_reg_0;
  input sig_calc_error_reg_reg_1;
  input sig_input_eof_reg_reg_1;
  input sig_rst2cmd_stat_reset;
  input [0:0]E;
  input sig_cmd2pcc_cmd_valid;
  input sig_addr2stat_cmd_fifo_empty;
  input sig_cmd2all_doing_read;
  input sig_llink2rd_allow_addr_req;
  input [24:0]\sig_cmd_mst_addr_reg[31] ;
  input [3:0]sig_muxed_length;
  input sig_addr2pcc_cmd_ready;
  input sig_rd_sts_reg_full_reg;
  input sig_dqual_reg_empty_reg;
  input [0:0]sig_cmd_type_req_reg;
  input [2:0]D;
  input sig_data2pcc_cmd_ready;

  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ;
  wire [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_6_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_7_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_1 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_2 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_3 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_4 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_5 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_6 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_7 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_4 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_5 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_6 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_7 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_4 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_5 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_6 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_7 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_4 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_5 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_6 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_7 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[6]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_first_xfer_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire m_axi_aclk;
  wire p_0_in;
  wire [15:3]p_1_in;
  wire p_1_in2_in;
  wire sig_addr2pcc_cmd_ready;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [7:0]sig_addr_cntr_incr_imreg;
  wire [6:1]sig_adjusted_addr_incr;
  wire [11:7]sig_btt_cntr;
  wire [0:0]sig_btt_cntr0;
  wire [11:0]sig_btt_cntr0_0;
  wire \sig_btt_cntr[0]_i_1_n_0 ;
  wire \sig_btt_cntr[10]_i_1_n_0 ;
  wire \sig_btt_cntr[11]_i_1_n_0 ;
  wire \sig_btt_cntr[11]_i_2_n_0 ;
  wire \sig_btt_cntr[11]_i_4_n_0 ;
  wire \sig_btt_cntr[11]_i_5_n_0 ;
  wire \sig_btt_cntr[11]_i_6_n_0 ;
  wire \sig_btt_cntr[11]_i_7_n_0 ;
  wire \sig_btt_cntr[1]_i_1_n_0 ;
  wire \sig_btt_cntr[2]_i_1_n_0 ;
  wire \sig_btt_cntr[3]_i_1_n_0 ;
  wire \sig_btt_cntr[3]_i_5_n_0 ;
  wire \sig_btt_cntr[3]_i_6_n_0 ;
  wire \sig_btt_cntr[3]_i_7_n_0 ;
  wire \sig_btt_cntr[3]_i_8_n_0 ;
  wire \sig_btt_cntr[4]_i_1_n_0 ;
  wire \sig_btt_cntr[5]_i_1_n_0 ;
  wire \sig_btt_cntr[6]_i_1_n_0 ;
  wire \sig_btt_cntr[7]_i_3_n_0 ;
  wire \sig_btt_cntr[7]_i_4_n_0 ;
  wire \sig_btt_cntr[7]_i_5_n_0 ;
  wire \sig_btt_cntr[7]_i_6_n_0 ;
  wire \sig_btt_cntr[8]_i_1_n_0 ;
  wire \sig_btt_cntr[9]_i_1_n_0 ;
  wire \sig_btt_cntr_reg[11]_i_3_n_1 ;
  wire \sig_btt_cntr_reg[11]_i_3_n_2 ;
  wire \sig_btt_cntr_reg[11]_i_3_n_3 ;
  wire \sig_btt_cntr_reg[3]_i_3_n_0 ;
  wire \sig_btt_cntr_reg[3]_i_3_n_1 ;
  wire \sig_btt_cntr_reg[3]_i_3_n_2 ;
  wire \sig_btt_cntr_reg[3]_i_3_n_3 ;
  wire \sig_btt_cntr_reg[7]_i_2_n_0 ;
  wire \sig_btt_cntr_reg[7]_i_2_n_1 ;
  wire \sig_btt_cntr_reg[7]_i_2_n_2 ;
  wire \sig_btt_cntr_reg[7]_i_2_n_3 ;
  wire sig_btt_lt_b2mbaa1;
  wire [6:0]sig_btt_residue_slice;
  wire [6:3]sig_byte_change_minus1;
  wire sig_calc_error_reg0;
  wire sig_calc_error_reg_reg_0;
  wire sig_calc_error_reg_reg_1;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2pcc_cmd_valid;
  wire [24:0]\sig_cmd_mst_addr_reg[31] ;
  wire sig_cmd_mstrd_req_reg;
  wire sig_cmd_mstrd_req_reg_0;
  wire [0:0]sig_cmd_type_req_reg;
  wire sig_data2pcc_cmd_ready;
  wire sig_dqual_reg_empty_reg;
  wire sig_first_xfer;
  wire sig_input_burst_type_reg;
  wire sig_input_burst_type_reg0;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_eof_reg;
  wire sig_input_eof_reg_reg_0;
  wire sig_input_eof_reg_reg_1;
  wire sig_input_reg_empty_reg_0;
  wire sig_last_dbeat_reg;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_reg_0;
  wire sig_llink2rd_allow_addr_req;
  wire [3:0]sig_muxed_length;
  wire [31:0]\sig_next_addr_reg_reg[31] ;
  wire sig_parent_done;
  wire sig_parent_done0;
  wire sig_parent_done_i_5_n_0;
  wire sig_parent_done_i_6_n_0;
  wire sig_parent_done_reg_0;
  wire sig_parent_done_reg_1;
  wire sig_parent_done_reg_2;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire [2:0]sig_pcc_sm_state;
  wire \sig_pcc_sm_state[0]_i_2_n_0 ;
  wire [2:0]sig_pcc_sm_state_ns;
  wire sig_pcc_taking_command;
  wire [15:0]sig_predict_addr_lsh_im3_in;
  wire sig_push_addr_reg1_out;
  wire sig_push_xfer_reg15_out;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rst2cmd_stat_reset;
  wire sig_sm_halt_ns;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc1_reg_reg_0;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_i_1_n_0;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire sig_strb_reg_out0;
  wire sig_xfer_addr_reg0;
  wire [31:0]sig_xfer_address;
  wire sig_xfer_calc_err_reg_reg_0;
  wire sig_xfer_cmd_cmplt_reg0;
  wire sig_xfer_cmd_cmplt_reg_i_3_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_4_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_5_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_6_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_7_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_8_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_9_n_0;
  wire sig_xfer_cmd_cmplt_reg_reg_0;
  wire sig_xfer_eof_reg0;
  wire sig_xfer_is_seq_reg_i_10_n_0;
  wire sig_xfer_is_seq_reg_i_11_n_0;
  wire sig_xfer_is_seq_reg_i_12_n_0;
  wire sig_xfer_is_seq_reg_i_1_n_0;
  wire sig_xfer_is_seq_reg_i_3_n_0;
  wire sig_xfer_is_seq_reg_i_4_n_0;
  wire sig_xfer_is_seq_reg_i_5_n_0;
  wire sig_xfer_is_seq_reg_i_6_n_0;
  wire sig_xfer_is_seq_reg_i_7_n_0;
  wire sig_xfer_is_seq_reg_i_8_n_0;
  wire sig_xfer_is_seq_reg_i_9_n_0;
  wire sig_xfer_is_seq_reg_reg_i_2_n_1;
  wire sig_xfer_is_seq_reg_reg_i_2_n_2;
  wire sig_xfer_is_seq_reg_reg_i_2_n_3;
  wire \sig_xfer_len_reg[3]_i_2_n_0 ;
  wire \sig_xfer_len_reg_reg[0]_0 ;
  wire sig_xfer_reg_empty;
  wire [3:3]\NLW_GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_btt_cntr_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]NLW_sig_xfer_is_seq_reg_reg_i_2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1 
       (.I0(sig_xfer_address[0]),
        .I1(sig_first_xfer),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_btt_residue_slice[0]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1 
       (.I0(sig_btt_residue_slice[1]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[0]),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBEAAAA11140000)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I1(sig_xfer_address[2]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[0]),
        .I4(sig_first_xfer),
        .I5(sig_btt_residue_slice[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1 
       (.I0(sig_btt_residue_slice[3]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2 
       (.I0(sig_xfer_address[3]),
        .I1(sig_xfer_address[0]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1 
       (.I0(sig_btt_residue_slice[4]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2 
       (.I0(sig_xfer_address[4]),
        .I1(sig_xfer_address[2]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[0]),
        .I4(sig_xfer_address[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1 
       (.I0(sig_btt_residue_slice[5]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2 
       (.I0(sig_xfer_address[5]),
        .I1(sig_xfer_address[3]),
        .I2(sig_xfer_address[0]),
        .I3(sig_xfer_address[1]),
        .I4(sig_xfer_address[2]),
        .I5(sig_xfer_address[4]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1 
       (.I0(sig_btt_residue_slice[6]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I1(sig_xfer_address[4]),
        .I2(sig_xfer_address[5]),
        .I3(sig_xfer_address[6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .I2(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2 
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(sig_btt_cntr[11]),
        .I2(sig_btt_cntr[9]),
        .I3(sig_btt_cntr[10]),
        .I4(sig_btt_cntr[8]),
        .I5(sig_btt_cntr[7]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3 
       (.I0(sig_xfer_address[5]),
        .I1(sig_xfer_address[4]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I3(sig_xfer_address[6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4 
       (.I0(sig_xfer_address[3]),
        .I1(sig_xfer_address[0]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[3]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[4]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[5]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[6]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[7]),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [3]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [4]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [5]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [6]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [7]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1 
       (.I0(sig_sm_ld_calc1_reg_reg_0),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_input_burst_type_reg),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2 
       (.I0(\sig_cmd_mst_addr_reg[31] [8]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(p_0_in),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [0]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [1]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1 
       (.I0(\sig_cmd_mst_addr_reg[31] [2]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[0]),
        .Q(sig_xfer_address[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(sig_xfer_address[10]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(sig_xfer_address[11]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(sig_xfer_address[12]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(sig_xfer_address[13]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(sig_xfer_address[14]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in2_in),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[1]),
        .Q(sig_xfer_address[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[2]),
        .Q(sig_xfer_address[2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(sig_xfer_address[3]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(sig_xfer_address[4]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(sig_xfer_address[5]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(sig_xfer_address[6]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(sig_xfer_address[7]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(sig_xfer_address[8]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(sig_xfer_address[9]),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1 
       (.I0(sig_sm_ld_calc1_reg_reg_0),
        .I1(p_0_in),
        .I2(p_1_in2_in),
        .I3(sig_input_burst_type_reg),
        .I4(sig_ld_xfer_reg),
        .I5(sig_xfer_reg_empty),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_3 
       (.I0(\sig_cmd_mst_addr_reg[31] [9]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[16]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_4 
       (.I0(\sig_cmd_mst_addr_reg[31] [12]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[19]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_5 
       (.I0(\sig_cmd_mst_addr_reg[31] [11]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[18]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_6 
       (.I0(\sig_cmd_mst_addr_reg[31] [10]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[17]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55555C5555555555)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_7 
       (.I0(sig_xfer_address[16]),
        .I1(\sig_cmd_mst_addr_reg[31] [9]),
        .I2(sig_xfer_calc_err_reg_reg_0),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_cmd_mstrd_req_reg),
        .I5(sig_cmd_mstrd_req_reg_0),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_2 
       (.I0(\sig_cmd_mst_addr_reg[31] [24]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[31]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_3 
       (.I0(\sig_cmd_mst_addr_reg[31] [23]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[30]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_4 
       (.I0(\sig_cmd_mst_addr_reg[31] [22]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[29]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[12]_i_5 
       (.I0(\sig_cmd_mst_addr_reg[31] [21]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[28]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_2 
       (.I0(\sig_cmd_mst_addr_reg[31] [16]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[23]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_3 
       (.I0(\sig_cmd_mst_addr_reg[31] [15]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[22]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_4 
       (.I0(\sig_cmd_mst_addr_reg[31] [14]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[21]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[4]_i_5 
       (.I0(\sig_cmd_mst_addr_reg[31] [13]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[20]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_2 
       (.I0(\sig_cmd_mst_addr_reg[31] [20]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[27]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_3 
       (.I0(\sig_cmd_mst_addr_reg[31] [19]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[26]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_4 
       (.I0(\sig_cmd_mst_addr_reg[31] [18]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[25]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[8]_i_5 
       (.I0(\sig_cmd_mst_addr_reg[31] [17]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_xfer_address[24]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[0] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_7 ),
        .Q(sig_xfer_address[16]),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_1 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_2 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_3_n_0 }),
        .O({\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_4 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_5 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_6 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_7 }),
        .S({\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_4_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_5_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_6_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[10] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_5 ),
        .Q(sig_xfer_address[26]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_4 ),
        .Q(sig_xfer_address[27]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[12] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_7 ),
        .Q(sig_xfer_address[28]),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1 
       (.CI(\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_CO_UNCONNECTED [3],\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_1 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_2 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_4 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_5 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_6 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_7 }),
        .S({\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_2_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_3_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_4_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[13] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_6 ),
        .Q(sig_xfer_address[29]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[14] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_5 ),
        .Q(sig_xfer_address[30]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]_i_1_n_4 ),
        .Q(sig_xfer_address[31]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[1] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_6 ),
        .Q(sig_xfer_address[17]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[2] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_5 ),
        .Q(sig_xfer_address[18]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[3] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_4 ),
        .Q(sig_xfer_address[19]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[4] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_7 ),
        .Q(sig_xfer_address[20]),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1 
       (.CI(\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]_i_2_n_0 ),
        .CO({\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_1 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_2 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_4 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_5 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_6 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_7 }),
        .S({\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_2_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_3_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_4_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[5] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_6 ),
        .Q(sig_xfer_address[21]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[6] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_5 ),
        .Q(sig_xfer_address[22]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_4 ),
        .Q(sig_xfer_address[23]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[8] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_7 ),
        .Q(sig_xfer_address[24]),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1 
       (.CI(\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_1 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_2 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_4 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_5 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_6 ,\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_7 }),
        .S({\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_2_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_3_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_4_n_0 ,\GEN_ADDR_32.sig_addr_cntr_msh[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[9] 
       (.C(m_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]_i_1_n_6 ),
        .Q(sig_xfer_address[25]),
        .R(sig_strb_reg_out0));
  LUT4 #(
    .INIT(16'h52A2)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1 
       (.I0(sig_xfer_address[0]),
        .I1(sig_first_xfer),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_btt_residue_slice[0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h906030C09F603FC0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[1]_i_1 
       (.I0(sig_btt_residue_slice[0]),
        .I1(sig_btt_residue_slice[1]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_xfer_address[1]),
        .I4(sig_xfer_address[0]),
        .I5(sig_first_xfer),
        .O(sig_adjusted_addr_incr[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I2(sig_xfer_address[2]),
        .O(sig_adjusted_addr_incr[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h95A9)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I3(sig_xfer_address[2]),
        .O(sig_adjusted_addr_incr[3]));
  LUT6 #(
    .INIT(64'h03573F570F57FF57)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2 
       (.I0(sig_first_xfer),
        .I1(sig_xfer_address[0]),
        .I2(sig_xfer_address[1]),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I4(sig_btt_residue_slice[1]),
        .I5(sig_btt_residue_slice[0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFF3333F)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3 
       (.I0(sig_btt_residue_slice[2]),
        .I1(sig_first_xfer),
        .I2(sig_xfer_address[0]),
        .I3(sig_xfer_address[1]),
        .I4(sig_xfer_address[2]),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h07F7F808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_btt_residue_slice[4]),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .O(sig_adjusted_addr_incr[4]));
  LUT6 #(
    .INIT(64'h07F7F808F808F808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_btt_residue_slice[5]),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h088A)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .I1(sig_xfer_address[2]),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF80807F7F808F808)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[6]_i_1 
       (.I0(sig_first_xfer),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0 ),
        .I3(sig_btt_residue_slice[6]),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[6]_i_2_n_0 ),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .O(sig_adjusted_addr_incr[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hD5FDFFFF)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[6]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I3(sig_xfer_address[2]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[1]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[2]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[3]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[4]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[6]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'h000000000EEEEEEE)) 
    \GEN_ADDR_32.sig_first_xfer_i_1 
       (.I0(sig_first_xfer),
        .I1(sig_sm_ld_calc1_reg_reg_0),
        .I2(sig_input_burst_type_reg),
        .I3(sig_ld_xfer_reg),
        .I4(sig_xfer_reg_empty),
        .I5(sig_strb_reg_out0),
        .O(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_first_xfer_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ),
        .Q(sig_first_xfer),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2 
       (.I0(sig_xfer_address[11]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3 
       (.I0(sig_xfer_address[10]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4 
       (.I0(sig_xfer_address[9]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5 
       (.I0(sig_xfer_address[8]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2 
       (.I0(p_1_in2_in),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3 
       (.I0(sig_xfer_address[14]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4 
       (.I0(sig_xfer_address[13]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5 
       (.I0(sig_xfer_address[12]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2 
       (.I0(sig_xfer_address[3]),
        .I1(sig_addr_cntr_incr_imreg[3]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3 
       (.I0(sig_xfer_address[2]),
        .I1(sig_addr_cntr_incr_imreg[2]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4 
       (.I0(sig_xfer_address[1]),
        .I1(sig_addr_cntr_incr_imreg[1]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5 
       (.I0(sig_xfer_address[0]),
        .I1(sig_addr_cntr_incr_imreg[0]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2 
       (.I0(sig_xfer_address[7]),
        .I1(sig_addr_cntr_incr_imreg[7]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3 
       (.I0(sig_xfer_address[6]),
        .I1(sig_addr_cntr_incr_imreg[6]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4 
       (.I0(sig_xfer_address[5]),
        .I1(sig_addr_cntr_incr_imreg[5]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5 
       (.I0(sig_xfer_address[4]),
        .I1(sig_addr_cntr_incr_imreg[4]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 [0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[10]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[11]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[11:8]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[12]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[13]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[14]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[15]),
        .Q(p_0_in),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED [3],\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[15:12]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 [1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 [2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[3]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_xfer_address[3:0]),
        .O(sig_predict_addr_lsh_im3_in[3:0]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[4]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[5]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[6]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[7]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .R(sig_strb_reg_out0));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_xfer_address[7:4]),
        .O(sig_predict_addr_lsh_im3_in[7:4]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[8]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[9]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_btt_cntr[0]_i_1 
       (.I0(sig_muxed_length[0]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_btt_cntr0_0[0]),
        .O(\sig_btt_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[10]_i_1 
       (.I0(sig_btt_cntr0_0[10]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \sig_btt_cntr[11]_i_1 
       (.I0(sig_sm_ld_calc1_reg_reg_0),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_input_burst_type_reg),
        .O(\sig_btt_cntr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[11]_i_2 
       (.I0(sig_btt_cntr0_0[11]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_btt_cntr[11]_i_4 
       (.I0(sig_btt_cntr[11]),
        .O(\sig_btt_cntr[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_btt_cntr[11]_i_5 
       (.I0(sig_btt_cntr[10]),
        .O(\sig_btt_cntr[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_btt_cntr[11]_i_6 
       (.I0(sig_btt_cntr[9]),
        .O(\sig_btt_cntr[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_btt_cntr[11]_i_7 
       (.I0(sig_btt_cntr[8]),
        .O(\sig_btt_cntr[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_btt_cntr[1]_i_1 
       (.I0(sig_muxed_length[1]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_btt_cntr0_0[1]),
        .O(\sig_btt_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_btt_cntr[2]_i_1 
       (.I0(sig_muxed_length[2]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_btt_cntr0_0[2]),
        .O(\sig_btt_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_btt_cntr[3]_i_1 
       (.I0(sig_muxed_length[3]),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_xfer_calc_err_reg_reg_0),
        .I5(sig_btt_cntr0_0[3]),
        .O(\sig_btt_cntr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[3]_i_5 
       (.I0(sig_btt_residue_slice[3]),
        .I1(sig_addr_cntr_incr_imreg[3]),
        .O(\sig_btt_cntr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[3]_i_6 
       (.I0(sig_btt_residue_slice[2]),
        .I1(sig_addr_cntr_incr_imreg[2]),
        .O(\sig_btt_cntr[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[3]_i_7 
       (.I0(sig_btt_residue_slice[1]),
        .I1(sig_addr_cntr_incr_imreg[1]),
        .O(\sig_btt_cntr[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[3]_i_8 
       (.I0(sig_btt_residue_slice[0]),
        .I1(sig_addr_cntr_incr_imreg[0]),
        .O(\sig_btt_cntr[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[4]_i_1 
       (.I0(sig_btt_cntr0_0[4]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[5]_i_1 
       (.I0(sig_btt_cntr0_0[5]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[6]_i_1 
       (.I0(sig_btt_cntr0_0[6]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[7]_i_3 
       (.I0(sig_btt_cntr[7]),
        .I1(sig_addr_cntr_incr_imreg[7]),
        .O(\sig_btt_cntr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[7]_i_4 
       (.I0(sig_btt_residue_slice[6]),
        .I1(sig_addr_cntr_incr_imreg[6]),
        .O(\sig_btt_cntr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[7]_i_5 
       (.I0(sig_btt_residue_slice[5]),
        .I1(sig_addr_cntr_incr_imreg[5]),
        .O(\sig_btt_cntr[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sig_btt_cntr[7]_i_6 
       (.I0(sig_btt_residue_slice[4]),
        .I1(sig_addr_cntr_incr_imreg[4]),
        .O(\sig_btt_cntr[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[8]_i_1 
       (.I0(sig_btt_cntr0_0[8]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \sig_btt_cntr[9]_i_1 
       (.I0(sig_btt_cntr0_0[9]),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(\sig_btt_cntr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[0]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[10] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[10]_i_1_n_0 ),
        .Q(sig_btt_cntr[10]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[11] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[11]_i_2_n_0 ),
        .Q(sig_btt_cntr[11]),
        .R(sig_strb_reg_out0));
  CARRY4 \sig_btt_cntr_reg[11]_i_3 
       (.CI(\sig_btt_cntr_reg[7]_i_2_n_0 ),
        .CO({\NLW_sig_btt_cntr_reg[11]_i_3_CO_UNCONNECTED [3],\sig_btt_cntr_reg[11]_i_3_n_1 ,\sig_btt_cntr_reg[11]_i_3_n_2 ,\sig_btt_cntr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sig_btt_cntr[10:8]}),
        .O(sig_btt_cntr0_0[11:8]),
        .S({\sig_btt_cntr[11]_i_4_n_0 ,\sig_btt_cntr[11]_i_5_n_0 ,\sig_btt_cntr[11]_i_6_n_0 ,\sig_btt_cntr[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[1]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[2]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[3]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[3]),
        .R(sig_strb_reg_out0));
  CARRY4 \sig_btt_cntr_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\sig_btt_cntr_reg[3]_i_3_n_0 ,\sig_btt_cntr_reg[3]_i_3_n_1 ,\sig_btt_cntr_reg[3]_i_3_n_2 ,\sig_btt_cntr_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(sig_btt_residue_slice[3:0]),
        .O(sig_btt_cntr0_0[3:0]),
        .S({\sig_btt_cntr[3]_i_5_n_0 ,\sig_btt_cntr[3]_i_6_n_0 ,\sig_btt_cntr[3]_i_7_n_0 ,\sig_btt_cntr[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[4]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[4]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[5]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[5]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[6]_i_1_n_0 ),
        .Q(sig_btt_residue_slice[6]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg),
        .Q(sig_btt_cntr[7]),
        .R(sig_strb_reg_out0));
  CARRY4 \sig_btt_cntr_reg[7]_i_2 
       (.CI(\sig_btt_cntr_reg[3]_i_3_n_0 ),
        .CO({\sig_btt_cntr_reg[7]_i_2_n_0 ,\sig_btt_cntr_reg[7]_i_2_n_1 ,\sig_btt_cntr_reg[7]_i_2_n_2 ,\sig_btt_cntr_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({sig_btt_cntr[7],sig_btt_residue_slice[6:4]}),
        .O({sig_btt_cntr0,sig_btt_cntr0_0[6:4]}),
        .S({\sig_btt_cntr[7]_i_3_n_0 ,\sig_btt_cntr[7]_i_4_n_0 ,\sig_btt_cntr[7]_i_5_n_0 ,\sig_btt_cntr[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[8] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[8]_i_1_n_0 ),
        .Q(sig_btt_cntr[8]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[9] 
       (.C(m_axi_aclk),
        .CE(\sig_btt_cntr[11]_i_1_n_0 ),
        .D(\sig_btt_cntr[9]_i_1_n_0 ),
        .Q(sig_btt_cntr[9]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_1),
        .Q(sig_input_eof_reg_reg_0),
        .R(sig_strb_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    sig_calc_error_reg_i_3
       (.I0(sig_cmd_mstrd_req_reg_0),
        .I1(sig_cmd_mstrd_req_reg),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_xfer_calc_err_reg_reg_0),
        .O(sig_calc_error_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_0),
        .Q(sig_xfer_calc_err_reg_reg_0),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'h000000003FFFAAAA)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_push_xfer_reg15_out),
        .I1(sig_addr2stat_cmd_fifo_empty),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_pcc2addr_cmd_valid),
        .I5(sig_strb_reg_out0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_pcc2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000F88)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_ld_xfer_reg),
        .I1(sig_xfer_reg_empty),
        .I2(sig_data2pcc_cmd_ready),
        .I3(sig_pcc2data_cmd_valid),
        .I4(sig_strb_reg_out0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_pcc2data_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_first_xfer),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_cmd2dre_valid_reg_n_0),
        .I4(sig_strb_reg_out0),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    sig_cmd_mstrd_req_i_1
       (.I0(sig_rst2cmd_stat_reset),
        .I1(E),
        .I2(sig_cmd_mstrd_req_reg),
        .I3(sig_cmd_mstrd_req_reg_0),
        .I4(sig_input_eof_reg_reg_0),
        .I5(sig_cmd2pcc_cmd_valid),
        .O(SR));
  LUT4 #(
    .INIT(16'h0400)) 
    sig_doing_read_reg_i_2
       (.I0(sig_cmd_mstrd_req_reg),
        .I1(sig_cmd_mstrd_req_reg_0),
        .I2(sig_input_eof_reg_reg_0),
        .I3(sig_cmd2pcc_cmd_valid),
        .O(sig_pcc_taking_command));
  LUT5 #(
    .INIT(32'h0000000E)) 
    sig_input_burst_type_reg_i_1
       (.I0(sig_input_burst_type_reg),
        .I1(sig_sm_ld_calc1_reg_reg_0),
        .I2(sig_strb_reg_out0),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_input_eof_reg_reg_0),
        .O(sig_input_burst_type_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    sig_input_burst_type_reg_i_2
       (.I0(sig_cmd_mstrd_req_reg_0),
        .I1(sig_cmd_mstrd_req_reg),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_xfer_calc_err_reg_reg_0),
        .O(sig_sm_ld_calc1_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(sig_input_burst_type_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_input_eof_reg_i_1
       (.I0(sig_input_eof_reg_reg_0),
        .I1(sig_sm_pop_input_reg),
        .I2(sig_strb_reg_out0),
        .O(sig_input_burst_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_reg_1),
        .Q(sig_input_eof_reg),
        .R(sig_input_burst_type_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_reg_0),
        .Q(sig_cmd_mstrd_req_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_last_dbeat_i_3
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(sig_last_dbeat_reg));
  LUT6 #(
    .INIT(64'h0000000000FF4040)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[1]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_xfer_reg_empty),
        .I4(sig_ld_xfer_reg),
        .I5(sig_strb_reg_out0),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    sig_parent_done_i_2
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .I1(sig_btt_cntr[7]),
        .I2(sig_btt_cntr[11]),
        .I3(sig_btt_cntr[9]),
        .I4(sig_btt_cntr[10]),
        .I5(sig_btt_cntr[8]),
        .O(sig_parent_done_reg_1));
  LUT6 #(
    .INIT(64'h4444444544444444)) 
    sig_parent_done_i_3
       (.I0(sig_parent_done_i_5_n_0),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(sig_xfer_cmd_cmplt_reg_i_9_n_0),
        .I3(sig_parent_done_i_6_n_0),
        .I4(sig_xfer_cmd_cmplt_reg_i_7_n_0),
        .I5(sig_xfer_cmd_cmplt_reg_i_6_n_0),
        .O(sig_parent_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    sig_parent_done_i_4
       (.I0(sig_strb_reg_out0),
        .I1(sig_xfer_calc_err_reg_reg_0),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_cmd_mstrd_req_reg),
        .I4(sig_cmd_mstrd_req_reg_0),
        .O(sig_parent_done0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_parent_done_i_5
       (.I0(sig_btt_cntr[7]),
        .I1(sig_btt_cntr[8]),
        .I2(sig_btt_cntr[10]),
        .I3(sig_btt_cntr[9]),
        .I4(sig_btt_cntr[11]),
        .O(sig_parent_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h9FF6FFFF9FF69FF6)) 
    sig_parent_done_i_6
       (.I0(sig_btt_residue_slice[1]),
        .I1(sig_xfer_address[1]),
        .I2(sig_xfer_address[0]),
        .I3(sig_btt_residue_slice[0]),
        .I4(sig_xfer_address[6]),
        .I5(sig_xfer_is_seq_reg_i_12_n_0),
        .O(sig_parent_done_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_reg_2),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0A000A0F0EFF0EFF)) 
    \sig_pcc_sm_state[0]_i_1 
       (.I0(\sig_pcc_sm_state[0]_i_2_n_0 ),
        .I1(sig_push_xfer_reg15_out),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[2]),
        .I4(sig_sm_ld_calc1_reg_reg_0),
        .I5(sig_pcc_sm_state[0]),
        .O(sig_pcc_sm_state_ns[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_pcc_sm_state[0]_i_2 
       (.I0(sig_input_eof_reg_reg_0),
        .I1(sig_parent_done),
        .I2(sig_pcc_sm_state[0]),
        .O(\sig_pcc_sm_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFDFD00000)) 
    \sig_pcc_sm_state[1]_i_1 
       (.I0(sig_parent_done),
        .I1(sig_input_eof_reg_reg_0),
        .I2(sig_pcc_sm_state[2]),
        .I3(sig_sm_ld_calc1_reg_reg_0),
        .I4(sig_pcc_sm_state[0]),
        .I5(sig_pcc_sm_state[1]),
        .O(sig_pcc_sm_state_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h3BC0)) 
    \sig_pcc_sm_state[2]_i_1 
       (.I0(sig_input_eof_reg_reg_0),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[2]),
        .O(sig_pcc_sm_state_ns[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[0]),
        .Q(sig_pcc_sm_state[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[1]),
        .Q(sig_pcc_sm_state[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_pcc_sm_state_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_pcc_sm_state_ns[2]),
        .Q(sig_pcc_sm_state[2]),
        .R(sig_strb_reg_out0));
  LUT4 #(
    .INIT(16'h8000)) 
    sig_rd_addr_valid_reg_i_2
       (.I0(sig_pcc2addr_cmd_valid),
        .I1(sig_addr2stat_cmd_fifo_empty),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_llink2rd_allow_addr_req),
        .O(sig_push_addr_reg1_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h08C3)) 
    sig_sm_halt_reg_i_1
       (.I0(sig_input_eof_reg_reg_0),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[0]),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_cmd_mstrd_req_reg),
        .S(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'h0040004000404440)) 
    sig_sm_ld_calc1_reg_i_1
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_sm_ld_calc1_reg_reg_0),
        .I3(sig_pcc_sm_state[2]),
        .I4(sig_input_eof_reg_reg_0),
        .I5(sig_parent_done),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(sig_strb_reg_out0));
  LUT3 #(
    .INIT(8'h04)) 
    sig_sm_ld_calc2_reg_i_1
       (.I0(sig_pcc_sm_state[0]),
        .I1(sig_pcc_sm_state[1]),
        .I2(sig_pcc_sm_state[2]),
        .O(sig_sm_ld_calc2_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_i_1_n_0),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_strb_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_pcc_sm_state[0]),
        .I1(sig_parent_done),
        .I2(sig_input_eof_reg_reg_0),
        .I3(sig_pcc_sm_state[1]),
        .I4(sig_pcc_sm_state[2]),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_strb_reg_out0));
  LUT4 #(
    .INIT(16'hABBB)) 
    \sig_xfer_addr_reg[31]_i_1 
       (.I0(sig_strb_reg_out0),
        .I1(\sig_xfer_len_reg_reg[0]_0 ),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .O(sig_xfer_addr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    \sig_xfer_addr_reg[31]_i_2 
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .O(sig_push_xfer_reg15_out));
  LUT6 #(
    .INIT(64'hFF1D0C1DFF1DFF1D)) 
    \sig_xfer_addr_reg[31]_i_3 
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_pcc2addr_cmd_valid),
        .I2(sig_addr2pcc_cmd_ready),
        .I3(sig_pcc2data_cmd_valid),
        .I4(sig_rd_sts_reg_full_reg),
        .I5(sig_dqual_reg_empty_reg),
        .O(\sig_xfer_len_reg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[0]),
        .Q(\sig_next_addr_reg_reg[31] [0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[10]),
        .Q(\sig_next_addr_reg_reg[31] [10]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[11]),
        .Q(\sig_next_addr_reg_reg[31] [11]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[12]),
        .Q(\sig_next_addr_reg_reg[31] [12]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[13]),
        .Q(\sig_next_addr_reg_reg[31] [13]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[14]),
        .Q(\sig_next_addr_reg_reg[31] [14]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(p_1_in2_in),
        .Q(\sig_next_addr_reg_reg[31] [15]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[16]),
        .Q(\sig_next_addr_reg_reg[31] [16]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[17]),
        .Q(\sig_next_addr_reg_reg[31] [17]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[18]),
        .Q(\sig_next_addr_reg_reg[31] [18]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[19]),
        .Q(\sig_next_addr_reg_reg[31] [19]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[1]),
        .Q(\sig_next_addr_reg_reg[31] [1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[20]),
        .Q(\sig_next_addr_reg_reg[31] [20]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[21]),
        .Q(\sig_next_addr_reg_reg[31] [21]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[22]),
        .Q(\sig_next_addr_reg_reg[31] [22]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[23]),
        .Q(\sig_next_addr_reg_reg[31] [23]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[24] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[24]),
        .Q(\sig_next_addr_reg_reg[31] [24]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[25] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[25]),
        .Q(\sig_next_addr_reg_reg[31] [25]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[26] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[26]),
        .Q(\sig_next_addr_reg_reg[31] [26]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[27] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[27]),
        .Q(\sig_next_addr_reg_reg[31] [27]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[28] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[28]),
        .Q(\sig_next_addr_reg_reg[31] [28]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[29] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[29]),
        .Q(\sig_next_addr_reg_reg[31] [29]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[2]),
        .Q(\sig_next_addr_reg_reg[31] [2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[30] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[30]),
        .Q(\sig_next_addr_reg_reg[31] [30]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[31] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[31]),
        .Q(\sig_next_addr_reg_reg[31] [31]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[3]),
        .Q(\sig_next_addr_reg_reg[31] [3]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[4]),
        .Q(\sig_next_addr_reg_reg[31] [4]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[5]),
        .Q(\sig_next_addr_reg_reg[31] [5]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[6]),
        .Q(\sig_next_addr_reg_reg[31] [6]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[7]),
        .Q(\sig_next_addr_reg_reg[31] [7]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[8]),
        .Q(\sig_next_addr_reg_reg[31] [8]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[9]),
        .Q(\sig_next_addr_reg_reg[31] [9]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_calc_err_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_calc_err_reg_reg_0),
        .Q(sig_pcc2data_calc_error),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hAAAAEEABAAAAAAAB)) 
    sig_xfer_cmd_cmplt_reg_i_1
       (.I0(sig_xfer_calc_err_reg_reg_0),
        .I1(sig_xfer_cmd_cmplt_reg_reg_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .I3(sig_btt_cntr[7]),
        .I4(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .O(sig_xfer_cmd_cmplt_reg0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_xfer_cmd_cmplt_reg_i_2
       (.I0(sig_btt_residue_slice[4]),
        .I1(sig_btt_residue_slice[3]),
        .I2(sig_btt_residue_slice[5]),
        .I3(sig_xfer_cmd_cmplt_reg_i_5_n_0),
        .O(sig_xfer_cmd_cmplt_reg_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    sig_xfer_cmd_cmplt_reg_i_3
       (.I0(sig_xfer_cmd_cmplt_reg_i_6_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_7_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .I4(sig_xfer_cmd_cmplt_reg_i_9_n_0),
        .I5(sig_btt_lt_b2mbaa1),
        .O(sig_xfer_cmd_cmplt_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_xfer_cmd_cmplt_reg_i_4
       (.I0(sig_btt_cntr[11]),
        .I1(sig_btt_cntr[9]),
        .I2(sig_btt_cntr[10]),
        .I3(sig_btt_cntr[8]),
        .O(sig_xfer_cmd_cmplt_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_xfer_cmd_cmplt_reg_i_5
       (.I0(sig_btt_residue_slice[2]),
        .I1(sig_btt_residue_slice[0]),
        .I2(sig_btt_residue_slice[6]),
        .I3(sig_btt_residue_slice[1]),
        .O(sig_xfer_cmd_cmplt_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h66666669)) 
    sig_xfer_cmd_cmplt_reg_i_6
       (.I0(sig_btt_residue_slice[6]),
        .I1(sig_xfer_address[6]),
        .I2(sig_xfer_address[5]),
        .I3(sig_xfer_address[4]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .O(sig_xfer_cmd_cmplt_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'hF99F9FF6)) 
    sig_xfer_cmd_cmplt_reg_i_7
       (.I0(sig_xfer_address[5]),
        .I1(sig_btt_residue_slice[5]),
        .I2(sig_xfer_address[4]),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I4(sig_btt_residue_slice[4]),
        .O(sig_xfer_cmd_cmplt_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hE77E)) 
    sig_xfer_cmd_cmplt_reg_i_8
       (.I0(sig_btt_residue_slice[0]),
        .I1(sig_xfer_address[0]),
        .I2(sig_xfer_address[1]),
        .I3(sig_btt_residue_slice[1]),
        .O(sig_xfer_cmd_cmplt_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'hEEEDDDDBBBB7777E)) 
    sig_xfer_cmd_cmplt_reg_i_9
       (.I0(sig_btt_residue_slice[2]),
        .I1(sig_xfer_address[3]),
        .I2(sig_xfer_address[0]),
        .I3(sig_xfer_address[1]),
        .I4(sig_xfer_address[2]),
        .I5(sig_btt_residue_slice[3]),
        .O(sig_xfer_cmd_cmplt_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_cmd_cmplt_reg0),
        .Q(sig_pcc2data_cmd_cmplt),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'h0000880200000002)) 
    sig_xfer_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_xfer_cmd_cmplt_reg_reg_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .I3(sig_btt_cntr[7]),
        .I4(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .O(sig_xfer_eof_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_eof_reg0),
        .Q(sig_pcc2data_eof),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hDFDFDFDFFCFFFCFC)) 
    sig_xfer_is_seq_reg_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0 ),
        .I1(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I2(sig_btt_cntr[7]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_xfer_is_seq_reg_i_3_n_0),
        .I5(sig_xfer_cmd_cmplt_reg_reg_0),
        .O(sig_xfer_is_seq_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h1114222844428881)) 
    sig_xfer_is_seq_reg_i_10
       (.I0(sig_btt_residue_slice[3]),
        .I1(sig_xfer_address[2]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[0]),
        .I4(sig_xfer_address[3]),
        .I5(sig_btt_residue_slice[2]),
        .O(sig_xfer_is_seq_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    sig_xfer_is_seq_reg_i_11
       (.I0(sig_btt_residue_slice[1]),
        .I1(sig_xfer_address[1]),
        .I2(sig_xfer_address[0]),
        .I3(sig_btt_residue_slice[0]),
        .O(sig_xfer_is_seq_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_xfer_is_seq_reg_i_12
       (.I0(sig_xfer_address[3]),
        .I1(sig_xfer_address[0]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[2]),
        .I4(sig_xfer_address[4]),
        .I5(sig_xfer_address[5]),
        .O(sig_xfer_is_seq_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFEFFFEFFFF)) 
    sig_xfer_is_seq_reg_i_3
       (.I0(sig_xfer_cmd_cmplt_reg_i_9_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_7_n_0),
        .I3(sig_xfer_is_seq_reg_i_12_n_0),
        .I4(sig_xfer_address[6]),
        .I5(sig_btt_residue_slice[6]),
        .O(sig_xfer_is_seq_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'h11111117)) 
    sig_xfer_is_seq_reg_i_4
       (.I0(sig_btt_residue_slice[6]),
        .I1(sig_xfer_address[6]),
        .I2(sig_xfer_address[5]),
        .I3(sig_xfer_address[4]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .O(sig_xfer_is_seq_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'h0154157C)) 
    sig_xfer_is_seq_reg_i_5
       (.I0(sig_btt_residue_slice[5]),
        .I1(sig_xfer_address[4]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I3(sig_xfer_address[5]),
        .I4(sig_btt_residue_slice[4]),
        .O(sig_xfer_is_seq_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h000155541115777C)) 
    sig_xfer_is_seq_reg_i_6
       (.I0(sig_btt_residue_slice[3]),
        .I1(sig_xfer_address[2]),
        .I2(sig_xfer_address[1]),
        .I3(sig_xfer_address[0]),
        .I4(sig_xfer_address[3]),
        .I5(sig_btt_residue_slice[2]),
        .O(sig_xfer_is_seq_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'h1474)) 
    sig_xfer_is_seq_reg_i_7
       (.I0(sig_btt_residue_slice[1]),
        .I1(sig_xfer_address[1]),
        .I2(sig_xfer_address[0]),
        .I3(sig_btt_residue_slice[0]),
        .O(sig_xfer_is_seq_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'h66666668)) 
    sig_xfer_is_seq_reg_i_8
       (.I0(sig_btt_residue_slice[6]),
        .I1(sig_xfer_address[6]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I3(sig_xfer_address[4]),
        .I4(sig_xfer_address[5]),
        .O(sig_xfer_is_seq_reg_i_8_n_0));
  LUT5 #(
    .INIT(32'h01686801)) 
    sig_xfer_is_seq_reg_i_9
       (.I0(sig_btt_residue_slice[4]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_4_n_0 ),
        .I2(sig_xfer_address[4]),
        .I3(sig_btt_residue_slice[5]),
        .I4(sig_xfer_address[5]),
        .O(sig_xfer_is_seq_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_is_seq_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_is_seq_reg_i_1_n_0),
        .Q(sig_pcc2data_sequential),
        .R(sig_xfer_addr_reg0));
  CARRY4 sig_xfer_is_seq_reg_reg_i_2
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa1,sig_xfer_is_seq_reg_reg_i_2_n_1,sig_xfer_is_seq_reg_reg_i_2_n_2,sig_xfer_is_seq_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({sig_xfer_is_seq_reg_i_4_n_0,sig_xfer_is_seq_reg_i_5_n_0,sig_xfer_is_seq_reg_i_6_n_0,sig_xfer_is_seq_reg_i_7_n_0}),
        .O(NLW_sig_xfer_is_seq_reg_reg_i_2_O_UNCONNECTED[3:0]),
        .S({sig_xfer_is_seq_reg_i_8_n_0,sig_xfer_is_seq_reg_i_9_n_0,sig_xfer_is_seq_reg_i_10_n_0,sig_xfer_is_seq_reg_i_11_n_0}));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sig_xfer_len_reg[0]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .O(sig_byte_change_minus1[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sig_xfer_len_reg[1]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .O(sig_byte_change_minus1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sig_xfer_len_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .O(sig_byte_change_minus1[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \sig_xfer_len_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .I2(\sig_xfer_len_reg[3]_i_2_n_0 ),
        .O(sig_byte_change_minus1[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \sig_xfer_len_reg[3]_i_2 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .O(\sig_xfer_len_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[3]),
        .Q(Q[0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[4]),
        .Q(Q[1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[5]),
        .Q(Q[2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[6]),
        .Q(Q[3]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_reg_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_type_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_input_burst_type_reg),
        .Q(sig_pcc2addr_burst),
        .R(sig_xfer_addr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_llink" *) 
module axi_tft_0_axi_master_burst_rd_llink
   (eof_n_reg,
    sig_addr2pcc_cmd_ready,
    sig_llink2rd_allow_addr_req,
    E,
    sig_s_ready_out_reg,
    eof_n_reg_0,
    AXI_BRAM_we_i_reg,
    \trans_cnt_reg[0] ,
    bus2ip_mstrd_eof_n,
    sig_allow_wr_requests0,
    sig_rdwr2llink_int_err,
    m_axi_aclk,
    sig_cmd2all_doing_read,
    sig_addr2stat_cmd_fifo_empty,
    IP2Bus_MstRd_dst_rdy,
    p_0_in2_in,
    sig_rd2llink_strm_tvalid,
    sig_last_reg_out_reg,
    eof_n,
    sig_rd_llink_enable,
    sig_doing_read_reg);
  output eof_n_reg;
  output sig_addr2pcc_cmd_ready;
  output sig_llink2rd_allow_addr_req;
  output [0:0]E;
  output sig_s_ready_out_reg;
  output eof_n_reg_0;
  output AXI_BRAM_we_i_reg;
  output [0:0]\trans_cnt_reg[0] ;
  output bus2ip_mstrd_eof_n;
  input sig_allow_wr_requests0;
  input sig_rdwr2llink_int_err;
  input m_axi_aclk;
  input sig_cmd2all_doing_read;
  input sig_addr2stat_cmd_fifo_empty;
  input IP2Bus_MstRd_dst_rdy;
  input p_0_in2_in;
  input sig_rd2llink_strm_tvalid;
  input sig_last_reg_out_reg;
  input eof_n;
  input sig_rd_llink_enable;
  input sig_doing_read_reg;

  wire AXI_BRAM_we_i_reg;
  wire [0:0]E;
  wire IP2Bus_MstRd_dst_rdy;
  wire \I_WR_LLINK_ADAPTER/sig_wr_error_reg ;
  wire bus2ip_mstrd_eof_n;
  wire eof_n;
  wire eof_n_reg;
  wire eof_n_reg_0;
  wire m_axi_aclk;
  wire p_0_in2_in;
  wire sig_addr2pcc_cmd_ready;
  wire sig_addr2stat_cmd_fifo_empty;
  wire sig_allow_rd_requests_i_1_n_0;
  wire sig_allow_wr_requests0;
  wire sig_cmd2all_doing_read;
  wire sig_doing_read_reg;
  wire sig_last_reg_out_reg;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy0;
  wire sig_llink_busy_i_1_n_0;
  wire sig_rd2llink_strm_tvalid;
  wire sig_rd_discontinue_i_1_n_0;
  wire sig_rd_llink_enable;
  wire sig_rdwr2llink_int_err;
  wire sig_s_ready_out_reg;
  wire [0:0]\trans_cnt_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    AXI_BRAM_we_i_i_1
       (.I0(sig_rd2llink_strm_tvalid),
        .I1(eof_n_reg),
        .I2(eof_n_reg_0),
        .O(AXI_BRAM_we_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h15)) 
    eof_n_i_1
       (.I0(sig_last_reg_out_reg),
        .I1(eof_n_reg),
        .I2(eof_n_reg_0),
        .O(bus2ip_mstrd_eof_n));
  LUT6 #(
    .INIT(64'h00000000EAEA00EA)) 
    sig_allow_rd_requests_i_1
       (.I0(sig_llink2rd_allow_addr_req),
        .I1(IP2Bus_MstRd_dst_rdy),
        .I2(eof_n_reg),
        .I3(sig_cmd2all_doing_read),
        .I4(sig_doing_read_reg),
        .I5(sig_allow_wr_requests0),
        .O(sig_allow_rd_requests_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_allow_rd_requests_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_allow_rd_requests_i_1_n_0),
        .Q(sig_llink2rd_allow_addr_req),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \sig_data_reg_out[55]_i_1 
       (.I0(IP2Bus_MstRd_dst_rdy),
        .I1(eof_n_reg),
        .I2(p_0_in2_in),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FFFF4CCC)) 
    sig_llink_busy_i_1
       (.I0(IP2Bus_MstRd_dst_rdy),
        .I1(eof_n_reg),
        .I2(sig_rd2llink_strm_tvalid),
        .I3(sig_last_reg_out_reg),
        .I4(sig_rd_llink_enable),
        .I5(sig_llink_busy0),
        .O(sig_llink_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_llink_busy_i_3
       (.I0(sig_allow_wr_requests0),
        .I1(eof_n_reg_0),
        .I2(eof_n_reg),
        .I3(IP2Bus_MstRd_dst_rdy),
        .O(sig_llink_busy0));
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_busy_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_llink_busy_i_1_n_0),
        .Q(eof_n_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000FFF2200)) 
    sig_rd_discontinue_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .I2(IP2Bus_MstRd_dst_rdy),
        .I3(eof_n_reg),
        .I4(eof_n_reg_0),
        .I5(sig_allow_wr_requests0),
        .O(sig_rd_discontinue_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_discontinue_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_discontinue_i_1_n_0),
        .Q(eof_n_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_error_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr2llink_int_err),
        .Q(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .R(sig_allow_wr_requests0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_s_ready_dup_i_2
       (.I0(eof_n_reg),
        .I1(IP2Bus_MstRd_dst_rdy),
        .O(sig_s_ready_out_reg));
  LUT3 #(
    .INIT(8'h80)) 
    \sig_xfer_addr_reg[31]_i_4 
       (.I0(sig_llink2rd_allow_addr_req),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_addr2stat_cmd_fifo_empty),
        .O(sig_addr2pcc_cmd_ready));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \trans_cnt[0]_i_2 
       (.I0(eof_n_reg_0),
        .I1(eof_n_reg),
        .I2(sig_last_reg_out_reg),
        .I3(eof_n),
        .O(\trans_cnt_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_status_cntl" *) 
module axi_tft_0_axi_master_burst_rd_status_cntl
   (sig_rsc2stat_status_valid,
    sig_rsc2rdc_ready,
    sig_error_sh_reg_reg,
    sig_rsc2stat_status,
    sig_error_sh_reg_reg_0,
    sig_rd_sts_tag_reg0,
    sig_rd_sts_reg_full0,
    m_axi_aclk,
    sig_coelsc_interr_reg_reg,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_decerr_reg0,
    sig_rd_sts_slverr_reg0,
    sig_rdc2rsc_valid,
    sig_push_status1_out,
    md_error);
  output sig_rsc2stat_status_valid;
  output sig_rsc2rdc_ready;
  output [0:0]sig_error_sh_reg_reg;
  output [1:0]sig_rsc2stat_status;
  output sig_error_sh_reg_reg_0;
  input sig_rd_sts_tag_reg0;
  input sig_rd_sts_reg_full0;
  input m_axi_aclk;
  input sig_coelsc_interr_reg_reg;
  input sig_rd_sts_interr_reg0;
  input sig_rd_sts_decerr_reg0;
  input sig_rd_sts_slverr_reg0;
  input sig_rdc2rsc_valid;
  input sig_push_status1_out;
  input md_error;

  wire m_axi_aclk;
  wire md_error;
  wire sig_coelsc_interr_reg_reg;
  wire [0:0]sig_error_sh_reg_reg;
  wire sig_error_sh_reg_reg_0;
  wire sig_push_rd_sts_reg;
  wire sig_push_status1_out;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_reg_full0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2rsc_valid;
  wire sig_rsc2rdc_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    sig_error_sh_reg_i_1
       (.I0(sig_error_sh_reg_reg),
        .I1(sig_rsc2stat_status[0]),
        .I2(sig_rsc2stat_status[1]),
        .I3(sig_push_status1_out),
        .I4(md_error),
        .O(sig_error_sh_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_error_sh_reg_reg),
        .R(sig_rd_sts_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_coelsc_interr_reg_reg),
        .Q(sig_rsc2rdc_ready),
        .S(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_reg_full_i_2
       (.I0(sig_rsc2rdc_ready),
        .I1(sig_rdc2rsc_valid),
        .O(sig_push_rd_sts_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_reg_full0),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(sig_rd_sts_tag_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_wr_cntlr" *) 
module axi_tft_0_axi_master_burst_rd_wr_cntlr
   (p_0_in2_in,
    sig_rd2llink_strm_tvalid,
    m_axi_wvalid,
    sig_pcc2data_calc_error,
    m_axi_awburst,
    m_axi_arvalid,
    sig_rsc2stat_status_valid,
    sig_error_sh_reg_reg,
    sig_doing_read_reg,
    sig_addr2stat_cmd_fifo_empty,
    sig_rd2llink_strm_tlast,
    sig_sm_halt_reg,
    sig_calc_error_pushed,
    sig_push_input_reg16_out,
    sig_input_reg_empty,
    SR,
    sig_pcc_taking_command,
    m_axi_rready,
    sig_btt_cntr0,
    sig_error_sh_reg_reg_0,
    m_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_wstrb,
    Q,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ,
    m_axi_aclk,
    sig_rd_addr_valid_reg0,
    sig_strb_reg_out0,
    sig_rd_sts_tag_reg0,
    sig_cmd2all_doing_read,
    sig_muxed_length,
    \sig_cmd_mst_length_reg[7] ,
    sig_rst2cmd_stat_reset,
    E,
    sig_cmd2pcc_cmd_valid,
    sig_llink2rd_allow_addr_req,
    sig_llink_busy_reg,
    m_axi_rvalid,
    m_axi_rlast,
    sig_status_reg_empty,
    m_axi_rresp,
    m_axi_bvalid,
    m_axi_wready,
    m_axi_arready,
    m_axi_rdata,
    D,
    \sig_cmd_mst_addr_reg[31] ,
    sig_push_status1_out,
    md_error,
    IP2Bus_MstRd_dst_rdy_reg,
    sig_addr2pcc_cmd_ready,
    sig_cmd_type_req_reg);
  output p_0_in2_in;
  output sig_rd2llink_strm_tvalid;
  output m_axi_wvalid;
  output sig_pcc2data_calc_error;
  output [0:0]m_axi_awburst;
  output m_axi_arvalid;
  output sig_rsc2stat_status_valid;
  output [0:0]sig_error_sh_reg_reg;
  output sig_doing_read_reg;
  output sig_addr2stat_cmd_fifo_empty;
  output sig_rd2llink_strm_tlast;
  output sig_sm_halt_reg;
  output sig_calc_error_pushed;
  output sig_push_input_reg16_out;
  output sig_input_reg_empty;
  output [0:0]SR;
  output sig_pcc_taking_command;
  output m_axi_rready;
  output [0:0]sig_btt_cntr0;
  output sig_error_sh_reg_reg_0;
  output m_axi_bready;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awsize;
  output [7:0]m_axi_wstrb;
  output [47:0]Q;
  output [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ;
  input m_axi_aclk;
  input sig_rd_addr_valid_reg0;
  input sig_strb_reg_out0;
  input sig_rd_sts_tag_reg0;
  input sig_cmd2all_doing_read;
  input [3:0]sig_muxed_length;
  input \sig_cmd_mst_length_reg[7] ;
  input sig_rst2cmd_stat_reset;
  input [0:0]E;
  input sig_cmd2pcc_cmd_valid;
  input sig_llink2rd_allow_addr_req;
  input sig_llink_busy_reg;
  input m_axi_rvalid;
  input m_axi_rlast;
  input sig_status_reg_empty;
  input [1:0]m_axi_rresp;
  input m_axi_bvalid;
  input m_axi_wready;
  input m_axi_arready;
  input [47:0]m_axi_rdata;
  input [2:0]D;
  input [24:0]\sig_cmd_mst_addr_reg[31] ;
  input sig_push_status1_out;
  input md_error;
  input [0:0]IP2Bus_MstRd_dst_rdy_reg;
  input sig_addr2pcc_cmd_ready;
  input [0:0]sig_cmd_type_req_reg;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ;
  wire [0:0]IP2Bus_MstRd_dst_rdy_reg;
  wire I_MSTR_PCC_n_18;
  wire I_MSTR_PCC_n_27;
  wire I_MSTR_PCC_n_29;
  wire I_MSTR_PCC_n_30;
  wire I_MSTR_PCC_n_31;
  wire I_MSTR_PCC_n_6;
  wire I_RD_DATA_CNTL_n_11;
  wire I_RD_DATA_CNTL_n_2;
  wire I_RD_DATA_CNTL_n_3;
  wire I_RD_DATA_CNTL_n_4;
  wire I_RD_DATA_CNTL_n_7;
  wire I_WR_STATUS_CNTLR_n_1;
  wire I_WR_STATUS_CNTLR_n_3;
  wire [47:0]Q;
  wire [0:0]SR;
  wire m_axi_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]m_axi_awburst;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awsize;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [47:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire p_0_in2_in;
  wire p_0_in2_in_0;
  wire p_0_in3_in;
  wire sig_addr2data_addr_posted;
  wire sig_addr2pcc_cmd_ready;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [0:0]sig_btt_cntr0;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_reg0;
  wire sig_calc_error_reg_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire [24:0]\sig_cmd_mst_addr_reg[31] ;
  wire \sig_cmd_mst_length_reg[7] ;
  wire [0:0]sig_cmd_type_req_reg;
  wire sig_data2pcc_cmd_ready;
  wire sig_doing_read_reg;
  wire [0:0]sig_error_sh_reg_reg;
  wire sig_error_sh_reg_reg_0;
  wire sig_input_eof_reg;
  wire sig_input_eof_reg_i_2_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire sig_ld_xfer_reg;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy_reg;
  wire [3:0]sig_muxed_length;
  wire sig_parent_done;
  wire sig_parent_done0;
  wire sig_parent_done_i_1_n_0;
  wire [31:0]sig_pcc2addr_addr;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire [3:0]sig_pcc2data_len;
  wire sig_pcc2data_sequential;
  wire sig_pcc_taking_command;
  wire sig_push_addr_reg1_out;
  wire sig_push_input_reg16_out;
  wire sig_push_status1_out;
  wire sig_push_xfer_reg15_out;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd2llink_strm_tvalid;
  wire sig_rd_addr_valid_reg0;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_reg_full0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2rsc_valid;
  wire sig_rdskid2rdc_tready;
  wire sig_reset_reg;
  wire sig_rsc2rdc_ready;
  wire [6:5]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2cmd_stat_reset;
  wire sig_slast_with_stop;
  wire sig_sm_halt_reg;
  wire sig_sm_pop_input_reg;
  wire sig_status_reg_empty;
  wire sig_strb_reg_out0;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;

  axi_tft_0_axi_master_burst_addr_cntl I_ADDR_CNTL
       (.Q(sig_pcc2addr_addr),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awsize(m_axi_awsize),
        .sig_addr2data_addr_posted(sig_addr2data_addr_posted),
        .sig_addr_reg_empty_reg_0(sig_addr2stat_cmd_fifo_empty),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2addr_cmd_valid(sig_pcc2addr_cmd_valid),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rd_addr_valid_reg0(sig_rd_addr_valid_reg0),
        .sig_strb_reg_out0(sig_strb_reg_out0),
        .\sig_xfer_len_reg_reg[3] (sig_pcc2data_len));
  axi_tft_0_axi_master_burst_pcc I_MSTR_PCC
       (.D(D),
        .E(E),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]_0 (\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] ),
        .Q(sig_pcc2data_len),
        .SR(SR),
        .m_axi_aclk(m_axi_aclk),
        .sig_addr2pcc_cmd_ready(sig_addr2pcc_cmd_ready),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_btt_cntr0(sig_btt_cntr0),
        .sig_calc_error_reg0(sig_calc_error_reg0),
        .sig_calc_error_reg_reg_0(sig_calc_error_reg_i_1_n_0),
        .sig_calc_error_reg_reg_1(sig_calc_error_pushed_i_1_n_0),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .\sig_cmd_mst_addr_reg[31] (\sig_cmd_mst_addr_reg[31] ),
        .sig_cmd_mstrd_req_reg(sig_sm_halt_reg),
        .sig_cmd_mstrd_req_reg_0(sig_input_reg_empty),
        .sig_cmd_type_req_reg(sig_cmd_type_req_reg),
        .sig_data2pcc_cmd_ready(sig_data2pcc_cmd_ready),
        .sig_dqual_reg_empty_reg(I_RD_DATA_CNTL_n_3),
        .sig_input_eof_reg(sig_input_eof_reg),
        .sig_input_eof_reg_reg_0(sig_calc_error_pushed),
        .sig_input_eof_reg_reg_1(sig_input_eof_reg_i_2_n_0),
        .sig_input_reg_empty_reg_0(sig_input_reg_empty_i_1_n_0),
        .sig_last_dbeat_reg(I_MSTR_PCC_n_18),
        .sig_ld_xfer_reg(sig_ld_xfer_reg),
        .sig_ld_xfer_reg_reg_0(sig_xfer_reg_empty_i_1_n_0),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_muxed_length(sig_muxed_length),
        .\sig_next_addr_reg_reg[31] (sig_pcc2addr_addr),
        .sig_parent_done(sig_parent_done),
        .sig_parent_done0(sig_parent_done0),
        .sig_parent_done_reg_0(I_MSTR_PCC_n_30),
        .sig_parent_done_reg_1(I_MSTR_PCC_n_31),
        .sig_parent_done_reg_2(sig_parent_done_i_1_n_0),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2addr_cmd_valid(sig_pcc2addr_cmd_valid),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_push_xfer_reg15_out(sig_push_xfer_reg15_out),
        .sig_rd_sts_reg_full_reg(I_RD_DATA_CNTL_n_2),
        .sig_rst2cmd_stat_reset(sig_rst2cmd_stat_reset),
        .sig_sm_ld_calc1_reg_reg_0(sig_push_input_reg16_out),
        .sig_sm_pop_input_reg(sig_sm_pop_input_reg),
        .sig_strb_reg_out0(sig_strb_reg_out0),
        .sig_xfer_calc_err_reg_reg_0(I_MSTR_PCC_n_6),
        .sig_xfer_cmd_cmplt_reg_reg_0(I_MSTR_PCC_n_29),
        .\sig_xfer_len_reg_reg[0]_0 (I_MSTR_PCC_n_27),
        .sig_xfer_reg_empty(sig_xfer_reg_empty));
  axi_tft_0_axi_master_burst_rddata_cntl I_RD_DATA_CNTL
       (.Q(sig_pcc2data_len),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .sig_addr2data_addr_posted(sig_addr2data_addr_posted),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_data2pcc_cmd_ready(sig_data2pcc_cmd_ready),
        .sig_last_mmap_dbeat_reg_reg_0(I_RD_DATA_CNTL_n_4),
        .sig_m_valid_out_reg(I_RD_DATA_CNTL_n_11),
        .sig_next_eof_reg_reg_0(I_RD_DATA_CNTL_n_2),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_interr_reg_reg(sig_error_sh_reg_reg),
        .sig_rd_sts_reg_empty_reg(I_RD_DATA_CNTL_n_7),
        .sig_rd_sts_reg_full0(sig_rd_sts_reg_full0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rdc2rsc_valid(sig_rdc2rsc_valid),
        .sig_rdskid2rdc_tready(sig_rdskid2rdc_tready),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(m_axi_rready),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_strb_reg_out0(sig_strb_reg_out0),
        .\sig_xfer_len_reg_reg[0] (I_RD_DATA_CNTL_n_3),
        .\sig_xfer_len_reg_reg[3] (I_MSTR_PCC_n_18));
  axi_tft_0_axi_master_burst_rd_status_cntl I_RD_STATUS_CNTLR
       (.m_axi_aclk(m_axi_aclk),
        .md_error(md_error),
        .sig_coelsc_interr_reg_reg(I_RD_DATA_CNTL_n_7),
        .sig_error_sh_reg_reg(sig_error_sh_reg_reg),
        .sig_error_sh_reg_reg_0(sig_error_sh_reg_reg_0),
        .sig_push_status1_out(sig_push_status1_out),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_reg_full0(sig_rd_sts_reg_full0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rdc2rsc_valid(sig_rdc2rsc_valid),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  axi_tft_0_axi_master_burst_skid_buf I_READ_STREAM_SKID_BUF
       (.IP2Bus_MstRd_dst_rdy_reg(IP2Bus_MstRd_dst_rdy_reg),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .p_0_in2_in(p_0_in2_in),
        .sig_coelsc_reg_full_reg(I_RD_DATA_CNTL_n_11),
        .sig_coelsc_reg_full_reg_0(I_RD_DATA_CNTL_n_4),
        .sig_llink_busy_reg(sig_llink_busy_reg),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd2llink_strm_tvalid(sig_rd2llink_strm_tvalid),
        .sig_rdskid2rdc_tready(sig_rdskid2rdc_tready),
        .sig_reset_reg(sig_reset_reg),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  axi_tft_0_axi_master_burst_skid2mm_buf I_WRITE_MMAP_SKID_BUF
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .p_0_in3_in(p_0_in3_in),
        .sig_rdwr_reset_reg_reg(I_WR_STATUS_CNTLR_n_3),
        .sig_reset_reg(sig_reset_reg),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  axi_tft_0_axi_master_burst_skid_buf_7 I_WRITE_STRM_SKID_BUF
       (.m_axi_aclk(m_axi_aclk),
        .p_0_in2_in(p_0_in2_in_0),
        .sig_init_reg_reg(I_WR_STATUS_CNTLR_n_1),
        .sig_reset_reg(sig_reset_reg),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  axi_tft_0_axi_master_burst_wr_status_cntl I_WR_STATUS_CNTLR
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .p_0_in2_in(p_0_in2_in_0),
        .p_0_in3_in(p_0_in3_in),
        .sig_m_valid_out_reg(I_WR_STATUS_CNTLR_n_1),
        .sig_reset_reg(sig_reset_reg),
        .sig_s_ready_out_reg(I_WR_STATUS_CNTLR_n_3),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(I_MSTR_PCC_n_6),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    sig_calc_error_reg_i_1
       (.I0(sig_muxed_length[2]),
        .I1(sig_muxed_length[0]),
        .I2(sig_muxed_length[3]),
        .I3(\sig_cmd_mst_length_reg[7] ),
        .I4(sig_calc_error_reg0),
        .I5(I_MSTR_PCC_n_6),
        .O(sig_calc_error_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2all_doing_read),
        .Q(sig_doing_read_reg),
        .R(sig_strb_reg_out0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_input_eof_reg_i_2
       (.I0(sig_push_input_reg16_out),
        .I1(sig_input_eof_reg),
        .O(sig_input_eof_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    sig_input_reg_empty_i_1
       (.I0(sig_push_input_reg16_out),
        .I1(sig_input_reg_empty),
        .I2(sig_strb_reg_out0),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_calc_error_pushed),
        .O(sig_input_reg_empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000E2E2EE22)) 
    sig_parent_done_i_1
       (.I0(sig_parent_done),
        .I1(sig_push_xfer_reg15_out),
        .I2(I_MSTR_PCC_n_31),
        .I3(I_MSTR_PCC_n_30),
        .I4(I_MSTR_PCC_n_29),
        .I5(sig_parent_done0),
        .O(sig_parent_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF47)) 
    sig_xfer_reg_empty_i_1
       (.I0(sig_ld_xfer_reg),
        .I1(sig_xfer_reg_empty),
        .I2(I_MSTR_PCC_n_27),
        .I3(sig_strb_reg_out0),
        .O(sig_xfer_reg_empty_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rddata_cntl" *) 
module axi_tft_0_axi_master_burst_rddata_cntl
   (sig_data2pcc_cmd_ready,
    sig_rdc2rsc_valid,
    sig_next_eof_reg_reg_0,
    \sig_xfer_len_reg_reg[0] ,
    sig_last_mmap_dbeat_reg_reg_0,
    sig_slast_with_stop,
    sig_rd_sts_reg_full0,
    sig_rd_sts_reg_empty_reg,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_decerr_reg0,
    sig_rd_sts_slverr_reg0,
    sig_m_valid_out_reg,
    sig_pcc2data_cmd_cmplt,
    m_axi_aclk,
    sig_pcc2data_calc_error,
    sig_strb_reg_out0,
    sig_pcc2data_sequential,
    sig_pcc2data_eof,
    sig_s_ready_out_reg,
    m_axi_rvalid,
    m_axi_rlast,
    Q,
    sig_rdskid2rdc_tready,
    sig_rsc2stat_status_valid,
    sig_status_reg_empty,
    sig_pcc2data_cmd_valid,
    sig_cmd2all_doing_read,
    m_axi_rresp,
    sig_rd_sts_interr_reg_reg,
    sig_rsc2stat_status,
    \sig_xfer_len_reg_reg[3] ,
    sig_rsc2rdc_ready,
    sig_addr2data_addr_posted);
  output sig_data2pcc_cmd_ready;
  output sig_rdc2rsc_valid;
  output sig_next_eof_reg_reg_0;
  output \sig_xfer_len_reg_reg[0] ;
  output sig_last_mmap_dbeat_reg_reg_0;
  output sig_slast_with_stop;
  output sig_rd_sts_reg_full0;
  output sig_rd_sts_reg_empty_reg;
  output sig_rd_sts_interr_reg0;
  output sig_rd_sts_decerr_reg0;
  output sig_rd_sts_slverr_reg0;
  output sig_m_valid_out_reg;
  input sig_pcc2data_cmd_cmplt;
  input m_axi_aclk;
  input sig_pcc2data_calc_error;
  input sig_strb_reg_out0;
  input sig_pcc2data_sequential;
  input sig_pcc2data_eof;
  input sig_s_ready_out_reg;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [3:0]Q;
  input sig_rdskid2rdc_tready;
  input sig_rsc2stat_status_valid;
  input sig_status_reg_empty;
  input sig_pcc2data_cmd_valid;
  input sig_cmd2all_doing_read;
  input [1:0]m_axi_rresp;
  input [0:0]sig_rd_sts_interr_reg_reg;
  input [1:0]sig_rsc2stat_status;
  input \sig_xfer_len_reg_reg[3] ;
  input sig_rsc2rdc_ready;
  input sig_addr2data_addr_posted;

  wire [3:0]Q;
  wire m_axi_aclk;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [7:0]p_0_in__1;
  wire sig_addr2data_addr_posted;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_clr_dqual_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd_cmplt_last_dbeat;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire sig_data2pcc_cmd_ready;
  wire \sig_dbeat_cntr[7]_i_1_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire [7:0]sig_dbeat_cntr_reg__0;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_i_1_n_0;
  wire sig_dqual_reg_full;
  wire sig_dqual_reg_full_i_1_n_0;
  wire sig_last_dbeat_i_1_n_0;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_last_mmap_dbeat_reg_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_i_1_n_0;
  wire sig_m_valid_out_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_cmd_cmplt_reg_i_3_n_0;
  wire sig_next_cmd_cmplt_reg_i_5_n_0;
  wire sig_next_eof_reg;
  wire sig_next_eof_reg_reg_0;
  wire sig_next_sequential_reg;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire sig_push_coelsc_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire [0:0]sig_rd_sts_interr_reg_reg;
  wire sig_rd_sts_reg_empty_reg;
  wire sig_rd_sts_reg_full0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rdc2rsc_calc_err;
  wire sig_rdc2rsc_decerr;
  wire sig_rdc2rsc_slverr;
  wire sig_rdc2rsc_valid;
  wire sig_rdskid2rdc_tready;
  wire sig_rsc2rdc_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_slast_with_stop;
  wire sig_status_reg_empty;
  wire sig_strb_reg_out0;
  wire \sig_xfer_len_reg_reg[0] ;
  wire \sig_xfer_len_reg_reg[3] ;

  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFFF)) 
    m_axi_rready_INST_0_i_1
       (.I0(sig_rdc2rsc_valid),
        .I1(sig_next_calc_error_reg),
        .I2(sig_dqual_reg_full),
        .I3(sig_addr_posted_cntr[1]),
        .I4(sig_addr_posted_cntr[2]),
        .I5(sig_addr_posted_cntr[0]),
        .O(sig_last_mmap_dbeat_reg_reg_0));
  LUT6 #(
    .INIT(64'hF08F0EF00EF00EF0)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_addr2data_addr_posted),
        .I5(sig_cmd2all_doing_read),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAADAA4AAA4AAA4AA)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_addr2data_addr_posted),
        .I5(sig_cmd2all_doing_read),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCECC8CCC8CCC8CC)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_addr2data_addr_posted),
        .I5(sig_cmd2all_doing_read),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(sig_strb_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(sig_rdc2rsc_decerr),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_rresp[1]),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_rdc2rsc_decerr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_rdc2rsc_calc_err),
        .I1(sig_next_calc_error_reg),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_rdc2rsc_calc_err),
        .R(sig_coelsc_tag_reg0));
  LUT6 #(
    .INIT(64'hFF15FF00FF00FF00)) 
    sig_coelsc_reg_full_i_1
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .I3(sig_strb_reg_out0),
        .I4(sig_rsc2rdc_ready),
        .I5(sig_rdc2rsc_valid),
        .O(sig_coelsc_tag_reg0));
  LUT3 #(
    .INIT(8'hEA)) 
    sig_coelsc_reg_full_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_next_calc_error_reg),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_coelsc_reg_full_i_3
       (.I0(sig_next_calc_error_reg),
        .I1(m_axi_rlast),
        .I2(m_axi_rvalid),
        .I3(sig_next_cmd_cmplt_reg),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_rdc2rsc_valid),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(sig_rdc2rsc_slverr),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_rresp[1]),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_rdc2rsc_slverr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(Q[0]),
        .I1(sig_data2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(Q[1]),
        .I1(sig_data2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .O(p_0_in__1[1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(Q[2]),
        .I1(sig_data2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .I3(sig_dbeat_cntr_reg__0[1]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(Q[3]),
        .I1(sig_data2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[3]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[1]),
        .I5(sig_dbeat_cntr_reg__0[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA9)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_dbeat_cntr_reg__0[4]),
        .I1(sig_dbeat_cntr_reg__0[2]),
        .I2(sig_dbeat_cntr_reg__0[3]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[1]),
        .I5(sig_data2pcc_cmd_ready),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E1)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(sig_dbeat_cntr_reg__0[4]),
        .I1(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I2(sig_dbeat_cntr_reg__0[5]),
        .I3(sig_data2pcc_cmd_ready),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I1(sig_dbeat_cntr_reg__0[5]),
        .I2(sig_dbeat_cntr_reg__0[4]),
        .I3(sig_dbeat_cntr_reg__0[6]),
        .I4(sig_data2pcc_cmd_ready),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I1(sig_data2pcc_cmd_ready),
        .O(\sig_dbeat_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_dbeat_cntr_reg__0[4]),
        .I1(sig_dbeat_cntr_reg__0[5]),
        .I2(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I3(sig_dbeat_cntr_reg__0[6]),
        .I4(sig_dbeat_cntr_reg__0[7]),
        .I5(sig_data2pcc_cmd_ready),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_dbeat_cntr_reg__0[7]),
        .I2(sig_dbeat_cntr_reg__0[4]),
        .I3(sig_dbeat_cntr_reg__0[5]),
        .I4(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I5(sig_dbeat_cntr_reg__0[6]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr_reg__0[1]),
        .I1(sig_dbeat_cntr_reg__0[0]),
        .I2(sig_dbeat_cntr_reg__0[3]),
        .I3(sig_dbeat_cntr_reg__0[2]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(sig_dbeat_cntr_reg__0[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(sig_dbeat_cntr_reg__0[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(sig_dbeat_cntr_reg__0[2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(sig_dbeat_cntr_reg__0[3]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(sig_dbeat_cntr_reg__0[4]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(sig_dbeat_cntr_reg__0[5]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(sig_dbeat_cntr_reg__0[6]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(sig_dbeat_cntr_reg__0[7]),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    sig_dqual_reg_empty_i_1
       (.I0(sig_dqual_reg_empty),
        .I1(m_axi_rlast),
        .I2(m_axi_rvalid),
        .I3(sig_s_ready_out_reg),
        .I4(sig_data2pcc_cmd_ready),
        .I5(sig_strb_reg_out0),
        .O(sig_dqual_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_dqual_reg_empty_i_1_n_0),
        .Q(sig_dqual_reg_empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFF2AAA)) 
    sig_dqual_reg_full_i_1
       (.I0(sig_dqual_reg_full),
        .I1(m_axi_rlast),
        .I2(m_axi_rvalid),
        .I3(sig_s_ready_out_reg),
        .I4(sig_data2pcc_cmd_ready),
        .I5(sig_strb_reg_out0),
        .O(sig_dqual_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_dqual_reg_full_i_1_n_0),
        .Q(sig_dqual_reg_full),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CACF0000CAC0)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(\sig_xfer_len_reg_reg[3] ),
        .I2(sig_data2pcc_cmd_ready),
        .I3(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I4(sig_strb_reg_out0),
        .I5(sig_last_dbeat_reg_n_0),
        .O(sig_last_dbeat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    sig_last_dbeat_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_last_dbeat_i_4_n_0),
        .I2(sig_dbeat_cntr_reg__0[7]),
        .I3(sig_dbeat_cntr_reg__0[6]),
        .I4(sig_dbeat_cntr_reg__0[0]),
        .I5(sig_dbeat_cntr_reg__0[1]),
        .O(sig_last_dbeat_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_4
       (.I0(sig_dbeat_cntr_reg__0[3]),
        .I1(sig_dbeat_cntr_reg__0[2]),
        .I2(sig_dbeat_cntr_reg__0[5]),
        .I3(sig_dbeat_cntr_reg__0[4]),
        .O(sig_last_dbeat_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_dbeat_i_1_n_0),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(sig_last_mmap_dbeat_reg_reg_0),
        .I1(sig_rdskid2rdc_tready),
        .I2(m_axi_rvalid),
        .I3(m_axi_rlast),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(sig_strb_reg_out0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_last_skid_reg_i_1
       (.I0(sig_next_eof_reg),
        .I1(m_axi_rvalid),
        .I2(m_axi_rlast),
        .O(sig_slast_with_stop));
  LUT3 #(
    .INIT(8'h02)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_data2pcc_cmd_ready),
        .I1(sig_strb_reg_out0),
        .I2(sig_ld_new_cmd_reg),
        .O(sig_ld_new_cmd_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_new_cmd_reg_i_1_n_0),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_data2pcc_cmd_ready),
        .D(sig_pcc2data_calc_error),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_strb_reg_out0),
        .I1(sig_data2pcc_cmd_ready),
        .I2(sig_s_ready_out_reg),
        .I3(m_axi_rvalid),
        .I4(m_axi_rlast),
        .O(sig_clr_dqual_reg));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_next_sequential_reg),
        .I3(sig_dqual_reg_empty),
        .I4(sig_next_eof_reg_reg_0),
        .O(sig_data2pcc_cmd_ready));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(sig_last_mmap_dbeat_reg_reg_0),
        .I1(sig_rdskid2rdc_tready),
        .I2(m_axi_rvalid),
        .O(sig_next_cmd_cmplt_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFAEFFFFFFFFFF)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_next_cmd_cmplt_reg_i_5_n_0),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_status_reg_empty),
        .I3(sig_pcc2data_cmd_valid),
        .I4(sig_next_calc_error_reg),
        .I5(sig_cmd2all_doing_read),
        .O(sig_next_eof_reg_reg_0));
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(sig_next_cmd_cmplt_reg_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_data2pcc_cmd_ready),
        .D(sig_pcc2data_cmd_cmplt),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_data2pcc_cmd_ready),
        .D(sig_pcc2data_eof),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_data2pcc_cmd_ready),
        .D(sig_pcc2data_sequential),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_rdc2rsc_decerr),
        .I1(sig_rsc2stat_status[0]),
        .O(sig_rd_sts_decerr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rdc2rsc_calc_err),
        .I1(sig_rd_sts_interr_reg_reg),
        .O(sig_rd_sts_interr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sig_rd_sts_reg_empty_i_1
       (.I0(sig_rdc2rsc_calc_err),
        .I1(sig_rdc2rsc_valid),
        .O(sig_rd_sts_reg_empty_reg));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_reg_full_i_3
       (.I0(sig_rdc2rsc_valid),
        .I1(sig_rdc2rsc_calc_err),
        .O(sig_rd_sts_reg_full0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_rdc2rsc_slverr),
        .I1(sig_rsc2stat_status[1]),
        .O(sig_rd_sts_slverr_reg0));
  LUT2 #(
    .INIT(4'hB)) 
    sig_s_ready_dup_i_3
       (.I0(sig_last_mmap_dbeat_reg_reg_0),
        .I1(m_axi_rvalid),
        .O(sig_m_valid_out_reg));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \sig_xfer_addr_reg[31]_i_5 
       (.I0(sig_dqual_reg_empty),
        .I1(sig_next_sequential_reg),
        .I2(sig_last_dbeat_reg_n_0),
        .I3(sig_last_mmap_dbeat_reg_reg_0),
        .I4(sig_rdskid2rdc_tready),
        .I5(m_axi_rvalid),
        .O(\sig_xfer_len_reg_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_reset" *) 
module axi_tft_0_axi_master_burst_reset
   (sig_rst2cmd_stat_reset,
    sig_strb_reg_out0,
    sig_allow_wr_requests0,
    m_axi_aclk,
    scndry_out,
    m_axi_aresetn);
  output sig_rst2cmd_stat_reset;
  output sig_strb_reg_out0;
  output sig_allow_wr_requests0;
  input m_axi_aclk;
  input scndry_out;
  input m_axi_aresetn;

  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire scndry_out;
  wire sig_axi_por2rst;
  wire sig_axi_por2rst_out;
  wire sig_axi_por2rst_out_i_2_n_0;
  wire sig_axi_por_reg1;
  wire sig_axi_por_reg2;
  wire sig_axi_por_reg3;
  wire sig_axi_por_reg4;
  wire sig_axi_por_reg5;
  wire sig_axi_por_reg6;
  wire sig_axi_por_reg7;
  wire sig_axi_por_reg8;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_cmd_reset_reg;
  wire sig_cmd_reset_reg_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_llink_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_rdwr_reset_reg;

  assign sig_allow_wr_requests0 = sig_llink_reset_reg;
  assign sig_rst2cmd_stat_reset = sig_cmd_reset_reg;
  assign sig_strb_reg_out0 = sig_rdwr_reset_reg;
  LUT3 #(
    .INIT(8'hDF)) 
    sig_axi_por2rst_out_i_1
       (.I0(sig_axi_por_reg3),
        .I1(sig_axi_por2rst_out_i_2_n_0),
        .I2(sig_axi_por_reg2),
        .O(sig_axi_por2rst));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    sig_axi_por2rst_out_i_2
       (.I0(sig_axi_por_reg5),
        .I1(sig_axi_por_reg4),
        .I2(sig_axi_por_reg7),
        .I3(sig_axi_por_reg6),
        .I4(sig_axi_por_reg1),
        .I5(sig_axi_por_reg8),
        .O(sig_axi_por2rst_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por2rst_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por2rst),
        .Q(sig_axi_por2rst_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axi_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg2_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg1),
        .Q(sig_axi_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg3_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg2),
        .Q(sig_axi_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg4_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg3),
        .Q(sig_axi_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg5_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg4),
        .Q(sig_axi_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg6_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg5),
        .Q(sig_axi_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg7_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg6),
        .Q(sig_axi_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg8_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg7),
        .Q(sig_axi_por_reg8),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBF)) 
    sig_cmd_reset_reg_i_1
       (.I0(sig_axi_por2rst_out),
        .I1(scndry_out),
        .I2(m_axi_aresetn),
        .O(sig_cmd_reset_reg_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_cmd_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_llink_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_rdwr_reset_reg_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_rdwr_reset_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid2mm_buf" *) 
module axi_tft_0_axi_master_burst_skid2mm_buf
   (p_0_in3_in,
    m_axi_wvalid,
    m_axi_wstrb,
    sig_rdwr_reset_reg_reg,
    m_axi_aclk,
    m_axi_wready,
    sig_reset_reg,
    sig_strb_reg_out0);
  output p_0_in3_in;
  output m_axi_wvalid;
  output [7:0]m_axi_wstrb;
  input sig_rdwr_reset_reg_reg;
  input m_axi_aclk;
  input m_axi_wready;
  input sig_reset_reg;
  input sig_strb_reg_out0;

  wire m_axi_aclk;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire sig_data_reg_out_en;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_rdwr_reset_reg_reg;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_strb_reg_out0;
  wire \sig_strb_reg_out[0]_i_1_n_0 ;
  wire \sig_strb_reg_out[1]_i_1_n_0 ;
  wire \sig_strb_reg_out[2]_i_1_n_0 ;
  wire \sig_strb_reg_out[3]_i_1_n_0 ;
  wire \sig_strb_reg_out[4]_i_1_n_0 ;
  wire \sig_strb_reg_out[5]_i_1_n_0 ;
  wire \sig_strb_reg_out[6]_i_1_n_0 ;
  wire \sig_strb_reg_out[7]_i_2_n_0 ;
  wire \sig_strb_skid_reg_reg_n_0_[0] ;
  wire \sig_strb_skid_reg_reg_n_0_[1] ;
  wire \sig_strb_skid_reg_reg_n_0_[2] ;
  wire \sig_strb_skid_reg_reg_n_0_[3] ;
  wire \sig_strb_skid_reg_reg_n_0_[4] ;
  wire \sig_strb_skid_reg_reg_n_0_[5] ;
  wire \sig_strb_skid_reg_reg_n_0_[6] ;
  wire \sig_strb_skid_reg_reg_n_0_[7] ;

  assign m_axi_wvalid = sig_m_valid_out;
  assign p_0_in3_in = sig_s_ready_dup;
  LUT5 #(
    .INIT(32'h00101010)) 
    sig_m_valid_dup_i_1__0
       (.I0(sig_reset_reg),
        .I1(sig_strb_reg_out0),
        .I2(sig_m_valid_dup),
        .I3(sig_s_ready_dup),
        .I4(m_axi_wready),
        .O(sig_m_valid_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr_reset_reg_reg),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr_reset_reg_reg),
        .Q(sig_s_ready_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[0] ),
        .O(\sig_strb_reg_out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[1] ),
        .O(\sig_strb_reg_out[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[2] ),
        .O(\sig_strb_reg_out[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[3] ),
        .O(\sig_strb_reg_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[4]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[4] ),
        .O(\sig_strb_reg_out[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[5]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[5] ),
        .O(\sig_strb_reg_out[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[6]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[6] ),
        .O(\sig_strb_reg_out[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_strb_reg_out[7]_i_1 
       (.I0(m_axi_wready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_strb_reg_out[7]_i_2 
       (.I0(sig_s_ready_dup),
        .I1(\sig_strb_skid_reg_reg_n_0_[7] ),
        .O(\sig_strb_reg_out[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[0]_i_1_n_0 ),
        .Q(m_axi_wstrb[0]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[1]_i_1_n_0 ),
        .Q(m_axi_wstrb[1]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[2]_i_1_n_0 ),
        .Q(m_axi_wstrb[2]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[3]_i_1_n_0 ),
        .Q(m_axi_wstrb[3]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[4]_i_1_n_0 ),
        .Q(m_axi_wstrb[4]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[5]_i_1_n_0 ),
        .Q(m_axi_wstrb[5]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[6]_i_1_n_0 ),
        .Q(m_axi_wstrb[6]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_reg_out[7]_i_2_n_0 ),
        .Q(m_axi_wstrb[7]),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[0] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[1] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[2] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[3] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[4] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[5] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[6] ),
        .R(sig_strb_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(\sig_strb_skid_reg_reg_n_0_[7] ),
        .R(sig_strb_reg_out0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module axi_tft_0_axi_master_burst_skid_buf
   (p_0_in2_in,
    sig_rdskid2rdc_tready,
    sig_rd2llink_strm_tvalid,
    sig_rd2llink_strm_tlast,
    m_axi_rready,
    Q,
    m_axi_aclk,
    sig_strb_reg_out0,
    sig_slast_with_stop,
    sig_llink_busy_reg,
    sig_coelsc_reg_full_reg,
    sig_reset_reg,
    sig_coelsc_reg_full_reg_0,
    m_axi_rdata,
    IP2Bus_MstRd_dst_rdy_reg);
  output p_0_in2_in;
  output sig_rdskid2rdc_tready;
  output sig_rd2llink_strm_tvalid;
  output sig_rd2llink_strm_tlast;
  output m_axi_rready;
  output [47:0]Q;
  input m_axi_aclk;
  input sig_strb_reg_out0;
  input sig_slast_with_stop;
  input sig_llink_busy_reg;
  input sig_coelsc_reg_full_reg;
  input sig_reset_reg;
  input sig_coelsc_reg_full_reg_0;
  input [47:0]m_axi_rdata;
  input [0:0]IP2Bus_MstRd_dst_rdy_reg;

  wire [0:0]IP2Bus_MstRd_dst_rdy_reg;
  wire [47:0]Q;
  wire m_axi_aclk;
  wire [47:0]m_axi_rdata;
  wire m_axi_rready;
  wire sig_coelsc_reg_full_reg;
  wire sig_coelsc_reg_full_reg_0;
  wire [55:0]sig_data_skid_mux_out;
  wire [55:0]sig_data_skid_reg;
  wire sig_last_reg_out_i_1_n_0;
  wire sig_last_skid_reg;
  wire sig_llink_busy_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_rd2llink_strm_tlast;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_slast_with_stop;
  wire sig_strb_reg_out0;

  assign p_0_in2_in = sig_m_valid_dup;
  assign sig_rd2llink_strm_tvalid = sig_m_valid_out;
  assign sig_rdskid2rdc_tready = sig_s_ready_out;
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_rready_INST_0
       (.I0(sig_s_ready_out),
        .I1(sig_coelsc_reg_full_reg_0),
        .O(m_axi_rready));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[32]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[32]),
        .O(sig_data_skid_mux_out[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[33]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[33]),
        .O(sig_data_skid_mux_out[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[34]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[34]),
        .O(sig_data_skid_mux_out[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[35]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[35]),
        .O(sig_data_skid_mux_out[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[36]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[36]),
        .O(sig_data_skid_mux_out[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[37]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[37]),
        .O(sig_data_skid_mux_out[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[38]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[38]),
        .O(sig_data_skid_mux_out[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[39]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[39]),
        .O(sig_data_skid_mux_out[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[40]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[40]),
        .O(sig_data_skid_mux_out[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[41]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[41]),
        .O(sig_data_skid_mux_out[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[42]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[42]),
        .O(sig_data_skid_mux_out[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[43]_i_1 
       (.I0(m_axi_rdata[35]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[43]),
        .O(sig_data_skid_mux_out[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[44]_i_1 
       (.I0(m_axi_rdata[36]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[44]),
        .O(sig_data_skid_mux_out[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[45]_i_1 
       (.I0(m_axi_rdata[37]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[45]),
        .O(sig_data_skid_mux_out[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[46]_i_1 
       (.I0(m_axi_rdata[38]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[46]),
        .O(sig_data_skid_mux_out[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[47]_i_1 
       (.I0(m_axi_rdata[39]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[47]),
        .O(sig_data_skid_mux_out[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[48]_i_1 
       (.I0(m_axi_rdata[40]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[48]),
        .O(sig_data_skid_mux_out[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[49]_i_1 
       (.I0(m_axi_rdata[41]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[49]),
        .O(sig_data_skid_mux_out[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[50]_i_1 
       (.I0(m_axi_rdata[42]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[50]),
        .O(sig_data_skid_mux_out[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[51]_i_1 
       (.I0(m_axi_rdata[43]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[51]),
        .O(sig_data_skid_mux_out[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[52]_i_1 
       (.I0(m_axi_rdata[44]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[52]),
        .O(sig_data_skid_mux_out[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[53]_i_1 
       (.I0(m_axi_rdata[45]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[53]),
        .O(sig_data_skid_mux_out[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[54]_i_1 
       (.I0(m_axi_rdata[46]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[54]),
        .O(sig_data_skid_mux_out[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[55]_i_2 
       (.I0(m_axi_rdata[47]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[55]),
        .O(sig_data_skid_mux_out[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[32] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[32]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[33] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[33]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[34] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[34]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[35] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[35]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[36] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[36]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[37] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[37]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[38] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[38]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[39] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[39]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[40] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[40]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[41] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[41]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[42] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[42]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[43] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[43]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[44] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[44]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[45] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[45]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[46] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[46]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[47] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[47]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[48] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[48]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[49] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[49]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[50] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[50]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[51] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[51]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[52] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[52]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[53] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[53]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[54] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[54]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[55] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[55]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_aclk),
        .CE(IP2Bus_MstRd_dst_rdy_reg),
        .D(sig_data_skid_mux_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[32] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[24]),
        .Q(sig_data_skid_reg[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[33] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[25]),
        .Q(sig_data_skid_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[34] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[26]),
        .Q(sig_data_skid_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[35] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[27]),
        .Q(sig_data_skid_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[36] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[28]),
        .Q(sig_data_skid_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[37] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[29]),
        .Q(sig_data_skid_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[38] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[30]),
        .Q(sig_data_skid_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[39] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[31]),
        .Q(sig_data_skid_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[40] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[32]),
        .Q(sig_data_skid_reg[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[41] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[33]),
        .Q(sig_data_skid_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[42] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[34]),
        .Q(sig_data_skid_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[43] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[35]),
        .Q(sig_data_skid_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[44] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[36]),
        .Q(sig_data_skid_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[45] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[37]),
        .Q(sig_data_skid_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[46] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[38]),
        .Q(sig_data_skid_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[47] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[39]),
        .Q(sig_data_skid_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[48] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[40]),
        .Q(sig_data_skid_reg[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[49] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[41]),
        .Q(sig_data_skid_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[50] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[42]),
        .Q(sig_data_skid_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[51] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[43]),
        .Q(sig_data_skid_reg[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[52] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[44]),
        .Q(sig_data_skid_reg[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[53] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[45]),
        .Q(sig_data_skid_reg[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[54] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[46]),
        .Q(sig_data_skid_reg[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[55] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[47]),
        .Q(sig_data_skid_reg[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_rdata[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    sig_last_reg_out_i_1
       (.I0(sig_rd2llink_strm_tlast),
        .I1(IP2Bus_MstRd_dst_rdy_reg),
        .I2(sig_last_skid_reg),
        .I3(sig_s_ready_dup),
        .I4(sig_slast_with_stop),
        .I5(sig_strb_reg_out0),
        .O(sig_last_reg_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_last_reg_out_i_1_n_0),
        .Q(sig_rd2llink_strm_tlast),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_slast_with_stop),
        .Q(sig_last_skid_reg),
        .R(sig_strb_reg_out0));
  LUT6 #(
    .INIT(64'h00000000000070FF)) 
    sig_m_valid_dup_i_1
       (.I0(sig_llink_busy_reg),
        .I1(sig_s_ready_dup),
        .I2(sig_m_valid_dup),
        .I3(sig_coelsc_reg_full_reg),
        .I4(sig_reset_reg),
        .I5(sig_strb_reg_out0),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEEEFEFE)) 
    sig_s_ready_dup_i_1
       (.I0(sig_reset_reg),
        .I1(sig_llink_busy_reg),
        .I2(sig_s_ready_dup),
        .I3(sig_coelsc_reg_full_reg),
        .I4(sig_m_valid_dup),
        .I5(sig_strb_reg_out0),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module axi_tft_0_axi_master_burst_skid_buf_7
   (p_0_in2_in,
    m_axi_aclk,
    sig_init_reg_reg,
    sig_reset_reg,
    sig_strb_reg_out0);
  output p_0_in2_in;
  input m_axi_aclk;
  input sig_init_reg_reg;
  input sig_reset_reg;
  input sig_strb_reg_out0;

  wire m_axi_aclk;
  wire sig_init_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_strb_reg_out0;

  assign p_0_in2_in = sig_m_valid_dup;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    sig_s_ready_dup_i_1__0
       (.I0(sig_s_ready_dup),
        .I1(sig_reset_reg),
        .I2(sig_strb_reg_out0),
        .O(sig_s_ready_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_wr_status_cntl" *) 
module axi_tft_0_axi_master_burst_wr_status_cntl
   (sig_reset_reg,
    sig_m_valid_out_reg,
    m_axi_bready,
    sig_s_ready_out_reg,
    sig_strb_reg_out0,
    m_axi_aclk,
    m_axi_bvalid,
    p_0_in2_in,
    m_axi_wready,
    p_0_in3_in);
  output sig_reset_reg;
  output sig_m_valid_out_reg;
  output m_axi_bready;
  output sig_s_ready_out_reg;
  input sig_strb_reg_out0;
  input m_axi_aclk;
  input m_axi_bvalid;
  input p_0_in2_in;
  input m_axi_wready;
  input p_0_in3_in;

  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire sig_m_valid_out_reg;
  wire sig_reset_reg;
  wire sig_s_ready_out_reg;
  wire sig_strb_reg_out0;

  axi_tft_0_axi_master_burst_fifo I_WRESP_STATUS_FIFO
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .p_0_in2_in(p_0_in2_in),
        .p_0_in3_in(p_0_in3_in),
        .sig_init_reg2_reg_0(sig_reset_reg),
        .sig_m_valid_out_reg(sig_m_valid_out_reg),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_strb_reg_out0(sig_strb_reg_out0));
endmodule

(* C_DEFAULT_TFT_BASE_ADDR = "64'b0000000000000000000000000000000011110000000000000000000000000000" *) (* C_EN_I2C_INTF = "0" *) (* C_FAMILY = "zynq" *) 
(* C_I2C_SLAVE_ADDR = "8'b01110110" *) (* C_MAX_BURST_LEN = "16" *) (* C_M_AXI_ADDR_WIDTH = "32" *) 
(* C_M_AXI_DATA_WIDTH = "64" *) (* C_S_AXI_ADDR_WIDTH = "3" *) (* C_TFT_INTERFACE = "0" *) 
(* ORIG_REF_NAME = "axi_tft" *) (* downgradeipidentifiedwarnings = "yes" *) 
module axi_tft_0_axi_tft
   (s_axi_aclk,
    s_axi_aresetn,
    m_axi_aclk,
    m_axi_aresetn,
    md_error,
    ip2intc_irpt,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sys_tft_clk,
    tft_hsync,
    tft_vsync,
    tft_de,
    tft_dps,
    tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_dvi_clk_p,
    tft_dvi_clk_n,
    tft_dvi_data,
    tft_iic_scl_i,
    tft_iic_scl_o,
    tft_iic_scl_t,
    tft_iic_sda_i,
    tft_iic_sda_o,
    tft_iic_sda_t);
  (* max_fanout = "10000" *) (* sigis = "CLK" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "RST" *) input s_axi_aresetn;
  (* max_fanout = "10000" *) (* sigis = "CLK" *) input m_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "RST" *) input m_axi_aresetn;
  output md_error;
  (* sigis = "INTR_EDGE_RISING" *) output ip2intc_irpt;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "CLK" *) input sys_tft_clk;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  output tft_dps;
  output tft_vga_clk;
  output [7:0]tft_vga_r;
  output [7:0]tft_vga_g;
  output [7:0]tft_vga_b;
  output tft_dvi_clk_p;
  output tft_dvi_clk_n;
  output [11:0]tft_dvi_data;
  input tft_iic_scl_i;
  output tft_iic_scl_o;
  output tft_iic_scl_t;
  input tft_iic_sda_i;
  output tft_iic_sda_o;
  output tft_iic_sda_t;

  wire \<const0> ;
  wire \<const1> ;
  wire AXI_LITE_IPIF_I_n_34;
  wire AXI_LITE_IPIF_I_n_36;
  wire AXI_LITE_IPIF_I_n_37;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_40;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_42;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_45;
  wire AXI_LITE_IPIF_I_n_46;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_MASTER_BURST_I_n_11;
  wire [8:63]Bus2IP_MstRd_d;
  wire [30:1]IP2Bus_Data;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_Mst_Type;
  wire \I_CMD_STATUS_MODULE/sig_cmd_empty_reg ;
  wire \I_CMD_STATUS_MODULE/sig_push_cmd_reg ;
  wire \I_RD_LLINK_ADAPTER/sig_rd_discontinue ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ;
  wire \SLAVE_REG_U6/TFT_base_addr0 ;
  wire \SLAVE_REG_U6/TFT_iic_reg_addr0 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_d1 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_d2 ;
  wire \SLAVE_REG_U6/bus2ip_rdce_or ;
  wire \SLAVE_REG_U6/bus2ip_wrce_d1 ;
  wire \SLAVE_REG_U6/bus2ip_wrce_d2 ;
  wire \SLAVE_REG_U6/bus2ip_wrce_or ;
  wire TFT_CTRL_I_n_45;
  wire TFT_CTRL_I_n_71;
  wire TFT_CTRL_I_n_72;
  wire TFT_CTRL_I_n_73;
  wire TFT_CTRL_I_n_74;
  wire TFT_CTRL_I_n_75;
  wire TFT_CTRL_I_n_76;
  wire TFT_CTRL_I_n_77;
  wire TFT_CTRL_I_n_78;
  wire TFT_CTRL_I_n_79;
  wire TFT_CTRL_I_n_80;
  wire TFT_CTRL_I_n_81;
  wire TFT_CTRL_I_n_82;
  wire TFT_CTRL_I_n_83;
  wire TFT_CTRL_I_n_84;
  wire TFT_CTRL_I_n_85;
  wire TFT_CTRL_I_n_86;
  wire TFT_CTRL_I_n_87;
  wire TFT_CTRL_I_n_88;
  wire TFT_CTRL_I_n_89;
  wire TFT_CTRL_I_n_90;
  wire TFT_CTRL_I_n_91;
  wire TFT_CTRL_I_n_92;
  wire TFT_CTRL_I_n_93;
  wire TFT_CTRL_I_n_94;
  wire TFT_CTRL_I_n_95;
  wire TFT_CTRL_I_n_96;
  wire TFT_CTRL_I_n_97;
  wire [0:7]TFT_iic_reg_addr;
  wire [0:6]TFT_iic_reg_data;
  wire TFT_iic_xfer;
  wire TFT_status_reg;
  wire bus2ip_mreset;
  wire bus2ip_mreset_i_1_n_0;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire bus2ip_sreset;
  wire bus2ip_sreset_i_1_n_0;
  wire eof_n;
  wire eof_pulse;
  wire [0:24]ip2bus_mst_addr;
  wire ip2bus_mstrd_req;
  wire ip2intc_irpt;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [0:0]\^m_axi_awburst ;
  wire [3:0]\^m_axi_awlen ;
  wire m_axi_awready;
  wire [1:0]\^m_axi_awsize ;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire md_error;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sig_llink2cmd_rd_busy;
  wire sig_rd2llink_strm_tlast;
  wire sys_tft_clk;
  wire [1:10]tft_base_addr_i;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire tft_iic_scl_i;
  wire tft_iic_sda_i;
  wire tft_intr_en_i;
  wire tft_on_reg;
  wire tft_on_reg_i;
  wire [7:0]tft_vga_b;
  wire tft_vga_clk;
  wire [7:0]tft_vga_g;
  wire [7:0]tft_vga_r;
  wire tft_vsync;

  assign m_axi_araddr[31:0] = m_axi_awaddr;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \^m_axi_awburst [0];
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const1> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3:0] = \^m_axi_awlen [3:0];
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1:0] = \^m_axi_awsize [1:0];
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \^m_axi_awburst [0];
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const1> ;
  assign m_axi_awcache[0] = \<const1> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3:0] = \^m_axi_awlen [3:0];
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1:0] = \^m_axi_awsize [1:0];
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31:21] = \^s_axi_rdata [31:21];
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign tft_dvi_clk_n = \<const0> ;
  assign tft_dvi_clk_p = \<const0> ;
  assign tft_dvi_data[11] = \<const0> ;
  assign tft_dvi_data[10] = \<const0> ;
  assign tft_dvi_data[9] = \<const0> ;
  assign tft_dvi_data[8] = \<const0> ;
  assign tft_dvi_data[7] = \<const0> ;
  assign tft_dvi_data[6] = \<const0> ;
  assign tft_dvi_data[5] = \<const0> ;
  assign tft_dvi_data[4] = \<const0> ;
  assign tft_dvi_data[3] = \<const0> ;
  assign tft_dvi_data[2] = \<const0> ;
  assign tft_dvi_data[1] = \<const0> ;
  assign tft_dvi_data[0] = \<const0> ;
  assign tft_iic_scl_o = \<const0> ;
  assign tft_iic_scl_t = \<const1> ;
  assign tft_iic_sda_o = \<const0> ;
  assign tft_iic_sda_t = \<const1> ;
  axi_tft_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({TFT_CTRL_I_n_71,TFT_CTRL_I_n_72,TFT_CTRL_I_n_73,TFT_CTRL_I_n_74,TFT_CTRL_I_n_75,TFT_CTRL_I_n_76,TFT_CTRL_I_n_77,TFT_CTRL_I_n_78,TFT_CTRL_I_n_79,TFT_CTRL_I_n_80,TFT_CTRL_I_n_81,TFT_CTRL_I_n_82,TFT_CTRL_I_n_83,TFT_CTRL_I_n_84,TFT_CTRL_I_n_85,TFT_CTRL_I_n_86,TFT_CTRL_I_n_87,TFT_CTRL_I_n_88,TFT_CTRL_I_n_89,TFT_CTRL_I_n_90,TFT_CTRL_I_n_91,TFT_CTRL_I_n_92,TFT_CTRL_I_n_93,TFT_CTRL_I_n_94,TFT_CTRL_I_n_95,TFT_CTRL_I_n_96,TFT_CTRL_I_n_97}),
        .E(\SLAVE_REG_U6/TFT_iic_reg_addr0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .IP2Bus_Data({IP2Bus_Data[30:21],IP2Bus_Data[15:1]}),
        .\IP2Bus_Data_reg[0] (AXI_LITE_IPIF_I_n_37),
        .\IP2Bus_Data_reg[10] (AXI_LITE_IPIF_I_n_34),
        .\IP2Bus_Data_reg[29] (AXI_LITE_IPIF_I_n_36),
        .\IP2Bus_Data_reg[31] (AXI_LITE_IPIF_I_n_39),
        .\IP2Bus_Data_reg[31]_0 (AXI_LITE_IPIF_I_n_40),
        .\IP2Bus_Data_reg[31]_1 (AXI_LITE_IPIF_I_n_41),
        .\IP2Bus_Data_reg[31]_2 (AXI_LITE_IPIF_I_n_42),
        .Q({tft_base_addr_i[1],tft_base_addr_i[2],tft_base_addr_i[3],tft_base_addr_i[4],tft_base_addr_i[5],tft_base_addr_i[6],tft_base_addr_i[7],tft_base_addr_i[8],tft_base_addr_i[9],tft_base_addr_i[10]}),
        .\TFT_base_addr_reg[10] (\SLAVE_REG_U6/TFT_base_addr0 ),
        .TFT_dps_reg_reg(AXI_LITE_IPIF_I_n_46),
        .\TFT_iic_reg_addr_reg[0] ({TFT_iic_reg_addr[0],TFT_iic_reg_addr[1],TFT_iic_reg_addr[2],TFT_iic_reg_addr[3],TFT_iic_reg_addr[4],TFT_iic_reg_addr[5],TFT_iic_reg_addr[6],TFT_iic_reg_addr[7]}),
        .\TFT_iic_reg_data_reg[0] ({TFT_iic_reg_data[0],TFT_iic_reg_data[1],TFT_iic_reg_data[2],TFT_iic_reg_data[3],TFT_iic_reg_data[4],TFT_iic_reg_data[5],TFT_iic_reg_data[6]}),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_iic_xfer_reg(AXI_LITE_IPIF_I_n_43),
        .TFT_intr_en_reg(AXI_LITE_IPIF_I_n_45),
        .TFT_intr_en_reg_0(tft_intr_en_i),
        .TFT_on_reg_reg(AXI_LITE_IPIF_I_n_47),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(AXI_LITE_IPIF_I_n_44),
        .bus2ip_rdce_d1(\SLAVE_REG_U6/bus2ip_rdce_d1 ),
        .bus2ip_rdce_d2(\SLAVE_REG_U6/bus2ip_rdce_d2 ),
        .bus2ip_rdce_or(\SLAVE_REG_U6/bus2ip_rdce_or ),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce_d1(\SLAVE_REG_U6/bus2ip_wrce_d1 ),
        .bus2ip_wrce_d2(\SLAVE_REG_U6/bus2ip_wrce_d2 ),
        .bus2ip_wrce_or(\SLAVE_REG_U6/bus2ip_wrce_or ),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .prmry_in(tft_on_reg_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31:21],\^s_axi_rdata [15:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3],s_axi_wdata[1:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .tft_dps(tft_dps),
        .tft_status_d2_reg(TFT_CTRL_I_n_45));
  axi_tft_0_axi_master_burst AXI_MASTER_BURST_I
       (.AXI_BRAM_we_i_reg(AXI_MASTER_BURST_I_n_11),
        .D({ip2bus_mst_addr[0],ip2bus_mst_addr[1],ip2bus_mst_addr[2],ip2bus_mst_addr[3],ip2bus_mst_addr[4],ip2bus_mst_addr[5],ip2bus_mst_addr[6],ip2bus_mst_addr[7],ip2bus_mst_addr[8],ip2bus_mst_addr[9],ip2bus_mst_addr[10],ip2bus_mst_addr[11],ip2bus_mst_addr[12],ip2bus_mst_addr[13],ip2bus_mst_addr[14],ip2bus_mst_addr[15],ip2bus_mst_addr[16],ip2bus_mst_addr[17],ip2bus_mst_addr[18],ip2bus_mst_addr[19],ip2bus_mst_addr[20],ip2bus_mst_addr[21],ip2bus_mst_addr[22],ip2bus_mst_addr[23],ip2bus_mst_addr[24]}),
        .E(\I_CMD_STATUS_MODULE/sig_push_cmd_reg ),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q({Bus2IP_MstRd_d[40],Bus2IP_MstRd_d[41],Bus2IP_MstRd_d[42],Bus2IP_MstRd_d[43],Bus2IP_MstRd_d[44],Bus2IP_MstRd_d[45],Bus2IP_MstRd_d[46],Bus2IP_MstRd_d[47],Bus2IP_MstRd_d[48],Bus2IP_MstRd_d[49],Bus2IP_MstRd_d[50],Bus2IP_MstRd_d[51],Bus2IP_MstRd_d[52],Bus2IP_MstRd_d[53],Bus2IP_MstRd_d[54],Bus2IP_MstRd_d[55],Bus2IP_MstRd_d[56],Bus2IP_MstRd_d[57],Bus2IP_MstRd_d[58],Bus2IP_MstRd_d[59],Bus2IP_MstRd_d[60],Bus2IP_MstRd_d[61],Bus2IP_MstRd_d[62],Bus2IP_MstRd_d[63],Bus2IP_MstRd_d[8],Bus2IP_MstRd_d[9],Bus2IP_MstRd_d[10],Bus2IP_MstRd_d[11],Bus2IP_MstRd_d[12],Bus2IP_MstRd_d[13],Bus2IP_MstRd_d[14],Bus2IP_MstRd_d[15],Bus2IP_MstRd_d[16],Bus2IP_MstRd_d[17],Bus2IP_MstRd_d[18],Bus2IP_MstRd_d[19],Bus2IP_MstRd_d[20],Bus2IP_MstRd_d[21],Bus2IP_MstRd_d[22],Bus2IP_MstRd_d[23],Bus2IP_MstRd_d[24],Bus2IP_MstRd_d[25],Bus2IP_MstRd_d[26],Bus2IP_MstRd_d[27],Bus2IP_MstRd_d[28],Bus2IP_MstRd_d[29],Bus2IP_MstRd_d[30],Bus2IP_MstRd_d[31]}),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .eof_n(eof_n),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(\^m_axi_awburst ),
        .m_axi_awlen(\^m_axi_awlen ),
        .m_axi_awsize(\^m_axi_awsize ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({m_axi_rdata[55:32],m_axi_rdata[23:0]}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .md_error(md_error),
        .scndry_out(tft_on_reg),
        .sig_cmd_empty_reg(\I_CMD_STATUS_MODULE/sig_cmd_empty_reg ),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(\I_RD_LLINK_ADAPTER/sig_rd_discontinue ),
        .\trans_cnt_reg[0] (eof_pulse));
  GND GND
       (.G(\<const0> ));
  axi_tft_0_axi_tft_v2_1_tft_controller TFT_CTRL_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_37),
        .C0(sys_tft_clk),
        .D({TFT_CTRL_I_n_71,TFT_CTRL_I_n_72,TFT_CTRL_I_n_73,TFT_CTRL_I_n_74,TFT_CTRL_I_n_75,TFT_CTRL_I_n_76,TFT_CTRL_I_n_77,TFT_CTRL_I_n_78,TFT_CTRL_I_n_79,TFT_CTRL_I_n_80,TFT_CTRL_I_n_81,TFT_CTRL_I_n_82,TFT_CTRL_I_n_83,TFT_CTRL_I_n_84,TFT_CTRL_I_n_85,TFT_CTRL_I_n_86,TFT_CTRL_I_n_87,TFT_CTRL_I_n_88,TFT_CTRL_I_n_89,TFT_CTRL_I_n_90,TFT_CTRL_I_n_91,TFT_CTRL_I_n_92,TFT_CTRL_I_n_93,TFT_CTRL_I_n_94,TFT_CTRL_I_n_95,TFT_CTRL_I_n_96,TFT_CTRL_I_n_97}),
        .E(\I_CMD_STATUS_MODULE/sig_push_cmd_reg ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (tft_on_reg_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\SLAVE_REG_U6/TFT_base_addr0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (AXI_LITE_IPIF_I_n_42),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (AXI_LITE_IPIF_I_n_41),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (AXI_LITE_IPIF_I_n_47),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (AXI_LITE_IPIF_I_n_46),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (AXI_LITE_IPIF_I_n_45),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (AXI_LITE_IPIF_I_n_39),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (AXI_LITE_IPIF_I_n_43),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\SLAVE_REG_U6/TFT_iic_reg_addr0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 (AXI_LITE_IPIF_I_n_36),
        .IP2Bus_Data({IP2Bus_Data[30:21],IP2Bus_Data[15:1]}),
        .\IP2Bus_Data_reg[16] ({TFT_iic_reg_addr[0],TFT_iic_reg_addr[1],TFT_iic_reg_addr[2],TFT_iic_reg_addr[3],TFT_iic_reg_addr[4],TFT_iic_reg_addr[5],TFT_iic_reg_addr[6],TFT_iic_reg_addr[7]}),
        .\IP2Bus_Data_reg[24] ({TFT_iic_reg_data[0],TFT_iic_reg_data[1],TFT_iic_reg_data[2],TFT_iic_reg_data[3],TFT_iic_reg_data[4],TFT_iic_reg_data[5],TFT_iic_reg_data[6]}),
        .IP2Bus_MstRd_dst_rdy(IP2Bus_MstRd_dst_rdy),
        .IP2Bus_Mst_Type(IP2Bus_Mst_Type),
        .Q({tft_base_addr_i[1],tft_base_addr_i[2],tft_base_addr_i[3],tft_base_addr_i[4],tft_base_addr_i[5],tft_base_addr_i[6],tft_base_addr_i[7],tft_base_addr_i[8],tft_base_addr_i[9],tft_base_addr_i[10]}),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_on_reg_reg(AXI_LITE_IPIF_I_n_40),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(TFT_CTRL_I_n_45),
        .bus2ip_mreset(bus2ip_mreset),
        .bus2ip_mst_cmdack(bus2ip_mst_cmdack),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .bus2ip_mstrd_eof_n(bus2ip_mstrd_eof_n),
        .bus2ip_rdce_d1(\SLAVE_REG_U6/bus2ip_rdce_d1 ),
        .bus2ip_rdce_d2(\SLAVE_REG_U6/bus2ip_rdce_d2 ),
        .bus2ip_rdce_or(\SLAVE_REG_U6/bus2ip_rdce_or ),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_sreset_reg(AXI_LITE_IPIF_I_n_44),
        .bus2ip_sreset_reg_0(AXI_LITE_IPIF_I_n_34),
        .bus2ip_wrce_d1(\SLAVE_REG_U6/bus2ip_wrce_d1 ),
        .bus2ip_wrce_d2(\SLAVE_REG_U6/bus2ip_wrce_d2 ),
        .bus2ip_wrce_or(\SLAVE_REG_U6/bus2ip_wrce_or ),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .eof_n(eof_n),
        .ip2bus_mstrd_req(ip2bus_mstrd_req),
        .ip2intc_irpt(ip2intc_irpt),
        .m_axi_aclk(m_axi_aclk),
        .prmry_in(tft_intr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_wdata({s_axi_wdata[31:21],s_axi_wdata[15:0]}),
        .s_axi_wready(s_axi_wready),
        .scndry_out(tft_on_reg),
        .sig_cmd_empty_reg(\I_CMD_STATUS_MODULE/sig_cmd_empty_reg ),
        .\sig_cmd_mst_addr_reg[31] ({ip2bus_mst_addr[0],ip2bus_mst_addr[1],ip2bus_mst_addr[2],ip2bus_mst_addr[3],ip2bus_mst_addr[4],ip2bus_mst_addr[5],ip2bus_mst_addr[6],ip2bus_mst_addr[7],ip2bus_mst_addr[8],ip2bus_mst_addr[9],ip2bus_mst_addr[10],ip2bus_mst_addr[11],ip2bus_mst_addr[12],ip2bus_mst_addr[13],ip2bus_mst_addr[14],ip2bus_mst_addr[15],ip2bus_mst_addr[16],ip2bus_mst_addr[17],ip2bus_mst_addr[18],ip2bus_mst_addr[19],ip2bus_mst_addr[20],ip2bus_mst_addr[21],ip2bus_mst_addr[22],ip2bus_mst_addr[23],ip2bus_mst_addr[24]}),
        .\sig_data_reg_out_reg[23] ({Bus2IP_MstRd_d[8],Bus2IP_MstRd_d[9],Bus2IP_MstRd_d[10],Bus2IP_MstRd_d[11],Bus2IP_MstRd_d[12],Bus2IP_MstRd_d[13],Bus2IP_MstRd_d[14],Bus2IP_MstRd_d[15],Bus2IP_MstRd_d[16],Bus2IP_MstRd_d[17],Bus2IP_MstRd_d[18],Bus2IP_MstRd_d[19],Bus2IP_MstRd_d[20],Bus2IP_MstRd_d[21],Bus2IP_MstRd_d[22],Bus2IP_MstRd_d[23],Bus2IP_MstRd_d[24],Bus2IP_MstRd_d[25],Bus2IP_MstRd_d[26],Bus2IP_MstRd_d[27],Bus2IP_MstRd_d[28],Bus2IP_MstRd_d[29],Bus2IP_MstRd_d[30],Bus2IP_MstRd_d[31],Bus2IP_MstRd_d[40],Bus2IP_MstRd_d[41],Bus2IP_MstRd_d[42],Bus2IP_MstRd_d[43],Bus2IP_MstRd_d[44],Bus2IP_MstRd_d[45],Bus2IP_MstRd_d[46],Bus2IP_MstRd_d[47],Bus2IP_MstRd_d[48],Bus2IP_MstRd_d[49],Bus2IP_MstRd_d[50],Bus2IP_MstRd_d[51],Bus2IP_MstRd_d[52],Bus2IP_MstRd_d[53],Bus2IP_MstRd_d[54],Bus2IP_MstRd_d[55],Bus2IP_MstRd_d[56],Bus2IP_MstRd_d[57],Bus2IP_MstRd_d[58],Bus2IP_MstRd_d[59],Bus2IP_MstRd_d[60],Bus2IP_MstRd_d[61],Bus2IP_MstRd_d[62],Bus2IP_MstRd_d[63]}),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_m_valid_out_reg(AXI_MASTER_BURST_I_n_11),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(\I_RD_LLINK_ADAPTER/sig_rd_discontinue ),
        .sig_rd_discontinue_reg(eof_pulse),
        .sys_tft_clk(sys_tft_clk),
        .tft_de(tft_de),
        .tft_dps(tft_dps),
        .tft_hsync(tft_hsync),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_mreset_i_1
       (.I0(m_axi_aresetn),
        .O(bus2ip_mreset_i_1_n_0));
  FDRE bus2ip_mreset_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_mreset_i_1_n_0),
        .Q(bus2ip_mreset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_sreset_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_sreset_i_1_n_0));
  FDRE bus2ip_sreset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_sreset_i_1_n_0),
        .Q(bus2ip_sreset),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_10_h_sync" *) 
module axi_tft_0_axi_tft_v2_1_10_h_sync
   (vsync_rst,
    h_pix_cnt_tc,
    SR,
    \RED_reg[7] ,
    \BRAM_TFT_addr_reg[0] ,
    clk_stb_d1_reg,
    clk_ce_pos0,
    clk_ce_neg0,
    HSYNC_i,
    sys_tft_clk,
    tft_rst,
    \VSYNC_cs_reg[1] ,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ,
    p_0_in,
    clk_stb_d1);
  output vsync_rst;
  output h_pix_cnt_tc;
  output [0:0]SR;
  output \RED_reg[7] ;
  output [0:0]\BRAM_TFT_addr_reg[0] ;
  output clk_stb_d1_reg;
  output clk_ce_pos0;
  output clk_ce_neg0;
  output HSYNC_i;
  input sys_tft_clk;
  input tft_rst;
  input \VSYNC_cs_reg[1] ;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  input p_0_in;
  input clk_stb_d1;

  wire [0:0]\BRAM_TFT_addr_reg[0] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  wire [0:4]HSYNC_cs;
  wire \HSYNC_cs[0]_i_2_n_0 ;
  wire \HSYNC_cs[4]_i_1_n_0 ;
  wire HSYNC_i;
  wire [0:3]HSYNC_ns;
  wire H_bp_cnt_tc2_i_1_n_0;
  wire H_bp_cnt_tc_i_1_n_0;
  wire H_pix_cnt_tc_i_1_n_0;
  wire H_pix_cnt_tc_i_2_n_0;
  wire H_pix_cnt_tc_i_3_n_0;
  wire \RED_reg[7] ;
  wire [0:0]SR;
  wire \VSYNC_cs_reg[1] ;
  wire clk_ce_neg0;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire clk_stb_d1_reg;
  wire h_bp_cnt1;
  wire \h_bp_cnt[0]_i_2_n_0 ;
  wire \h_bp_cnt[0]_i_3_n_0 ;
  wire \h_bp_cnt[0]_i_4_n_0 ;
  wire \h_bp_cnt[1]_i_1_n_0 ;
  wire \h_bp_cnt[2]_i_1_n_0 ;
  wire \h_bp_cnt[3]_i_1_n_0 ;
  wire \h_bp_cnt[4]_i_1_n_0 ;
  wire \h_bp_cnt[5]_i_1_n_0 ;
  wire \h_bp_cnt[6]_i_1_n_0 ;
  wire \h_bp_cnt_reg_n_0_[0] ;
  wire \h_bp_cnt_reg_n_0_[1] ;
  wire \h_bp_cnt_reg_n_0_[2] ;
  wire \h_bp_cnt_reg_n_0_[3] ;
  wire \h_bp_cnt_reg_n_0_[4] ;
  wire \h_bp_cnt_reg_n_0_[5] ;
  wire \h_bp_cnt_reg_n_0_[6] ;
  wire h_bp_cnt_tc;
  wire h_bp_cnt_tc2;
  wire [0:4]h_fp_cnt;
  wire h_fp_cnt0;
  wire \h_fp_cnt[0]_i_2_n_0 ;
  wire \h_fp_cnt[1]_i_1_n_0 ;
  wire \h_fp_cnt[2]_i_1_n_0 ;
  wire \h_fp_cnt[3]_i_1_n_0 ;
  wire \h_fp_cnt[4]_i_1_n_0 ;
  wire h_fp_cnt_tc;
  wire h_fp_cnt_tc_i_1_n_0;
  wire [0:6]h_p_cnt;
  wire h_p_cnt0;
  wire \h_p_cnt[0]_i_3_n_0 ;
  wire \h_p_cnt[2]_i_2_n_0 ;
  wire [0:6]h_p_cnt_0;
  wire h_p_cnt_tc;
  wire h_p_cnt_tc_reg_n_0;
  wire [0:10]h_pix_cnt;
  wire h_pix_cnt0;
  wire \h_pix_cnt[0]_i_2_n_0 ;
  wire \h_pix_cnt[0]_i_3_n_0 ;
  wire \h_pix_cnt[10]_i_1_n_0 ;
  wire \h_pix_cnt[1]_i_1_n_0 ;
  wire \h_pix_cnt[2]_i_1_n_0 ;
  wire \h_pix_cnt[3]_i_1_n_0 ;
  wire \h_pix_cnt[3]_i_2_n_0 ;
  wire \h_pix_cnt[4]_i_1_n_0 ;
  wire \h_pix_cnt[5]_i_1_n_0 ;
  wire \h_pix_cnt[6]_i_1_n_0 ;
  wire \h_pix_cnt[7]_i_1_n_0 ;
  wire \h_pix_cnt[8]_i_1_n_0 ;
  wire \h_pix_cnt[9]_i_1_n_0 ;
  wire h_pix_cnt_tc;
  wire p_0_in;
  wire scndry_out;
  wire sys_tft_clk;
  wire tft_rst;
  wire vsync_rst;

  LUT5 #(
    .INIT(32'hFEEFEFFE)) 
    \BRAM_TFT_addr[0]_i_1 
       (.I0(tft_rst),
        .I1(\VSYNC_cs_reg[1] ),
        .I2(h_bp_cnt_tc),
        .I3(h_bp_cnt_tc2),
        .I4(\RED_reg[7] ),
        .O(\BRAM_TFT_addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDR_DE_i_2
       (.I0(HSYNC_cs[1]),
        .I1(HSYNC_cs[3]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[0]),
        .O(\RED_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDS_HSYNC_i_2
       (.I0(HSYNC_cs[3]),
        .I1(HSYNC_cs[1]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[0]),
        .O(HSYNC_i));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \HSYNC_cs[0]_i_1 
       (.I0(\HSYNC_cs[0]_i_2_n_0 ),
        .I1(HSYNC_cs[1]),
        .I2(h_pix_cnt_tc),
        .I3(HSYNC_cs[0]),
        .I4(h_fp_cnt_tc),
        .O(HSYNC_ns[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \HSYNC_cs[0]_i_2 
       (.I0(HSYNC_cs[4]),
        .I1(HSYNC_cs[3]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[0]),
        .O(\HSYNC_cs[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \HSYNC_cs[1]_i_1 
       (.I0(\HSYNC_cs[0]_i_2_n_0 ),
        .I1(HSYNC_cs[2]),
        .I2(h_bp_cnt_tc),
        .I3(HSYNC_cs[1]),
        .I4(h_pix_cnt_tc),
        .O(HSYNC_ns[1]));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \HSYNC_cs[2]_i_1 
       (.I0(\HSYNC_cs[0]_i_2_n_0 ),
        .I1(HSYNC_cs[3]),
        .I2(h_p_cnt_tc_reg_n_0),
        .I3(HSYNC_cs[2]),
        .I4(h_bp_cnt_tc),
        .O(HSYNC_ns[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \HSYNC_cs[3]_i_1 
       (.I0(\HSYNC_cs[0]_i_2_n_0 ),
        .I1(HSYNC_cs[0]),
        .I2(h_fp_cnt_tc),
        .I3(h_p_cnt_tc_reg_n_0),
        .I4(HSYNC_cs[3]),
        .I5(HSYNC_cs[4]),
        .O(HSYNC_ns[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \HSYNC_cs[4]_i_1 
       (.I0(\HSYNC_cs[0]_i_2_n_0 ),
        .O(\HSYNC_cs[4]_i_1_n_0 ));
  FDRE \HSYNC_cs_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns[0]),
        .Q(HSYNC_cs[0]),
        .R(tft_rst));
  FDRE \HSYNC_cs_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns[1]),
        .Q(HSYNC_cs[1]),
        .R(tft_rst));
  FDRE \HSYNC_cs_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns[2]),
        .Q(HSYNC_cs[2]),
        .R(tft_rst));
  FDRE \HSYNC_cs_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(HSYNC_ns[3]),
        .Q(HSYNC_cs[3]),
        .R(tft_rst));
  FDSE \HSYNC_cs_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\HSYNC_cs[4]_i_1_n_0 ),
        .Q(HSYNC_cs[4]),
        .S(tft_rst));
  LUT3 #(
    .INIT(8'h40)) 
    H_bp_cnt_tc2_i_1
       (.I0(\h_bp_cnt_reg_n_0_[5] ),
        .I1(\h_bp_cnt_reg_n_0_[6] ),
        .I2(\h_bp_cnt[0]_i_4_n_0 ),
        .O(H_bp_cnt_tc2_i_1_n_0));
  FDRE H_bp_cnt_tc2_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_bp_cnt_tc2_i_1_n_0),
        .Q(h_bp_cnt_tc2),
        .R(h_bp_cnt1));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    H_bp_cnt_tc_i_1
       (.I0(\h_bp_cnt[0]_i_4_n_0 ),
        .I1(\h_bp_cnt_reg_n_0_[5] ),
        .I2(\h_bp_cnt_reg_n_0_[6] ),
        .I3(h_bp_cnt1),
        .O(H_bp_cnt_tc_i_1_n_0));
  FDRE H_bp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_bp_cnt_tc_i_1_n_0),
        .Q(h_bp_cnt_tc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h02200020)) 
    H_pix_cnt_tc_i_1
       (.I0(H_pix_cnt_tc_i_2_n_0),
        .I1(H_pix_cnt_tc_i_3_n_0),
        .I2(h_pix_cnt[9]),
        .I3(h_pix_cnt[10]),
        .I4(h_pix_cnt_tc),
        .O(H_pix_cnt_tc_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    H_pix_cnt_tc_i_2
       (.I0(h_pix_cnt[7]),
        .I1(h_pix_cnt[6]),
        .I2(h_pix_cnt[2]),
        .I3(h_pix_cnt[8]),
        .I4(h_pix_cnt[5]),
        .O(H_pix_cnt_tc_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    H_pix_cnt_tc_i_3
       (.I0(h_pix_cnt[1]),
        .I1(h_pix_cnt[4]),
        .I2(h_pix_cnt[0]),
        .I3(h_pix_cnt[3]),
        .O(H_pix_cnt_tc_i_3_n_0));
  FDRE H_pix_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(H_pix_cnt_tc_i_1_n_0),
        .Q(h_pix_cnt_tc),
        .R(h_pix_cnt0));
  LUT6 #(
    .INIT(64'hF6FFFFFFFFFFFFFF)) 
    \RED[7]_i_1 
       (.I0(\RED_reg[7] ),
        .I1(h_bp_cnt_tc),
        .I2(\VSYNC_cs_reg[1] ),
        .I3(scndry_out),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .I5(p_0_in),
        .O(SR));
  FDRE VSYNC_Rst_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(tft_rst),
        .Q(vsync_rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    clk_ce_neg_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(clk_stb_d1),
        .O(clk_ce_neg0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    clk_ce_pos_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(clk_stb_d1),
        .O(clk_ce_pos0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    clk_stb_d1_i_1
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .O(clk_stb_d1_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \h_bp_cnt[0]_i_1 
       (.I0(HSYNC_cs[3]),
        .I1(HSYNC_cs[1]),
        .I2(HSYNC_cs[0]),
        .I3(HSYNC_cs[4]),
        .I4(HSYNC_cs[2]),
        .I5(tft_rst),
        .O(h_bp_cnt1));
  LUT6 #(
    .INIT(64'h9CFFFF9C9C9C9C9C)) 
    \h_bp_cnt[0]_i_2 
       (.I0(\h_bp_cnt[0]_i_3_n_0 ),
        .I1(\h_bp_cnt_reg_n_0_[0] ),
        .I2(\h_bp_cnt_reg_n_0_[1] ),
        .I3(\h_bp_cnt_reg_n_0_[6] ),
        .I4(\h_bp_cnt_reg_n_0_[5] ),
        .I5(\h_bp_cnt[0]_i_4_n_0 ),
        .O(\h_bp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_bp_cnt[0]_i_3 
       (.I0(\h_bp_cnt_reg_n_0_[2] ),
        .I1(\h_bp_cnt_reg_n_0_[4] ),
        .I2(\h_bp_cnt_reg_n_0_[3] ),
        .I3(\h_bp_cnt_reg_n_0_[5] ),
        .I4(\h_bp_cnt_reg_n_0_[6] ),
        .O(\h_bp_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \h_bp_cnt[0]_i_4 
       (.I0(\h_bp_cnt_reg_n_0_[1] ),
        .I1(\h_bp_cnt_reg_n_0_[0] ),
        .I2(\h_bp_cnt_reg_n_0_[2] ),
        .I3(\h_bp_cnt_reg_n_0_[4] ),
        .I4(\h_bp_cnt_reg_n_0_[3] ),
        .O(\h_bp_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0909000900090909)) 
    \h_bp_cnt[1]_i_1 
       (.I0(\h_bp_cnt_reg_n_0_[1] ),
        .I1(\h_bp_cnt[0]_i_3_n_0 ),
        .I2(h_bp_cnt1),
        .I3(\h_bp_cnt[0]_i_4_n_0 ),
        .I4(\h_bp_cnt_reg_n_0_[5] ),
        .I5(\h_bp_cnt_reg_n_0_[6] ),
        .O(\h_bp_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AFFFFAA6AAAAAAA)) 
    \h_bp_cnt[2]_i_1 
       (.I0(\h_bp_cnt_reg_n_0_[2] ),
        .I1(\h_bp_cnt_reg_n_0_[3] ),
        .I2(\h_bp_cnt_reg_n_0_[4] ),
        .I3(\h_bp_cnt_reg_n_0_[6] ),
        .I4(\h_bp_cnt_reg_n_0_[5] ),
        .I5(\h_bp_cnt[0]_i_4_n_0 ),
        .O(\h_bp_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h6FFA6AAA)) 
    \h_bp_cnt[3]_i_1 
       (.I0(\h_bp_cnt_reg_n_0_[3] ),
        .I1(\h_bp_cnt_reg_n_0_[4] ),
        .I2(\h_bp_cnt_reg_n_0_[6] ),
        .I3(\h_bp_cnt_reg_n_0_[5] ),
        .I4(\h_bp_cnt[0]_i_4_n_0 ),
        .O(\h_bp_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7E6A)) 
    \h_bp_cnt[4]_i_1 
       (.I0(\h_bp_cnt_reg_n_0_[4] ),
        .I1(\h_bp_cnt_reg_n_0_[6] ),
        .I2(\h_bp_cnt_reg_n_0_[5] ),
        .I3(\h_bp_cnt[0]_i_4_n_0 ),
        .O(\h_bp_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_bp_cnt[5]_i_1 
       (.I0(\h_bp_cnt_reg_n_0_[6] ),
        .I1(\h_bp_cnt_reg_n_0_[5] ),
        .O(\h_bp_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \h_bp_cnt[6]_i_1 
       (.I0(h_bp_cnt1),
        .I1(\h_bp_cnt_reg_n_0_[6] ),
        .O(\h_bp_cnt[6]_i_1_n_0 ));
  FDRE \h_bp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[0]_i_2_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[0] ),
        .R(h_bp_cnt1));
  FDRE \h_bp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[1]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \h_bp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[2]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[2] ),
        .R(h_bp_cnt1));
  FDRE \h_bp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[3]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[3] ),
        .R(h_bp_cnt1));
  FDRE \h_bp_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[4]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[4] ),
        .R(h_bp_cnt1));
  FDRE \h_bp_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[5]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[5] ),
        .R(h_bp_cnt1));
  FDRE \h_bp_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_bp_cnt[6]_i_1_n_0 ),
        .Q(\h_bp_cnt_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAABAABE)) 
    \h_fp_cnt[0]_i_1 
       (.I0(tft_rst),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[0]),
        .I4(HSYNC_cs[1]),
        .I5(HSYNC_cs[3]),
        .O(h_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_fp_cnt[0]_i_2 
       (.I0(h_fp_cnt[0]),
        .I1(h_fp_cnt[4]),
        .I2(h_fp_cnt[2]),
        .I3(h_fp_cnt[3]),
        .I4(h_fp_cnt[1]),
        .O(\h_fp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \h_fp_cnt[1]_i_1 
       (.I0(h_fp_cnt[3]),
        .I1(h_fp_cnt[2]),
        .I2(h_fp_cnt[1]),
        .I3(h_fp_cnt[4]),
        .O(\h_fp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \h_fp_cnt[2]_i_1 
       (.I0(h_fp_cnt[4]),
        .I1(h_fp_cnt[2]),
        .I2(h_fp_cnt[3]),
        .O(\h_fp_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_fp_cnt[3]_i_1 
       (.I0(h_fp_cnt[4]),
        .I1(h_fp_cnt[3]),
        .O(\h_fp_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_fp_cnt[4]_i_1 
       (.I0(h_fp_cnt[4]),
        .O(\h_fp_cnt[4]_i_1_n_0 ));
  FDRE \h_fp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[0]_i_2_n_0 ),
        .Q(h_fp_cnt[0]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[1]_i_1_n_0 ),
        .Q(h_fp_cnt[1]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[2]_i_1_n_0 ),
        .Q(h_fp_cnt[2]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[3]_i_1_n_0 ),
        .Q(h_fp_cnt[3]),
        .R(h_fp_cnt0));
  FDRE \h_fp_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_fp_cnt[4]_i_1_n_0 ),
        .Q(h_fp_cnt[4]),
        .R(h_fp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    h_fp_cnt_tc_i_1
       (.I0(h_fp_cnt[1]),
        .I1(h_fp_cnt[3]),
        .I2(h_fp_cnt[2]),
        .I3(h_fp_cnt[4]),
        .I4(h_fp_cnt[0]),
        .O(h_fp_cnt_tc_i_1_n_0));
  FDRE h_fp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_fp_cnt_tc_i_1_n_0),
        .Q(h_fp_cnt_tc),
        .R(h_fp_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \h_p_cnt[0]_i_1 
       (.I0(HSYNC_cs[0]),
        .I1(HSYNC_cs[4]),
        .I2(HSYNC_cs[2]),
        .I3(HSYNC_cs[1]),
        .I4(HSYNC_cs[3]),
        .I5(tft_rst),
        .O(h_p_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_p_cnt[0]_i_2 
       (.I0(h_p_cnt[0]),
        .I1(h_p_cnt[2]),
        .I2(\h_p_cnt[0]_i_3_n_0 ),
        .I3(h_p_cnt[1]),
        .O(h_p_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \h_p_cnt[0]_i_3 
       (.I0(h_p_cnt[3]),
        .I1(h_p_cnt[6]),
        .I2(h_p_cnt[5]),
        .I3(h_p_cnt[4]),
        .O(\h_p_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_p_cnt[1]_i_1 
       (.I0(h_p_cnt[2]),
        .I1(\h_p_cnt[0]_i_3_n_0 ),
        .I2(h_p_cnt[1]),
        .O(h_p_cnt_0[1]));
  LUT6 #(
    .INIT(64'h3C4C4C4CCC4C4C4C)) 
    \h_p_cnt[2]_i_1 
       (.I0(\h_p_cnt[2]_i_2_n_0 ),
        .I1(h_p_cnt[2]),
        .I2(h_p_cnt[4]),
        .I3(h_p_cnt[5]),
        .I4(h_p_cnt[6]),
        .I5(h_p_cnt[3]),
        .O(h_p_cnt_0[2]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \h_p_cnt[2]_i_2 
       (.I0(h_p_cnt[3]),
        .I1(h_p_cnt[0]),
        .I2(h_p_cnt[4]),
        .I3(h_p_cnt[5]),
        .I4(h_p_cnt[1]),
        .I5(h_p_cnt[2]),
        .O(\h_p_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h3C4C4C4C)) 
    \h_p_cnt[3]_i_1 
       (.I0(\h_p_cnt[2]_i_2_n_0 ),
        .I1(h_p_cnt[3]),
        .I2(h_p_cnt[4]),
        .I3(h_p_cnt[5]),
        .I4(h_p_cnt[6]),
        .O(h_p_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_p_cnt[4]_i_1 
       (.I0(h_p_cnt[4]),
        .I1(h_p_cnt[5]),
        .I2(h_p_cnt[6]),
        .O(h_p_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0FF8)) 
    \h_p_cnt[5]_i_1 
       (.I0(h_p_cnt[4]),
        .I1(\h_p_cnt[2]_i_2_n_0 ),
        .I2(h_p_cnt[6]),
        .I3(h_p_cnt[5]),
        .O(h_p_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \h_p_cnt[6]_i_1 
       (.I0(h_p_cnt[4]),
        .I1(h_p_cnt[5]),
        .I2(\h_p_cnt[2]_i_2_n_0 ),
        .I3(h_p_cnt[6]),
        .O(h_p_cnt_0[6]));
  FDRE \h_p_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[0]),
        .Q(h_p_cnt[0]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[1]),
        .Q(h_p_cnt[1]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[2]),
        .Q(h_p_cnt[2]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[3]),
        .Q(h_p_cnt[3]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[4]),
        .Q(h_p_cnt[4]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[5]),
        .Q(h_p_cnt[5]),
        .R(h_p_cnt0));
  FDRE \h_p_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_0[6]),
        .Q(h_p_cnt[6]),
        .R(h_p_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    h_p_cnt_tc_i_1
       (.I0(\h_p_cnt[2]_i_2_n_0 ),
        .I1(h_p_cnt[6]),
        .O(h_p_cnt_tc));
  FDRE h_p_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(h_p_cnt_tc),
        .Q(h_p_cnt_tc_reg_n_0),
        .R(h_p_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \h_pix_cnt[0]_i_1 
       (.I0(tft_rst),
        .I1(HSYNC_cs[0]),
        .I2(HSYNC_cs[4]),
        .I3(HSYNC_cs[2]),
        .I4(HSYNC_cs[3]),
        .I5(HSYNC_cs[1]),
        .O(h_pix_cnt0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_pix_cnt[0]_i_2 
       (.I0(h_pix_cnt[0]),
        .I1(h_pix_cnt[2]),
        .I2(h_pix_cnt[4]),
        .I3(\h_pix_cnt[0]_i_3_n_0 ),
        .I4(h_pix_cnt[3]),
        .I5(h_pix_cnt[1]),
        .O(\h_pix_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_pix_cnt[0]_i_3 
       (.I0(h_pix_cnt[5]),
        .I1(h_pix_cnt[6]),
        .I2(h_pix_cnt[7]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt[10]),
        .I5(h_pix_cnt[8]),
        .O(\h_pix_cnt[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_pix_cnt[10]_i_1 
       (.I0(h_pix_cnt[10]),
        .O(\h_pix_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_pix_cnt[1]_i_1 
       (.I0(h_pix_cnt[1]),
        .I1(h_pix_cnt[3]),
        .I2(\h_pix_cnt[0]_i_3_n_0 ),
        .I3(h_pix_cnt[4]),
        .I4(h_pix_cnt[2]),
        .O(\h_pix_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_pix_cnt[2]_i_1 
       (.I0(h_pix_cnt[2]),
        .I1(h_pix_cnt[4]),
        .I2(\h_pix_cnt[0]_i_3_n_0 ),
        .I3(h_pix_cnt[3]),
        .O(\h_pix_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \h_pix_cnt[3]_i_1 
       (.I0(h_pix_cnt[3]),
        .I1(h_pix_cnt[5]),
        .I2(h_pix_cnt[6]),
        .I3(h_pix_cnt[7]),
        .I4(\h_pix_cnt[3]_i_2_n_0 ),
        .I5(h_pix_cnt[4]),
        .O(\h_pix_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \h_pix_cnt[3]_i_2 
       (.I0(h_pix_cnt[9]),
        .I1(h_pix_cnt[10]),
        .I2(h_pix_cnt[8]),
        .O(\h_pix_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \h_pix_cnt[4]_i_1 
       (.I0(h_pix_cnt[4]),
        .I1(\h_pix_cnt[3]_i_2_n_0 ),
        .I2(h_pix_cnt[7]),
        .I3(h_pix_cnt[6]),
        .I4(h_pix_cnt[5]),
        .O(\h_pix_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_pix_cnt[5]_i_1 
       (.I0(h_pix_cnt[5]),
        .I1(h_pix_cnt[6]),
        .I2(h_pix_cnt[7]),
        .I3(h_pix_cnt[9]),
        .I4(h_pix_cnt[10]),
        .I5(h_pix_cnt[8]),
        .O(\h_pix_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_pix_cnt[6]_i_1 
       (.I0(h_pix_cnt[6]),
        .I1(h_pix_cnt[9]),
        .I2(h_pix_cnt[10]),
        .I3(h_pix_cnt[8]),
        .I4(h_pix_cnt[7]),
        .O(\h_pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_pix_cnt[7]_i_1 
       (.I0(h_pix_cnt[9]),
        .I1(h_pix_cnt[10]),
        .I2(h_pix_cnt[8]),
        .I3(h_pix_cnt[7]),
        .O(\h_pix_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_pix_cnt[8]_i_1 
       (.I0(h_pix_cnt[8]),
        .I1(h_pix_cnt[10]),
        .I2(h_pix_cnt[9]),
        .O(\h_pix_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_pix_cnt[9]_i_1 
       (.I0(h_pix_cnt[10]),
        .I1(h_pix_cnt[9]),
        .O(\h_pix_cnt[9]_i_1_n_0 ));
  FDRE \h_pix_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[0]_i_2_n_0 ),
        .Q(h_pix_cnt[0]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[10] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[10]_i_1_n_0 ),
        .Q(h_pix_cnt[10]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[1]_i_1_n_0 ),
        .Q(h_pix_cnt[1]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[2]_i_1_n_0 ),
        .Q(h_pix_cnt[2]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[3]_i_1_n_0 ),
        .Q(h_pix_cnt[3]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[4]_i_1_n_0 ),
        .Q(h_pix_cnt[4]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[5]_i_1_n_0 ),
        .Q(h_pix_cnt[5]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[6]_i_1_n_0 ),
        .Q(h_pix_cnt[6]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[7]_i_1_n_0 ),
        .Q(h_pix_cnt[7]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[8]_i_1_n_0 ),
        .Q(h_pix_cnt[8]),
        .R(h_pix_cnt0));
  FDRE \h_pix_cnt_reg[9] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\h_pix_cnt[9]_i_1_n_0 ),
        .Q(h_pix_cnt[9]),
        .R(h_pix_cnt0));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_10_line_buffer" *) 
module axi_tft_0_axi_tft_v2_1_10_line_buffer
   (\gen_vga_if.FDR_R7 ,
    \gen_vga_if.FDR_G7 ,
    \gen_vga_if.FDR_B7 ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    SR,
    AXI_BRAM_we_i,
    H_bp_cnt_tc_reg);
  output [7:0]\gen_vga_if.FDR_R7 ;
  output [7:0]\gen_vga_if.FDR_G7 ;
  output [7:0]\gen_vga_if.FDR_B7 ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input [0:0]SR;
  input AXI_BRAM_we_i;
  input [0:0]H_bp_cnt_tc_reg;

  wire AXI_BRAM_we_i;
  wire [7:0]BRAM_TFT_B_data;
  wire [7:0]BRAM_TFT_G_data;
  wire [7:0]BRAM_TFT_R_data;
  wire [0:9]BRAM_TFT_addr;
  wire \BRAM_TFT_addr[0]_i_4_n_0 ;
  wire \BRAM_TFT_addr[8]_i_2_n_0 ;
  wire \BRAM_TFT_addr[8]_i_3_n_0 ;
  wire \BRAM_TFT_addr_reg_n_0_[0] ;
  wire \BRAM_TFT_addr_reg_n_0_[1] ;
  wire \BRAM_TFT_addr_reg_n_0_[2] ;
  wire \BRAM_TFT_addr_reg_n_0_[3] ;
  wire \BRAM_TFT_addr_reg_n_0_[4] ;
  wire \BRAM_TFT_addr_reg_n_0_[5] ;
  wire \BRAM_TFT_addr_reg_n_0_[6] ;
  wire \BRAM_TFT_addr_reg_n_0_[7] ;
  wire \BRAM_TFT_addr_reg_n_0_[8] ;
  wire \BRAM_TFT_addr_reg_n_0_[9] ;
  wire [0:0]H_bp_cnt_tc_reg;
  wire [47:0]Q;
  wire RAM_n_0;
  wire RAM_n_1;
  wire RAM_n_10;
  wire RAM_n_11;
  wire RAM_n_12;
  wire RAM_n_13;
  wire RAM_n_14;
  wire RAM_n_15;
  wire RAM_n_16;
  wire RAM_n_17;
  wire RAM_n_18;
  wire RAM_n_19;
  wire RAM_n_2;
  wire RAM_n_20;
  wire RAM_n_21;
  wire RAM_n_22;
  wire RAM_n_23;
  wire RAM_n_3;
  wire RAM_n_4;
  wire RAM_n_5;
  wire RAM_n_6;
  wire RAM_n_7;
  wire RAM_n_8;
  wire RAM_n_9;
  wire [0:0]SR;
  wire [7:0]\gen_vga_if.FDR_B7 ;
  wire [7:0]\gen_vga_if.FDR_G7 ;
  wire [7:0]\gen_vga_if.FDR_R7 ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tc;
  wire tc_reg_inv_n_0;
  wire tft_rst;

  FDRE \BLUE_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[0]),
        .Q(\gen_vga_if.FDR_B7 [0]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[1]),
        .Q(\gen_vga_if.FDR_B7 [1]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[2]),
        .Q(\gen_vga_if.FDR_B7 [2]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[3]),
        .Q(\gen_vga_if.FDR_B7 [3]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[4]),
        .Q(\gen_vga_if.FDR_B7 [4]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[5]),
        .Q(\gen_vga_if.FDR_B7 [5]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[6]),
        .Q(\gen_vga_if.FDR_B7 [6]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BLUE_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_B_data[7]),
        .Q(\gen_vga_if.FDR_B7 [7]),
        .R(H_bp_cnt_tc_reg));
  FDRE \BRAM_TFT_B_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_23),
        .Q(BRAM_TFT_B_data[0]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_22),
        .Q(BRAM_TFT_B_data[1]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_21),
        .Q(BRAM_TFT_B_data[2]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_20),
        .Q(BRAM_TFT_B_data[3]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_19),
        .Q(BRAM_TFT_B_data[4]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_18),
        .Q(BRAM_TFT_B_data[5]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_17),
        .Q(BRAM_TFT_B_data[6]),
        .R(tft_rst));
  FDRE \BRAM_TFT_B_data_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_16),
        .Q(BRAM_TFT_B_data[7]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_15),
        .Q(BRAM_TFT_G_data[0]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_14),
        .Q(BRAM_TFT_G_data[1]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_13),
        .Q(BRAM_TFT_G_data[2]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_12),
        .Q(BRAM_TFT_G_data[3]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_11),
        .Q(BRAM_TFT_G_data[4]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_10),
        .Q(BRAM_TFT_G_data[5]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_9),
        .Q(BRAM_TFT_G_data[6]),
        .R(tft_rst));
  FDRE \BRAM_TFT_G_data_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_8),
        .Q(BRAM_TFT_G_data[7]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_7),
        .Q(BRAM_TFT_R_data[0]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_6),
        .Q(BRAM_TFT_R_data[1]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_5),
        .Q(BRAM_TFT_R_data[2]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_4),
        .Q(BRAM_TFT_R_data[3]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_3),
        .Q(BRAM_TFT_R_data[4]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_2),
        .Q(BRAM_TFT_R_data[5]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_1),
        .Q(BRAM_TFT_R_data[6]),
        .R(tft_rst));
  FDRE \BRAM_TFT_R_data_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(RAM_n_0),
        .Q(BRAM_TFT_R_data[7]),
        .R(tft_rst));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \BRAM_TFT_addr[0]_i_2 
       (.I0(\BRAM_TFT_addr_reg_n_0_[0] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[1] ),
        .I2(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I3(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[2] ),
        .I5(\BRAM_TFT_addr_reg_n_0_[3] ),
        .O(BRAM_TFT_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \BRAM_TFT_addr[0]_i_4 
       (.I0(\BRAM_TFT_addr_reg_n_0_[6] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[8] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[7] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[5] ),
        .O(\BRAM_TFT_addr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \BRAM_TFT_addr[1]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[0] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[1] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[3] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[2] ),
        .I5(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .O(BRAM_TFT_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \BRAM_TFT_addr[2]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[3] ),
        .I1(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I2(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[2] ),
        .O(BRAM_TFT_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \BRAM_TFT_addr[3]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I1(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I2(\BRAM_TFT_addr_reg_n_0_[3] ),
        .O(BRAM_TFT_addr[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55515555)) 
    \BRAM_TFT_addr[4]_i_1 
       (.I0(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .I1(\BRAM_TFT_addr_reg_n_0_[1] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[2] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[3] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[0] ),
        .I5(\BRAM_TFT_addr_reg_n_0_[4] ),
        .O(BRAM_TFT_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \BRAM_TFT_addr[5]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[6] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[8] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[7] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[5] ),
        .O(BRAM_TFT_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \BRAM_TFT_addr[6]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[7] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[8] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[6] ),
        .O(BRAM_TFT_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BRAM_TFT_addr[7]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[8] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[7] ),
        .O(BRAM_TFT_addr[7]));
  LUT6 #(
    .INIT(64'h6666666666666660)) 
    \BRAM_TFT_addr[8]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[8] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I2(\BRAM_TFT_addr[8]_i_2_n_0 ),
        .I3(\BRAM_TFT_addr[8]_i_3_n_0 ),
        .I4(\BRAM_TFT_addr_reg_n_0_[2] ),
        .I5(\BRAM_TFT_addr_reg_n_0_[3] ),
        .O(BRAM_TFT_addr[8]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \BRAM_TFT_addr[8]_i_2 
       (.I0(\BRAM_TFT_addr_reg_n_0_[1] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[5] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[8] ),
        .O(\BRAM_TFT_addr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \BRAM_TFT_addr[8]_i_3 
       (.I0(\BRAM_TFT_addr_reg_n_0_[9] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[6] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[0] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[7] ),
        .O(\BRAM_TFT_addr[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \BRAM_TFT_addr[9]_i_1 
       (.I0(\BRAM_TFT_addr_reg_n_0_[9] ),
        .O(BRAM_TFT_addr[9]));
  FDRE \BRAM_TFT_addr_reg[0] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[0]),
        .Q(\BRAM_TFT_addr_reg_n_0_[0] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[1] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[1]),
        .Q(\BRAM_TFT_addr_reg_n_0_[1] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[2] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[2]),
        .Q(\BRAM_TFT_addr_reg_n_0_[2] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[3] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[3]),
        .Q(\BRAM_TFT_addr_reg_n_0_[3] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[4] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[4]),
        .Q(\BRAM_TFT_addr_reg_n_0_[4] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[5] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[5]),
        .Q(\BRAM_TFT_addr_reg_n_0_[5] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[6] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[6]),
        .Q(\BRAM_TFT_addr_reg_n_0_[6] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[7] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[7]),
        .Q(\BRAM_TFT_addr_reg_n_0_[7] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[8] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[8]),
        .Q(\BRAM_TFT_addr_reg_n_0_[8] ),
        .R(SR));
  FDRE \BRAM_TFT_addr_reg[9] 
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(BRAM_TFT_addr[9]),
        .Q(\BRAM_TFT_addr_reg_n_0_[9] ),
        .R(SR));
  FDRE \GREEN_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[0]),
        .Q(\gen_vga_if.FDR_G7 [0]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[1]),
        .Q(\gen_vga_if.FDR_G7 [1]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[2]),
        .Q(\gen_vga_if.FDR_G7 [2]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[3]),
        .Q(\gen_vga_if.FDR_G7 [3]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[4]),
        .Q(\gen_vga_if.FDR_G7 [4]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[5]),
        .Q(\gen_vga_if.FDR_G7 [5]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[6]),
        .Q(\gen_vga_if.FDR_G7 [6]),
        .R(H_bp_cnt_tc_reg));
  FDRE \GREEN_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_G_data[7]),
        .Q(\gen_vga_if.FDR_G7 [7]),
        .R(H_bp_cnt_tc_reg));
  axi_tft_0_async_fifo_fg RAM
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\BRAM_TFT_B_data_reg[7] ({RAM_n_16,RAM_n_17,RAM_n_18,RAM_n_19,RAM_n_20,RAM_n_21,RAM_n_22,RAM_n_23}),
        .\BRAM_TFT_G_data_reg[7] ({RAM_n_8,RAM_n_9,RAM_n_10,RAM_n_11,RAM_n_12,RAM_n_13,RAM_n_14,RAM_n_15}),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg_n_0_[9] ),
        .D({RAM_n_0,RAM_n_1,RAM_n_2,RAM_n_3,RAM_n_4,RAM_n_5,RAM_n_6,RAM_n_7}),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  FDRE \RED_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[0]),
        .Q(\gen_vga_if.FDR_R7 [0]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[1]),
        .Q(\gen_vga_if.FDR_R7 [1]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[2]),
        .Q(\gen_vga_if.FDR_R7 [2]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[3]),
        .Q(\gen_vga_if.FDR_R7 [3]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[4]),
        .Q(\gen_vga_if.FDR_R7 [4]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[5]),
        .Q(\gen_vga_if.FDR_R7 [5]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[6]),
        .Q(\gen_vga_if.FDR_R7 [6]),
        .R(H_bp_cnt_tc_reg));
  FDRE \RED_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(BRAM_TFT_R_data[7]),
        .Q(\gen_vga_if.FDR_R7 [7]),
        .R(H_bp_cnt_tc_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    tc_inv_i_1
       (.I0(\BRAM_TFT_addr_reg_n_0_[4] ),
        .I1(\BRAM_TFT_addr_reg_n_0_[0] ),
        .I2(\BRAM_TFT_addr_reg_n_0_[3] ),
        .I3(\BRAM_TFT_addr_reg_n_0_[2] ),
        .I4(\BRAM_TFT_addr_reg_n_0_[1] ),
        .I5(\BRAM_TFT_addr[0]_i_4_n_0 ),
        .O(tc));
  FDSE tc_reg_inv
       (.C(sys_tft_clk),
        .CE(tc_reg_inv_n_0),
        .D(tc),
        .Q(tc_reg_inv_n_0),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_10_slave_register" *) 
module axi_tft_0_axi_tft_v2_1_10_slave_register
   (bus2ip_rdce_d2_reg_0,
    bus2ip_rdce_d2,
    bus2ip_wrce_d2_reg_0,
    bus2ip_wrce_d2,
    TFT_iic_xfer,
    TFT_status_reg,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    tft_dps,
    cs_ce_clr,
    s_axi_wready,
    s_axi_arready,
    TFT_status_reg_reg_0,
    \IP2Bus_Data_reg[24]_0 ,
    \IP2Bus_Data_reg[16]_0 ,
    Q,
    D,
    bus2ip_sreset,
    tft_status_i,
    s_axi_aclk,
    bus2ip_rdce_or,
    bus2ip_wrce_or,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    bus2ip_sreset_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    s_axi_aresetn,
    s_axi_wdata,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    bus2ip_sreset_reg_0,
    IP2Bus_Data,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    TFT_on_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 );
  output bus2ip_rdce_d2_reg_0;
  output bus2ip_rdce_d2;
  output bus2ip_wrce_d2_reg_0;
  output bus2ip_wrce_d2;
  output TFT_iic_xfer;
  output TFT_status_reg;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output tft_dps;
  output cs_ce_clr;
  output s_axi_wready;
  output s_axi_arready;
  output TFT_status_reg_reg_0;
  output [6:0]\IP2Bus_Data_reg[24]_0 ;
  output [7:0]\IP2Bus_Data_reg[16]_0 ;
  output [10:0]Q;
  output [26:0]D;
  input bus2ip_sreset;
  input tft_status_i;
  input s_axi_aclk;
  input bus2ip_rdce_or;
  input bus2ip_wrce_or;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input bus2ip_sreset_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input s_axi_aresetn;
  input [26:0]s_axi_wdata;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input bus2ip_sreset_reg_0;
  input [24:0]IP2Bus_Data;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input Bus_RNW_reg_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input TFT_on_reg_reg_0;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [26:0]D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  wire [24:0]IP2Bus_Data;
  wire \IP2Bus_Data[0]_i_1_n_0 ;
  wire \IP2Bus_Data[28]_i_1_n_0 ;
  wire \IP2Bus_Data[30]_i_1_n_0 ;
  wire \IP2Bus_Data[31]_i_1_n_0 ;
  wire [7:0]\IP2Bus_Data_reg[16]_0 ;
  wire [6:0]\IP2Bus_Data_reg[24]_0 ;
  wire [10:0]Q;
  wire [7:7]TFT_iic_reg_data;
  wire TFT_iic_xfer;
  wire TFT_on_reg_reg_0;
  wire TFT_status_reg;
  wire TFT_status_reg_reg_0;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_d2_reg_0;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire bus2ip_sreset_reg;
  wire bus2ip_sreset_reg_0;
  wire bus2ip_wrce_d2;
  wire bus2ip_wrce_d2_reg_0;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [26:0]s_axi_wdata;
  wire s_axi_wready;
  wire tft_dps;
  wire tft_status_d1;
  wire tft_status_d2;
  wire tft_status_i;

  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(bus2ip_wrce_d2_reg_0),
        .I1(bus2ip_wrce_d2),
        .I2(bus2ip_rdce_d2_reg_0),
        .I3(bus2ip_rdce_d2),
        .I4(s_axi_aresetn),
        .O(cs_ce_clr));
  LUT6 #(
    .INIT(64'h00000000F8888888)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(TFT_iic_xfer),
        .I2(Q[10]),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I5(Bus_RNW_reg_reg),
        .O(\IP2Bus_Data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(IP2Bus_Data[2]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(bus2ip_sreset),
        .O(\IP2Bus_Data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A2A0)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(IP2Bus_Data[0]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(bus2ip_sreset),
        .O(\IP2Bus_Data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EA00)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(TFT_on_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(TFT_iic_reg_data),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I4(bus2ip_sreset),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .O(\IP2Bus_Data[31]_i_1_n_0 ));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data[0]_i_1_n_0 ),
        .Q(D[26]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[15]),
        .Q(D[16]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[14]),
        .Q(D[15]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[13]),
        .Q(D[14]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[12]),
        .Q(D[13]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[11]),
        .Q(D[12]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[24]),
        .Q(D[25]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[10]),
        .Q(D[11]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[9]),
        .Q(D[10]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[8]),
        .Q(D[9]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[7]),
        .Q(D[8]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[6]),
        .Q(D[7]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[5]),
        .Q(D[6]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[4]),
        .Q(D[5]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[3]),
        .Q(D[4]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data[28]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[1]),
        .Q(D[2]),
        .R(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[23]),
        .Q(D[24]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data[30]_i_1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IP2Bus_Data[31]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[22]),
        .Q(D[23]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[21]),
        .Q(D[22]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[20]),
        .Q(D[21]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[19]),
        .Q(D[20]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[18]),
        .Q(D[19]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[17]),
        .Q(D[18]),
        .R(bus2ip_sreset_reg_0));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Data[16]),
        .Q(D[17]),
        .R(bus2ip_sreset_reg_0));
  FDSE \TFT_base_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[26]),
        .Q(Q[10]),
        .S(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[16]),
        .Q(Q[0]),
        .R(bus2ip_sreset));
  FDSE \TFT_base_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[25]),
        .Q(Q[9]),
        .S(bus2ip_sreset));
  FDSE \TFT_base_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[24]),
        .Q(Q[8]),
        .S(bus2ip_sreset));
  FDSE \TFT_base_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[23]),
        .Q(Q[7]),
        .S(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[22]),
        .Q(Q[6]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[21]),
        .Q(Q[5]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[20]),
        .Q(Q[4]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[19]),
        .Q(Q[3]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[18]),
        .Q(Q[2]),
        .R(bus2ip_sreset));
  FDRE \TFT_base_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .D(s_axi_wdata[17]),
        .Q(Q[1]),
        .R(bus2ip_sreset));
  FDRE TFT_dps_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .Q(tft_dps),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\IP2Bus_Data_reg[16]_0 [7]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\IP2Bus_Data_reg[16]_0 [6]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\IP2Bus_Data_reg[16]_0 [5]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\IP2Bus_Data_reg[16]_0 [4]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\IP2Bus_Data_reg[16]_0 [3]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\IP2Bus_Data_reg[16]_0 [2]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\IP2Bus_Data_reg[16]_0 [1]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\IP2Bus_Data_reg[16]_0 [0]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\IP2Bus_Data_reg[24]_0 [6]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\IP2Bus_Data_reg[24]_0 [5]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\IP2Bus_Data_reg[24]_0 [4]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\IP2Bus_Data_reg[24]_0 [3]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\IP2Bus_Data_reg[24]_0 [2]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\IP2Bus_Data_reg[24]_0 [1]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\IP2Bus_Data_reg[24]_0 [0]),
        .R(bus2ip_sreset));
  FDRE \TFT_iic_reg_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .D(s_axi_wdata[0]),
        .Q(TFT_iic_reg_data),
        .R(bus2ip_sreset));
  FDRE TFT_iic_xfer_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .Q(TFT_iic_xfer),
        .R(bus2ip_sreset));
  FDRE TFT_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .Q(prmry_in),
        .R(bus2ip_sreset));
  FDSE TFT_on_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .S(bus2ip_sreset));
  LUT5 #(
    .INIT(32'hFFAFCCAC)) 
    TFT_status_reg_i_2
       (.I0(s_axi_wdata[0]),
        .I1(tft_status_d2),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(TFT_status_reg),
        .O(TFT_status_reg_reg_0));
  FDRE TFT_status_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_sreset_reg),
        .Q(TFT_status_reg),
        .R(1'b0));
  FDRE bus2ip_rdce_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_or),
        .Q(bus2ip_rdce_d2_reg_0),
        .R(bus2ip_sreset));
  FDRE bus2ip_rdce_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_d2_reg_0),
        .Q(bus2ip_rdce_d2),
        .R(bus2ip_sreset));
  FDRE bus2ip_wrce_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_or),
        .Q(bus2ip_wrce_d2_reg_0),
        .R(bus2ip_sreset));
  FDRE bus2ip_wrce_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_d2_reg_0),
        .Q(bus2ip_wrce_d2),
        .R(bus2ip_sreset));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(bus2ip_rdce_d2_reg_0),
        .I1(bus2ip_rdce_d2),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0
       (.I0(bus2ip_wrce_d2_reg_0),
        .I1(bus2ip_wrce_d2),
        .O(s_axi_wready));
  FDRE tft_status_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tft_status_i),
        .Q(tft_status_d1),
        .R(bus2ip_sreset));
  FDRE tft_status_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tft_status_d1),
        .Q(tft_status_d2),
        .R(bus2ip_sreset));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_10_tft_interface" *) 
module axi_tft_0_axi_tft_v2_1_10_tft_interface
   (tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_hsync,
    tft_vsync,
    tft_de,
    sys_tft_clk,
    tft_rst,
    \RED_reg[7] ,
    C0,
    \GREEN_reg[7] ,
    \BLUE_reg[7] ,
    HSYNC_i,
    VSYNC_i,
    DE_i);
  output tft_vga_clk;
  output [7:0]tft_vga_r;
  output [7:0]tft_vga_g;
  output [7:0]tft_vga_b;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  input sys_tft_clk;
  input tft_rst;
  input [7:0]\RED_reg[7] ;
  input C0;
  input [7:0]\GREEN_reg[7] ;
  input [7:0]\BLUE_reg[7] ;
  input HSYNC_i;
  input VSYNC_i;
  input DE_i;

  wire [7:0]\BLUE_reg[7] ;
  wire C0;
  wire DE_i;
  wire [7:0]\GREEN_reg[7] ;
  wire HSYNC_i;
  wire [7:0]\RED_reg[7] ;
  wire VSYNC_i;
  wire sys_tft_clk;
  wire tft_de;
  wire tft_hsync;
  wire tft_rst;
  wire [7:0]tft_vga_b;
  wire tft_vga_clk;
  wire [7:0]tft_vga_g;
  wire [7:0]tft_vga_r;
  wire tft_vsync;
  wire \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    FDR_DE
       (.C(C0),
        .CE(1'b1),
        .D(DE_i),
        .Q(tft_de),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    FDS_HSYNC
       (.C(C0),
        .CE(1'b1),
        .D(HSYNC_i),
        .Q(tft_hsync),
        .S(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    FDS_VSYNC
       (.C(C0),
        .CE(1'b1),
        .D(VSYNC_i),
        .Q(tft_vsync),
        .S(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B0 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [0]),
        .Q(tft_vga_b[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B1 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [1]),
        .Q(tft_vga_b[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B2 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [2]),
        .Q(tft_vga_b[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B3 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [3]),
        .Q(tft_vga_b[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B4 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [4]),
        .Q(tft_vga_b[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B5 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [5]),
        .Q(tft_vga_b[5]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B6 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [6]),
        .Q(tft_vga_b[6]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_B7 
       (.C(C0),
        .CE(1'b1),
        .D(\BLUE_reg[7] [7]),
        .Q(tft_vga_b[7]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G0 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [0]),
        .Q(tft_vga_g[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G1 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [1]),
        .Q(tft_vga_g[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G2 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [2]),
        .Q(tft_vga_g[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G3 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [3]),
        .Q(tft_vga_g[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G4 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [4]),
        .Q(tft_vga_g[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G5 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [5]),
        .Q(tft_vga_g[5]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G6 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [6]),
        .Q(tft_vga_g[6]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_G7 
       (.C(C0),
        .CE(1'b1),
        .D(\GREEN_reg[7] [7]),
        .Q(tft_vga_g[7]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R0 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [0]),
        .Q(tft_vga_r[0]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R1 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [1]),
        .Q(tft_vga_r[1]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R2 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [2]),
        .Q(tft_vga_r[2]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R3 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [3]),
        .Q(tft_vga_r[3]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R4 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [4]),
        .Q(tft_vga_r[4]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R5 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [5]),
        .Q(tft_vga_r[5]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R6 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [6]),
        .Q(tft_vga_r[6]),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \gen_vga_if.FDR_R7 
       (.C(C0),
        .CE(1'b1),
        .D(\RED_reg[7] [7]),
        .Q(tft_vga_r[7]),
        .R(tft_rst));
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_vga_if.gen_7s.TFT_CLK_ODDR 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(tft_vga_clk),
        .R(tft_rst),
        .S(\NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_10_v_sync" *) 
module axi_tft_0_axi_tft_v2_1_10_v_sync
   (clk_stb_d1,
    prmry_in_xored,
    prmry_in_xored_0,
    get_line_start,
    get_line_start_d1_reg,
    DE_i,
    VSYNC_i,
    \HSYNC_cs_reg[0] ,
    sys_tft_clk,
    clk_ce_neg0,
    clk_ce_pos0,
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ,
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_0 ,
    \HSYNC_cs_reg[1] ,
    h_pix_cnt_tc,
    vsync_rst);
  output clk_stb_d1;
  output prmry_in_xored;
  output prmry_in_xored_0;
  output get_line_start;
  output get_line_start_d1_reg;
  output DE_i;
  output VSYNC_i;
  input \HSYNC_cs_reg[0] ;
  input sys_tft_clk;
  input clk_ce_neg0;
  input clk_ce_pos0;
  input \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ;
  input \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_0 ;
  input \HSYNC_cs_reg[1] ;
  input h_pix_cnt_tc;
  input vsync_rst;

  wire DE_i;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_0 ;
  wire \HSYNC_cs_reg[0] ;
  wire \HSYNC_cs_reg[1] ;
  wire [0:4]VSYNC_cs;
  wire \VSYNC_cs[0]_i_2_n_0 ;
  wire \VSYNC_cs[4]_i_1_n_0 ;
  wire VSYNC_i;
  wire [0:3]VSYNC_ns;
  wire V_bp_cnt_tc_i_1_n_0;
  wire V_l_cnt_tc;
  wire V_p_cnt_tc_i_1_n_0;
  wire clk_ce_neg;
  wire clk_ce_neg0;
  wire clk_ce_pos;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire get_line_start;
  wire get_line_start_d1_reg;
  wire h_pix_cnt_tc;
  wire prmry_in_xored;
  wire prmry_in_xored_0;
  wire sys_tft_clk;
  wire [0:2]v_bp_cnt;
  wire v_bp_cnt0;
  wire \v_bp_cnt[0]_i_2_n_0 ;
  wire \v_bp_cnt[1]_i_1_n_0 ;
  wire \v_bp_cnt[2]_i_1_n_0 ;
  wire v_bp_cnt_tc;
  wire [0:1]v_fp_cnt;
  wire v_fp_cnt0;
  wire \v_fp_cnt[0]_i_1_n_0 ;
  wire \v_fp_cnt[1]_i_1_n_0 ;
  wire v_fp_cnt_tc;
  wire v_fp_cnt_tc_i_1_n_0;
  wire [0:8]v_l_cnt;
  wire v_l_cnt0;
  wire \v_l_cnt[0]_i_3_n_0 ;
  wire [0:8]v_l_cnt_0;
  wire v_l_cnt_tc;
  wire [0:3]v_p_cnt;
  wire v_p_cnt0;
  wire \v_p_cnt[0]_i_2_n_0 ;
  wire \v_p_cnt[1]_i_1_n_0 ;
  wire \v_p_cnt[2]_i_1_n_0 ;
  wire \v_p_cnt[3]_i_1_n_0 ;
  wire v_p_cnt_tc;
  wire vsync_rst;

  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \BRAM_TFT_addr[0]_i_3 
       (.I0(VSYNC_cs[1]),
        .I1(VSYNC_cs[3]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[4]),
        .I4(VSYNC_cs[0]),
        .O(get_line_start_d1_reg));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    FDR_DE_i_1
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[3]),
        .I4(VSYNC_cs[1]),
        .I5(\HSYNC_cs_reg[1] ),
        .O(DE_i));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    FDS_VSYNC_i_1
       (.I0(VSYNC_cs[3]),
        .I1(VSYNC_cs[1]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[4]),
        .I4(VSYNC_cs[0]),
        .O(VSYNC_i));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__0 
       (.I0(v_p_cnt_tc),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from ),
        .O(prmry_in_xored));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__1 
       (.I0(v_bp_cnt_tc),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_0 ),
        .O(prmry_in_xored_0));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \VSYNC_cs[0]_i_1 
       (.I0(\VSYNC_cs[0]_i_2_n_0 ),
        .I1(VSYNC_cs[1]),
        .I2(v_l_cnt_tc),
        .I3(VSYNC_cs[0]),
        .I4(v_fp_cnt_tc),
        .O(VSYNC_ns[0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \VSYNC_cs[0]_i_2 
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[3]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[0]),
        .O(\VSYNC_cs[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \VSYNC_cs[1]_i_1 
       (.I0(\VSYNC_cs[0]_i_2_n_0 ),
        .I1(VSYNC_cs[2]),
        .I2(v_bp_cnt_tc),
        .I3(VSYNC_cs[1]),
        .I4(v_l_cnt_tc),
        .O(VSYNC_ns[1]));
  LUT5 #(
    .INIT(32'h8080AA80)) 
    \VSYNC_cs[2]_i_1 
       (.I0(\VSYNC_cs[0]_i_2_n_0 ),
        .I1(VSYNC_cs[3]),
        .I2(v_p_cnt_tc),
        .I3(VSYNC_cs[2]),
        .I4(v_bp_cnt_tc),
        .O(VSYNC_ns[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \VSYNC_cs[3]_i_1 
       (.I0(\VSYNC_cs[0]_i_2_n_0 ),
        .I1(VSYNC_cs[0]),
        .I2(v_fp_cnt_tc),
        .I3(v_p_cnt_tc),
        .I4(VSYNC_cs[3]),
        .I5(VSYNC_cs[4]),
        .O(VSYNC_ns[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \VSYNC_cs[4]_i_1 
       (.I0(\VSYNC_cs[0]_i_2_n_0 ),
        .O(\VSYNC_cs[4]_i_1_n_0 ));
  FDRE \VSYNC_cs_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns[0]),
        .Q(VSYNC_cs[0]),
        .R(vsync_rst));
  FDRE \VSYNC_cs_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns[1]),
        .Q(VSYNC_cs[1]),
        .R(vsync_rst));
  FDRE \VSYNC_cs_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns[2]),
        .Q(VSYNC_cs[2]),
        .R(vsync_rst));
  FDRE \VSYNC_cs_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(VSYNC_ns[3]),
        .Q(VSYNC_cs[3]),
        .R(vsync_rst));
  FDSE \VSYNC_cs_reg[4] 
       (.C(sys_tft_clk),
        .CE(clk_ce_pos),
        .D(\VSYNC_cs[4]_i_1_n_0 ),
        .Q(VSYNC_cs[4]),
        .S(vsync_rst));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h40)) 
    V_bp_cnt_tc_i_1
       (.I0(v_bp_cnt[2]),
        .I1(v_bp_cnt[0]),
        .I2(v_bp_cnt[1]),
        .O(V_bp_cnt_tc_i_1_n_0));
  FDRE V_bp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(V_bp_cnt_tc_i_1_n_0),
        .Q(v_bp_cnt_tc),
        .R(v_bp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    V_l_cnt_tc_i_1
       (.I0(\v_l_cnt[0]_i_3_n_0 ),
        .I1(v_l_cnt[3]),
        .I2(v_l_cnt[1]),
        .I3(v_l_cnt[2]),
        .I4(v_l_cnt[0]),
        .O(V_l_cnt_tc));
  FDRE V_l_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(V_l_cnt_tc),
        .Q(v_l_cnt_tc),
        .R(v_l_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    V_p_cnt_tc_i_1
       (.I0(v_p_cnt[0]),
        .I1(v_p_cnt[1]),
        .I2(v_p_cnt[3]),
        .I3(v_p_cnt[2]),
        .O(V_p_cnt_tc_i_1_n_0));
  FDRE V_p_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(V_p_cnt_tc_i_1_n_0),
        .Q(v_p_cnt_tc),
        .R(v_p_cnt0));
  FDRE clk_ce_neg_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(clk_ce_neg0),
        .Q(clk_ce_neg),
        .R(1'b0));
  FDRE clk_ce_pos_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(clk_ce_pos0),
        .Q(clk_ce_pos),
        .R(1'b0));
  FDRE clk_stb_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\HSYNC_cs_reg[0] ),
        .Q(clk_stb_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF010000)) 
    get_line_start_d1_i_1
       (.I0(get_line_start_d1_reg),
        .I1(v_l_cnt_tc),
        .I2(\HSYNC_cs_reg[1] ),
        .I3(v_bp_cnt_tc),
        .I4(h_pix_cnt_tc),
        .O(get_line_start));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_bp_cnt[0]_i_1 
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[0]),
        .I2(VSYNC_cs[3]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[2]),
        .I5(vsync_rst),
        .O(v_bp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \v_bp_cnt[0]_i_2 
       (.I0(v_bp_cnt[1]),
        .I1(v_bp_cnt[0]),
        .I2(v_bp_cnt[2]),
        .O(\v_bp_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_bp_cnt[1]_i_1 
       (.I0(v_bp_cnt[1]),
        .I1(v_bp_cnt[2]),
        .O(\v_bp_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_bp_cnt[2]_i_1 
       (.I0(v_bp_cnt[2]),
        .O(\v_bp_cnt[2]_i_1_n_0 ));
  FDRE \v_bp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[0]_i_2_n_0 ),
        .Q(v_bp_cnt[0]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[1]_i_1_n_0 ),
        .Q(v_bp_cnt[1]),
        .R(v_bp_cnt0));
  FDRE \v_bp_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_bp_cnt[2]_i_1_n_0 ),
        .Q(v_bp_cnt[2]),
        .R(v_bp_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \v_fp_cnt[0]_i_1 
       (.I0(v_fp_cnt[0]),
        .I1(clk_ce_neg),
        .I2(v_fp_cnt[1]),
        .I3(v_fp_cnt0),
        .O(\v_fp_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010112)) 
    \v_fp_cnt[0]_i_2 
       (.I0(VSYNC_cs[4]),
        .I1(VSYNC_cs[0]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[3]),
        .I5(vsync_rst),
        .O(v_fp_cnt0));
  LUT3 #(
    .INIT(8'h06)) 
    \v_fp_cnt[1]_i_1 
       (.I0(v_fp_cnt[1]),
        .I1(clk_ce_neg),
        .I2(v_fp_cnt0),
        .O(\v_fp_cnt[1]_i_1_n_0 ));
  FDRE \v_fp_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\v_fp_cnt[0]_i_1_n_0 ),
        .Q(v_fp_cnt[0]),
        .R(1'b0));
  FDRE \v_fp_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\v_fp_cnt[1]_i_1_n_0 ),
        .Q(v_fp_cnt[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00002E22)) 
    v_fp_cnt_tc_i_1
       (.I0(v_fp_cnt_tc),
        .I1(clk_ce_neg),
        .I2(v_fp_cnt[1]),
        .I3(v_fp_cnt[0]),
        .I4(v_fp_cnt0),
        .O(v_fp_cnt_tc_i_1_n_0));
  FDRE v_fp_cnt_tc_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(v_fp_cnt_tc_i_1_n_0),
        .Q(v_fp_cnt_tc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_l_cnt[0]_i_1 
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[3]),
        .I4(VSYNC_cs[1]),
        .I5(vsync_rst),
        .O(v_l_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_l_cnt[0]_i_2 
       (.I0(v_l_cnt[0]),
        .I1(v_l_cnt[2]),
        .I2(\v_l_cnt[0]_i_3_n_0 ),
        .I3(v_l_cnt[3]),
        .I4(v_l_cnt[1]),
        .O(v_l_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_l_cnt[0]_i_3 
       (.I0(v_l_cnt[4]),
        .I1(v_l_cnt[6]),
        .I2(v_l_cnt[5]),
        .I3(v_l_cnt[8]),
        .I4(v_l_cnt[7]),
        .O(\v_l_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_l_cnt[1]_i_1 
       (.I0(v_l_cnt[1]),
        .I1(v_l_cnt[3]),
        .I2(\v_l_cnt[0]_i_3_n_0 ),
        .I3(v_l_cnt[2]),
        .O(v_l_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_l_cnt[2]_i_1 
       (.I0(v_l_cnt[2]),
        .I1(\v_l_cnt[0]_i_3_n_0 ),
        .I2(v_l_cnt[3]),
        .O(v_l_cnt_0[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_l_cnt[3]_i_1 
       (.I0(v_l_cnt[3]),
        .I1(v_l_cnt[7]),
        .I2(v_l_cnt[8]),
        .I3(v_l_cnt[5]),
        .I4(v_l_cnt[6]),
        .I5(v_l_cnt[4]),
        .O(v_l_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_l_cnt[4]_i_1 
       (.I0(v_l_cnt[4]),
        .I1(v_l_cnt[6]),
        .I2(v_l_cnt[5]),
        .I3(v_l_cnt[8]),
        .I4(v_l_cnt[7]),
        .O(v_l_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_l_cnt[5]_i_1 
       (.I0(v_l_cnt[5]),
        .I1(v_l_cnt[8]),
        .I2(v_l_cnt[7]),
        .I3(v_l_cnt[6]),
        .O(v_l_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_l_cnt[6]_i_1 
       (.I0(v_l_cnt[8]),
        .I1(v_l_cnt[7]),
        .I2(v_l_cnt[6]),
        .O(v_l_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_l_cnt[7]_i_1 
       (.I0(v_l_cnt[8]),
        .I1(v_l_cnt[7]),
        .O(v_l_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_l_cnt[8]_i_1 
       (.I0(v_l_cnt[8]),
        .O(v_l_cnt_0[8]));
  FDRE \v_l_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[0]),
        .Q(v_l_cnt[0]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[1]),
        .Q(v_l_cnt[1]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[2]),
        .Q(v_l_cnt[2]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[3]),
        .Q(v_l_cnt[3]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[4] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[4]),
        .Q(v_l_cnt[4]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[5] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[5]),
        .Q(v_l_cnt[5]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[6] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[6]),
        .Q(v_l_cnt[6]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[7] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[7]),
        .Q(v_l_cnt[7]),
        .R(v_l_cnt0));
  FDRE \v_l_cnt_reg[8] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(v_l_cnt_0[8]),
        .Q(v_l_cnt[8]),
        .R(v_l_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \v_p_cnt[0]_i_1 
       (.I0(VSYNC_cs[0]),
        .I1(VSYNC_cs[4]),
        .I2(VSYNC_cs[2]),
        .I3(VSYNC_cs[1]),
        .I4(VSYNC_cs[3]),
        .I5(vsync_rst),
        .O(v_p_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \v_p_cnt[0]_i_2 
       (.I0(v_p_cnt[2]),
        .I1(v_p_cnt[0]),
        .I2(v_p_cnt[1]),
        .I3(v_p_cnt[3]),
        .O(\v_p_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \v_p_cnt[1]_i_1 
       (.I0(v_p_cnt[2]),
        .I1(v_p_cnt[1]),
        .I2(v_p_cnt[3]),
        .O(\v_p_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_p_cnt[2]_i_1 
       (.I0(v_p_cnt[2]),
        .I1(v_p_cnt[3]),
        .O(\v_p_cnt[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_p_cnt[3]_i_1 
       (.I0(v_p_cnt[3]),
        .O(\v_p_cnt[3]_i_1_n_0 ));
  FDRE \v_p_cnt_reg[0] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_p_cnt[0]_i_2_n_0 ),
        .Q(v_p_cnt[0]),
        .R(v_p_cnt0));
  FDRE \v_p_cnt_reg[1] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_p_cnt[1]_i_1_n_0 ),
        .Q(v_p_cnt[1]),
        .R(v_p_cnt0));
  FDRE \v_p_cnt_reg[2] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_p_cnt[2]_i_1_n_0 ),
        .Q(v_p_cnt[2]),
        .R(v_p_cnt0));
  FDRE \v_p_cnt_reg[3] 
       (.C(sys_tft_clk),
        .CE(clk_ce_neg),
        .D(\v_p_cnt[3]_i_1_n_0 ),
        .Q(v_p_cnt[3]),
        .R(v_p_cnt0));
endmodule

(* ORIG_REF_NAME = "axi_tft_v2_1_tft_controller" *) 
module axi_tft_0_axi_tft_v2_1_tft_controller
   (ip2intc_irpt,
    tft_vga_clk,
    tft_vga_r,
    tft_vga_g,
    tft_vga_b,
    tft_hsync,
    tft_vsync,
    tft_de,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    bus2ip_wrce_d1,
    bus2ip_wrce_d2,
    eof_n,
    TFT_iic_xfer,
    TFT_status_reg,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    tft_dps,
    cs_ce_clr,
    s_axi_wready,
    s_axi_arready,
    E,
    ip2bus_mstrd_req,
    scndry_out,
    TFT_status_reg_reg,
    Q,
    \IP2Bus_Data_reg[24] ,
    \IP2Bus_Data_reg[16] ,
    D,
    IP2Bus_Mst_Type,
    \sig_cmd_mst_addr_reg[31] ,
    IP2Bus_MstRd_dst_rdy,
    m_axi_aclk,
    sys_tft_clk,
    bus2ip_mreset,
    bus2ip_sreset,
    s_axi_aclk,
    C0,
    bus2ip_rdce_or,
    bus2ip_wrce_or,
    bus2ip_mstrd_eof_n,
    sig_m_valid_out_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    bus2ip_sreset_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    s_axi_aresetn,
    sig_cmd_empty_reg,
    sig_rd_discontinue,
    sig_llink2cmd_rd_busy,
    sig_rd2llink_strm_tlast,
    bus2ip_mst_cmplt,
    s_axi_wdata,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    bus2ip_sreset_reg_0,
    IP2Bus_Data,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    TFT_on_reg_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    bus2ip_mst_cmdack,
    sig_rd_discontinue_reg,
    \sig_data_reg_out_reg[23] );
  output ip2intc_irpt;
  output tft_vga_clk;
  output [7:0]tft_vga_r;
  output [7:0]tft_vga_g;
  output [7:0]tft_vga_b;
  output tft_hsync;
  output tft_vsync;
  output tft_de;
  output bus2ip_rdce_d1;
  output bus2ip_rdce_d2;
  output bus2ip_wrce_d1;
  output bus2ip_wrce_d2;
  output eof_n;
  output TFT_iic_xfer;
  output TFT_status_reg;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output tft_dps;
  output cs_ce_clr;
  output s_axi_wready;
  output s_axi_arready;
  output [0:0]E;
  output ip2bus_mstrd_req;
  output scndry_out;
  output TFT_status_reg_reg;
  output [9:0]Q;
  output [6:0]\IP2Bus_Data_reg[24] ;
  output [7:0]\IP2Bus_Data_reg[16] ;
  output [26:0]D;
  output IP2Bus_Mst_Type;
  output [24:0]\sig_cmd_mst_addr_reg[31] ;
  output IP2Bus_MstRd_dst_rdy;
  input m_axi_aclk;
  input sys_tft_clk;
  input bus2ip_mreset;
  input bus2ip_sreset;
  input s_axi_aclk;
  input C0;
  input bus2ip_rdce_or;
  input bus2ip_wrce_or;
  input bus2ip_mstrd_eof_n;
  input sig_m_valid_out_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input bus2ip_sreset_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input s_axi_aresetn;
  input sig_cmd_empty_reg;
  input sig_rd_discontinue;
  input sig_llink2cmd_rd_busy;
  input sig_rd2llink_strm_tlast;
  input bus2ip_mst_cmplt;
  input [26:0]s_axi_wdata;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input bus2ip_sreset_reg_0;
  input [24:0]IP2Bus_Data;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input Bus_RNW_reg_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input TFT_on_reg_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  input bus2ip_mst_cmdack;
  input [0:0]sig_rd_discontinue_reg;
  input [47:0]\sig_data_reg_out_reg[23] ;

  wire [8:63]AXI_BRAM_data_i;
  wire AXI_BRAM_we_i;
  wire [7:0]BLUE_i;
  wire BRAM_TFT_addr0;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire C0;
  wire [26:0]D;
  wire DE_i;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  wire [7:0]GREEN_i;
  wire HSYNC_U2_n_3;
  wire HSYNC_U2_n_5;
  wire HSYNC_i;
  wire I2C_done_tft;
  wire [24:0]IP2Bus_Data;
  wire [7:0]\IP2Bus_Data_reg[16] ;
  wire [6:0]\IP2Bus_Data_reg[24] ;
  wire IP2Bus_MstRd_Req_i_1_n_0;
  wire IP2Bus_MstRd_dst_rdy;
  wire IP2Bus_MstRd_dst_rdy_i_1_n_0;
  wire IP2Bus_Mst_Type;
  wire IP2Bus_Mst_Type_i_1_n_0;
  wire [9:0]Q;
  wire RED0;
  wire [7:0]RED_i;
  wire TFT_iic_xfer;
  wire TFT_on_reg_reg;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire VSYNC_U3_n_4;
  wire VSYNC_i;
  wire V_BP_SYNC_n_0;
  wire V_P_SYNC_n_0;
  wire V_P_SYNC_n_2;
  (* async_reg = "true" *) wire axi_rst_d1;
  (* async_reg = "true" *) wire axi_rst_d6;
  wire bus2ip_mreset;
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt;
  wire bus2ip_mstrd_eof_n;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_sreset;
  wire bus2ip_sreset_reg;
  wire bus2ip_sreset_reg_0;
  wire bus2ip_wrce_d1;
  wire bus2ip_wrce_d2;
  wire bus2ip_wrce_or;
  wire clk_ce_neg0;
  wire clk_ce_pos0;
  wire clk_stb_d1;
  wire cs_ce_clr;
  wire eof_n;
  wire get_line_start;
  wire get_line_start_d1;
  wire h_pix_cnt_tc;
  wire ip2bus_mstrd_req;
  wire ip2intc_irpt;
  wire ip2intc_irpt_i;
  wire [0:8]line_cnt;
  wire \line_cnt[0]_i_4_n_0 ;
  wire \line_cnt[7]_i_2_n_0 ;
  wire \line_cnt[7]_i_3_n_0 ;
  wire [0:8]line_cnt_0;
  wire m_axi_aclk;
  wire master_rst;
  wire mn_request_set;
  wire [4:0]p_0_in__0;
  wire prmry_in;
  wire prmry_in_xored;
  wire prmry_in_xored_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [26:0]s_axi_wdata;
  wire s_axi_wready;
  wire scndry_out;
  wire sig_cmd_empty_reg;
  wire [24:0]\sig_cmd_mst_addr_reg[31] ;
  wire [47:0]\sig_data_reg_out_reg[23] ;
  wire sig_llink2cmd_rd_busy;
  wire sig_m_valid_out_reg;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd_discontinue;
  wire [0:0]sig_rd_discontinue_reg;
  wire sys_tft_clk;
  wire [0:10]tft_base_addr_d2;
  wire [0:0]tft_base_addr_i;
  wire tft_de;
  wire tft_dps;
  wire tft_hsync;
  wire tft_intr_en_maxi;
  wire tft_on_reg_bram_d2;
  wire tft_rst;
  wire tft_status_i;
  wire [7:0]tft_vga_b;
  wire tft_vga_clk;
  wire [7:0]tft_vga_g;
  wire [7:0]tft_vga_r;
  wire tft_vsync;
  wire trans_cnt1;
  wire \trans_cnt_i[0]_i_2_n_0 ;
  wire [0:4]trans_cnt_reg__0;
  wire trans_cnt_tc;
  wire trans_cnt_tc_pulse;
  wire trans_cnt_tc_pulse_i;
  wire v_bp_pulse;
  wire vsync_intr;
  wire vsync_rst;

  FDRE \AXI_BRAM_data_i_reg[10] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [45]),
        .Q(AXI_BRAM_data_i[10]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[11] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [44]),
        .Q(AXI_BRAM_data_i[11]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[12] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [43]),
        .Q(AXI_BRAM_data_i[12]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[13] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [42]),
        .Q(AXI_BRAM_data_i[13]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[14] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [41]),
        .Q(AXI_BRAM_data_i[14]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[15] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [40]),
        .Q(AXI_BRAM_data_i[15]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[16] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [39]),
        .Q(AXI_BRAM_data_i[16]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[17] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [38]),
        .Q(AXI_BRAM_data_i[17]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[18] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [37]),
        .Q(AXI_BRAM_data_i[18]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[19] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [36]),
        .Q(AXI_BRAM_data_i[19]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[20] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [35]),
        .Q(AXI_BRAM_data_i[20]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[21] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [34]),
        .Q(AXI_BRAM_data_i[21]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[22] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [33]),
        .Q(AXI_BRAM_data_i[22]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[23] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [32]),
        .Q(AXI_BRAM_data_i[23]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[24] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [31]),
        .Q(AXI_BRAM_data_i[24]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[25] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [30]),
        .Q(AXI_BRAM_data_i[25]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[26] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [29]),
        .Q(AXI_BRAM_data_i[26]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[27] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [28]),
        .Q(AXI_BRAM_data_i[27]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[28] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [27]),
        .Q(AXI_BRAM_data_i[28]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[29] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [26]),
        .Q(AXI_BRAM_data_i[29]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[30] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [25]),
        .Q(AXI_BRAM_data_i[30]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[31] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [24]),
        .Q(AXI_BRAM_data_i[31]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[40] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [23]),
        .Q(AXI_BRAM_data_i[40]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[41] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [22]),
        .Q(AXI_BRAM_data_i[41]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[42] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [21]),
        .Q(AXI_BRAM_data_i[42]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[43] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [20]),
        .Q(AXI_BRAM_data_i[43]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[44] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [19]),
        .Q(AXI_BRAM_data_i[44]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[45] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [18]),
        .Q(AXI_BRAM_data_i[45]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[46] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [17]),
        .Q(AXI_BRAM_data_i[46]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[47] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [16]),
        .Q(AXI_BRAM_data_i[47]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[48] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [15]),
        .Q(AXI_BRAM_data_i[48]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[49] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [14]),
        .Q(AXI_BRAM_data_i[49]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[50] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [13]),
        .Q(AXI_BRAM_data_i[50]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[51] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [12]),
        .Q(AXI_BRAM_data_i[51]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[52] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [11]),
        .Q(AXI_BRAM_data_i[52]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[53] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [10]),
        .Q(AXI_BRAM_data_i[53]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[54] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [9]),
        .Q(AXI_BRAM_data_i[54]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[55] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [8]),
        .Q(AXI_BRAM_data_i[55]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[56] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [7]),
        .Q(AXI_BRAM_data_i[56]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[57] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [6]),
        .Q(AXI_BRAM_data_i[57]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[58] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [5]),
        .Q(AXI_BRAM_data_i[58]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[59] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [4]),
        .Q(AXI_BRAM_data_i[59]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[60] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [3]),
        .Q(AXI_BRAM_data_i[60]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[61] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [2]),
        .Q(AXI_BRAM_data_i[61]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[62] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [1]),
        .Q(AXI_BRAM_data_i[62]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[63] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [0]),
        .Q(AXI_BRAM_data_i[63]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [47]),
        .Q(AXI_BRAM_data_i[8]),
        .R(master_rst));
  FDRE \AXI_BRAM_data_i_reg[9] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\sig_data_reg_out_reg[23] [46]),
        .Q(AXI_BRAM_data_i[9]),
        .R(master_rst));
  FDRE AXI_BRAM_we_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_out_reg),
        .Q(AXI_BRAM_we_i),
        .R(master_rst));
  axi_tft_0_cdc_sync__parameterized3 BASE_ADDR_SYNC
       (.Q({tft_base_addr_i,Q}),
        .m_axi_aclk(m_axi_aclk),
        .scndry_vect_out({tft_base_addr_d2[0],tft_base_addr_d2[1],tft_base_addr_d2[2],tft_base_addr_d2[3],tft_base_addr_d2[4],tft_base_addr_d2[5],tft_base_addr_d2[6],tft_base_addr_d2[7],tft_base_addr_d2[8],tft_base_addr_d2[9],tft_base_addr_d2[10]}));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    FDR_IP2INTC_Irpt
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(ip2intc_irpt_i),
        .Q(ip2intc_irpt),
        .R(master_rst));
  axi_tft_0_cdc_sync__parameterized0 GET_LINE_SYNC
       (.Q({trans_cnt_reg__0[0],trans_cnt_reg__0[1],trans_cnt_reg__0[2]}),
        .bus2ip_mreset(bus2ip_mreset),
        .bus2ip_mst_cmplt(bus2ip_mst_cmplt),
        .get_line_start_d1(get_line_start_d1),
        .m_axi_aclk(m_axi_aclk),
        .mn_request_set(mn_request_set),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .\trans_cnt_reg[4] (\trans_cnt_i[0]_i_2_n_0 ));
  axi_tft_0_axi_tft_v2_1_10_h_sync HSYNC_U2
       (.\BRAM_TFT_addr_reg[0] (BRAM_TFT_addr0),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 (I2C_done_tft),
        .HSYNC_i(HSYNC_i),
        .\RED_reg[7] (HSYNC_U2_n_3),
        .SR(RED0),
        .\VSYNC_cs_reg[1] (VSYNC_U3_n_4),
        .clk_ce_neg0(clk_ce_neg0),
        .clk_ce_pos0(clk_ce_pos0),
        .clk_stb_d1(clk_stb_d1),
        .clk_stb_d1_reg(HSYNC_U2_n_5),
        .h_pix_cnt_tc(h_pix_cnt_tc),
        .p_0_in(axi_rst_d6),
        .scndry_out(tft_on_reg_bram_d2),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst),
        .vsync_rst(vsync_rst));
  axi_tft_0_cdc_sync__parameterized6 I2C_DONE_SYNC
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 (tft_on_reg_bram_d2),
        .p_0_in(axi_rst_d6),
        .scndry_out(I2C_done_tft),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  axi_tft_0_cdc_sync INTR_EN_SYNC
       (.m_axi_aclk(m_axi_aclk),
        .prmry_in(prmry_in),
        .scndry_out(tft_intr_en_maxi));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    IP2Bus_MstRd_Req_i_1
       (.I0(ip2bus_mstrd_req),
        .I1(mn_request_set),
        .I2(trans_cnt_tc_pulse),
        .I3(bus2ip_mst_cmdack),
        .I4(scndry_out),
        .I5(bus2ip_mreset),
        .O(IP2Bus_MstRd_Req_i_1_n_0));
  FDRE IP2Bus_MstRd_Req_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_MstRd_Req_i_1_n_0),
        .Q(ip2bus_mstrd_req),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000E0000)) 
    IP2Bus_MstRd_dst_rdy_i_1
       (.I0(IP2Bus_MstRd_dst_rdy),
        .I1(mn_request_set),
        .I2(sig_rd_discontinue_reg),
        .I3(bus2ip_mreset),
        .I4(scndry_out),
        .O(IP2Bus_MstRd_dst_rdy_i_1_n_0));
  FDRE IP2Bus_MstRd_dst_rdy_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_MstRd_dst_rdy_i_1_n_0),
        .Q(IP2Bus_MstRd_dst_rdy),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000E00)) 
    IP2Bus_Mst_Type_i_1
       (.I0(IP2Bus_Mst_Type),
        .I1(mn_request_set),
        .I2(bus2ip_mreset),
        .I3(scndry_out),
        .I4(bus2ip_mst_cmdack),
        .O(IP2Bus_Mst_Type_i_1_n_0));
  FDRE IP2Bus_Mst_Type_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Mst_Type_i_1_n_0),
        .Q(IP2Bus_Mst_Type),
        .R(1'b0));
  axi_tft_0_axi_tft_v2_1_10_line_buffer LINE_BUFFER_U4
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .H_bp_cnt_tc_reg(RED0),
        .Q({AXI_BRAM_data_i[8],AXI_BRAM_data_i[9],AXI_BRAM_data_i[10],AXI_BRAM_data_i[11],AXI_BRAM_data_i[12],AXI_BRAM_data_i[13],AXI_BRAM_data_i[14],AXI_BRAM_data_i[15],AXI_BRAM_data_i[16],AXI_BRAM_data_i[17],AXI_BRAM_data_i[18],AXI_BRAM_data_i[19],AXI_BRAM_data_i[20],AXI_BRAM_data_i[21],AXI_BRAM_data_i[22],AXI_BRAM_data_i[23],AXI_BRAM_data_i[24],AXI_BRAM_data_i[25],AXI_BRAM_data_i[26],AXI_BRAM_data_i[27],AXI_BRAM_data_i[28],AXI_BRAM_data_i[29],AXI_BRAM_data_i[30],AXI_BRAM_data_i[31],AXI_BRAM_data_i[40],AXI_BRAM_data_i[41],AXI_BRAM_data_i[42],AXI_BRAM_data_i[43],AXI_BRAM_data_i[44],AXI_BRAM_data_i[45],AXI_BRAM_data_i[46],AXI_BRAM_data_i[47],AXI_BRAM_data_i[48],AXI_BRAM_data_i[49],AXI_BRAM_data_i[50],AXI_BRAM_data_i[51],AXI_BRAM_data_i[52],AXI_BRAM_data_i[53],AXI_BRAM_data_i[54],AXI_BRAM_data_i[55],AXI_BRAM_data_i[56],AXI_BRAM_data_i[57],AXI_BRAM_data_i[58],AXI_BRAM_data_i[59],AXI_BRAM_data_i[60],AXI_BRAM_data_i[61],AXI_BRAM_data_i[62],AXI_BRAM_data_i[63]}),
        .SR(BRAM_TFT_addr0),
        .\gen_vga_if.FDR_B7 (BLUE_i),
        .\gen_vga_if.FDR_G7 (GREEN_i),
        .\gen_vga_if.FDR_R7 (RED_i),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  axi_tft_0_axi_tft_v2_1_10_slave_register SLAVE_REG_U6
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ),
        .IP2Bus_Data(IP2Bus_Data),
        .\IP2Bus_Data_reg[16]_0 (\IP2Bus_Data_reg[16] ),
        .\IP2Bus_Data_reg[24]_0 (\IP2Bus_Data_reg[24] ),
        .Q({tft_base_addr_i,Q}),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_on_reg_reg_0(TFT_on_reg_reg),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg_0(TFT_status_reg_reg),
        .bus2ip_rdce_d2(bus2ip_rdce_d2),
        .bus2ip_rdce_d2_reg_0(bus2ip_rdce_d1),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_sreset_reg(bus2ip_sreset_reg),
        .bus2ip_sreset_reg_0(bus2ip_sreset_reg_0),
        .bus2ip_wrce_d2(bus2ip_wrce_d2),
        .bus2ip_wrce_d2_reg_0(bus2ip_wrce_d1),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .tft_dps(tft_dps),
        .tft_status_i(tft_status_i));
  axi_tft_0_axi_tft_v2_1_10_tft_interface TFT_IF_U5
       (.\BLUE_reg[7] (BLUE_i),
        .C0(C0),
        .DE_i(DE_i),
        .\GREEN_reg[7] (GREEN_i),
        .HSYNC_i(HSYNC_i),
        .\RED_reg[7] (RED_i),
        .VSYNC_i(VSYNC_i),
        .sys_tft_clk(sys_tft_clk),
        .tft_de(tft_de),
        .tft_hsync(tft_hsync),
        .tft_rst(tft_rst),
        .tft_vga_b(tft_vga_b),
        .tft_vga_clk(tft_vga_clk),
        .tft_vga_g(tft_vga_g),
        .tft_vga_r(tft_vga_r),
        .tft_vsync(tft_vsync));
  axi_tft_0_cdc_sync_0 TFT_ON_MAXI_SYNC
       (.SR(master_rst),
        .TFT_on_reg_reg(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .bus2ip_mreset(bus2ip_mreset),
        .m_axi_aclk(m_axi_aclk),
        .scndry_out(scndry_out));
  axi_tft_0_cdc_sync__parameterized4 TFT_ON_TFT_SYNC
       (.TFT_on_reg_reg(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .scndry_out(tft_on_reg_bram_d2),
        .sys_tft_clk(sys_tft_clk));
  axi_tft_0_axi_tft_v2_1_10_v_sync VSYNC_U3
       (.DE_i(DE_i),
        .\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from (V_P_SYNC_n_0),
        .\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_0 (V_BP_SYNC_n_0),
        .\HSYNC_cs_reg[0] (HSYNC_U2_n_5),
        .\HSYNC_cs_reg[1] (HSYNC_U2_n_3),
        .VSYNC_i(VSYNC_i),
        .clk_ce_neg0(clk_ce_neg0),
        .clk_ce_pos0(clk_ce_pos0),
        .clk_stb_d1(clk_stb_d1),
        .get_line_start(get_line_start),
        .get_line_start_d1_reg(VSYNC_U3_n_4),
        .h_pix_cnt_tc(h_pix_cnt_tc),
        .prmry_in_xored(prmry_in_xored_0),
        .prmry_in_xored_0(prmry_in_xored),
        .sys_tft_clk(sys_tft_clk),
        .vsync_rst(vsync_rst));
  axi_tft_0_cdc_sync__parameterized2 V_BP_SYNC
       (.E(v_bp_pulse),
        .\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 (V_BP_SYNC_n_0),
        .bus2ip_mreset(bus2ip_mreset),
        .m_axi_aclk(m_axi_aclk),
        .prmry_in_xored(prmry_in_xored),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
  axi_tft_0_cdc_sync__parameterized5 V_INTR_SYNC
       (.bus2ip_mreset(bus2ip_mreset),
        .bus2ip_sreset(bus2ip_sreset),
        .m_axi_aclk(m_axi_aclk),
        .s_axi_aclk(s_axi_aclk),
        .tft_status_i(tft_status_i),
        .vsync_intr(vsync_intr));
  axi_tft_0_cdc_sync__parameterized1 V_P_SYNC
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (scndry_out),
        .\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 (V_P_SYNC_n_0),
        .SR(V_P_SYNC_n_2),
        .bus2ip_mreset(bus2ip_mreset),
        .eof_n(eof_n),
        .ip2intc_irpt_i(ip2intc_irpt_i),
        .\line_cnt_reg[8] (trans_cnt1),
        .m_axi_aclk(m_axi_aclk),
        .prmry_in_xored(prmry_in_xored_0),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_rd2llink_strm_tlast(sig_rd2llink_strm_tlast),
        .sig_rd_discontinue(sig_rd_discontinue),
        .sys_tft_clk(sys_tft_clk),
        .tft_intr_en_maxi(tft_intr_en_maxi),
        .tft_rst(tft_rst),
        .trans_cnt_tc(trans_cnt_tc),
        .vsync_intr(vsync_intr));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE axi_rst_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(bus2ip_mreset),
        .D(1'b1),
        .Q(axi_rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE axi_rst_d6_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(bus2ip_mreset),
        .D(axi_rst_d1),
        .Q(axi_rst_d6));
  FDSE eof_n_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_mstrd_eof_n),
        .Q(eof_n),
        .S(master_rst));
  FDRE get_line_start_d1_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(get_line_start),
        .Q(get_line_start_d1),
        .R(tft_rst));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA2AA)) 
    \line_cnt[0]_i_2 
       (.I0(trans_cnt_tc_pulse_i),
        .I1(trans_cnt_reg__0[0]),
        .I2(trans_cnt_reg__0[2]),
        .I3(trans_cnt_reg__0[1]),
        .I4(trans_cnt_reg__0[4]),
        .I5(trans_cnt_reg__0[3]),
        .O(trans_cnt_tc_pulse));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hDFDF2000)) 
    \line_cnt[0]_i_3 
       (.I0(line_cnt[2]),
        .I1(\line_cnt[0]_i_4_n_0 ),
        .I2(line_cnt[1]),
        .I3(line_cnt[3]),
        .I4(line_cnt[0]),
        .O(line_cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \line_cnt[0]_i_4 
       (.I0(line_cnt[5]),
        .I1(line_cnt[7]),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[4]),
        .O(\line_cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hF01CF0F0)) 
    \line_cnt[1]_i_1 
       (.I0(line_cnt[0]),
        .I1(line_cnt[3]),
        .I2(line_cnt[1]),
        .I3(\line_cnt[0]_i_4_n_0 ),
        .I4(line_cnt[2]),
        .O(line_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFF0015AA)) 
    \line_cnt[2]_i_1 
       (.I0(line_cnt[3]),
        .I1(line_cnt[0]),
        .I2(line_cnt[1]),
        .I3(line_cnt[2]),
        .I4(\line_cnt[0]_i_4_n_0 ),
        .O(line_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hAAAA1555)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[0]_i_4_n_0 ),
        .I1(line_cnt[2]),
        .I2(line_cnt[1]),
        .I3(line_cnt[0]),
        .I4(line_cnt[3]),
        .O(line_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \line_cnt[4]_i_1 
       (.I0(line_cnt[5]),
        .I1(line_cnt[7]),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[4]),
        .O(line_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \line_cnt[5]_i_1 
       (.I0(line_cnt[6]),
        .I1(line_cnt[8]),
        .I2(line_cnt[7]),
        .I3(line_cnt[5]),
        .O(line_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \line_cnt[6]_i_1 
       (.I0(line_cnt[7]),
        .I1(line_cnt[8]),
        .I2(line_cnt[6]),
        .O(line_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h66666660)) 
    \line_cnt[7]_i_1 
       (.I0(line_cnt[7]),
        .I1(line_cnt[8]),
        .I2(\line_cnt[7]_i_2_n_0 ),
        .I3(\line_cnt[7]_i_3_n_0 ),
        .I4(line_cnt[3]),
        .O(line_cnt_0[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \line_cnt[7]_i_2 
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .I2(line_cnt[8]),
        .I3(line_cnt[2]),
        .O(\line_cnt[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \line_cnt[7]_i_3 
       (.I0(line_cnt[5]),
        .I1(line_cnt[4]),
        .I2(line_cnt[7]),
        .I3(line_cnt[6]),
        .O(\line_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \line_cnt[8]_i_1 
       (.I0(line_cnt[8]),
        .O(line_cnt_0[8]));
  FDRE \line_cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[0]),
        .Q(\sig_cmd_mst_addr_reg[31] [13]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[1]),
        .Q(\sig_cmd_mst_addr_reg[31] [12]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[2]),
        .Q(\sig_cmd_mst_addr_reg[31] [11]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[3]),
        .Q(\sig_cmd_mst_addr_reg[31] [10]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[4] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[4]),
        .Q(\sig_cmd_mst_addr_reg[31] [9]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[5] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[5]),
        .Q(\sig_cmd_mst_addr_reg[31] [8]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[6] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[6]),
        .Q(\sig_cmd_mst_addr_reg[31] [7]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[7] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[7]),
        .Q(\sig_cmd_mst_addr_reg[31] [6]),
        .R(master_rst));
  FDRE \line_cnt_i_reg[8] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(line_cnt[8]),
        .Q(\sig_cmd_mst_addr_reg[31] [5]),
        .R(master_rst));
  FDRE \line_cnt_reg[0] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[0]),
        .Q(line_cnt[0]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[1] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[1]),
        .Q(line_cnt[1]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[2] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[2]),
        .Q(line_cnt[2]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[3] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[3]),
        .Q(line_cnt[3]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[4] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[4]),
        .Q(line_cnt[4]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[5] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[5]),
        .Q(line_cnt[5]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[6] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[6]),
        .Q(line_cnt[6]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[7] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[7]),
        .Q(line_cnt[7]),
        .R(trans_cnt1));
  FDRE \line_cnt_reg[8] 
       (.C(m_axi_aclk),
        .CE(trans_cnt_tc_pulse),
        .D(line_cnt_0[8]),
        .Q(line_cnt[8]),
        .R(trans_cnt1));
  LUT2 #(
    .INIT(4'h8)) 
    sig_cmd_mstrd_req_i_2
       (.I0(ip2bus_mstrd_req),
        .I1(sig_cmd_empty_reg),
        .O(E));
  FDSE \tft_base_addr_reg[0] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[0]),
        .Q(\sig_cmd_mst_addr_reg[31] [24]),
        .S(master_rst));
  FDRE \tft_base_addr_reg[10] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[10]),
        .Q(\sig_cmd_mst_addr_reg[31] [14]),
        .R(master_rst));
  FDSE \tft_base_addr_reg[1] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[1]),
        .Q(\sig_cmd_mst_addr_reg[31] [23]),
        .S(master_rst));
  FDSE \tft_base_addr_reg[2] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[2]),
        .Q(\sig_cmd_mst_addr_reg[31] [22]),
        .S(master_rst));
  FDSE \tft_base_addr_reg[3] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[3]),
        .Q(\sig_cmd_mst_addr_reg[31] [21]),
        .S(master_rst));
  FDRE \tft_base_addr_reg[4] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[4]),
        .Q(\sig_cmd_mst_addr_reg[31] [20]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[5] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[5]),
        .Q(\sig_cmd_mst_addr_reg[31] [19]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[6] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[6]),
        .Q(\sig_cmd_mst_addr_reg[31] [18]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[7] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[7]),
        .Q(\sig_cmd_mst_addr_reg[31] [17]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[8] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[8]),
        .Q(\sig_cmd_mst_addr_reg[31] [16]),
        .R(master_rst));
  FDRE \tft_base_addr_reg[9] 
       (.C(m_axi_aclk),
        .CE(v_bp_pulse),
        .D(tft_base_addr_d2[9]),
        .Q(\sig_cmd_mst_addr_reg[31] [15]),
        .R(master_rst));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \trans_cnt[0]_i_3 
       (.I0(trans_cnt_reg__0[0]),
        .I1(trans_cnt_reg__0[2]),
        .I2(trans_cnt_reg__0[3]),
        .I3(trans_cnt_reg__0[4]),
        .I4(trans_cnt_reg__0[1]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \trans_cnt[1]_i_1 
       (.I0(trans_cnt_reg__0[1]),
        .I1(trans_cnt_reg__0[4]),
        .I2(trans_cnt_reg__0[3]),
        .I3(trans_cnt_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \trans_cnt[2]_i_1 
       (.I0(trans_cnt_reg__0[2]),
        .I1(trans_cnt_reg__0[3]),
        .I2(trans_cnt_reg__0[4]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \trans_cnt[3]_i_1 
       (.I0(trans_cnt_reg__0[4]),
        .I1(trans_cnt_reg__0[3]),
        .O(p_0_in__0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \trans_cnt[4]_i_1 
       (.I0(trans_cnt_reg__0[4]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \trans_cnt_i[0]_i_2 
       (.I0(trans_cnt_reg__0[4]),
        .I1(trans_cnt_reg__0[3]),
        .O(\trans_cnt_i[0]_i_2_n_0 ));
  FDRE \trans_cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[0]),
        .Q(\sig_cmd_mst_addr_reg[31] [4]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[1]),
        .Q(\sig_cmd_mst_addr_reg[31] [3]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[2]),
        .Q(\sig_cmd_mst_addr_reg[31] [2]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[3] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[3]),
        .Q(\sig_cmd_mst_addr_reg[31] [1]),
        .R(master_rst));
  FDRE \trans_cnt_i_reg[4] 
       (.C(m_axi_aclk),
        .CE(mn_request_set),
        .D(trans_cnt_reg__0[4]),
        .Q(\sig_cmd_mst_addr_reg[31] [0]),
        .R(master_rst));
  FDRE \trans_cnt_reg[0] 
       (.C(m_axi_aclk),
        .CE(sig_rd_discontinue_reg),
        .D(p_0_in__0[4]),
        .Q(trans_cnt_reg__0[0]),
        .R(V_P_SYNC_n_2));
  FDRE \trans_cnt_reg[1] 
       (.C(m_axi_aclk),
        .CE(sig_rd_discontinue_reg),
        .D(p_0_in__0[3]),
        .Q(trans_cnt_reg__0[1]),
        .R(V_P_SYNC_n_2));
  FDRE \trans_cnt_reg[2] 
       (.C(m_axi_aclk),
        .CE(sig_rd_discontinue_reg),
        .D(p_0_in__0[2]),
        .Q(trans_cnt_reg__0[2]),
        .R(V_P_SYNC_n_2));
  FDRE \trans_cnt_reg[3] 
       (.C(m_axi_aclk),
        .CE(sig_rd_discontinue_reg),
        .D(p_0_in__0[1]),
        .Q(trans_cnt_reg__0[3]),
        .R(V_P_SYNC_n_2));
  FDRE \trans_cnt_reg[4] 
       (.C(m_axi_aclk),
        .CE(sig_rd_discontinue_reg),
        .D(p_0_in__0[0]),
        .Q(trans_cnt_reg__0[4]),
        .R(V_P_SYNC_n_2));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    trans_cnt_tc_pulse_i_i_1
       (.I0(trans_cnt_reg__0[3]),
        .I1(trans_cnt_reg__0[4]),
        .I2(trans_cnt_reg__0[1]),
        .I3(trans_cnt_reg__0[2]),
        .I4(trans_cnt_reg__0[0]),
        .O(trans_cnt_tc));
  FDRE trans_cnt_tc_pulse_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(trans_cnt_tc),
        .Q(trans_cnt_tc_pulse_i),
        .R(master_rst));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module axi_tft_0_blk_mem_gen_generic_cstr
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(D),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module axi_tft_0_blk_mem_gen_prim_width
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(D),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module axi_tft_0_blk_mem_gen_prim_wrapper
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_78 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 ;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\gc1.count_d2_reg[8] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gic0.gc1.count_d3_reg[8] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(sys_tft_clk),
        .CLKBWRCLK(m_axi_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [47:42],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [41:36],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [35:30],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [29:24]}),
        .DIBDI({1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [23:18],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [17:12],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [11:6],1'b0,1'b0,\AXI_BRAM_data_i_reg[8] [5:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ,D[23:18],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ,D[17:12],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ,D[11:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ,D[5:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ,D[47:42],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ,D[41:36],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ,D[35:30],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_77 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_78 ,D[29:24]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(E),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(Q),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module axi_tft_0_blk_mem_gen_top
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(D),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_1" *) 
module axi_tft_0_blk_mem_gen_v8_3_1
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_blk_mem_gen_v8_3_1_synth inst_blk_mem_gen
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(D),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_1_synth" *) 
module axi_tft_0_blk_mem_gen_v8_3_1_synth
   (D,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] );
  output [47:0]D;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [47:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(D),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync
   (scndry_out,
    prmry_in,
    m_axi_aclk);
  output scndry_out;
  input prmry_in;
  input m_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire m_axi_aclk;
  wire prmry_in;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync_0
   (SR,
    scndry_out,
    bus2ip_mreset,
    TFT_on_reg_reg,
    m_axi_aclk);
  output [0:0]SR;
  output scndry_out;
  input bus2ip_mreset;
  input TFT_on_reg_reg;
  input m_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire [0:0]SR;
  wire TFT_on_reg_reg;
  wire bus2ip_mreset;
  wire m_axi_aclk;
  wire scndry_out;

  LUT2 #(
    .INIT(4'hB)) 
    FDR_IP2INTC_Irpt_i_1
       (.I0(bus2ip_mreset),
        .I1(scndry_out),
        .O(SR));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(TFT_on_reg_reg),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized0
   (mn_request_set,
    tft_rst,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    bus2ip_mst_cmplt,
    \trans_cnt_reg[4] ,
    Q,
    get_line_start_d1);
  output mn_request_set;
  input tft_rst;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input bus2ip_mst_cmplt;
  input \trans_cnt_reg[4] ;
  input [2:0]Q;
  input get_line_start_d1;

  wire D;
  wire D0_in;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ;
  wire [2:0]Q;
  wire bus2ip_mreset;
  wire bus2ip_mst_cmplt;
  wire get_line;
  wire get_line_start_d1;
  wire m_axi_aclk;
  wire mn_request_set;
  wire prmry_in_xored;
  wire s_out_re;
  wire sys_tft_clk;
  wire tft_rst;
  wire \trans_cnt_reg[4] ;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .Q(D0_in),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D0_in),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(get_line),
        .R(bus2ip_mreset));
  LUT3 #(
    .INIT(8'h28)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_i_1 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .I2(D0_in),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .Q(D),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .R(tft_rst));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__2 
       (.I0(get_line_start_d1),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .O(prmry_in_xored));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .R(bus2ip_mreset));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    \trans_cnt_i[0]_i_1 
       (.I0(bus2ip_mst_cmplt),
        .I1(\trans_cnt_reg[4] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(get_line),
        .O(mn_request_set));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized1
   (\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ,
    vsync_intr,
    SR,
    \line_cnt_reg[8] ,
    ip2intc_irpt_i,
    tft_rst,
    prmry_in_xored,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk,
    sig_rd_discontinue,
    sig_llink2cmd_rd_busy,
    sig_rd2llink_strm_tlast,
    eof_n,
    trans_cnt_tc,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    tft_intr_en_maxi);
  output \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ;
  output vsync_intr;
  output [0:0]SR;
  output [0:0]\line_cnt_reg[8] ;
  output ip2intc_irpt_i;
  input tft_rst;
  input prmry_in_xored;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;
  input sig_rd_discontinue;
  input sig_llink2cmd_rd_busy;
  input sig_rd2llink_strm_tlast;
  input eof_n;
  input trans_cnt_tc;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input tft_intr_en_maxi;

  wire D;
  wire D0_in;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ;
  wire [0:0]SR;
  wire bus2ip_mreset;
  wire eof_n;
  wire ip2intc_irpt_i;
  wire [0:0]\line_cnt_reg[8] ;
  wire m_axi_aclk;
  wire prmry_in_xored;
  wire s_out_re;
  wire sig_llink2cmd_rd_busy;
  wire sig_rd2llink_strm_tlast;
  wire sig_rd_discontinue;
  wire sys_tft_clk;
  wire tft_intr_en_maxi;
  wire tft_rst;
  wire trans_cnt_tc;
  wire vsync_intr;

  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    FDR_IP2INTC_Irpt_i_2
       (.I0(vsync_intr),
        .I1(tft_intr_en_maxi),
        .O(ip2intc_irpt_i));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .Q(D0_in),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D0_in),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(vsync_intr),
        .R(bus2ip_mreset));
  LUT3 #(
    .INIT(8'h28)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_i_1__0 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .I2(D0_in),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ),
        .Q(D),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .R(bus2ip_mreset));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \line_cnt[0]_i_1 
       (.I0(vsync_intr),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I2(bus2ip_mreset),
        .O(\line_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAAAA)) 
    \trans_cnt[0]_i_1 
       (.I0(\line_cnt_reg[8] ),
        .I1(sig_rd_discontinue),
        .I2(sig_llink2cmd_rd_busy),
        .I3(sig_rd2llink_strm_tlast),
        .I4(eof_n),
        .I5(trans_cnt_tc),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized2
   (\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ,
    E,
    tft_rst,
    prmry_in_xored,
    sys_tft_clk,
    bus2ip_mreset,
    m_axi_aclk);
  output \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ;
  output [0:0]E;
  input tft_rst;
  input prmry_in_xored;
  input sys_tft_clk;
  input bus2ip_mreset;
  input m_axi_aclk;

  wire D;
  wire D0_in;
  wire [0:0]E;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ;
  wire bus2ip_mreset;
  wire m_axi_aclk;
  wire prmry_in_xored;
  wire s_out_re;
  wire sys_tft_clk;
  wire tft_rst;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .Q(D0_in),
        .R(bus2ip_mreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D0_in),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(E),
        .R(bus2ip_mreset));
  LUT3 #(
    .INIT(8'h28)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_i_1__1 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .I2(D0_in),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ),
        .Q(D),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to_0 ),
        .R(tft_rst));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .R(bus2ip_mreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .R(bus2ip_mreset));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized3
   (scndry_vect_out,
    Q,
    m_axi_aclk);
  output [10:0]scndry_vect_out;
  input [10:0]Q;
  input m_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire [10:0]Q;
  wire m_axi_aclk;
  wire [10:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized4
   (scndry_out,
    TFT_on_reg_reg,
    sys_tft_clk);
  output scndry_out;
  input TFT_on_reg_reg;
  input sys_tft_clk;

  wire D;
  wire TFT_on_reg_reg;
  wire scndry_out;
  wire sys_tft_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(TFT_on_reg_reg),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(D),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized5
   (tft_status_i,
    bus2ip_mreset,
    m_axi_aclk,
    bus2ip_sreset,
    s_axi_aclk,
    vsync_intr);
  output tft_status_i;
  input bus2ip_mreset;
  input m_axi_aclk;
  input bus2ip_sreset;
  input s_axi_aclk;
  input vsync_intr;

  wire D;
  wire D0_in;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ;
  wire \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ;
  wire bus2ip_mreset;
  wire bus2ip_sreset;
  wire m_axi_aclk;
  wire prmry_in_xored;
  wire s_axi_aclk;
  wire s_out_re;
  wire tft_status_i;
  wire vsync_intr;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3_n_0 ),
        .Q(D0_in),
        .R(bus2ip_sreset));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D0_in),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(tft_status_i),
        .R(bus2ip_sreset));
  LUT3 #(
    .INIT(8'h28)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out_i_1__2 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .I1(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5_n_0 ),
        .I2(D0_in),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .Q(D),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(prmry_in_xored),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .R(bus2ip_mreset));
  LUT2 #(
    .INIT(4'h6)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1 
       (.I0(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_n_0 ),
        .I1(vsync_intr),
        .O(prmry_in_xored));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .R(bus2ip_sreset));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4_n_0 ),
        .Q(\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5_n_0 ),
        .R(bus2ip_sreset));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_tft_0_cdc_sync__parameterized6
   (tft_rst,
    scndry_out,
    p_0_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ,
    sys_tft_clk);
  output tft_rst;
  output scndry_out;
  input p_0_in;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  input sys_tft_clk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  wire p_0_in;
  wire scndry_out;
  wire sys_tft_clk;
  wire tft_rst;

  LUT3 #(
    .INIT(8'h7F)) 
    FDS_HSYNC_i_1
       (.I0(p_0_in),
        .I1(scndry_out),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ),
        .O(tft_rst));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(D),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_tft_0_clk_x_pntrs
   (ram_full_fb_i_reg,
    RD_PNTR_WR,
    ram_full_fb_i_reg_0,
    WR_PNTR_RD,
    Q,
    \gic0.gc1.count_d1_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \gc1.count_d2_reg[8] ,
    m_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ,
    sys_tft_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output ram_full_fb_i_reg;
  output [7:0]RD_PNTR_WR;
  output ram_full_fb_i_reg_0;
  output [8:0]WR_PNTR_RD;
  input [0:0]Q;
  input [0:0]\gic0.gc1.count_d1_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [8:0]\gc1.count_d2_reg[8] ;
  input m_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  input sys_tft_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [0:0]Q;
  wire [7:0]RD_PNTR_WR;
  wire [8:0]WR_PNTR_RD;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [0:0]\gic0.gc1.count_d1_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire \gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gsync_stage[2].wr_stg_inst_n_3 ;
  wire \gsync_stage[2].wr_stg_inst_n_4 ;
  wire \gsync_stage[2].wr_stg_inst_n_5 ;
  wire \gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gsync_stage[2].wr_stg_inst_n_7 ;
  wire \gsync_stage[2].wr_stg_inst_n_8 ;
  wire m_axi_aclk;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in7_out;
  wire [8:8]p_0_out;
  wire [8:8]p_1_out;
  wire [8:8]p_22_out;
  wire [8:0]p_2_out;
  wire [8:0]p_3_out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire [8:0]rd_pntr_gc;
  wire \rd_pntr_gc[0]_i_1_n_0 ;
  wire \rd_pntr_gc[1]_i_1_n_0 ;
  wire \rd_pntr_gc[2]_i_1_n_0 ;
  wire \rd_pntr_gc[3]_i_1_n_0 ;
  wire \rd_pntr_gc[4]_i_1_n_0 ;
  wire \rd_pntr_gc[5]_i_1_n_0 ;
  wire \rd_pntr_gc[6]_i_1_n_0 ;
  wire \rd_pntr_gc[7]_i_1_n_0 ;
  wire sys_tft_clk;
  wire [8:0]wr_pntr_gc;

  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(p_22_out),
        .I1(Q),
        .O(ram_full_fb_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(p_22_out),
        .I1(\gic0.gc1.count_d1_reg[8] ),
        .O(ram_full_fb_i_reg_0));
  axi_tft_0_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .sys_tft_clk(sys_tft_clk));
  axi_tft_0_synchronizer_ff_4 \gsync_stage[1].wr_stg_inst 
       (.D(p_2_out),
        .Q(rd_pntr_gc),
        .m_axi_aclk(m_axi_aclk),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ));
  axi_tft_0_synchronizer_ff_5 \gsync_stage[2].rd_stg_inst 
       (.D(p_0_in),
        .\Q_reg_reg[8]_0 (p_3_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_1_out),
        .sys_tft_clk(sys_tft_clk));
  axi_tft_0_synchronizer_ff_6 \gsync_stage[2].wr_stg_inst 
       (.D({\gsync_stage[2].wr_stg_inst_n_1 ,\gsync_stage[2].wr_stg_inst_n_2 ,\gsync_stage[2].wr_stg_inst_n_3 ,\gsync_stage[2].wr_stg_inst_n_4 ,\gsync_stage[2].wr_stg_inst_n_5 ,\gsync_stage[2].wr_stg_inst_n_6 ,\gsync_stage[2].wr_stg_inst_n_7 ,\gsync_stage[2].wr_stg_inst_n_8 }),
        .\Q_reg_reg[8]_0 (p_2_out),
        .m_axi_aclk(m_axi_aclk),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .out(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_8 ),
        .Q(RD_PNTR_WR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_7 ),
        .Q(RD_PNTR_WR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(RD_PNTR_WR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_5 ),
        .Q(RD_PNTR_WR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_4 ),
        .Q(RD_PNTR_WR[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(RD_PNTR_WR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(RD_PNTR_WR[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(RD_PNTR_WR[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_out),
        .Q(p_22_out));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[0]_i_1 
       (.I0(\gc1.count_d2_reg[8] [0]),
        .I1(\gc1.count_d2_reg[8] [1]),
        .O(\rd_pntr_gc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[1]_i_1 
       (.I0(\gc1.count_d2_reg[8] [1]),
        .I1(\gc1.count_d2_reg[8] [2]),
        .O(\rd_pntr_gc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[2]_i_1 
       (.I0(\gc1.count_d2_reg[8] [2]),
        .I1(\gc1.count_d2_reg[8] [3]),
        .O(\rd_pntr_gc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[3]_i_1 
       (.I0(\gc1.count_d2_reg[8] [3]),
        .I1(\gc1.count_d2_reg[8] [4]),
        .O(\rd_pntr_gc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[4]_i_1 
       (.I0(\gc1.count_d2_reg[8] [4]),
        .I1(\gc1.count_d2_reg[8] [5]),
        .O(\rd_pntr_gc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[5]_i_1 
       (.I0(\gc1.count_d2_reg[8] [5]),
        .I1(\gc1.count_d2_reg[8] [6]),
        .O(\rd_pntr_gc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[6]_i_1 
       (.I0(\gc1.count_d2_reg[8] [6]),
        .I1(\gc1.count_d2_reg[8] [7]),
        .O(\rd_pntr_gc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[7]_i_1 
       (.I0(\gc1.count_d2_reg[8] [7]),
        .I1(\gc1.count_d2_reg[8] [8]),
        .O(\rd_pntr_gc[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[0]_i_1_n_0 ),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[1]_i_1_n_0 ),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[2]_i_1_n_0 ),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[3]_i_1_n_0 ),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[4]_i_1_n_0 ),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[5]_i_1_n_0 ),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[6]_i_1_n_0 ),
        .Q(rd_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\rd_pntr_gc[7]_i_1_n_0 ),
        .Q(rd_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gc1.count_d2_reg[8] [8]),
        .Q(rd_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[0]),
        .Q(WR_PNTR_RD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[1]),
        .Q(WR_PNTR_RD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[2]),
        .Q(WR_PNTR_RD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[3]),
        .Q(WR_PNTR_RD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[4]),
        .Q(WR_PNTR_RD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[5]),
        .Q(WR_PNTR_RD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[6]),
        .Q(WR_PNTR_RD[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in[7]),
        .Q(WR_PNTR_RD[7]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_1_out),
        .Q(WR_PNTR_RD[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [0]),
        .I1(\gic0.gc1.count_d3_reg[8] [1]),
        .O(p_0_in7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [1]),
        .I1(\gic0.gc1.count_d3_reg[8] [2]),
        .O(p_0_in7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [2]),
        .I1(\gic0.gc1.count_d3_reg[8] [3]),
        .O(p_0_in7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[3]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [3]),
        .I1(\gic0.gc1.count_d3_reg[8] [4]),
        .O(p_0_in7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[4]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [4]),
        .I1(\gic0.gc1.count_d3_reg[8] [5]),
        .O(p_0_in7_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[5]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [5]),
        .I1(\gic0.gc1.count_d3_reg[8] [6]),
        .O(p_0_in7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[6]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [6]),
        .I1(\gic0.gc1.count_d3_reg[8] [7]),
        .O(p_0_in7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[7]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[8] [7]),
        .I1(\gic0.gc1.count_d3_reg[8] [8]),
        .O(p_0_in7_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[5]),
        .Q(wr_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[6]),
        .Q(wr_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in7_out[7]),
        .Q(wr_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gic0.gc1.count_d3_reg[8] [8]),
        .Q(wr_pntr_gc[8]));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module axi_tft_0_cntr_incr_decr_addn_f
   (fifo_full_p1,
    sig_inhibit_rdy_n,
    FIFO_Full_reg,
    m_axi_bvalid,
    sig_strb_reg_out0,
    m_axi_aclk);
  output fifo_full_p1;
  input sig_inhibit_rdy_n;
  input FIFO_Full_reg;
  input m_axi_bvalid;
  input sig_strb_reg_out0;
  input m_axi_aclk;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg_n_0_[0] ;
  wire \INFERRED_GEN.cnt_i_reg_n_0_[1] ;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire m_axi_bvalid;
  wire sig_inhibit_rdy_n;
  wire sig_rd_empty;
  wire sig_strb_reg_out0;

  LUT6 #(
    .INIT(64'h0000515504000000)) 
    FIFO_Full_i_1
       (.I0(sig_rd_empty),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg),
        .I3(m_axi_bvalid),
        .I4(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I5(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(m_axi_bvalid),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n),
        .I3(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg),
        .I2(m_axi_bvalid),
        .I3(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .I4(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(sig_rd_empty),
        .I1(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .I2(sig_inhibit_rdy_n),
        .I3(FIFO_Full_reg),
        .I4(m_axi_bvalid),
        .I5(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(\INFERRED_GEN.cnt_i_reg_n_0_[0] ),
        .S(sig_strb_reg_out0));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(\INFERRED_GEN.cnt_i_reg_n_0_[1] ),
        .S(sig_strb_reg_out0));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(sig_strb_reg_out0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_tft_0_compare
   (comp1,
    \rd_pntr_bin_reg[8] ,
    Q,
    RD_PNTR_WR);
  output comp1;
  input \rd_pntr_bin_reg[8] ;
  input [7:0]Q;
  input [7:0]RD_PNTR_WR;

  wire [7:0]Q;
  wire [7:0]RD_PNTR_WR;
  wire comp1;
  wire \gmux.gm[3].gms.ms_n_0 ;
  wire \rd_pntr_bin_reg[8] ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\gmux.gm[3].gms.ms_n_0 ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(Q[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(Q[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(Q[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(Q[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\gmux.gm[3].gms.ms_n_0 ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\rd_pntr_bin_reg[8] }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_tft_0_compare_1
   (ram_full_i,
    \rd_pntr_bin_reg[8] ,
    p_2_out,
    AXI_BRAM_we_i,
    comp1,
    rst_full_gen_i,
    \gic0.gc1.count_d1_reg[7] ,
    RD_PNTR_WR);
  output ram_full_i;
  input \rd_pntr_bin_reg[8] ;
  input p_2_out;
  input AXI_BRAM_we_i;
  input comp1;
  input rst_full_gen_i;
  input [7:0]\gic0.gc1.count_d1_reg[7] ;
  input [7:0]RD_PNTR_WR;

  wire AXI_BRAM_we_i;
  wire [7:0]RD_PNTR_WR;
  wire comp1;
  wire comp2;
  wire [7:0]\gic0.gc1.count_d1_reg[7] ;
  wire \gmux.gm[3].gms.ms_n_0 ;
  wire p_2_out;
  wire ram_full_i;
  wire \rd_pntr_bin_reg[8] ;
  wire rst_full_gen_i;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\gmux.gm[3].gms.ms_n_0 ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(\gic0.gc1.count_d1_reg[7] [0]),
        .I1(RD_PNTR_WR[0]),
        .I2(\gic0.gc1.count_d1_reg[7] [1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(\gic0.gc1.count_d1_reg[7] [2]),
        .I1(RD_PNTR_WR[2]),
        .I2(\gic0.gc1.count_d1_reg[7] [3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(\gic0.gc1.count_d1_reg[7] [4]),
        .I1(RD_PNTR_WR[4]),
        .I2(\gic0.gc1.count_d1_reg[7] [5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(\gic0.gc1.count_d1_reg[7] [6]),
        .I1(RD_PNTR_WR[6]),
        .I2(\gic0.gc1.count_d1_reg[7] [7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\gmux.gm[3].gms.ms_n_0 ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\rd_pntr_bin_reg[8] }));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_fb_i_i_1
       (.I0(comp2),
        .I1(p_2_out),
        .I2(AXI_BRAM_we_i),
        .I3(comp1),
        .I4(rst_full_gen_i),
        .O(ram_full_i));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_tft_0_compare_2
   (comp0,
    \gc1.count_d2_reg[8] ,
    WR_PNTR_RD,
    \gc1.count_d2_reg[7] );
  output comp0;
  input \gc1.count_d2_reg[8] ;
  input [7:0]WR_PNTR_RD;
  input [7:0]\gc1.count_d2_reg[7] ;

  wire [7:0]WR_PNTR_RD;
  wire comp0;
  wire [7:0]\gc1.count_d2_reg[7] ;
  wire \gc1.count_d2_reg[8] ;
  wire \gmux.gm[3].gms.ms_n_0 ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\gmux.gm[3].gms.ms_n_0 ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc1.count_d2_reg[7] [0]),
        .I2(WR_PNTR_RD[1]),
        .I3(\gc1.count_d2_reg[7] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(\gc1.count_d2_reg[7] [2]),
        .I2(WR_PNTR_RD[3]),
        .I3(\gc1.count_d2_reg[7] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(\gc1.count_d2_reg[7] [4]),
        .I2(WR_PNTR_RD[5]),
        .I3(\gc1.count_d2_reg[7] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(\gc1.count_d2_reg[7] [6]),
        .I2(WR_PNTR_RD[7]),
        .I3(\gc1.count_d2_reg[7] [7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\gmux.gm[3].gms.ms_n_0 ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gc1.count_d2_reg[8] }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_tft_0_compare_3
   (ram_empty_i0,
    \gc1.count_d1_reg[8] ,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \BRAM_TFT_addr_reg[9] ,
    p_2_out,
    comp0,
    WR_PNTR_RD,
    \gc1.count_d1_reg[7] );
  output ram_empty_i0;
  input \gc1.count_d1_reg[8] ;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input [0:0]\BRAM_TFT_addr_reg[9] ;
  input p_2_out;
  input comp0;
  input [7:0]WR_PNTR_RD;
  input [7:0]\gc1.count_d1_reg[7] ;

  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]WR_PNTR_RD;
  wire comp0;
  wire comp1;
  wire [7:0]\gc1.count_d1_reg[7] ;
  wire \gc1.count_d1_reg[8] ;
  wire \gmux.gm[3].gms.ms_n_0 ;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire p_2_out;
  wire ram_empty_i0;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\gmux.gm[3].gms.ms_n_0 ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc1.count_d1_reg[7] [0]),
        .I2(WR_PNTR_RD[1]),
        .I3(\gc1.count_d1_reg[7] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(\gc1.count_d1_reg[7] [2]),
        .I2(WR_PNTR_RD[3]),
        .I3(\gc1.count_d1_reg[7] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(\gc1.count_d1_reg[7] [4]),
        .I2(WR_PNTR_RD[5]),
        .I3(\gc1.count_d1_reg[7] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(\gc1.count_d1_reg[7] [6]),
        .I2(WR_PNTR_RD[7]),
        .I3(\gc1.count_d1_reg[7] [7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\gmux.gm[3].gms.ms_n_0 ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gc1.count_d1_reg[8] }));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000DF00)) 
    ram_empty_fb_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg[1] [0]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(\gpregsm1.curr_fwft_state_reg[1] [1]),
        .I3(comp1),
        .I4(p_2_out),
        .I5(comp0),
        .O(ram_empty_i0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_tft_0_fifo_generator_ramfifo
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    AXI_BRAM_we_i,
    \BRAM_TFT_addr_reg[9] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input AXI_BRAM_we_i;
  input [0:0]\BRAM_TFT_addr_reg[9] ;

  wire AXI_BRAM_we_i;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [47:0]Q;
  wire RD_RST;
  wire WR_RST;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_9 ;
  wire m_axi_aclk;
  wire [8:0]p_0_out;
  wire [8:0]p_11_out;
  wire [8:8]p_12_out;
  wire p_17_out;
  wire [8:0]p_21_out;
  wire [7:0]p_22_out;
  wire p_5_out;
  wire [1:0]rd_rst_i;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire sys_tft_clk;
  wire tft_rst;
  wire tmp_ram_rd_en;
  wire [8:8]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

  axi_tft_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_12_out),
        .RD_PNTR_WR(p_22_out),
        .WR_PNTR_RD(p_21_out),
        .\gc1.count_d2_reg[8] (p_0_out),
        .\gic0.gc1.count_d1_reg[8] (wr_pntr_plus2),
        .\gic0.gc1.count_d3_reg[8] (p_11_out),
        .m_axi_aclk(m_axi_aclk),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (rd_rst_i[1]),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (wr_rst_i),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_9 ),
        .sys_tft_clk(sys_tft_clk));
  axi_tft_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (p_0_out),
        .E(p_5_out),
        .Q({RD_RST,rd_rst_i[0]}),
        .WR_PNTR_RD(p_21_out),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  axi_tft_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (p_11_out),
        .E(p_17_out),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_22_out),
        .\gic0.gc1.count_d3_reg[8] (p_12_out),
        .m_axi_aclk(m_axi_aclk),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (WR_RST),
        .\rd_pntr_bin_reg[8] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\rd_pntr_bin_reg[8]_0 (\gntv_or_sync_fifo.gcx.clkx_n_9 ),
        .rst_full_ff_i(rst_full_ff_i),
        .rst_full_gen_i(rst_full_gen_i));
  axi_tft_0_memory \gntv_or_sync_fifo.mem 
       (.\AXI_BRAM_data_i_reg[8] (Q),
        .\BRAM_TFT_B_data_reg[7] (\BRAM_TFT_B_data_reg[7] ),
        .\BRAM_TFT_G_data_reg[7] (\BRAM_TFT_G_data_reg[7] ),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .D(D),
        .E(p_17_out),
        .Q(rd_rst_i[0]),
        .\gc1.count_d2_reg[8] (p_0_out),
        .\gic0.gc1.count_d3_reg[8] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[0] (p_5_out),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  axi_tft_0_reset_blk_ramfifo__parameterized0 rstblk
       (.Q({WR_RST,wr_rst_i}),
        .\gc1.count_reg[0] ({RD_RST,rd_rst_i}),
        .m_axi_aclk(m_axi_aclk),
        .rst_full_ff_i(rst_full_ff_i),
        .rst_full_gen_i(rst_full_gen_i),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_tft_0_fifo_generator_top
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    AXI_BRAM_we_i,
    \BRAM_TFT_addr_reg[9] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input AXI_BRAM_we_i;
  input [0:0]\BRAM_TFT_addr_reg[9] ;

  wire AXI_BRAM_we_i;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [47:0]Q;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tft_rst;

  axi_tft_0_fifo_generator_ramfifo \grf.rf 
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\BRAM_TFT_B_data_reg[7] (\BRAM_TFT_B_data_reg[7] ),
        .\BRAM_TFT_G_data_reg[7] (\BRAM_TFT_G_data_reg[7] ),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .D(D),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_1" *) 
module axi_tft_0_fifo_generator_v13_0_1
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    AXI_BRAM_we_i,
    \BRAM_TFT_addr_reg[9] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input AXI_BRAM_we_i;
  input [0:0]\BRAM_TFT_addr_reg[9] ;

  wire AXI_BRAM_we_i;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [47:0]Q;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tft_rst;

  axi_tft_0_fifo_generator_v13_0_1_synth inst_fifo_gen
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\BRAM_TFT_B_data_reg[7] (\BRAM_TFT_B_data_reg[7] ),
        .\BRAM_TFT_G_data_reg[7] (\BRAM_TFT_G_data_reg[7] ),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .D(D),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_0_1_synth" *) 
module axi_tft_0_fifo_generator_v13_0_1_synth
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    Q,
    tft_rst,
    AXI_BRAM_we_i,
    \BRAM_TFT_addr_reg[9] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input [47:0]Q;
  input tft_rst;
  input AXI_BRAM_we_i;
  input [0:0]\BRAM_TFT_addr_reg[9] ;

  wire AXI_BRAM_we_i;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [47:0]Q;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tft_rst;

  axi_tft_0_fifo_generator_top \gconvfifo.rf 
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .\BRAM_TFT_B_data_reg[7] (\BRAM_TFT_B_data_reg[7] ),
        .\BRAM_TFT_G_data_reg[7] (\BRAM_TFT_G_data_reg[7] ),
        .\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .D(D),
        .Q(Q),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tft_rst(tft_rst));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_tft_0_memory
   (D,
    \BRAM_TFT_G_data_reg[7] ,
    \BRAM_TFT_B_data_reg[7] ,
    sys_tft_clk,
    m_axi_aclk,
    tmp_ram_rd_en,
    E,
    Q,
    \gc1.count_d2_reg[8] ,
    \gic0.gc1.count_d3_reg[8] ,
    \AXI_BRAM_data_i_reg[8] ,
    \BRAM_TFT_addr_reg[9] ,
    \gpregsm1.curr_fwft_state_reg[0] );
  output [7:0]D;
  output [7:0]\BRAM_TFT_G_data_reg[7] ;
  output [7:0]\BRAM_TFT_B_data_reg[7] ;
  input sys_tft_clk;
  input m_axi_aclk;
  input tmp_ram_rd_en;
  input [0:0]E;
  input [0:0]Q;
  input [8:0]\gc1.count_d2_reg[8] ;
  input [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [47:0]\AXI_BRAM_data_i_reg[8] ;
  input [0:0]\BRAM_TFT_addr_reg[9] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[0] ;

  wire [47:0]\AXI_BRAM_data_i_reg[8] ;
  wire [7:0]\BRAM_TFT_B_data_reg[7] ;
  wire [7:0]\BRAM_TFT_G_data_reg[7] ;
  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [47:0]dout_i;
  wire [47:0]doutb;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[0] ;
  wire m_axi_aclk;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[0]_i_1 
       (.I0(dout_i[24]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[0]),
        .O(\BRAM_TFT_B_data_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[1]_i_1 
       (.I0(dout_i[25]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[1]),
        .O(\BRAM_TFT_B_data_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[2]_i_1 
       (.I0(dout_i[26]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[2]),
        .O(\BRAM_TFT_B_data_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[3]_i_1 
       (.I0(dout_i[27]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[3]),
        .O(\BRAM_TFT_B_data_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[4]_i_1 
       (.I0(dout_i[28]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[4]),
        .O(\BRAM_TFT_B_data_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[5]_i_1 
       (.I0(dout_i[29]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[5]),
        .O(\BRAM_TFT_B_data_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[6]_i_1 
       (.I0(dout_i[30]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[6]),
        .O(\BRAM_TFT_B_data_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_B_data[7]_i_1 
       (.I0(dout_i[31]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[7]),
        .O(\BRAM_TFT_B_data_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[0]_i_1 
       (.I0(dout_i[32]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[8]),
        .O(\BRAM_TFT_G_data_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[1]_i_1 
       (.I0(dout_i[33]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[9]),
        .O(\BRAM_TFT_G_data_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[2]_i_1 
       (.I0(dout_i[34]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[10]),
        .O(\BRAM_TFT_G_data_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[3]_i_1 
       (.I0(dout_i[35]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[11]),
        .O(\BRAM_TFT_G_data_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[4]_i_1 
       (.I0(dout_i[36]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[12]),
        .O(\BRAM_TFT_G_data_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[5]_i_1 
       (.I0(dout_i[37]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[13]),
        .O(\BRAM_TFT_G_data_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[6]_i_1 
       (.I0(dout_i[38]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[14]),
        .O(\BRAM_TFT_G_data_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_G_data[7]_i_1 
       (.I0(dout_i[39]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[15]),
        .O(\BRAM_TFT_G_data_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[0]_i_1 
       (.I0(dout_i[40]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[16]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[1]_i_1 
       (.I0(dout_i[41]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[17]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[2]_i_1 
       (.I0(dout_i[42]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[18]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[3]_i_1 
       (.I0(dout_i[43]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[19]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[4]_i_1 
       (.I0(dout_i[44]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[20]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[5]_i_1 
       (.I0(dout_i[45]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[21]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[6]_i_1 
       (.I0(dout_i[46]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[22]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_TFT_R_data[7]_i_1 
       (.I0(dout_i[47]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(dout_i[23]),
        .O(D[7]));
  axi_tft_0_blk_mem_gen_v8_3_1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\AXI_BRAM_data_i_reg[8] (\AXI_BRAM_data_i_reg[8] ),
        .D(doutb),
        .E(E),
        .Q(Q),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ),
        .\gic0.gc1.count_d3_reg[8] (\gic0.gc1.count_d3_reg[8] ),
        .m_axi_aclk(m_axi_aclk),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[0]),
        .Q(dout_i[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[10]),
        .Q(dout_i[10]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[11]),
        .Q(dout_i[11]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[12] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[12]),
        .Q(dout_i[12]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[13] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[13]),
        .Q(dout_i[13]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[14] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[14]),
        .Q(dout_i[14]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[15] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[15]),
        .Q(dout_i[15]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[16] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[16]),
        .Q(dout_i[16]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[17] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[17]),
        .Q(dout_i[17]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[18] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[18]),
        .Q(dout_i[18]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[19] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[19]),
        .Q(dout_i[19]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[1]),
        .Q(dout_i[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[20] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[20]),
        .Q(dout_i[20]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[21]),
        .Q(dout_i[21]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[22]),
        .Q(dout_i[22]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[23]),
        .Q(dout_i[23]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[24]),
        .Q(dout_i[24]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[25]),
        .Q(dout_i[25]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[26]),
        .Q(dout_i[26]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[27]),
        .Q(dout_i[27]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[28]),
        .Q(dout_i[28]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[29]),
        .Q(dout_i[29]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[2]),
        .Q(dout_i[2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[30]),
        .Q(dout_i[30]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[31]),
        .Q(dout_i[31]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[32]),
        .Q(dout_i[32]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[33]),
        .Q(dout_i[33]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[34] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[34]),
        .Q(dout_i[34]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[35] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[35]),
        .Q(dout_i[35]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[36] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[36]),
        .Q(dout_i[36]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[37] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[37]),
        .Q(dout_i[37]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[38] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[38]),
        .Q(dout_i[38]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[39] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[39]),
        .Q(dout_i[39]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[3]),
        .Q(dout_i[3]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[40] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[40]),
        .Q(dout_i[40]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[41] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[41]),
        .Q(dout_i[41]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[42] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[42]),
        .Q(dout_i[42]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[43] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[43]),
        .Q(dout_i[43]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[44] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[44]),
        .Q(dout_i[44]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[45] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[45]),
        .Q(dout_i[45]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[46] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[46]),
        .Q(dout_i[46]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[47] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[47]),
        .Q(dout_i[47]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[4]),
        .Q(dout_i[4]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[5]),
        .Q(dout_i[5]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[6]),
        .Q(dout_i[6]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[7]),
        .Q(dout_i[7]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[8]),
        .Q(dout_i[8]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(sys_tft_clk),
        .CE(\gpregsm1.curr_fwft_state_reg[0] ),
        .D(doutb[9]),
        .Q(dout_i[9]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_tft_0_rd_bin_cntr
   (ram_empty_fb_i_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    ram_empty_fb_i_reg_0,
    Q,
    WR_PNTR_RD,
    E,
    sys_tft_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output ram_empty_fb_i_reg;
  output [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  output ram_empty_fb_i_reg_0;
  output [7:0]Q;
  input [0:0]WR_PNTR_RD;
  input [0:0]E;
  input sys_tft_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]WR_PNTR_RD;
  wire \gc1.count[8]_i_2_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire [8:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire [8:8]rd_pntr_plus1;
  wire [8:0]rd_pntr_plus2;
  wire sys_tft_clk;

  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[4]),
        .I1(rd_pntr_plus2[2]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[1]),
        .I4(rd_pntr_plus2[3]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \gc1.count[7]_i_1 
       (.I0(rd_pntr_plus2[6]),
        .I1(\gc1.count[8]_i_2_n_0 ),
        .I2(rd_pntr_plus2[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \gc1.count[8]_i_1 
       (.I0(rd_pntr_plus2[7]),
        .I1(\gc1.count[8]_i_2_n_0 ),
        .I2(rd_pntr_plus2[6]),
        .I3(rd_pntr_plus2[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gc1.count[8]_i_2 
       (.I0(rd_pntr_plus2[4]),
        .I1(rd_pntr_plus2[2]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[1]),
        .I4(rd_pntr_plus2[3]),
        .I5(rd_pntr_plus2[5]),
        .O(\gc1.count[8]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(sys_tft_clk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[7] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[8] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus2[8]),
        .Q(rd_pntr_plus1));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[7] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[8] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[0]),
        .Q(rd_pntr_plus2[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(sys_tft_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(rd_pntr_plus2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[7] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[7]),
        .Q(rd_pntr_plus2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[8] 
       (.C(sys_tft_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__0[8]),
        .Q(rd_pntr_plus2[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [8]),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg_0));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_tft_0_rd_fwft
   (E,
    Q,
    tmp_ram_rd_en,
    \gc1.count_d1_reg[8] ,
    \BRAM_TFT_addr_reg[9] ,
    p_2_out,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    sys_tft_clk);
  output [0:0]E;
  output [1:0]Q;
  output tmp_ram_rd_en;
  output [0:0]\gc1.count_d1_reg[8] ;
  input [0:0]\BRAM_TFT_addr_reg[9] ;
  input p_2_out;
  input [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input sys_tft_clk;

  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]\gc1.count_d1_reg[8] ;
  wire [1:0]next_fwft_state;
  wire [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire p_2_out;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  LUT5 #(
    .INIT(32'hFFFF5155)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(\BRAM_TFT_addr_reg[9] ),
        .I3(Q[1]),
        .I4(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [0]),
        .O(tmp_ram_rd_en));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc1.count_d1[8]_i_1 
       (.I0(Q[1]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(Q[0]),
        .I3(p_2_out),
        .O(\gc1.count_d1_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \goreg_bm.dout_i[47]_i_1 
       (.I0(Q[0]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\BRAM_TFT_addr_reg[9] ),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(Q[1]),
        .I1(\BRAM_TFT_addr_reg[9] ),
        .I2(Q[0]),
        .I3(p_2_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[0]),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[1]),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_tft_0_rd_logic
   (E,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    sys_tft_clk,
    Q,
    \BRAM_TFT_addr_reg[9] ,
    WR_PNTR_RD);
  output [0:0]E;
  output tmp_ram_rd_en;
  output [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input sys_tft_clk;
  input [1:0]Q;
  input [0:0]\BRAM_TFT_addr_reg[9] ;
  input [8:0]WR_PNTR_RD;

  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [8:0]WR_PNTR_RD;
  wire [0:0]curr_fwft_state;
  wire \gr1.rfwft_n_1 ;
  wire p_2_out;
  wire p_6_out;
  wire [7:0]rd_pntr_plus1;
  wire rpntr_n_0;
  wire rpntr_n_10;
  wire sys_tft_clk;
  wire tmp_ram_rd_en;

  axi_tft_0_rd_fwft \gr1.rfwft 
       (.\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .E(E),
        .Q({\gr1.rfwft_n_1 ,curr_fwft_state}),
        .\gc1.count_d1_reg[8] (p_6_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q),
        .p_2_out(p_2_out),
        .sys_tft_clk(sys_tft_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
  axi_tft_0_rd_status_flags_as \gras.rsts 
       (.\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .Q(Q[1]),
        .WR_PNTR_RD(WR_PNTR_RD[7:0]),
        .\gc1.count_d1_reg[7] (rd_pntr_plus1),
        .\gc1.count_d1_reg[8] (rpntr_n_10),
        .\gc1.count_d2_reg[7] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [7:0]),
        .\gc1.count_d2_reg[8] (rpntr_n_0),
        .\gpregsm1.curr_fwft_state_reg[1] ({\gr1.rfwft_n_1 ,curr_fwft_state}),
        .p_2_out(p_2_out),
        .sys_tft_clk(sys_tft_clk));
  axi_tft_0_rd_bin_cntr rpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(p_6_out),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[8]),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q[1]),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(rpntr_n_10),
        .sys_tft_clk(sys_tft_clk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_tft_0_rd_status_flags_as
   (p_2_out,
    \gc1.count_d2_reg[8] ,
    \gc1.count_d1_reg[8] ,
    sys_tft_clk,
    Q,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \BRAM_TFT_addr_reg[9] ,
    WR_PNTR_RD,
    \gc1.count_d2_reg[7] ,
    \gc1.count_d1_reg[7] );
  output p_2_out;
  input \gc1.count_d2_reg[8] ;
  input \gc1.count_d1_reg[8] ;
  input sys_tft_clk;
  input [0:0]Q;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input [0:0]\BRAM_TFT_addr_reg[9] ;
  input [7:0]WR_PNTR_RD;
  input [7:0]\gc1.count_d2_reg[7] ;
  input [7:0]\gc1.count_d1_reg[7] ;

  wire [0:0]\BRAM_TFT_addr_reg[9] ;
  wire [0:0]Q;
  wire [7:0]WR_PNTR_RD;
  wire comp0;
  wire [7:0]\gc1.count_d1_reg[7] ;
  wire \gc1.count_d1_reg[8] ;
  wire [7:0]\gc1.count_d2_reg[7] ;
  wire \gc1.count_d2_reg[8] ;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire p_2_out;
  wire ram_empty_i0;
  wire sys_tft_clk;

  axi_tft_0_compare_2 c0
       (.WR_PNTR_RD(WR_PNTR_RD),
        .comp0(comp0),
        .\gc1.count_d2_reg[7] (\gc1.count_d2_reg[7] ),
        .\gc1.count_d2_reg[8] (\gc1.count_d2_reg[8] ));
  axi_tft_0_compare_3 c1
       (.\BRAM_TFT_addr_reg[9] (\BRAM_TFT_addr_reg[9] ),
        .WR_PNTR_RD(WR_PNTR_RD),
        .comp0(comp0),
        .\gc1.count_d1_reg[7] (\gc1.count_d1_reg[7] ),
        .\gc1.count_d1_reg[8] (\gc1.count_d1_reg[8] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .p_2_out(p_2_out),
        .ram_empty_i0(ram_empty_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .PRE(Q),
        .Q(p_2_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_tft_0_reset_blk_ramfifo
   ();

  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b1),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(1'b1),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(1'b1),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b1),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(1'b1),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b1),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(1'b1),
        .Q(rst_wr_reg2));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_tft_0_reset_blk_ramfifo__parameterized0
   (rst_full_ff_i,
    rst_full_gen_i,
    Q,
    \gc1.count_reg[0] ,
    m_axi_aclk,
    tft_rst,
    sys_tft_clk);
  output rst_full_ff_i;
  output rst_full_gen_i;
  output [1:0]Q;
  output [2:0]\gc1.count_reg[0] ;
  input m_axi_aclk;
  input tft_rst;
  input sys_tft_clk;

  wire [1:0]Q;
  wire [2:0]\gc1.count_reg[0] ;
  wire m_axi_aclk;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire sys_tft_clk;
  wire tft_rst;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

  assign rst_full_ff_i = rst_d2;
  assign rst_full_gen_i = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tft_rst),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(tft_rst),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(tft_rst),
        .Q(rst_d3));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(\gc1.count_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(\gc1.count_reg[0] [1]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(\gc1.count_reg[0] [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tft_rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(tft_rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tft_rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(tft_rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module axi_tft_0_slave_attachment
   (TFT_iic_xfer_reg,
    TFT_intr_en_reg,
    TFT_dps_reg_reg,
    TFT_status_reg_reg,
    TFT_iic_xfer_reg_0,
    s_axi_rvalid,
    s_axi_bvalid,
    E,
    \TFT_base_addr_reg[10] ,
    IP2Bus_Data,
    \IP2Bus_Data_reg[10] ,
    bus2ip_rdce_or,
    \IP2Bus_Data_reg[29] ,
    \IP2Bus_Data_reg[0] ,
    bus2ip_wrce_or,
    \IP2Bus_Data_reg[31] ,
    \IP2Bus_Data_reg[31]_0 ,
    \IP2Bus_Data_reg[31]_1 ,
    \IP2Bus_Data_reg[31]_2 ,
    TFT_iic_xfer_reg_1,
    TFT_status_reg_reg_0,
    TFT_intr_en_reg_0,
    TFT_dps_reg_reg_0,
    TFT_on_reg_reg,
    s_axi_rdata,
    bus2ip_sreset,
    s_axi_aclk,
    cs_ce_clr,
    bus2ip_wrce_d1,
    bus2ip_wrce_d2,
    s_axi_arvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arready,
    Q,
    prmry_in,
    TFT_status_reg,
    tft_dps,
    \TFT_iic_reg_data_reg[0] ,
    TFT_intr_en_reg_1,
    \TFT_iic_reg_addr_reg[0] ,
    bus2ip_rdce_d1,
    bus2ip_rdce_d2,
    s_axi_wdata,
    TFT_iic_xfer,
    tft_status_d2_reg,
    D,
    s_axi_awaddr,
    s_axi_araddr);
  output TFT_iic_xfer_reg;
  output TFT_intr_en_reg;
  output TFT_dps_reg_reg;
  output TFT_status_reg_reg;
  output TFT_iic_xfer_reg_0;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]E;
  output [0:0]\TFT_base_addr_reg[10] ;
  output [24:0]IP2Bus_Data;
  output \IP2Bus_Data_reg[10] ;
  output bus2ip_rdce_or;
  output \IP2Bus_Data_reg[29] ;
  output \IP2Bus_Data_reg[0] ;
  output bus2ip_wrce_or;
  output \IP2Bus_Data_reg[31] ;
  output \IP2Bus_Data_reg[31]_0 ;
  output \IP2Bus_Data_reg[31]_1 ;
  output \IP2Bus_Data_reg[31]_2 ;
  output TFT_iic_xfer_reg_1;
  output TFT_status_reg_reg_0;
  output TFT_intr_en_reg_0;
  output TFT_dps_reg_reg_0;
  output TFT_on_reg_reg;
  output [26:0]s_axi_rdata;
  input bus2ip_sreset;
  input s_axi_aclk;
  input cs_ce_clr;
  input bus2ip_wrce_d1;
  input bus2ip_wrce_d2;
  input s_axi_arvalid;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arready;
  input [9:0]Q;
  input prmry_in;
  input TFT_status_reg;
  input tft_dps;
  input [6:0]\TFT_iic_reg_data_reg[0] ;
  input TFT_intr_en_reg_1;
  input [7:0]\TFT_iic_reg_addr_reg[0] ;
  input bus2ip_rdce_d1;
  input bus2ip_rdce_d2;
  input [3:0]s_axi_wdata;
  input TFT_iic_xfer;
  input tft_status_d2_reg;
  input [26:0]D;
  input [1:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;

  wire [26:0]D;
  wire [0:0]E;
  wire [24:0]IP2Bus_Data;
  wire \IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[10] ;
  wire \IP2Bus_Data_reg[29] ;
  wire \IP2Bus_Data_reg[31] ;
  wire \IP2Bus_Data_reg[31]_0 ;
  wire \IP2Bus_Data_reg[31]_1 ;
  wire \IP2Bus_Data_reg[31]_2 ;
  wire [9:0]Q;
  wire [0:0]\TFT_base_addr_reg[10] ;
  wire TFT_dps_reg_reg;
  wire TFT_dps_reg_reg_0;
  wire [7:0]\TFT_iic_reg_addr_reg[0] ;
  wire [6:0]\TFT_iic_reg_data_reg[0] ;
  wire TFT_iic_xfer;
  wire TFT_iic_xfer_reg;
  wire TFT_iic_xfer_reg_0;
  wire TFT_iic_xfer_reg_1;
  wire TFT_intr_en_reg;
  wire TFT_intr_en_reg_0;
  wire TFT_intr_en_reg_1;
  wire TFT_on_reg_reg;
  wire TFT_status_reg;
  wire TFT_status_reg_reg;
  wire TFT_status_reg_reg_0;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_2_n_0 ;
  wire \bus2ip_addr_i[3]_i_3_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire bus2ip_rdce_d1;
  wire bus2ip_rdce_d2;
  wire bus2ip_rdce_or;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_sreset;
  wire bus2ip_wrce_d1;
  wire bus2ip_wrce_d2;
  wire bus2ip_wrce_or;
  wire cs_ce_clr;
  wire prmry_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [26:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [3:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire tft_dps;
  wire tft_status_d2_reg;

  axi_tft_0_address_decoder I_DECODER
       (.E(E),
        .IP2Bus_Data(IP2Bus_Data),
        .\IP2Bus_Data_reg[0] (\IP2Bus_Data_reg[0] ),
        .\IP2Bus_Data_reg[10] (\IP2Bus_Data_reg[10] ),
        .\IP2Bus_Data_reg[29] (\IP2Bus_Data_reg[29] ),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .\IP2Bus_Data_reg[31]_0 (\IP2Bus_Data_reg[31]_0 ),
        .\IP2Bus_Data_reg[31]_1 (\IP2Bus_Data_reg[31]_1 ),
        .\IP2Bus_Data_reg[31]_2 (\IP2Bus_Data_reg[31]_2 ),
        .Q(Q),
        .\TFT_base_addr_reg[10] (\TFT_base_addr_reg[10] ),
        .TFT_dps_reg_reg(TFT_dps_reg_reg),
        .TFT_dps_reg_reg_0(TFT_dps_reg_reg_0),
        .\TFT_iic_reg_addr_reg[0] (\TFT_iic_reg_addr_reg[0] ),
        .\TFT_iic_reg_data_reg[0] (\TFT_iic_reg_data_reg[0] ),
        .TFT_iic_xfer(TFT_iic_xfer),
        .TFT_iic_xfer_reg(TFT_iic_xfer_reg),
        .TFT_iic_xfer_reg_0(TFT_iic_xfer_reg_0),
        .TFT_iic_xfer_reg_1(TFT_iic_xfer_reg_1),
        .TFT_intr_en_reg(TFT_intr_en_reg),
        .TFT_intr_en_reg_0(TFT_intr_en_reg_0),
        .TFT_intr_en_reg_1(TFT_intr_en_reg_1),
        .TFT_on_reg_reg(TFT_on_reg_reg),
        .TFT_status_reg(TFT_status_reg),
        .TFT_status_reg_reg(TFT_status_reg_reg),
        .TFT_status_reg_reg_0(TFT_status_reg_reg_0),
        .\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg_n_0_[2] ),
        .\bus2ip_addr_i_reg[3] (\bus2ip_addr_i_reg_n_0_[3] ),
        .bus2ip_rdce_or(bus2ip_rdce_or),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .bus2ip_sreset(bus2ip_sreset),
        .bus2ip_wrce_or(bus2ip_wrce_or),
        .cs_ce_clr(cs_ce_clr),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .start2(start2),
        .tft_dps(tft_dps),
        .tft_status_d2_reg(tft_status_d2_reg));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(\bus2ip_addr_i[3]_i_3_n_0 ),
        .I4(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I2(s_axi_araddr[1]),
        .I3(\bus2ip_addr_i[3]_i_3_n_0 ),
        .I4(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bus2ip_addr_i[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    \bus2ip_addr_i[3]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[3]_i_3_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(bus2ip_sreset));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(bus2ip_sreset));
  LUT6 #(
    .INIT(64'hFFFFFFF7000000F0)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(bus2ip_rnw_i),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i),
        .R(bus2ip_sreset));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    s_axi_bvalid_i_i_1
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_sreset));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(bus2ip_sreset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(bus2ip_sreset));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    s_axi_rvalid_i_i_1
       (.I0(bus2ip_rdce_d1),
        .I1(bus2ip_rdce_d2),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_sreset));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_sreset));
  LUT6 #(
    .INIT(64'hF0F0FFFFF2F2FFF0)) 
    \state[0]_i_1 
       (.I0(bus2ip_wrce_d1),
        .I1(bus2ip_wrce_d2),
        .I2(\state[0]_i_2_n_0 ),
        .I3(s_axi_arvalid),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABFBFBFAAAAAAAA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF004040)) 
    \state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_arready),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(bus2ip_sreset));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(bus2ip_sreset));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module axi_tft_0_srl_fifo_f
   (m_axi_bready,
    sig_strb_reg_out0,
    m_axi_aclk,
    sig_inhibit_rdy_n,
    m_axi_bvalid);
  output m_axi_bready;
  input sig_strb_reg_out0;
  input m_axi_aclk;
  input sig_inhibit_rdy_n;
  input m_axi_bvalid;

  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire sig_inhibit_rdy_n;
  wire sig_strb_reg_out0;

  axi_tft_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_strb_reg_out0(sig_strb_reg_out0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module axi_tft_0_srl_fifo_rbu_f
   (m_axi_bready,
    sig_strb_reg_out0,
    m_axi_aclk,
    sig_inhibit_rdy_n,
    m_axi_bvalid);
  output m_axi_bready;
  input sig_strb_reg_out0;
  input m_axi_aclk;
  input sig_inhibit_rdy_n;
  input m_axi_bvalid;

  wire FIFO_Full_reg_n_0;
  wire fifo_full_p1;
  wire m_axi_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire sig_inhibit_rdy_n;
  wire sig_strb_reg_out0;

  axi_tft_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_bvalid(m_axi_bvalid),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_strb_reg_out0(sig_strb_reg_out0));
  FDRE FIFO_Full_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(sig_strb_reg_out0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_bready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(m_axi_bready));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_tft_0_synchronizer_ff
   (D,
    Q,
    sys_tft_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [8:0]D;
  input [8:0]Q;
  input sys_tft_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [8:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire sys_tft_clk;

  assign D[8:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[8]),
        .Q(Q_reg[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_tft_0_synchronizer_ff_4
   (D,
    Q,
    m_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [8:0]D;
  input [8:0]Q;
  input m_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [8:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire m_axi_aclk;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  assign D[8:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[8]),
        .Q(Q_reg[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_tft_0_synchronizer_ff_5
   (out,
    D,
    \Q_reg_reg[8]_0 ,
    sys_tft_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [7:0]D;
  input [8:0]\Q_reg_reg[8]_0 ;
  input sys_tft_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [7:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire [8:0]\Q_reg_reg[8]_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire sys_tft_clk;
  wire \wr_pntr_bin[2]_i_2_n_0 ;

  assign out[0] = Q_reg[8];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(sys_tft_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[8]_0 [8]),
        .Q(Q_reg[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \wr_pntr_bin[0]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\wr_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[1]),
        .I5(Q_reg[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \wr_pntr_bin[1]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\wr_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \wr_pntr_bin[2]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\wr_pntr_bin[2]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \wr_pntr_bin[2]_i_2 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[5]),
        .I3(Q_reg[4]),
        .O(\wr_pntr_bin[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \wr_pntr_bin[3]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(Q_reg[8]),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \wr_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[8]),
        .I4(Q_reg[7]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \wr_pntr_bin[5]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[5]),
        .I2(Q_reg[8]),
        .I3(Q_reg[7]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \wr_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[8]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_bin[7]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[8]),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_tft_0_synchronizer_ff_6
   (out,
    D,
    \Q_reg_reg[8]_0 ,
    m_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [0:0]out;
  output [7:0]D;
  input [8:0]\Q_reg_reg[8]_0 ;
  input m_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [7:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [8:0]Q_reg;
  wire [8:0]\Q_reg_reg[8]_0 ;
  wire m_axi_aclk;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire \rd_pntr_bin[2]_i_2_n_0 ;

  assign out[0] = Q_reg[8];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\Q_reg_reg[8]_0 [8]),
        .Q(Q_reg[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_pntr_bin[0]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\rd_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[1]),
        .I5(Q_reg[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_pntr_bin[1]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\rd_pntr_bin[2]_i_2_n_0 ),
        .I4(Q_reg[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_pntr_bin[2]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[2]),
        .I2(Q_reg[3]),
        .I3(\rd_pntr_bin[2]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_pntr_bin[2]_i_2 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[5]),
        .I3(Q_reg[4]),
        .O(\rd_pntr_bin[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_pntr_bin[3]_i_1 
       (.I0(Q_reg[5]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(Q_reg[8]),
        .I4(Q_reg[6]),
        .I5(Q_reg[7]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[8]),
        .I4(Q_reg[7]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_pntr_bin[5]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[5]),
        .I2(Q_reg[8]),
        .I3(Q_reg[7]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \rd_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[8]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_bin[7]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[8]),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_tft_0_wr_bin_cntr
   (Q,
    \gic0.gc1.count_d3_reg[8]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    E,
    m_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output [8:0]Q;
  output [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  output [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [0:0]E;
  input m_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire [8:0]Q;
  wire \gic0.gc1.count[8]_i_2_n_0 ;
  wire [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  wire m_axi_aclk;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [8:0]plusOp;
  wire [8:0]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \gic0.gc1.count[2]_i_1 
       (.I0(wr_pntr_plus3[2]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gic0.gc1.count[3]_i_1 
       (.I0(wr_pntr_plus3[3]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gic0.gc1.count[4]_i_1 
       (.I0(wr_pntr_plus3[4]),
        .I1(wr_pntr_plus3[2]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[0]),
        .I4(wr_pntr_plus3[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gic0.gc1.count[5]_i_1 
       (.I0(wr_pntr_plus3[5]),
        .I1(wr_pntr_plus3[3]),
        .I2(wr_pntr_plus3[0]),
        .I3(wr_pntr_plus3[1]),
        .I4(wr_pntr_plus3[2]),
        .I5(wr_pntr_plus3[4]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[6]_i_1 
       (.I0(wr_pntr_plus3[6]),
        .I1(\gic0.gc1.count[8]_i_2_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gic0.gc1.count[7]_i_1 
       (.I0(wr_pntr_plus3[7]),
        .I1(\gic0.gc1.count[8]_i_2_n_0 ),
        .I2(wr_pntr_plus3[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gic0.gc1.count[8]_i_1 
       (.I0(wr_pntr_plus3[8]),
        .I1(wr_pntr_plus3[6]),
        .I2(\gic0.gc1.count[8]_i_2_n_0 ),
        .I3(wr_pntr_plus3[7]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc1.count[8]_i_2 
       (.I0(wr_pntr_plus3[5]),
        .I1(wr_pntr_plus3[3]),
        .I2(wr_pntr_plus3[0]),
        .I3(wr_pntr_plus3[1]),
        .I4(wr_pntr_plus3[2]),
        .I5(wr_pntr_plus3[4]),
        .O(\gic0.gc1.count[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(wr_pntr_plus3[1]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(wr_pntr_plus3[8]),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[4]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[5]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[6]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[7]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[8]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc1.count_d3_reg[8]_0 [8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram [8]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(wr_pntr_plus3[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(m_axi_aclk),
        .CE(E),
        .D(plusOp[1]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(wr_pntr_plus3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[2]),
        .Q(wr_pntr_plus3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[3]),
        .Q(wr_pntr_plus3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[4]),
        .Q(wr_pntr_plus3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[5]),
        .Q(wr_pntr_plus3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[6] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[6]),
        .Q(wr_pntr_plus3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[7] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[7]),
        .Q(wr_pntr_plus3[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[8] 
       (.C(m_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp[8]),
        .Q(wr_pntr_plus3[8]));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_tft_0_wr_logic
   (E,
    Q,
    \gic0.gc1.count_d3_reg[8] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    \rd_pntr_bin_reg[8] ,
    \rd_pntr_bin_reg[8]_0 ,
    m_axi_aclk,
    rst_full_ff_i,
    AXI_BRAM_we_i,
    rst_full_gen_i,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ,
    RD_PNTR_WR);
  output [0:0]E;
  output [0:0]Q;
  output [0:0]\gic0.gc1.count_d3_reg[8] ;
  output [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input \rd_pntr_bin_reg[8] ;
  input \rd_pntr_bin_reg[8]_0 ;
  input m_axi_aclk;
  input rst_full_ff_i;
  input AXI_BRAM_we_i;
  input rst_full_gen_i;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  input [7:0]RD_PNTR_WR;

  wire AXI_BRAM_we_i;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]RD_PNTR_WR;
  wire [0:0]\gic0.gc1.count_d3_reg[8] ;
  wire m_axi_aclk;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [7:0]p_12_out;
  wire \rd_pntr_bin_reg[8] ;
  wire \rd_pntr_bin_reg[8]_0 ;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire [7:0]wr_pntr_plus2;

  axi_tft_0_wr_status_flags_as \gwas.wsts 
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .E(E),
        .Q(p_12_out),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\gic0.gc1.count_d1_reg[7] (wr_pntr_plus2),
        .m_axi_aclk(m_axi_aclk),
        .\rd_pntr_bin_reg[8] (\rd_pntr_bin_reg[8] ),
        .\rd_pntr_bin_reg[8]_0 (\rd_pntr_bin_reg[8]_0 ),
        .rst_full_ff_i(rst_full_ff_i),
        .rst_full_gen_i(rst_full_gen_i));
  axi_tft_0_wr_bin_cntr wpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .Q({Q,wr_pntr_plus2}),
        .\gic0.gc1.count_d3_reg[8]_0 ({\gic0.gc1.count_d3_reg[8] ,p_12_out}),
        .m_axi_aclk(m_axi_aclk),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_tft_0_wr_status_flags_as
   (E,
    \rd_pntr_bin_reg[8] ,
    \rd_pntr_bin_reg[8]_0 ,
    m_axi_aclk,
    rst_full_ff_i,
    AXI_BRAM_we_i,
    rst_full_gen_i,
    Q,
    RD_PNTR_WR,
    \gic0.gc1.count_d1_reg[7] );
  output [0:0]E;
  input \rd_pntr_bin_reg[8] ;
  input \rd_pntr_bin_reg[8]_0 ;
  input m_axi_aclk;
  input rst_full_ff_i;
  input AXI_BRAM_we_i;
  input rst_full_gen_i;
  input [7:0]Q;
  input [7:0]RD_PNTR_WR;
  input [7:0]\gic0.gc1.count_d1_reg[7] ;

  wire AXI_BRAM_we_i;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]RD_PNTR_WR;
  wire comp1;
  wire [7:0]\gic0.gc1.count_d1_reg[7] ;
  wire m_axi_aclk;
  wire p_2_out;
  wire ram_full_i;
  wire \rd_pntr_bin_reg[8] ;
  wire \rd_pntr_bin_reg[8]_0 ;
  wire rst_full_ff_i;
  wire rst_full_gen_i;

  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2 
       (.I0(AXI_BRAM_we_i),
        .I1(p_2_out),
        .O(E));
  axi_tft_0_compare c1
       (.Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .comp1(comp1),
        .\rd_pntr_bin_reg[8] (\rd_pntr_bin_reg[8] ));
  axi_tft_0_compare_1 c2
       (.AXI_BRAM_we_i(AXI_BRAM_we_i),
        .RD_PNTR_WR(RD_PNTR_WR),
        .comp1(comp1),
        .\gic0.gc1.count_d1_reg[7] (\gic0.gc1.count_d1_reg[7] ),
        .p_2_out(p_2_out),
        .ram_full_i(ram_full_i),
        .\rd_pntr_bin_reg[8] (\rd_pntr_bin_reg[8]_0 ),
        .rst_full_gen_i(rst_full_gen_i));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_full_ff_i),
        .Q(p_2_out));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
