-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.	 --
--		                                						 --
-- This file contains confidential and proprietary information	 --
-- of Xilinx, Inc. and is protected under U.S. and	        	 --
-- international copyright and other intellectual property  	 --
-- laws.							                             --
--								                                 --
-- DISCLAIMER							                         --
-- This disclaimer is not a license and does not grant any	     --
-- rights to the materials distributed herewith. Except as	     --
-- otherwise provided in a valid license issued to you by	     --
-- Xilinx, and to the maximum extent permitted by applicable	 --
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	     --
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES	 --
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	 --
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-	     --
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	     --
-- (2) Xilinx shall not be liable (whether in contract or tort,	 --
-- including negligence, or under any other theory of		     --
-- liability) for any loss or damage of any kind or nature	     --
-- related to, arising under or in connection with these	     --
-- materials, including for any direct, or any indirect,	     --
-- special, incidental, or consequential loss or damage		     --
-- (including loss of data, profits, goodwill, or any type of	 --
-- loss or damage suffered as a result of any action brought	 --
-- by a third party) even if such damage or loss was		     --
-- reasonably foreseeable or Xilinx had been advised of the	     --
-- possibility of the same.					                     --
--								                                 --
-- CRITICAL APPLICATIONS					                     --
-- Xilinx products are not designed or intended to be fail-	     --
-- safe, or for use in any application requiring fail-safe	     --
-- performance, such as life-support or safety devices or	     --
-- systems, Class III medical devices, nuclear facilities,	     --
-- applications related to the deployment of airbags, or any	 --
-- other applications that could lead to death, personal	     --
-- injury, or severe property or environmental damage		     --
-- (individually and collectively, "Critical			         --
-- Applications"). Customer assumes the sole risk and		     --
-- liability of any use of Xilinx products in Critical		     --
-- Applications, subject only to applicable laws and	  	     --
-- regulations governing limitations on product liability.	     --
--								                                 --
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	     --
-- PART OF THIS FILE AT ALL TIMES. 				                 --
-------------------------------------------------------------------
-- axi_tft.vhd - entity/architecture pair 
-------------------------------------------------------------------------------
-- Filename:      axi_tft.vhd
-- Version:       v1.00.a
-- Description:   Top level design file for AXI TFT controller. It instantiate 
--                AXI maste/slave interface and TFT controller logic. This
--                supports display resolution 800*480 pixels at 25 MHz display
--                clock for 60 Hz TFT refresh rate.
--
-- VHDL-Standard: VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--                  -- axi_tft.vhd
--                      -- axi_master_burst.vhd
--                      -- axi_lite_ipif.vhd
--                      -- tft_controller.v
--                          -- line_buffer.v
--                          -- v_sync.v
--                          -- h_sync.v
--                          -- slave_register.v
--                          -- tft_interface.v
--                              -- iic_init.v
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- proc common package of the proc common library is used for different 
-- function declarations
-------------------------------------------------------------------------------
library axi_lite_ipif_v3_0_3;
use axi_lite_ipif_v3_0_3.ipif_pkg.INTEGER_ARRAY_TYPE;
use axi_lite_ipif_v3_0_3.ipif_pkg.SLV64_ARRAY_TYPE;
use axi_lite_ipif_v3_0_3.ipif_pkg.calc_num_ce;
--use proc_common_v4_0_2.family.all;
--use proc_common_v4_0_2.family_support.all;

-------------------------------------------------------------------------------
-- axi_lite_ipif_v3_0_3 library is used for axi_lite_ipif 
-- component declarations
-------------------------------------------------------------------------------
library axi_lite_ipif_v3_0_3;
use axi_lite_ipif_v3_0_3.axi_lite_ipif;

-------------------------------------------------------------------------------
-- axi_master_burst_v2_0_7 library is used for axi_master_burst 
-- component declarations
-------------------------------------------------------------------------------
library axi_master_burst_v2_0_7;
use axi_master_burst_v2_0_7.axi_master_burst;

-------------------------------------------------------------------------------
-- Entity section
-------------------------------------------------------------------------------
-- Definition of Generics:
--   C_FAMILY                 -- Xilinx FPGA family
--
-- -- TFT Controller Generics
------------------------------------
--   C_TFT_INTERFACE          -- Specifies TFT display interface (VGA/DVI)
--   C_I2C_SLAVE_ADDR         -- I2C slave address of chrontel chip  
--   C_DEFAULT_TFT_BASE_ADDR  -- TFT Video memory base address
--
-- --  AXI Master Burst Interface Generics
------------------------------------
--   C_M_AXI_ADDR_WIDTH            -- AXI master: address bus width
--   C_M_AXI_DATA_WIDTH            -- AXI master: data bus width
--
-- --  AXI Slave Single Interface Generics
------------------------------------
--
--
-- Definition of Ports:
-- -- System Interface signals
------------------------------------
--   s_axi_aclk              -- PLB main bus clock
--   s_axi_aresetn              -- PLB main bus reset
--   m_axi_aclk              -- PLB main bus Clock
--   m_axi_aresetn              -- PLB main bus Reset
--   md_error              -- Master detected error status output
--   ip2intc_irpt          -- Interrupt to processor
--
-- -- AXI Master Interface signals
------------------------------------
---- MMap Read Address Channel                                              -- AXI4
--    m_axi_arready               : in  std_logic                          ;-- AXI4
--    m_axi_arvalid               : out std_logic                          ;-- AXI4
--    m_axi_araddr                : out std_logic_vector                    -- AXI4
--                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
--    m_axi_arlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
--    m_axi_arsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
--    m_axi_arburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
--    m_axi_arprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
--    m_axi_arcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
--                                                                          -- AXI4
--    -- MMap Read Data Channel                                             -- AXI4
--    m_axi_rready                : out std_logic                          ;-- AXI4
--    m_axi_rvalid                : in  std_logic                          ;-- AXI4
--    m_axi_rdata                 : in  std_logic_vector                    -- AXI4
--                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
--    m_axi_rresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4
--    m_axi_rlast                 : in  std_logic                          ;-- AXI4
---- Write Address Channel                                                  -- AXI4
--    m_axi_awready               : in  std_logic                          ; -- AXI4
--    m_axi_awvalid               : out std_logic                          ; -- AXI4
--    m_axi_awaddr                : out std_logic_vector                     -- AXI4
--                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ; -- AXI4
--    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ; -- AXI4
--    m_axi_awsize                : out std_logic_vector(2 downto 0)       ; -- AXI4
--    m_axi_awburst               : out std_logic_vector(1 downto 0)       ; -- AXI4
--    m_axi_awprot                : out std_logic_vector(2 downto 0)       ; -- AXI4
--    m_axi_awcache               : out std_logic_vector(3 downto 0)       ; -- AXI4
--                                                                           -- AXI4
--    -- Write Data Channel                                                  -- AXI4
--    m_axi_wready                : in  std_logic                          ; -- AXI4
--    m_axi_wvalid                : out std_logic                          ; -- AXI4
--    m_axi_wdata                 : out std_logic_vector                     -- AXI4
--                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ; -- AXI4
--    m_axi_wstrb                 : out std_logic_vector                     -- AXI4
--                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0); -- AXI4
--    m_axi_wlast                 : out std_logic                          ; -- AXI4
--    -- Write Response Channel                                              -- AXI4
--    m_axi_bready                : out std_logic                          ; -- AXI4
--    m_axi_bvalid                : in  std_logic                          ; -- AXI4
--    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ; -- AXI4
--
-- -- AXI Slave Interface signals
------------------------------------
-- s_axi_aclk            -- AXI Clock
-- s_axi_aresetn         -- AXI Reset
-- s_axi_awaddr          -- AXI Write address
-- s_axi_awvalid         -- Write address valid
-- s_axi_awready         -- Write address ready
-- s_axi_wdata           -- Write data
-- s_axi_wstrb           -- Write strobes
-- s_axi_wvalid          -- Write valid
-- s_axi_wready          -- Write ready
-- s_axi_bresp           -- Write response
-- s_axi_bvalid          -- Write response valid
-- s_axi_bready          -- Response ready
-- s_axi_araddr          -- Read address
-- s_axi_arvalid         -- Read address valid
-- s_axi_arready         -- Read address ready
-- s_axi_rdata           -- Read data
-- s_axi_rresp           -- Read response
-- s_axi_rvalid          -- Read valid
-- s_axi_rready          -- Read ready
--
-- TFT Interface Signals
------------------------------------
--   sys_tft_clk           -- TFT input clock
--
-- -- TFT Common Interface Signals
------------------------------------
--   tft_hsync             -- TFT Hsync 
--   tft_vsync             -- TFT Vsync 
--   tft_de                -- TFT Data enable
--   tft_dps               -- TFT display scan pin  
--
-- -- TFT VGA Interface Signals
------------------------------------
--   tft_vga_clk           -- TFT VGA clock output
--   tft_vga_r             -- TFT VGA Red pixel data
--   tft_vga_g             -- TFT VGA Green pixel data
--   tft_vga_b             -- TFT VGA Blue pixel data
--
-- -- TFT DVI Interface Signals
------------------------------------
--   tft_dvi_clk_p         -- TFT DVI differntial clock P output
--   tft_dvi_clk_n         -- TFT DVI differntial clock N output
--   tft_dvi_data          -- TFT DVI RGB pixel data
--
-- -- Chrontel I2C Interface Signals
------------------------------------
--   tft_iic_scl_i         -- I2C clock input
--   tft_iic_scl_o         -- I2C clock output
--   tft_iic_scl_t         -- I2C clock tristate cntrol
--   tft_iic_sda_i         -- I2C data input
--   tft_iic_sda_o         -- I2C data output
--   tft_iic_sda_t         -- I2C data tristate cntrol
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Entity section
-------------------------------------------------------------------------------
entity axi_tft is
  generic
  (

    C_FAMILY                : string                    := "virtex5";
    ------------------------------------------------------------------
    -- TFT Controller generics
    C_TFT_INTERFACE         : integer range 0 to 1      := 0; -- (0:VGA, 1:DVI)
    C_EN_I2C_INTF           : integer range 0 to 1      := 0; 
    C_I2C_SLAVE_ADDR        : std_logic_vector          := "1110110";
    C_DEFAULT_TFT_BASE_ADDR : std_logic_vector          := X"00000000F0000000";
    ------------------------------------------------------------------
    -- AXI Master Burst Interface  generics
    C_M_AXI_ADDR_WIDTH      : integer range 32 to 64    := 32;
    C_M_AXI_DATA_WIDTH      : integer range 32 to 128   := 32;
    C_MAX_BURST_LEN         : Integer range 16 to  256 :=  16;
    C_S_AXI_ADDR_WIDTH      : Integer range 3 to  4 :=  3
    ------------------------------------------------------------------
    -- AXI Slave Interface generics --Need to decide Ravi
    ------------------------------------------------------------------
  );
 port
  (
       -------------------
    -- SYSTEM INTERFACE SIGNALS
       -------------------
    s_axi_aclk              : in  std_logic;
    s_axi_aresetn           : in  std_logic;
    m_axi_aclk              : in  std_logic;
    m_axi_aresetn           : in  std_logic;
    md_error                : out std_logic;
    ip2intc_irpt            : out std_logic;
       --------------------------------------
     -- AXI Master Interface signals
       --------------------------------------
-- MMap Read Address Channel                                              -- AXI4
    m_axi_arready               : in  std_logic                          ;-- AXI4
    m_axi_arvalid               : out std_logic                          ;-- AXI4
    m_axi_araddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                          -- AXI4
-- MMap Read Data Channel                                                 -- AXI4
    m_axi_rready                : out std_logic                          ;-- AXI4
    m_axi_rvalid                : in  std_logic                          ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_rlast                 : in  std_logic                          ;-- AXI4
-- Write Address Channel                                                  -- AXI4
    m_axi_awready               : in  std_logic                          ; -- AXI4
    m_axi_awvalid               : out std_logic                          ; -- AXI4
    m_axi_awaddr                : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ; -- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ; -- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ; -- AXI4
                                                                           -- AXI4
    -- Write Data Channel                                                  -- AXI4
    m_axi_wready                : in  std_logic                          ; -- AXI4
    m_axi_wvalid                : out std_logic                          ; -- AXI4
    m_axi_wdata                 : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_wstrb                 : out std_logic_vector                     -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0); -- AXI4
    m_axi_wlast                 : out std_logic                          ; -- AXI4
    -- Write Response Channel                                              -- AXI4
    m_axi_bready                : out std_logic                          ; -- AXI4
    m_axi_bvalid                : in  std_logic                          ; -- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ; -- AXI4
       --------------------------------------
     -- AXI Slave Interface signals
       --------------------------------------
    s_axi_awaddr                : in  std_logic_vector
                                  (C_S_AXI_ADDR_WIDTH downto 0);
    s_axi_awvalid               : in  std_logic;
    s_axi_awready               : out std_logic;
    s_axi_wdata                 : in  std_logic_vector
                                  (31 downto 0);
    s_axi_wstrb                 : in  std_logic_vector
                                  (3 downto 0);
    s_axi_wvalid                : in  std_logic;
    s_axi_wready                : out std_logic;
    s_axi_bresp                 : out std_logic_vector(1 downto 0);
    s_axi_bvalid                : out std_logic;
    s_axi_bready                : in  std_logic;
    s_axi_araddr                : in  std_logic_vector
                                  (C_S_AXI_ADDR_WIDTH downto 0);
    s_axi_arvalid               : in  std_logic;
    s_axi_arready               : out std_logic;
    s_axi_rdata                 : out std_logic_vector
                                  (31 downto 0);
    s_axi_rresp                 : out std_logic_vector(1 downto 0);
    s_axi_rvalid                : out std_logic;
    s_axi_rready                : in  std_logic;

       ----------------------
    -- TFT INTERFACE SIGNALS
       ----------------------
    sys_tft_clk             : in  std_logic;

    -- TFT Common Interface Signals
    tft_hsync               : out  std_logic;
    tft_vsync               : out  std_logic;
    tft_de                  : out  std_logic;
    tft_dps                 : out  std_logic;
    
    -- TFT VGA Interface Ports
    tft_vga_clk             : out std_logic;
    tft_vga_r               : out std_logic_vector(7 downto 0);
    tft_vga_g               : out std_logic_vector(7 downto 0);
    tft_vga_b               : out std_logic_vector(7 downto 0);

    -- TFT DVI Interface Ports     
    tft_dvi_clk_p           : out  std_logic;
    tft_dvi_clk_n           : out  std_logic;
    tft_dvi_data            : out  std_logic_vector(11 downto 0);

       -------------------------------------------
    -- I2C INTERFACE SIGNALS FOR CHRONTEL CH7301C
    -- DVI TRANSMITTER CHIP
       -------------------------------------------
    tft_iic_scl_i           : in  std_logic;    
    tft_iic_scl_o           : out std_logic;
    tft_iic_scl_t           : out std_logic;
    tft_iic_sda_i           : in  std_logic;
    tft_iic_sda_o           : out std_logic;
    tft_iic_sda_t           : out std_logic
  );

-------------------------------------------------------------------------------
-- PSFUTIL Attributes
-------------------------------------------------------------------------------
    ATTRIBUTE SIGIS          : string;
    ATTRIBUTE MAX_FANOUT     : string;

    ATTRIBUTE SIGIS       of s_axi_aclk    : signal is "CLK";
    ATTRIBUTE SIGIS       of m_axi_aclk    : signal is "CLK";
    ATTRIBUTE SIGIS       of s_axi_aresetn : signal is "RST";
    ATTRIBUTE SIGIS       of m_axi_aresetn : signal is "RST";
    --ATTRIBUTE SIGIS       of DCR_Clk       : signal is "CLK";
    --ATTRIBUTE SIGIS       of DCR_Rst       : signal is "RST";
    ATTRIBUTE SIGIS       of sys_tft_clk   : signal is "CLK";
    ATTRIBUTE SIGIS       of ip2intc_irpt  : signal is "INTR_EDGE_RISING";
                                          
    ATTRIBUTE MAX_FANOUT  of s_axi_aclk    : signal is "10000";
    ATTRIBUTE MAX_FANOUT  of s_axi_aresetn : signal is "10000";
    ATTRIBUTE MAX_FANOUT  of m_axi_aclk    : signal is "10000";
    ATTRIBUTE MAX_FANOUT  of m_axi_aresetn : signal is "10000";

end entity axi_tft;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------

architecture imp of axi_tft is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

  ------------------------------------------
  -- Array of base/high address pairs for each address range
  ------------------------------------------
  constant ZERO_ADDR_PAD  : std_logic_vector(31 downto 0) := (others => '0');
  constant USER_BASEADDR  : std_logic_vector := X"00000000";
                                                --else X"00000017";
   function high_sel(Cond: integer; Value: integer; If_True, If_False: std_logic_vector) return std_logic_vector is
    begin
        if (Cond = Value) then
            return(If_True);
        else
            return(If_False);
        end if;
    end function high_sel; 
  --function chr(int: integer) return character;
  constant USER_HIGHADDR  : std_logic_vector := high_sel(C_M_AXI_ADDR_WIDTH,32,X"0000000F",X"00000017"); --X"0000000F" when (C_M_AXI_ADDR_WIDTH = 32) 
  constant IPIF_ARD_ADDR_RANGE_ARRAY  : SLV64_ARRAY_TYPE  := 
    (
      ZERO_ADDR_PAD & USER_BASEADDR,  -- user logic space base address
      ZERO_ADDR_PAD & USER_HIGHADDR   -- user logic space high address
    );

  ------------------------------------------
  -- Array of desired number of chip enables for each address range
  ------------------------------------------
function wid_sel(Cond: integer; Value: integer; If_True, If_False: integer) return integer is
    begin
        if (Cond = Value) then
            return(If_True);
        else
            return(If_False);
        end if;
    end function wid_sel; 
  constant USER_MST_NUM_REG        : integer            := wid_sel(C_M_AXI_ADDR_WIDTH,32,4,6);--6;
  constant USER_NUM_REG            : integer            := USER_MST_NUM_REG;
  constant IPIF_ARD_NUM_CE_ARRAY   : INTEGER_ARRAY_TYPE := 
    (
      0  => USER_MST_NUM_REG  -- number of ce for user logic master space
    );


  ------------------------------------------
  -- Inhibit the automatic inculsion of the Conversion Cycle and Burst Length 
  -- Expansion logic
  -- 0 = allow automatic inclusion of the CC and BLE logic
  -- 1 = inhibit automatic inclusion of the CC and BLE logic
  ------------------------------------------
  constant IPIF_INHIBIT_CC_BLE_INCLUSION  : integer     := 0;

  ------------------------------------------
  -- Width of the master address bus (32 only)
  ------------------------------------------
  constant USER_MST_AWIDTH         : integer := C_M_AXI_ADDR_WIDTH;

  ------------------------------------------
  -- TFT Base Address, I2C Slave Address,
  -- DCR base address
  -- Converting std_logic_vector to Integer
  ------------------------------------------
  --constant DEFAULT_TFT_BASE_ADDR   : std_logic_vector(0 to 10) 
--  constant DEFAULT_TFT_BASE_ADDR   : std_logic_vector(0 to 42) 
  --                                   := C_DEFAULT_TFT_BASE_ADDR(0 to 42);
 -- constant TFT_BASE_ADDR    : integer 
 --                            := CONV_INTEGER(DEFAULT_TFT_BASE_ADDR);
  
  constant I2C_SLAVE_ADDR   : integer := CONV_INTEGER(C_I2C_SLAVE_ADDR);
  
  -- Added for generating IO styles
  --constant V2P_IO           : boolean := supported(C_FAMILY, (u_FDDRRSE));
  --constant S3E_IO           : boolean := supported(C_FAMILY, (u_ODDR2));
  --constant V4_IO            : boolean := supported(C_FAMILY, (u_ODDR));
  --constant V8_IO            : boolean := supported(C_FAMILY, (u_OSERDESE3));
  
  -----------------------------------------------------------------------------
  -- Function: get_io_reg_style
  -- Purpose: Get array size for ARD_ID_ARRAY, ARD_DWIDTH_ARRAY, and 
  --          ARD_NUM_CE_ARRAY
  -----------------------------------------------------------------------------
  function get_io_reg_style return integer is
  variable io_reg_style_i : integer;
  begin

      io_reg_style_i := 0;
  
--      if (C_FAMILY="kintexu" or C_FAMILY="virtexu" or C_FAMILY="artixu" or C_FAMILY = "zynquplus" or C_FAMILY = "virtexuplus" or C_FAMILY = "kintexuplus") then 
          if ((C_FAMILY /= "virtex7") and (C_FAMILY /= "kintex7") and (C_FAMILY /= "zynq") and (C_FAMILY /= "artix7") ) then
           io_reg_style_i := 1;
      --elsif (S3E_IO = TRUE) then 
      --   io_reg_style_i := 1;      
      --elsif (V2P_IO = TRUE) then 
      --   io_reg_style_i := 2;
      else   
         io_reg_style_i := 0;         
      end if;
    
      return io_reg_style_i;
      
  end function get_io_reg_style;
  
  function get_ipif_dwidth (axi_width : integer) return integer is
  variable ipif_dwidth : integer;
  begin

      ipif_dwidth := 64;
  
      if (axi_width = 32) then 
         ipif_dwidth := 32;
      else   
         ipif_dwidth := 64;
      end if;
    
      return ipif_dwidth;
      
  end function get_ipif_dwidth;

  constant  IO_REG_STYLE : integer := get_io_reg_style;
  constant  IPIF_NATIVE_DWIDTH : integer := get_ipif_dwidth(C_M_AXI_DATA_WIDTH);
   
  ------------------------------------------
  -- Signal Declaration 
  ------------------------------------------

  signal bus2ip_clk         : std_logic;
  signal bus2ip_sreset      : std_logic;
  signal bus2ip_mreset      : std_logic;
  signal bus2ip_resetn      : std_logic;
  signal ip2bus_data        : std_logic_vector(0 to 31):=
                              (others  => '0');
  signal ip2bus_error       : std_logic;
  signal ip2bus_wrack       : std_logic;
  signal ip2bus_rdack       : std_logic;
  signal bus2ip_data        : std_logic_vector
                              (0 to 31);
  signal bus2ip_rdce        : std_logic_vector
                              (calc_num_ce(IPIF_ARD_NUM_CE_ARRAY)-1 downto 0);
  signal bus2ip_wrce        : std_logic_vector
                              (calc_num_ce(IPIF_ARD_NUM_CE_ARRAY)-1 downto 0);
  signal bus2ip_be          : std_logic_vector(0 to 3);
  
  signal ip2bus_mstrd_req          : std_logic;
  signal ip2bus_mst_addr           : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal ip2bus_mst_length         : std_logic_vector(11 downto 0);
  signal ip2bus_mst_be             : std_logic_vector
                                     (((IPIF_NATIVE_DWIDTH/8)-1) downto 0);
  signal ip2bus_mst_type           : std_logic;
  signal ip2bus_mst_lock           : std_logic;
  signal ip2bus_mst_reset          : std_logic;
  signal bus2ip_mst_cmdack         : std_logic;
  signal bus2ip_mst_cmplt          : std_logic;
  signal bus2ip_mstrd_d            : std_logic_vector
                                      (0 to IPIF_NATIVE_DWIDTH-1);
  signal temp_bus2ip_mstrd_d       : std_logic_vector
                                      (IPIF_NATIVE_DWIDTH-1 downto 0);
  signal bus2ip_mstrd_eof_n        : std_logic;
  signal bus2ip_mstrd_src_rdy_n    : std_logic;
  signal ip2bus_mstrd_dst_rdy_n    : std_logic;
  signal ip2bus_mstrd_dst_dsc_n    : std_logic;
  signal ip2bus_mstwr_d            : std_logic_vector
                                      (IPIF_NATIVE_DWIDTH-1 downto 0)
                                       := (others => '0');
  signal ip2bus_mstwr_rem          : std_logic_vector
                                      (((IPIF_NATIVE_DWIDTH/8)-1) downto 0)
                                       := (others => '0');
  
  signal bus2ip_mstr_data          : std_logic_vector(0 to 63);
  signal bus2ip_mstrd_d1           : std_logic_vector(0 to 31);
  signal mstr_src_rdy_n            : std_logic;

  ------------------------------------------
  -- Component declaration for verilog user logic
  ------------------------------------------
  component axi_tft_v2_1_tft_controller is
    generic
    (
      -- TFT Controller parameters
      C_TFT_INTERFACE         : integer  := 1;
      C_I2C_SLAVE_ADDR        : integer;
      C_DEFAULT_TFT_BASE_ADDR : std_logic_vector(0 to 63);
      C_IOREG_STYLE           : integer  := 1; 
      C_EN_I2C_INTF           : integer  := 1; 
       -- Bus protocol parameters
      C_FAMILY                : string   := "virtex5";
      C_SLV_DWIDTH            : integer  := 32;
      C_MST_AWIDTH            : integer  := 32;
      C_MST_DWIDTH            : integer  := 32;
      C_NUM_REG               : integer  := 6
      -------------------------------------------------------
    );
    port
    (
      -- TFT Interface Ports
      SYS_TFT_Clk                : in  std_logic;
      -- TFT Common Interface Ports
      TFT_HSYNC                  : out std_logic;
      TFT_VSYNC                  : out std_logic;
      TFT_DE                     : out std_logic;
      TFT_DPS                    : out std_logic;

      -- VGA Interface Ports
      TFT_VGA_CLK                : out std_logic;
      TFT_VGA_R                  : out std_logic_vector(7 downto 0);
      TFT_VGA_G                  : out std_logic_vector(7 downto 0);
      TFT_VGA_B                  : out std_logic_vector(7 downto 0);

      -- DVI Interface Ports     
      TFT_DVI_CLK_P              : out std_logic;
      TFT_DVI_CLK_N              : out std_logic;
      TFT_DVI_DATA               : out std_logic_vector(11 downto 0);

      -- I2C interface for Chrontel Chip
      TFT_IIC_SCL_I              : in  std_logic;    
      TFT_IIC_SCL_O              : out std_logic;
      TFT_IIC_SCL_T              : out std_logic;
      TFT_IIC_SDA_I              : in  std_logic;
      TFT_IIC_SDA_O              : out std_logic;
      TFT_IIC_SDA_T              : out std_logic;

      -- Bus protocol ports
      S_AXI_Clk                   : in  std_logic;
      S_AXI_Rst                   : in  std_logic;
      Bus2IP_Data                : in  std_logic_vector(0 to C_SLV_DWIDTH-1);
      Bus2IP_RdCE                : in  std_logic_vector(0 to C_NUM_REG-1);
      Bus2IP_WrCE                : in  std_logic_vector(0 to C_NUM_REG-1);
      Bus2IP_BE                  : in  std_logic_vector(0 to C_SLV_DWIDTH/8-1);
      IP2Bus_Data                : out std_logic_vector(0 to C_SLV_DWIDTH-1);
      IP2Bus_RdAck               : out std_logic;
      IP2Bus_WrAck               : out std_logic;
      IP2Bus_Error               : out std_logic;

      -- Interrupt (Frame complete)
      IP2INTC_Irpt               : out std_logic; 
      
      M_AXI_Clk                   : in  std_logic;
      M_AXI_Rst                   : in  std_logic;
      IP2Bus_MstRd_Req           : out std_logic;
      IP2Bus_Mst_Addr            : out std_logic_vector(0 to C_MST_AWIDTH-1);
      IP2Bus_Mst_BE              : out std_logic_vector(0 to C_MST_DWIDTH/8-1);
      IP2Bus_Mst_Length          : out std_logic_vector(0 to 11);
      IP2Bus_Mst_Type            : out std_logic;
      IP2Bus_Mst_Lock            : out std_logic;
      IP2Bus_Mst_Reset           : out std_logic;
      Bus2IP_Mst_CmdAck          : in  std_logic;
      Bus2IP_Mst_Cmplt           : in  std_logic;
      Bus2IP_MstRd_d             : in  std_logic_vector(0 to C_MST_DWIDTH-1);
      Bus2IP_MstRd_eof_n         : in  std_logic;
      Bus2IP_MstRd_src_rdy_n     : in  std_logic;
      IP2Bus_MstRd_dst_rdy_n     : out std_logic;
      IP2Bus_MstRd_dst_dsc_n     : out std_logic
    );
  end component axi_tft_v2_1_tft_controller;

begin

  -----------------------------------------------------------------------------
  -- converting Active low reset signal to Active high reset signals for TFT controller
  -----------------------------------------------------------------------------
  M_RESET_TOGGLE: process (m_axi_aclk) is
  begin
       if(m_axi_aclk'event and m_axi_aclk = '1') then
           bus2ip_mreset <= not(m_axi_aresetn);
       end if;
  end process M_RESET_TOGGLE;

  -----------------------------------------------------------------------------
  -- Instantiate AXI slave interface. 
  -- Include AXI Slave interface to provide TFT Register access 
  -----------------------------------------------------------------------------
  -- converting Active low reset signal to Active high reset signals for TFT controller
  -----------------------------------------------------------------------------
  S_RESET_TOGGLE: process (bus2ip_clk) is
  begin
       if(bus2ip_clk'event and bus2ip_clk = '1') then
           bus2ip_sreset <= not(bus2ip_resetn);
       end if;
  end process S_RESET_TOGGLE;

  ------------------------------------------
  -- instantiate plbv46_slave_single
  ------------------------------------------
  AXI_LITE_IPIF_I: entity axi_lite_ipif_v3_0_3.axi_lite_ipif
    generic map
    (
      C_S_AXI_DATA_WIDTH         => 32                        ,
      C_S_AXI_ADDR_WIDTH         => C_S_AXI_ADDR_WIDTH+1      ,
      C_S_AXI_MIN_SIZE           => USER_HIGHADDR             ,
      C_USE_WSTRB                => 0                         ,
      C_DPHASE_TIMEOUT           => 0                         ,
      C_ARD_ADDR_RANGE_ARRAY     => IPIF_ARD_ADDR_RANGE_ARRAY ,
      C_ARD_NUM_CE_ARRAY         => IPIF_ARD_NUM_CE_ARRAY     ,
      C_FAMILY                   => C_FAMILY
    )
    port map
    (

      --System signals
      s_axi_aclk           =>      s_axi_aclk         , 
      s_axi_aresetn        =>      s_axi_aresetn      , 
      s_axi_awaddr         =>      s_axi_awaddr       , 
      s_axi_awvalid        =>      s_axi_awvalid      , 
      s_axi_awready        =>      s_axi_awready      , 
      s_axi_wdata          =>      s_axi_wdata        , 
      s_axi_wstrb          =>      s_axi_wstrb        , 
      s_axi_wvalid         =>      s_axi_wvalid       , 
      s_axi_wready         =>      s_axi_wready       , 
      s_axi_bresp          =>      s_axi_bresp        , 
      s_axi_bvalid         =>      s_axi_bvalid       , 
      s_axi_bready         =>      s_axi_bready       , 
      s_axi_araddr         =>      s_axi_araddr       , 
      s_axi_arvalid        =>      s_axi_arvalid      , 
      s_axi_arready        =>      s_axi_arready      , 
      s_axi_rdata          =>      s_axi_rdata        , 
      s_axi_rresp          =>      s_axi_rresp        , 
      s_axi_rvalid         =>      s_axi_rvalid       , 
      s_axi_rready         =>      s_axi_rready       , 
      -- Controls to the IP/IPIF modules
      Bus2IP_Clk            =>      bus2ip_clk        , 
      Bus2IP_Resetn         =>      bus2ip_resetn     ,
      Bus2IP_Addr           =>      open              ,
      Bus2IP_RNW            =>      open              ,
      Bus2IP_BE             =>      bus2ip_be         ,
      Bus2IP_CS             =>      open              ,
      Bus2IP_RdCE           =>      bus2ip_rdce       ,
      Bus2IP_WrCE           =>      bus2ip_wrce       ,
      Bus2IP_Data           =>      bus2ip_data  ,
      IP2Bus_Data           =>      ip2bus_data  ,
      IP2Bus_WrAck          =>      ip2bus_wrack      ,
      IP2Bus_RdAck          =>      ip2bus_rdack      ,
      IP2Bus_Error          =>      ip2bus_error      
    );

  -----------------------------------------------------------------------------
  -- Instantiate axi_master_burst
  -----------------------------------------------------------------------------
  AXI_MASTER_BURST_I: entity axi_master_burst_v2_0_7.axi_master_burst
    generic map
     (
      C_M_AXI_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH        ,
      C_M_AXI_DATA_WIDTH         => C_M_AXI_DATA_WIDTH        ,
      C_MAX_BURST_LEN            => C_MAX_BURST_LEN           ,
      C_ADDR_PIPE_DEPTH          => 1                         ,
      C_NATIVE_DATA_WIDTH        => IPIF_NATIVE_DWIDTH        ,
      C_LENGTH_WIDTH             => 12                        ,
      C_FAMILY                   => C_FAMILY
      )
    port map
     (
      m_axi_aclk                 => m_axi_aclk                ,
      m_axi_aresetn              => m_axi_aresetn             ,
      md_error                   => md_error                  ,
       -- MMap Read Address Channel
      m_axi_arready              => m_axi_arready             ,
      m_axi_arvalid              => m_axi_arvalid             ,
      m_axi_araddr               => m_axi_araddr              ,
      m_axi_arlen                => m_axi_arlen               ,
      m_axi_arsize               => m_axi_arsize              ,
      m_axi_arburst              => m_axi_arburst             ,
      m_axi_arprot               => m_axi_arprot              ,
      m_axi_arcache              => m_axi_arcache             ,
      -- MMap Read Data Channel   
      m_axi_rready               => m_axi_rready              ,
      m_axi_rvalid               => m_axi_rvalid              , 
      m_axi_rdata                => m_axi_rdata               , 
      m_axi_rresp                => m_axi_rresp               , 
      m_axi_rlast                => m_axi_rlast               , 
      -- Write Address Channel
      m_axi_awready              => m_axi_awready             , 
      m_axi_awvalid              => m_axi_awvalid             , 
      m_axi_awaddr               => m_axi_awaddr              , 
      m_axi_awlen                => m_axi_awlen               , 
      m_axi_awsize               => m_axi_awsize              , 
      m_axi_awburst              => m_axi_awburst             , 
      m_axi_awprot               => m_axi_awprot              , 
      m_axi_awcache              => m_axi_awcache             , 
      -- Write Data Channel
      m_axi_wready               => m_axi_wready              , 
      m_axi_wvalid               => m_axi_wvalid              , 
      m_axi_wdata                => m_axi_wdata               , 
      m_axi_wstrb                => m_axi_wstrb               , 
      m_axi_wlast                => m_axi_wlast               , 
      -- Write Response Channel 
      m_axi_bready               => m_axi_bready              , 
      m_axi_bvalid               => m_axi_bvalid              , 
      m_axi_bresp                => m_axi_bresp               , 
  
      -- IPIC Request/Qualifiers
      ip2bus_mstrd_req           => ip2bus_mstrd_req          ,
      ip2bus_mstwr_req           => std_logic'('0')           ,
      ip2bus_mst_addr            => ip2bus_mst_addr           ,
      ip2bus_mst_length          => ip2bus_mst_length         ,
      ip2bus_mst_be              => ip2bus_mst_be             , 
      ip2bus_mst_type            => ip2bus_mst_type           ,
      ip2bus_mst_lock            => ip2bus_mst_lock           ,
      ip2bus_mst_reset           => ip2bus_mst_reset          ,
      -- IPIC Request Status Reply
      bus2ip_mst_cmdack          => bus2ip_mst_cmdack         ,
      bus2ip_mst_cmplt           => bus2ip_mst_cmplt          ,
      bus2ip_mst_error           => open                      ,
      bus2ip_mst_rearbitrate     => open                      ,
      bus2ip_mst_cmd_timeout     => open                      ,
      -- IPIC Read LocalLink Channel
      bus2ip_mstrd_d             => temp_bus2ip_mstrd_d       ,
      bus2ip_mstrd_rem           => open                      ,
      bus2ip_mstrd_sof_n         => open                      ,
      bus2ip_mstrd_eof_n         => bus2ip_mstrd_eof_n        ,
      bus2ip_mstrd_src_rdy_n     => bus2ip_mstrd_src_rdy_n    ,
      bus2ip_mstrd_src_dsc_n     => open                      ,
      ip2bus_mstrd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n    ,
      ip2bus_mstrd_dst_dsc_n     => ip2bus_mstrd_dst_dsc_n    ,
      -- IPIC Write LocalLink Channe
      ip2bus_mstwr_d             => ip2bus_mstwr_d            ,
      ip2bus_mstwr_rem           => ip2bus_mstwr_rem          ,
      ip2bus_mstwr_sof_n         => std_logic'('0')           ,
      ip2bus_mstwr_eof_n         => std_logic'('0')           ,
      ip2bus_mstwr_src_rdy_n     => std_logic'('0')           ,
      ip2bus_mstwr_src_dsc_n     => std_logic'('0')           ,
      bus2ip_mstwr_dst_rdy_n     => open                      ,
      bus2ip_mstwr_dst_dsc_n     => open
    );

  -----------------------------------------------------------------------------
  -- ENDEANESS correction for master read signals 
  -----------------------------------------------------------------------------
  AXI_DATA_WIDTH_32: if (C_M_AXI_DATA_WIDTH = 32) generate
  begin
    bus2ip_mstrd_d(0 to 31) <= temp_bus2ip_mstrd_d(31 downto 0);
    bus2ip_mstr_data <= (bus2ip_mstrd_d1 & bus2ip_mstrd_d);
    ip2bus_mst_be <= (others => '1');
    RD_DATA_ALIGN: process (m_axi_aclk) is
    begin
    if m_axi_aclk'event and m_axi_aclk = '1' then
        if bus2ip_mreset = '1' then
            bus2ip_mstrd_d1 <= (others => '0');
            mstr_src_rdy_n <= '1';
        else 
            bus2ip_mstrd_d1 <= bus2ip_mstrd_d;
            if (bus2ip_mstrd_src_rdy_n = '0') then
                mstr_src_rdy_n <= not mstr_src_rdy_n;
            else 
                mstr_src_rdy_n <= '1';
            end if;
        end if;
    end if;
    end process RD_DATA_ALIGN;
  end generate AXI_DATA_WIDTH_32;

  AXI_DATA_WIDTH_GT32: if (C_M_AXI_DATA_WIDTH > 32) generate
  begin
    bus2ip_mstrd_d(0 to 63) <= (temp_bus2ip_mstrd_d(31 downto 0) & temp_bus2ip_mstrd_d(63 downto 32));
    bus2ip_mstr_data <= bus2ip_mstrd_d;
    mstr_src_rdy_n <= bus2ip_mstrd_src_rdy_n;
    ip2bus_mst_be <= (others => '1');
  end generate AXI_DATA_WIDTH_GT32;
  
  -----------------------------------------------------------------------------
  -- Instantiate TFT Controller 
  -----------------------------------------------------------------------------
  TFT_CTRL_I: axi_tft_v2_1_tft_controller 
    generic map (
      C_TFT_INTERFACE            => C_TFT_INTERFACE           ,                                        
      C_I2C_SLAVE_ADDR           => I2C_SLAVE_ADDR            ,
      C_DEFAULT_TFT_BASE_ADDR    => C_DEFAULT_TFT_BASE_ADDR   ,  
      C_FAMILY                   => C_FAMILY                  , 
      C_IOREG_STYLE              => IO_REG_STYLE              ,
      C_EN_I2C_INTF              => C_EN_I2C_INTF             ,
      C_SLV_DWIDTH               => 32                        ,
      C_MST_AWIDTH               => USER_MST_AWIDTH           ,        
      C_MST_DWIDTH               => 64                        ,
      C_NUM_REG                  => USER_NUM_REG              
     )                                                        
                                                              
    port map                                                  
     (                                                        
      -- TFT SIGNALS OUT TO HW                                
      SYS_TFT_Clk                => sys_tft_clk               ,    
      TFT_HSYNC                  => tft_hsync                 , 
      TFT_VSYNC                  => tft_vsync                 , 
      TFT_DE                     => tft_de                    ,    
      TFT_DPS                    => tft_dps                   ,   
      TFT_VGA_CLK                => tft_vga_clk               , 
      TFT_VGA_R                  => tft_vga_r                 , 
      TFT_VGA_G                  => tft_vga_g                 ,   
      TFT_VGA_B                  => tft_vga_b                 ,   
      TFT_DVI_CLK_P              => tft_dvi_clk_p             , 
      TFT_DVI_CLK_N              => tft_dvi_clk_n             , 
      TFT_DVI_DATA               => tft_dvi_data              ,  
                                                              
      -- IIC init state machine for Chrontel CH7301C          
      TFT_IIC_SCL_I              => tft_iic_scl_i             ,
      TFT_IIC_SCL_O              => tft_iic_scl_o             , 
      TFT_IIC_SCL_T              => tft_iic_scl_t             ,
      TFT_IIC_SDA_I              => tft_iic_sda_i             , 
      TFT_IIC_SDA_O              => tft_iic_sda_o             , 
      TFT_IIC_SDA_T              => tft_iic_sda_t             , 
                                                              
      -- PLB slave interface signals        
      S_AXI_Clk                   => bus2ip_clk                ,
      S_AXI_Rst                   => bus2ip_sreset              ,
      Bus2IP_Data                => bus2ip_data               ,
      Bus2IP_RdCE                => bus2ip_rdce               ,
      Bus2IP_WrCE                => bus2ip_wrce               ,
      Bus2IP_BE                  => bus2ip_be                 ,
      IP2Bus_Data                => ip2bus_data               ,
      IP2Bus_RdAck               => ip2bus_rdack              ,
      IP2Bus_WrAck               => ip2bus_wrack              ,
      IP2Bus_Error               => ip2bus_error              ,

      -- Frame Comeplete Interrupt  
      IP2INTC_Irpt               => ip2intc_irpt              ,
      
      -- PLB Master interface signals                         
      M_AXI_Clk                   => m_axi_aclk                ,
      M_AXI_Rst                   => bus2ip_mreset             ,
      IP2Bus_MstRd_Req           => ip2bus_mstrd_req          ,
      IP2Bus_Mst_Addr            => ip2bus_mst_addr           ,
      IP2Bus_Mst_BE              => open, --ip2bus_mst_be             ,
      IP2Bus_Mst_Length          => ip2bus_mst_length         ,
      IP2Bus_Mst_Type            => ip2bus_mst_type           ,
      IP2Bus_Mst_Lock            => ip2bus_mst_lock           ,
      IP2Bus_Mst_Reset           => ip2bus_mst_reset          ,
      Bus2IP_Mst_CmdAck          => bus2ip_mst_cmdack         ,
      Bus2IP_Mst_Cmplt           => bus2ip_mst_cmplt          ,
      Bus2IP_MstRd_d             => bus2ip_mstr_data, --bus2ip_mstrd_d            ,
      Bus2IP_MstRd_eof_n         => bus2ip_mstrd_eof_n        ,
      Bus2IP_MstRd_src_rdy_n     => mstr_src_rdy_n, --bus2ip_mstrd_src_rdy_n    ,
      IP2Bus_MstRd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n    ,
      IP2Bus_MstRd_dst_dsc_n     => ip2bus_mstrd_dst_dsc_n    
    );

end imp;
