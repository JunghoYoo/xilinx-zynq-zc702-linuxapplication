-------------------------------------------------------------------------------
-- PS_axi_i2s_adi_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library axi_i2s_adi_v1_00_a;
use axi_i2s_adi_v1_00_a.all;

entity PS_axi_i2s_adi_0_wrapper is
  port (
    DATA_CLK_I : in std_logic;
    BCLK_O : out std_logic_vector(0 to 0);
    LRCLK_O : out std_logic_vector(0 to 0);
    SDATA_O : out std_logic_vector(0 to 0);
    SDATA_I : in std_logic_vector(0 to 0);
    S_AXIS_ACLK : in std_logic;
    S_AXIS_ARESETN : in std_logic;
    S_AXIS_TREADY : out std_logic;
    S_AXIS_TDATA : in std_logic_vector(31 downto 0);
    S_AXIS_TLAST : in std_logic;
    S_AXIS_TVALID : in std_logic;
    M_AXIS_ACLK : in std_logic;
    M_AXIS_TVALID : out std_logic;
    M_AXIS_TDATA : out std_logic_vector(31 downto 0);
    M_AXIS_TLAST : out std_logic;
    M_AXIS_TREADY : in std_logic;
    M_AXIS_TKEEP : out std_logic_vector(3 downto 0);
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic;
    DMA_REQ_TX_ACLK : in std_logic;
    DMA_REQ_TX_RSTN : in std_logic;
    DMA_REQ_TX_DAVALID : in std_logic;
    DMA_REQ_TX_DATYPE : in std_logic_vector(1 downto 0);
    DMA_REQ_TX_DRREADY : in std_logic;
    DMA_REQ_TX_DRVALID : out std_logic;
    DMA_REQ_TX_DRTYPE : out std_logic_vector(1 downto 0);
    DMA_REQ_TX_DRLAST : out std_logic;
    DMA_REQ_TX_DAREADY : out std_logic;
    DMA_REQ_RX_ACLK : in std_logic;
    DMA_REQ_RX_RSTN : in std_logic;
    DMA_REQ_RX_DAVALID : in std_logic;
    DMA_REQ_RX_DATYPE : in std_logic_vector(1 downto 0);
    DMA_REQ_RX_DRREADY : in std_logic;
    DMA_REQ_RX_DRVALID : out std_logic;
    DMA_REQ_RX_DRTYPE : out std_logic_vector(1 downto 0);
    DMA_REQ_RX_DRLAST : out std_logic;
    DMA_REQ_RX_DAREADY : out std_logic
  );
end PS_axi_i2s_adi_0_wrapper;

architecture STRUCTURE of PS_axi_i2s_adi_0_wrapper is

  component axi_i2s_adi is
    generic (
      C_SLOT_WIDTH : INTEGER;
      C_LRCLK_POL : INTEGER;
      C_BCLK_POL : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_FAMILY : STRING;
      C_DMA_TYPE : INTEGER;
      C_NUM_CH : INTEGER;
      C_HAS_TX : INTEGER;
      C_HAS_RX : INTEGER
    );
    port (
      DATA_CLK_I : in std_logic;
      BCLK_O : out std_logic_vector(C_NUM_CH-1 to 0);
      LRCLK_O : out std_logic_vector(C_NUM_CH-1 to 0);
      SDATA_O : out std_logic_vector(C_NUM_CH-1 to 0);
      SDATA_I : in std_logic_vector(C_NUM_CH-1 to 0);
      S_AXIS_ACLK : in std_logic;
      S_AXIS_ARESETN : in std_logic;
      S_AXIS_TREADY : out std_logic;
      S_AXIS_TDATA : in std_logic_vector(31 downto 0);
      S_AXIS_TLAST : in std_logic;
      S_AXIS_TVALID : in std_logic;
      M_AXIS_ACLK : in std_logic;
      M_AXIS_TVALID : out std_logic;
      M_AXIS_TDATA : out std_logic_vector(31 downto 0);
      M_AXIS_TLAST : out std_logic;
      M_AXIS_TREADY : in std_logic;
      M_AXIS_TKEEP : out std_logic_vector(3 downto 0);
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      DMA_REQ_TX_ACLK : in std_logic;
      DMA_REQ_TX_RSTN : in std_logic;
      DMA_REQ_TX_DAVALID : in std_logic;
      DMA_REQ_TX_DATYPE : in std_logic_vector(1 downto 0);
      DMA_REQ_TX_DRREADY : in std_logic;
      DMA_REQ_TX_DRVALID : out std_logic;
      DMA_REQ_TX_DRTYPE : out std_logic_vector(1 downto 0);
      DMA_REQ_TX_DRLAST : out std_logic;
      DMA_REQ_TX_DAREADY : out std_logic;
      DMA_REQ_RX_ACLK : in std_logic;
      DMA_REQ_RX_RSTN : in std_logic;
      DMA_REQ_RX_DAVALID : in std_logic;
      DMA_REQ_RX_DATYPE : in std_logic_vector(1 downto 0);
      DMA_REQ_RX_DRREADY : in std_logic;
      DMA_REQ_RX_DRVALID : out std_logic;
      DMA_REQ_RX_DRTYPE : out std_logic_vector(1 downto 0);
      DMA_REQ_RX_DRLAST : out std_logic;
      DMA_REQ_RX_DAREADY : out std_logic
    );
  end component;

begin

  axi_i2s_adi_0 : axi_i2s_adi
    generic map (
      C_SLOT_WIDTH => 24,
      C_LRCLK_POL => 0,
      C_BCLK_POL => 0,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_BASEADDR => X"77600000",
      C_HIGHADDR => X"7760ffff",
      C_FAMILY => "zynq",
      C_DMA_TYPE => 1,
      C_NUM_CH => 1,
      C_HAS_TX => 1,
      C_HAS_RX => 1
    )
    port map (
      DATA_CLK_I => DATA_CLK_I,
      BCLK_O => BCLK_O,
      LRCLK_O => LRCLK_O,
      SDATA_O => SDATA_O,
      SDATA_I => SDATA_I,
      S_AXIS_ACLK => S_AXIS_ACLK,
      S_AXIS_ARESETN => S_AXIS_ARESETN,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TDATA => S_AXIS_TDATA,
      S_AXIS_TLAST => S_AXIS_TLAST,
      S_AXIS_TVALID => S_AXIS_TVALID,
      M_AXIS_ACLK => M_AXIS_ACLK,
      M_AXIS_TVALID => M_AXIS_TVALID,
      M_AXIS_TDATA => M_AXIS_TDATA,
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TKEEP => M_AXIS_TKEEP,
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
      DMA_REQ_TX_ACLK => DMA_REQ_TX_ACLK,
      DMA_REQ_TX_RSTN => DMA_REQ_TX_RSTN,
      DMA_REQ_TX_DAVALID => DMA_REQ_TX_DAVALID,
      DMA_REQ_TX_DATYPE => DMA_REQ_TX_DATYPE,
      DMA_REQ_TX_DRREADY => DMA_REQ_TX_DRREADY,
      DMA_REQ_TX_DRVALID => DMA_REQ_TX_DRVALID,
      DMA_REQ_TX_DRTYPE => DMA_REQ_TX_DRTYPE,
      DMA_REQ_TX_DRLAST => DMA_REQ_TX_DRLAST,
      DMA_REQ_TX_DAREADY => DMA_REQ_TX_DAREADY,
      DMA_REQ_RX_ACLK => DMA_REQ_RX_ACLK,
      DMA_REQ_RX_RSTN => DMA_REQ_RX_RSTN,
      DMA_REQ_RX_DAVALID => DMA_REQ_RX_DAVALID,
      DMA_REQ_RX_DATYPE => DMA_REQ_RX_DATYPE,
      DMA_REQ_RX_DRREADY => DMA_REQ_RX_DRREADY,
      DMA_REQ_RX_DRVALID => DMA_REQ_RX_DRVALID,
      DMA_REQ_RX_DRTYPE => DMA_REQ_RX_DRTYPE,
      DMA_REQ_RX_DRLAST => DMA_REQ_RX_DRLAST,
      DMA_REQ_RX_DAREADY => DMA_REQ_RX_DAREADY
    );

end architecture STRUCTURE;

