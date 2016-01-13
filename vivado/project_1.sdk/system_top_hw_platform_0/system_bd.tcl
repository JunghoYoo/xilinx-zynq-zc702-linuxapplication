
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART xilinx.com:zc702:part0:1.0 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC_MAIN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_MAIN ]
  set SPI0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI0 ]
  set VGA_INTF [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vga_rtl:1.0 VGA_INTF ]

  # Create ports
  set BCLK_O [ create_bd_port -dir O -from 0 -to 0 BCLK_O ]
  set GPIO_I [ create_bd_port -dir I -from 7 -to 0 GPIO_I ]
  set GPIO_O [ create_bd_port -dir O -from 7 -to 0 GPIO_O ]
  set GPIO_T [ create_bd_port -dir O -from 7 -to 0 GPIO_T ]
  set I2C1_SCL_I [ create_bd_port -dir I I2C1_SCL_I ]
  set I2C1_SCL_O [ create_bd_port -dir O I2C1_SCL_O ]
  set I2C1_SCL_T [ create_bd_port -dir O I2C1_SCL_T ]
  set I2C1_SDA_I [ create_bd_port -dir I I2C1_SDA_I ]
  set I2C1_SDA_O [ create_bd_port -dir O I2C1_SDA_O ]
  set I2C1_SDA_T [ create_bd_port -dir O I2C1_SDA_T ]
  set LRCLK_O [ create_bd_port -dir O -from 0 -to 0 LRCLK_O ]
  set SDATA_I [ create_bd_port -dir I -from 0 -to 0 SDATA_I ]
  set SDATA_O [ create_bd_port -dir O -from 0 -to 0 SDATA_O ]
  set SDIO1_BUSPOW [ create_bd_port -dir O SDIO1_BUSPOW ]
  set SDIO1_BUSVOLT [ create_bd_port -dir O -from 2 -to 0 SDIO1_BUSVOLT ]
  set SDIO1_CDN [ create_bd_port -dir I SDIO1_CDN ]
  set SDIO1_CLK [ create_bd_port -dir O SDIO1_CLK ]
  set SDIO1_CLK_FB [ create_bd_port -dir I SDIO1_CLK_FB ]
  set SDIO1_CMD_I [ create_bd_port -dir I SDIO1_CMD_I ]
  set SDIO1_CMD_O [ create_bd_port -dir O SDIO1_CMD_O ]
  set SDIO1_CMD_T [ create_bd_port -dir O SDIO1_CMD_T ]
  set SDIO1_DATA_I [ create_bd_port -dir I -from 3 -to 0 SDIO1_DATA_I ]
  set SDIO1_DATA_O [ create_bd_port -dir O -from 3 -to 0 SDIO1_DATA_O ]
  set SDIO1_DATA_T [ create_bd_port -dir O -from 3 -to 0 SDIO1_DATA_T ]
  set SDIO1_LED [ create_bd_port -dir O SDIO1_LED ]
  set SDIO1_WP [ create_bd_port -dir I SDIO1_WP ]
  set UART0_RX [ create_bd_port -dir I UART0_RX ]
  set UART0_TX [ create_bd_port -dir O UART0_TX ]
  set clkout12288 [ create_bd_port -dir O -type clk clkout12288 ]
  set hdmi_data [ create_bd_port -dir O -from 15 -to 0 hdmi_data ]
  set hdmi_data_e [ create_bd_port -dir O hdmi_data_e ]
  set hdmi_hsync [ create_bd_port -dir O hdmi_hsync ]
  set hdmi_out_clk [ create_bd_port -dir O hdmi_out_clk ]
  set hdmi_vsync [ create_bd_port -dir O hdmi_vsync ]
  set ps_intr_0 [ create_bd_port -dir I ps_intr_0 ]
  set ps_intr_1 [ create_bd_port -dir I ps_intr_1 ]
  set ps_intr_2 [ create_bd_port -dir I ps_intr_2 ]
  set ps_intr_3 [ create_bd_port -dir I ps_intr_3 ]
  set ps_intr_4 [ create_bd_port -dir I ps_intr_4 ]
  set ps_intr_5 [ create_bd_port -dir I ps_intr_5 ]
  set ps_intr_6 [ create_bd_port -dir I ps_intr_6 ]
  set ps_intr_7 [ create_bd_port -dir I ps_intr_7 ]
  set ps_intr_8 [ create_bd_port -dir I ps_intr_8 ]
  set ps_intr_9 [ create_bd_port -dir I ps_intr_9 ]
  set ps_intr_10 [ create_bd_port -dir I ps_intr_10 ]
  set ps_intr_11 [ create_bd_port -dir I ps_intr_11 ]
  set ps_intr_12 [ create_bd_port -dir I ps_intr_12 ]
  set spdif [ create_bd_port -dir O spdif ]

  # Create instance: axi_cpu_interconnect, and set properties
  set axi_cpu_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_cpu_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {7} \
CONFIG.NUM_SI {2} \
CONFIG.STRATEGY {1} \
 ] $axi_cpu_interconnect

  # Create instance: axi_hdmi_clkgen, and set properties
  set axi_hdmi_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_hdmi_clkgen ]

  # Create instance: axi_hdmi_core, and set properties
  set axi_hdmi_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_hdmi_tx:1.0 axi_hdmi_core ]

  # Create instance: axi_hdmi_dma, and set properties
  set axi_hdmi_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_hdmi_dma ]
  set_property -dict [ list \
CONFIG.c_include_s2mm {0} \
CONFIG.c_m_axis_mm2s_tdata_width {64} \
CONFIG.c_use_mm2s_fsync {1} \
 ] $axi_hdmi_dma

  # Create instance: axi_hdmi_interconnect, and set properties
  set axi_hdmi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_hdmi_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
 ] $axi_hdmi_interconnect

  # Create instance: axi_i2s_adi_0, and set properties
  set axi_i2s_adi_0 [ create_bd_cell -type ip -vlnv analog.com:user:axi_i2s_adi:1.0 axi_i2s_adi_0 ]
  set_property -dict [ list \
CONFIG.C_DMA_TYPE {1} \
 ] $axi_i2s_adi_0

  # Create instance: axi_iic_main, and set properties
  set axi_iic_main [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_main ]
  set_property -dict [ list \
CONFIG.IIC_BOARD_INTERFACE {iic_main} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_main

  # Create instance: axi_interconnect_tft, and set properties
  set axi_interconnect_tft [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_tft ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_interconnect_tft

  # Create instance: axi_spdif_tx_core, and set properties
  set axi_spdif_tx_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_spdif_tx:1.0 axi_spdif_tx_core ]
  set_property -dict [ list \
CONFIG.C_DMA_TYPE {1} \
CONFIG.C_S_AXI_ADDR_WIDTH {16} \
 ] $axi_spdif_tx_core

  # Create instance: axi_tft_0, and set properties
  set axi_tft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_tft:2.1 axi_tft_0 ]
  set_property -dict [ list \
CONFIG.C_DEFAULT_TFT_BASE_ADDR {0x000000003F200000} \
CONFIG.C_MAX_BURST_LEN {256} \
CONFIG.C_M_AXI_DATA_WIDTH {64} \
 ] $axi_tft_0

  # Create instance: sys_audio_clkgen, and set properties
  set sys_audio_clkgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 sys_audio_clkgen ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {754.054} \
CONFIG.CLKOUT1_PHASE_ERROR {802.625} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
CONFIG.CLKOUT2_JITTER {754.054} \
CONFIG.CLKOUT2_PHASE_ERROR {802.625} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {12.288} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_JITTER {754.054} \
CONFIG.CLKOUT3_PHASE_ERROR {802.625} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {12.288} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.NUM_OUT_CLKS {3} \
CONFIG.PRIM_IN_FREQ {200.000} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {true} \
 ] $sys_audio_clkgen

  # Create instance: sys_concat_intc, and set properties
  set sys_concat_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 sys_concat_intc ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {16} \
 ] $sys_concat_intc

  # Create instance: sys_ps7, and set properties
  set sys_ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 sys_ps7 ]
  set_property -dict [ list \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.0} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200.0} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {30} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {8} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_IMPORT_BOARD_PRESET {ZC702} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART0_BAUD_RATE {9600} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USE_DMA0 {1} \
CONFIG.PCW_USE_DMA1 {1} \
CONFIG.PCW_USE_DMA2 {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_M_AXI_GP1 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {1} \
 ] $sys_ps7

  # Create instance: sys_rstgen, and set properties
  set sys_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rstgen ]
  set_property -dict [ list \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $sys_rstgen

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M05_AXI [get_bd_intf_pins axi_cpu_interconnect/M05_AXI] [get_bd_intf_pins axi_i2s_adi_0/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M06_AXI [get_bd_intf_pins axi_cpu_interconnect/M06_AXI] [get_bd_intf_pins axi_tft_0/S_AXI_MM]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_m00_axi [get_bd_intf_pins axi_cpu_interconnect/M00_AXI] [get_bd_intf_pins axi_iic_main/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_m01_axi [get_bd_intf_pins axi_cpu_interconnect/M01_AXI] [get_bd_intf_pins axi_hdmi_clkgen/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_m02_axi [get_bd_intf_pins axi_cpu_interconnect/M02_AXI] [get_bd_intf_pins axi_hdmi_core/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_m03_axi [get_bd_intf_pins axi_cpu_interconnect/M03_AXI] [get_bd_intf_pins axi_hdmi_dma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_m04_axi [get_bd_intf_pins axi_cpu_interconnect/M04_AXI] [get_bd_intf_pins axi_spdif_tx_core/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_s00_axi [get_bd_intf_pins axi_cpu_interconnect/S00_AXI] [get_bd_intf_pins sys_ps7/M_AXI_GP0]
  connect_bd_intf_net -intf_net axi_hdmi_interconnect_m00_axi [get_bd_intf_pins axi_hdmi_interconnect/M00_AXI] [get_bd_intf_pins sys_ps7/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_hdmi_interconnect_s00_axi [get_bd_intf_pins axi_hdmi_dma/M_AXI_MM2S] [get_bd_intf_pins axi_hdmi_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net axi_i2s_adi_0_DMA_REQ_RX [get_bd_intf_pins axi_i2s_adi_0/DMA_REQ_RX] [get_bd_intf_pins sys_ps7/DMA2_REQ]
  connect_bd_intf_net -intf_net axi_i2s_adi_0_DMA_REQ_TX [get_bd_intf_pins axi_i2s_adi_0/DMA_REQ_TX] [get_bd_intf_pins sys_ps7/DMA1_REQ]
  connect_bd_intf_net -intf_net axi_iic_main_iic [get_bd_intf_ports IIC_MAIN] [get_bd_intf_pins axi_iic_main/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_tft_M00_AXI [get_bd_intf_pins axi_interconnect_tft/M00_AXI] [get_bd_intf_pins sys_ps7/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_spdif_dma_ack_tx [get_bd_intf_pins axi_spdif_tx_core/DMA_ACK] [get_bd_intf_pins sys_ps7/DMA0_ACK]
  connect_bd_intf_net -intf_net axi_spdif_dma_req_tx [get_bd_intf_pins axi_spdif_tx_core/DMA_REQ] [get_bd_intf_pins sys_ps7/DMA0_REQ]
  connect_bd_intf_net -intf_net axi_tft_0_M_AXI_MM [get_bd_intf_pins axi_interconnect_tft/S00_AXI] [get_bd_intf_pins axi_tft_0/M_AXI_MM]
  connect_bd_intf_net -intf_net axi_tft_0_VGA_INTF [get_bd_intf_ports VGA_INTF] [get_bd_intf_pins axi_tft_0/VGA_INTF]
  connect_bd_intf_net -intf_net sys_ps7_DMA1_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_ACK_TX] [get_bd_intf_pins sys_ps7/DMA1_ACK]
  connect_bd_intf_net -intf_net sys_ps7_DMA2_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_ACK_RX] [get_bd_intf_pins sys_ps7/DMA2_ACK]
  connect_bd_intf_net -intf_net sys_ps7_SPI_0 [get_bd_intf_ports SPI0] [get_bd_intf_pins sys_ps7/SPI_0]
  connect_bd_intf_net -intf_net sys_ps7_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins sys_ps7/DDR]
  connect_bd_intf_net -intf_net sys_ps7_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins sys_ps7/FIXED_IO]

  # Create port connections
  connect_bd_net -net GPIO_I_1 [get_bd_ports GPIO_I] [get_bd_pins sys_ps7/GPIO_I]
  connect_bd_net -net I2C1_SCL_I_1 [get_bd_ports I2C1_SCL_I] [get_bd_pins sys_ps7/I2C1_SCL_I]
  connect_bd_net -net I2C1_SDA_I_1 [get_bd_ports I2C1_SDA_I] [get_bd_pins sys_ps7/I2C1_SDA_I]
  connect_bd_net -net SDATA_I_1 [get_bd_ports SDATA_I] [get_bd_pins axi_i2s_adi_0/SDATA_I]
  connect_bd_net -net SDIO1_CDN_1 [get_bd_ports SDIO1_CDN] [get_bd_pins sys_ps7/SDIO1_CDN]
  connect_bd_net -net SDIO1_CLK_FB_1 [get_bd_ports SDIO1_CLK_FB] [get_bd_pins sys_ps7/SDIO1_CLK_FB]
  connect_bd_net -net SDIO1_CMD_I_1 [get_bd_ports SDIO1_CMD_I] [get_bd_pins sys_ps7/SDIO1_CMD_I]
  connect_bd_net -net SDIO1_DATA_I_1 [get_bd_ports SDIO1_DATA_I] [get_bd_pins sys_ps7/SDIO1_DATA_I]
  connect_bd_net -net SDIO1_WP_1 [get_bd_ports SDIO1_WP] [get_bd_pins sys_ps7/SDIO1_WP]
  connect_bd_net -net UART0_RX_1 [get_bd_ports UART0_RX] [get_bd_pins sys_ps7/UART0_RX]
  connect_bd_net -net axi_hdmi_dma_mm2s_introut [get_bd_pins axi_hdmi_dma/mm2s_introut] [get_bd_pins sys_concat_intc/In15]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_clk [get_bd_pins axi_hdmi_clkgen/clk_0] [get_bd_pins axi_hdmi_core/hdmi_clk]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_data [get_bd_ports hdmi_data] [get_bd_pins axi_hdmi_core/hdmi_16_data]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_data_e [get_bd_ports hdmi_data_e] [get_bd_pins axi_hdmi_core/hdmi_16_data_e]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_hsync [get_bd_ports hdmi_hsync] [get_bd_pins axi_hdmi_core/hdmi_16_hsync]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_out_clk [get_bd_ports hdmi_out_clk] [get_bd_pins axi_hdmi_core/hdmi_out_clk]
  connect_bd_net -net axi_hdmi_tx_core_hdmi_vsync [get_bd_ports hdmi_vsync] [get_bd_pins axi_hdmi_core/hdmi_16_vsync]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_fsync [get_bd_pins axi_hdmi_core/m_axis_mm2s_fsync] [get_bd_pins axi_hdmi_core/m_axis_mm2s_fsync_ret] [get_bd_pins axi_hdmi_dma/mm2s_fsync]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_tdata [get_bd_pins axi_hdmi_core/m_axis_mm2s_tdata] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tdata]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_tkeep [get_bd_pins axi_hdmi_core/m_axis_mm2s_tkeep] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tkeep]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_tlast [get_bd_pins axi_hdmi_core/m_axis_mm2s_tlast] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tlast]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_tready [get_bd_pins axi_hdmi_core/m_axis_mm2s_tready] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tready]
  connect_bd_net -net axi_hdmi_tx_core_mm2s_tvalid [get_bd_pins axi_hdmi_core/m_axis_mm2s_tvalid] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tvalid]
  connect_bd_net -net axi_i2s_adi_0_BCLK_O [get_bd_ports BCLK_O] [get_bd_pins axi_i2s_adi_0/BCLK_O]
  connect_bd_net -net axi_i2s_adi_0_LRCLK_O [get_bd_ports LRCLK_O] [get_bd_pins axi_i2s_adi_0/LRCLK_O]
  connect_bd_net -net axi_i2s_adi_0_SDATA_O [get_bd_ports SDATA_O] [get_bd_pins axi_i2s_adi_0/SDATA_O]
  connect_bd_net -net axi_iic_main_iic2intc_irpt [get_bd_pins axi_iic_main/iic2intc_irpt] [get_bd_pins sys_concat_intc/In14]
  connect_bd_net -net axi_tft_0_ip2intc_irpt [get_bd_pins axi_tft_0/ip2intc_irpt] [get_bd_pins sys_concat_intc/In13]
  connect_bd_net -net ps_intr_0_1 [get_bd_ports ps_intr_0] [get_bd_pins sys_concat_intc/In0]
  connect_bd_net -net ps_intr_10_1 [get_bd_ports ps_intr_10] [get_bd_pins sys_concat_intc/In10]
  connect_bd_net -net ps_intr_11_1 [get_bd_ports ps_intr_11] [get_bd_pins sys_concat_intc/In11]
  connect_bd_net -net ps_intr_12_1 [get_bd_ports ps_intr_12] [get_bd_pins sys_concat_intc/In12]
  connect_bd_net -net ps_intr_1_1 [get_bd_ports ps_intr_1] [get_bd_pins sys_concat_intc/In1]
  connect_bd_net -net ps_intr_2_1 [get_bd_ports ps_intr_2] [get_bd_pins sys_concat_intc/In2]
  connect_bd_net -net ps_intr_3_1 [get_bd_ports ps_intr_3] [get_bd_pins sys_concat_intc/In3]
  connect_bd_net -net ps_intr_4_1 [get_bd_ports ps_intr_4] [get_bd_pins sys_concat_intc/In4]
  connect_bd_net -net ps_intr_5_1 [get_bd_ports ps_intr_5] [get_bd_pins sys_concat_intc/In5]
  connect_bd_net -net ps_intr_6_1 [get_bd_ports ps_intr_6] [get_bd_pins sys_concat_intc/In6]
  connect_bd_net -net ps_intr_7_1 [get_bd_ports ps_intr_7] [get_bd_pins sys_concat_intc/In7]
  connect_bd_net -net ps_intr_8_1 [get_bd_ports ps_intr_8] [get_bd_pins sys_concat_intc/In8]
  connect_bd_net -net ps_intr_9_1 [get_bd_ports ps_intr_9] [get_bd_pins sys_concat_intc/In9]
  connect_bd_net -net spdif_s [get_bd_ports spdif] [get_bd_pins axi_spdif_tx_core/spdif_tx_o]
  connect_bd_net -net sys_100m_clk [get_bd_pins axi_cpu_interconnect/ACLK] [get_bd_pins axi_cpu_interconnect/M00_ACLK] [get_bd_pins axi_cpu_interconnect/M01_ACLK] [get_bd_pins axi_cpu_interconnect/M02_ACLK] [get_bd_pins axi_cpu_interconnect/M03_ACLK] [get_bd_pins axi_cpu_interconnect/M04_ACLK] [get_bd_pins axi_cpu_interconnect/M05_ACLK] [get_bd_pins axi_cpu_interconnect/M06_ACLK] [get_bd_pins axi_cpu_interconnect/S00_ACLK] [get_bd_pins axi_cpu_interconnect/S01_ACLK] [get_bd_pins axi_hdmi_clkgen/drp_clk] [get_bd_pins axi_hdmi_clkgen/s_axi_aclk] [get_bd_pins axi_hdmi_core/m_axis_mm2s_clk] [get_bd_pins axi_hdmi_core/s_axi_aclk] [get_bd_pins axi_hdmi_dma/m_axi_mm2s_aclk] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_aclk] [get_bd_pins axi_hdmi_dma/s_axi_lite_aclk] [get_bd_pins axi_hdmi_interconnect/ACLK] [get_bd_pins axi_hdmi_interconnect/M00_ACLK] [get_bd_pins axi_hdmi_interconnect/S00_ACLK] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_ACLK] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_ACLK] [get_bd_pins axi_i2s_adi_0/S_AXI_ACLK] [get_bd_pins axi_iic_main/s_axi_aclk] [get_bd_pins axi_interconnect_tft/ACLK] [get_bd_pins axi_interconnect_tft/M00_ACLK] [get_bd_pins axi_interconnect_tft/S00_ACLK] [get_bd_pins axi_spdif_tx_core/DMA_REQ_ACLK] [get_bd_pins axi_spdif_tx_core/S_AXI_ACLK] [get_bd_pins axi_tft_0/m_axi_aclk] [get_bd_pins axi_tft_0/s_axi_aclk] [get_bd_pins sys_ps7/DMA0_ACLK] [get_bd_pins sys_ps7/DMA1_ACLK] [get_bd_pins sys_ps7/DMA2_ACLK] [get_bd_pins sys_ps7/FCLK_CLK0] [get_bd_pins sys_ps7/M_AXI_GP0_ACLK] [get_bd_pins sys_ps7/S_AXI_HP0_ACLK] [get_bd_pins sys_ps7/S_AXI_HP1_ACLK] [get_bd_pins sys_rstgen/slowest_sync_clk]
  connect_bd_net -net sys_100m_resetn [get_bd_pins axi_cpu_interconnect/ARESETN] [get_bd_pins axi_cpu_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_interconnect/M02_ARESETN] [get_bd_pins axi_cpu_interconnect/M03_ARESETN] [get_bd_pins axi_cpu_interconnect/M04_ARESETN] [get_bd_pins axi_cpu_interconnect/M05_ARESETN] [get_bd_pins axi_cpu_interconnect/M06_ARESETN] [get_bd_pins axi_cpu_interconnect/S00_ARESETN] [get_bd_pins axi_cpu_interconnect/S01_ARESETN] [get_bd_pins axi_hdmi_clkgen/s_axi_aresetn] [get_bd_pins axi_hdmi_core/s_axi_aresetn] [get_bd_pins axi_hdmi_dma/axi_resetn] [get_bd_pins axi_hdmi_interconnect/ARESETN] [get_bd_pins axi_hdmi_interconnect/M00_ARESETN] [get_bd_pins axi_hdmi_interconnect/S00_ARESETN] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_RSTN] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_RSTN] [get_bd_pins axi_i2s_adi_0/S_AXI_ARESETN] [get_bd_pins axi_iic_main/s_axi_aresetn] [get_bd_pins axi_interconnect_tft/ARESETN] [get_bd_pins axi_interconnect_tft/M00_ARESETN] [get_bd_pins axi_interconnect_tft/S00_ARESETN] [get_bd_pins axi_spdif_tx_core/DMA_REQ_RSTN] [get_bd_pins axi_spdif_tx_core/S_AXI_ARESETN] [get_bd_pins axi_tft_0/m_axi_aresetn] [get_bd_pins axi_tft_0/s_axi_aresetn] [get_bd_pins sys_audio_clkgen/resetn] [get_bd_pins sys_rstgen/peripheral_aresetn]
  connect_bd_net -net sys_200m_clk [get_bd_pins axi_hdmi_clkgen/clk] [get_bd_pins sys_audio_clkgen/clk_in1] [get_bd_pins sys_ps7/FCLK_CLK1]
  connect_bd_net -net sys_200m_resetn [get_bd_pins sys_rstgen/interconnect_aresetn]
  connect_bd_net -net sys_audio_clkgen_clk [get_bd_pins axi_spdif_tx_core/spdif_data_clk] [get_bd_pins sys_audio_clkgen/clk_out1]
  connect_bd_net -net sys_audio_clkgen_clk_out2 [get_bd_pins axi_i2s_adi_0/DATA_CLK_I] [get_bd_pins sys_audio_clkgen/clk_out2]
  connect_bd_net -net sys_audio_clkgen_clk_out3 [get_bd_ports clkout12288] [get_bd_pins sys_audio_clkgen/clk_out3]
  connect_bd_net -net sys_aux_reset [get_bd_pins sys_ps7/FCLK_RESET0_N] [get_bd_pins sys_rstgen/ext_reset_in]
  connect_bd_net -net sys_concat_intc_dout [get_bd_pins sys_concat_intc/dout] [get_bd_pins sys_ps7/IRQ_F2P]
  connect_bd_net -net sys_ps7_FCLK_CLK2 [get_bd_pins axi_tft_0/sys_tft_clk] [get_bd_pins sys_ps7/FCLK_CLK2]
  connect_bd_net -net sys_ps7_GPIO_O [get_bd_ports GPIO_O] [get_bd_pins sys_ps7/GPIO_O]
  connect_bd_net -net sys_ps7_GPIO_T [get_bd_ports GPIO_T] [get_bd_pins sys_ps7/GPIO_T]
  connect_bd_net -net sys_ps7_I2C1_SCL_O [get_bd_ports I2C1_SCL_O] [get_bd_pins sys_ps7/I2C1_SCL_O]
  connect_bd_net -net sys_ps7_I2C1_SCL_T [get_bd_ports I2C1_SCL_T] [get_bd_pins sys_ps7/I2C1_SCL_T]
  connect_bd_net -net sys_ps7_I2C1_SDA_O [get_bd_ports I2C1_SDA_O] [get_bd_pins sys_ps7/I2C1_SDA_O]
  connect_bd_net -net sys_ps7_I2C1_SDA_T [get_bd_ports I2C1_SDA_T] [get_bd_pins sys_ps7/I2C1_SDA_T]
  connect_bd_net -net sys_ps7_SDIO1_BUSPOW [get_bd_ports SDIO1_BUSPOW] [get_bd_pins sys_ps7/SDIO1_BUSPOW]
  connect_bd_net -net sys_ps7_SDIO1_BUSVOLT [get_bd_ports SDIO1_BUSVOLT] [get_bd_pins sys_ps7/SDIO1_BUSVOLT]
  connect_bd_net -net sys_ps7_SDIO1_CLK [get_bd_ports SDIO1_CLK] [get_bd_pins sys_ps7/SDIO1_CLK]
  connect_bd_net -net sys_ps7_SDIO1_CMD_O [get_bd_ports SDIO1_CMD_O] [get_bd_pins sys_ps7/SDIO1_CMD_O]
  connect_bd_net -net sys_ps7_SDIO1_CMD_T [get_bd_ports SDIO1_CMD_T] [get_bd_pins sys_ps7/SDIO1_CMD_T]
  connect_bd_net -net sys_ps7_SDIO1_DATA_O [get_bd_ports SDIO1_DATA_O] [get_bd_pins sys_ps7/SDIO1_DATA_O]
  connect_bd_net -net sys_ps7_SDIO1_DATA_T [get_bd_ports SDIO1_DATA_T] [get_bd_pins sys_ps7/SDIO1_DATA_T]
  connect_bd_net -net sys_ps7_SDIO1_LED [get_bd_ports SDIO1_LED] [get_bd_pins sys_ps7/SDIO1_LED]
  connect_bd_net -net sys_ps7_UART0_TX [get_bd_ports UART0_TX] [get_bd_pins sys_ps7/UART0_TX]
  connect_bd_net -net vcc_dout [get_bd_pins sys_ps7/SPI0_SS_I] [get_bd_pins vcc/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_hdmi_dma/Data_MM2S] [get_bd_addr_segs sys_ps7/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_sys_ps7_hp0_ddr_lowocm
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_tft_0/Video_data] [get_bd_addr_segs sys_ps7/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_sys_ps7_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x77600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_i2s_adi_0/S_AXI/reg0] SEG_axi_i2s_adi_0_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_tft_0/S_AXI_MM/Reg] SEG_axi_tft_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x79000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_clkgen/s_axi/axi_lite] SEG_data_hdmi_clkgen
  create_bd_addr_seg -range 0x10000 -offset 0x70E00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_core/s_axi/axi_lite] SEG_data_hdmi_core
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_dma/S_AXI_LITE/Reg] SEG_data_hdmi_dma
  create_bd_addr_seg -range 0x10000 -offset 0x41600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_iic_main/S_AXI/Reg] SEG_data_iic_main
  create_bd_addr_seg -range 0x10000 -offset 0x75C00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_spdif_tx_core/S_AXI/reg0] SEG_data_spdif_core

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   comment_0: "AR# 47511",
   commentid: "comment_0|",
   font_comment_0: "6",
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port ps_intr_10 -pg 1 -y 1190 -defaultsOSRD
preplace port SPI0 -pg 1 -y 1820 -defaultsOSRD
preplace port DDR -pg 1 -y 1580 -defaultsOSRD
preplace port UART0_TX -pg 1 -y 1640 -defaultsOSRD
preplace port ps_intr_11 -pg 1 -y 1210 -defaultsOSRD
preplace port IIC_MAIN -pg 1 -y 450 -defaultsOSRD
preplace port ps_intr_12 -pg 1 -y 1230 -defaultsOSRD
preplace port spdif -pg 1 -y 830 -defaultsOSRD
preplace port hdmi_vsync -pg 1 -y 80 -defaultsOSRD
preplace port hdmi_hsync -pg 1 -y 60 -defaultsOSRD
preplace port SDIO1_CMD_T -pg 1 -y 1930 -defaultsOSRD
preplace port I2C1_SCL_O -pg 1 -y 1760 -defaultsOSRD
preplace port I2C1_SDA_T -pg 1 -y 1740 -defaultsOSRD
preplace port ps_intr_0 -pg 1 -y 990 -defaultsOSRD
preplace port SDIO1_LED -pg 1 -y 1980 -defaultsOSRD
preplace port ps_intr_1 -pg 1 -y 1010 -defaultsOSRD
preplace port SDIO1_CMD_I -pg 1 -y 1910 -defaultsOSRD
preplace port I2C1_SDA_I -pg 1 -y 1370 -defaultsOSRD
preplace port UART0_RX -pg 1 -y 1350 -defaultsOSRD
preplace port ps_intr_2 -pg 1 -y 1030 -defaultsOSRD
preplace port ps_intr_3 -pg 1 -y 1050 -defaultsOSRD
preplace port SDIO1_CLK_FB -pg 1 -y 1880 -defaultsOSRD
preplace port clkout12288 -pg 1 -y 710 -defaultsOSRD
preplace port ps_intr_4 -pg 1 -y 1070 -defaultsOSRD
preplace port I2C1_SCL_T -pg 1 -y 1840 -defaultsOSRD
preplace port ps_intr_5 -pg 1 -y 1090 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 1600 -defaultsOSRD
preplace port SDIO1_CDN -pg 1 -y 2000 -defaultsOSRD
preplace port ps_intr_6 -pg 1 -y 1110 -defaultsOSRD
preplace port I2C1_SCL_I -pg 1 -y 1410 -defaultsOSRD
preplace port ps_intr_7 -pg 1 -y 1130 -defaultsOSRD
preplace port hdmi_data_e -pg 1 -y 100 -defaultsOSRD
preplace port hdmi_out_clk -pg 1 -y 40 -defaultsOSRD
preplace port SDIO1_BUSPOW -pg 1 -y 2040 -defaultsOSRD
preplace port SDIO1_WP -pg 1 -y 2020 -defaultsOSRD
preplace port SDIO1_CMD_O -pg 1 -y 1900 -defaultsOSRD
preplace port I2C1_SDA_O -pg 1 -y 1720 -defaultsOSRD
preplace port ps_intr_8 -pg 1 -y 1150 -defaultsOSRD
preplace port VGA_INTF -pg 1 -y 1680 -defaultsOSRD
preplace port SDIO1_CLK -pg 1 -y 1870 -defaultsOSRD
preplace port ps_intr_9 -pg 1 -y 1170 -defaultsOSRD
preplace portBus SDIO1_DATA_T -pg 1 -y 2000 -defaultsOSRD
preplace portBus GPIO_T -pg 1 -y 1560 -defaultsOSRD
preplace portBus SDIO1_DATA_I -pg 1 -y 1940 -defaultsOSRD
preplace portBus GPIO_I -pg 1 -y 1330 -defaultsOSRD
preplace portBus SDATA_O -pg 1 -y 410 -defaultsOSRD
preplace portBus hdmi_data -pg 1 -y 120 -defaultsOSRD
preplace portBus SDIO1_DATA_O -pg 1 -y 1960 -defaultsOSRD
preplace portBus BCLK_O -pg 1 -y 370 -defaultsOSRD
preplace portBus GPIO_O -pg 1 -y 1540 -defaultsOSRD
preplace portBus SDIO1_BUSVOLT -pg 1 -y 2060 -defaultsOSRD
preplace portBus SDATA_I -pg 1 -y 380 -defaultsOSRD
preplace portBus LRCLK_O -pg 1 -y 390 -defaultsOSRD
preplace inst axi_tft_0 -pg 1 -lvl 3 -y 1710 -defaultsOSRD
preplace inst vcc -pg 1 -lvl 6 -y 2400 -defaultsOSRD
preplace inst axi_hdmi_clkgen -pg 1 -lvl 3 -y 560 -defaultsOSRD
preplace inst axi_hdmi_core -pg 1 -lvl 6 -y 180 -defaultsOSRD
preplace inst axi_iic_main -pg 1 -lvl 6 -y 470 -defaultsOSRD
preplace inst axi_interconnect_tft -pg 1 -lvl 4 -y 1740 -defaultsOSRD
preplace inst sys_concat_intc -pg 1 -lvl 5 -y 1250 -defaultsOSRD
preplace inst sys_audio_clkgen -pg 1 -lvl 3 -y 830 -defaultsOSRD
preplace inst axi_hdmi_dma -pg 1 -lvl 3 -y 300 -defaultsOSRD
preplace inst sys_rstgen -pg 1 -lvl 1 -y 800 -defaultsOSRD
preplace inst axi_i2s_adi_0 -pg 1 -lvl 5 -y 280 -defaultsOSRD
preplace inst axi_hdmi_interconnect -pg 1 -lvl 5 -y 620 -defaultsOSRD
preplace inst axi_cpu_interconnect -pg 1 -lvl 2 -y 600 -defaultsOSRD
preplace inst sys_ps7 -pg 1 -lvl 6 -y 1830 -defaultsOSRD
preplace inst axi_spdif_tx_core -pg 1 -lvl 5 -y 930 -defaultsOSRD
preplace netloc sys_ps7_SDIO1_BUSVOLT 1 6 1 N
preplace netloc sys_ps7_SDIO1_CLK 1 6 1 2710
preplace netloc spdif_s 1 5 2 NJ 830 NJ
preplace netloc ps_intr_4_1 1 0 5 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ
preplace netloc ps_intr_9_1 1 0 5 NJ 1170 NJ 1170 NJ 1170 NJ 1170 NJ
preplace netloc sys_ps7_GPIO_O 1 6 1 NJ
preplace netloc sys_100m_clk 1 0 7 -110 710 220 320 600 960 1070 960 1540 120 1950 2340 2570
preplace netloc axi_tft_0_VGA_INTF 1 3 4 NJ 1500 NJ 1500 NJ 1370 NJ
preplace netloc sys_ps7_FCLK_CLK2 1 2 5 620 2350 NJ 2350 NJ 2350 NJ 2350 2560
preplace netloc axi_i2s_adi_0_SDATA_O 1 5 2 NJ 400 NJ
preplace netloc sys_ps7_ddr 1 6 1 NJ
preplace netloc ps_intr_3_1 1 0 5 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ
preplace netloc sys_audio_clkgen_clk_out2 1 3 2 1060 240 N
preplace netloc sys_ps7_GPIO_T 1 6 1 NJ
preplace netloc sys_ps7_I2C1_SCL_O 1 6 1 NJ
preplace netloc axi_hdmi_tx_core_mm2s_tkeep 1 3 3 1020 90 NJ 90 NJ
preplace netloc sys_audio_clkgen_clk_out3 1 3 4 NJ 760 NJ 760 NJ 710 NJ
preplace netloc ps_intr_6_1 1 0 5 NJ 1110 NJ 1110 NJ 1110 NJ 1110 NJ
preplace netloc sys_100m_resetn 1 1 5 230 330 610 990 1020 990 1510 130 2030
preplace netloc SDIO1_CMD_I_1 1 0 7 NJ 1910 NJ 1910 NJ 1910 NJ 1910 NJ 1910 NJ 2310 2610
preplace netloc axi_hdmi_tx_core_hdmi_vsync 1 6 1 NJ
preplace netloc ps_intr_12_1 1 0 5 NJ 1230 NJ 1230 NJ 1230 NJ 1230 NJ
preplace netloc axi_i2s_adi_0_DMA_REQ_TX 1 5 1 1990
preplace netloc sys_ps7_I2C1_SCL_T 1 6 1 NJ
preplace netloc sys_ps7_DMA1_ACK 1 4 3 NJ 740 NJ 740 2670
preplace netloc SDIO1_CLK_FB_1 1 0 7 NJ 1880 NJ 1880 NJ 1880 NJ 1880 NJ 1880 NJ 2300 2620
preplace netloc ps_intr_8_1 1 0 5 NJ 1150 NJ 1150 NJ 1150 NJ 1150 NJ
preplace netloc sys_ps7_SDIO1_CMD_O 1 6 1 2700
preplace netloc sys_200m_resetn 1 1 1 N
preplace netloc sys_ps7_fixed_io 1 6 1 NJ
preplace netloc UART0_RX_1 1 0 7 NJ 1350 NJ 1350 NJ 1350 NJ 1350 NJ 1480 NJ 1310 2620
preplace netloc SDIO1_WP_1 1 0 7 NJ 2020 NJ 2020 NJ 2020 NJ 2020 NJ 2020 NJ 2330 2580
preplace netloc sys_ps7_I2C1_SDA_O 1 6 1 NJ
preplace netloc axi_cpu_interconnect_s00_axi 1 1 6 240 900 NJ 900 NJ 790 NJ 790 NJ 790 2650
preplace netloc ps_intr_7_1 1 0 5 NJ 1130 NJ 1130 NJ 1130 NJ 1130 NJ
preplace netloc sys_ps7_SDIO1_LED 1 6 1 N
preplace netloc axi_hdmi_tx_core_hdmi_data 1 6 1 NJ
preplace netloc sys_ps7_SDIO1_CMD_T 1 6 1 2690
preplace netloc ps_intr_0_1 1 0 5 NJ 980 NJ 980 NJ 980 NJ 980 NJ
preplace netloc axi_cpu_interconnect_m04_axi 1 2 3 580 650 NJ 650 NJ
preplace netloc axi_hdmi_tx_core_mm2s_tlast 1 3 3 1040 100 NJ 100 NJ
preplace netloc axi_i2s_adi_0_LRCLK_O 1 5 2 NJ 390 NJ
preplace netloc sys_ps7_I2C1_SDA_T 1 6 1 NJ
preplace netloc sys_ps7_SPI_0 1 6 1 NJ
preplace netloc ps_intr_2_1 1 0 5 NJ 1030 NJ 1030 NJ 1030 NJ 1030 NJ
preplace netloc I2C1_SDA_I_1 1 0 7 NJ 1370 NJ 1370 NJ 1370 NJ 1370 NJ 1450 NJ 1330 2610
preplace netloc ps_intr_10_1 1 0 5 NJ 1190 NJ 1190 NJ 1190 NJ 1190 NJ
preplace netloc SDIO1_CDN_1 1 0 7 NJ 2000 NJ 2000 NJ 2000 NJ 2000 NJ 2000 NJ 2290 2550
preplace netloc axi_spdif_dma_ack_tx 1 4 3 NJ 810 NJ 810 2630
preplace netloc axi_spdif_dma_req_tx 1 5 1 1970
preplace netloc axi_hdmi_interconnect_s00_axi 1 3 2 N 220 1530
preplace netloc axi_cpu_interconnect_m00_axi 1 2 4 580 450 NJ 450 NJ 450 NJ
preplace netloc SDATA_I_1 1 0 5 NJ 160 NJ 160 NJ 160 NJ 160 NJ
preplace netloc axi_hdmi_tx_core_hdmi_out_clk 1 6 1 NJ
preplace netloc axi_cpu_interconnect_M05_AXI 1 2 3 NJ 170 N 170 1550
preplace netloc axi_cpu_interconnect_m03_axi 1 2 1 570
preplace netloc sys_ps7_SDIO1_DATA_O 1 6 1 2780
preplace netloc axi_hdmi_tx_core_mm2s_tdata 1 3 3 1000 80 NJ 80 NJ
preplace netloc sys_200m_clk 1 2 5 620 910 NJ 820 NJ 820 NJ 820 2640
preplace netloc ps_intr_11_1 1 0 5 NJ 1210 NJ 1210 NJ 1210 NJ 1210 NJ
preplace netloc axi_iic_main_iic 1 6 1 NJ
preplace netloc axi_interconnect_tft_M00_AXI 1 4 2 N 1740 NJ
preplace netloc axi_cpu_interconnect_m01_axi 1 2 1 590
preplace netloc sys_concat_intc_dout 1 5 1 1940
preplace netloc axi_iic_main_iic2intc_irpt 1 4 3 NJ 1470 NJ 1240 2550
preplace netloc vcc_dout 1 6 1 2680
preplace netloc sys_aux_reset 1 0 7 -110 2450 NJ 2450 NJ 2450 NJ 2450 NJ 2450 NJ 2450 2590
preplace netloc axi_hdmi_interconnect_m00_axi 1 5 1 1960
preplace netloc sys_audio_clkgen_clk 1 3 2 N 810 1520
preplace netloc ps_intr_1_1 1 0 5 NJ 1010 NJ 1010 NJ 1010 NJ 1010 NJ
preplace netloc ps_intr_5_1 1 0 5 NJ 1090 NJ 1090 NJ 1090 NJ 1090 NJ
preplace netloc sys_ps7_SDIO1_DATA_T 1 6 1 2760
preplace netloc axi_hdmi_tx_core_hdmi_data_e 1 6 1 NJ
preplace netloc axi_cpu_interconnect_M06_AXI 1 2 1 570
preplace netloc axi_tft_0_ip2intc_irpt 1 3 2 NJ 1360 N
preplace netloc SDIO1_DATA_I_1 1 0 7 NJ 1940 NJ 1940 NJ 1940 NJ 1940 NJ 1940 NJ 2320 2600
preplace netloc axi_cpu_interconnect_m02_axi 1 2 4 550 40 NJ 40 NJ 40 NJ
preplace netloc sys_ps7_SDIO1_BUSPOW 1 6 1 N
preplace netloc sys_ps7_UART0_TX 1 6 1 NJ
preplace netloc axi_i2s_adi_0_BCLK_O 1 5 2 NJ 370 NJ
preplace netloc I2C1_SCL_I_1 1 0 7 NJ 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1360 2600
preplace netloc sys_ps7_DMA2_ACK 1 4 3 NJ 750 NJ 750 2660
preplace netloc axi_hdmi_tx_core_hdmi_hsync 1 6 1 NJ
preplace netloc axi_hdmi_tx_core_hdmi_clk 1 3 3 1030 50 NJ 50 NJ
preplace netloc axi_hdmi_tx_core_mm2s_tready 1 3 3 1010 60 NJ 60 NJ
preplace netloc axi_hdmi_tx_core_mm2s_tvalid 1 3 3 1050 110 NJ 110 NJ
preplace netloc axi_hdmi_tx_core_mm2s_fsync 1 2 5 620 430 NJ 430 N 430 1940 380 2630
preplace netloc axi_tft_0_M_AXI_MM 1 3 1 N
preplace netloc axi_i2s_adi_0_DMA_REQ_RX 1 5 1 2000
preplace netloc axi_hdmi_dma_mm2s_introut 1 3 2 N 380 1500
preplace netloc GPIO_I_1 1 0 7 NJ 1330 NJ 1330 NJ 1330 NJ 1330 NJ 1460 NJ 1350 2550
preplace cgraphic comment_0 place abs 1906 2468 textcolor 4 linecolor 3 linewidth 2
levelinfo -pg 1 -140 60 400 810 1240 1740 2320 2810 -top 0 -bot 2470
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


