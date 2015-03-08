
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
set scripts_vivado_version 2014.4
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


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


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
  set SDIO1_CDN [ create_bd_port -dir I SDIO1_CDN ]
  set SDIO1_CLK [ create_bd_port -dir O SDIO1_CLK ]
  set SDIO1_CLK_FB [ create_bd_port -dir I SDIO1_CLK_FB ]
  set SDIO1_CMD_I [ create_bd_port -dir I SDIO1_CMD_I ]
  set SDIO1_CMD_O [ create_bd_port -dir O SDIO1_CMD_O ]
  set SDIO1_CMD_T [ create_bd_port -dir O SDIO1_CMD_T ]
  set SDIO1_DATA_I [ create_bd_port -dir I -from 3 -to 0 SDIO1_DATA_I ]
  set SDIO1_DATA_O [ create_bd_port -dir O -from 3 -to 0 SDIO1_DATA_O ]
  set SDIO1_DATA_T [ create_bd_port -dir O -from 3 -to 0 SDIO1_DATA_T ]
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
  set ps_intr_13 [ create_bd_port -dir I ps_intr_13 ]
  set spdif [ create_bd_port -dir O spdif ]

  # Create instance: axi_cpu_interconnect, and set properties
  set axi_cpu_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_cpu_interconnect ]
  set_property -dict [ list CONFIG.NUM_MI {6} CONFIG.STRATEGY {1}  ] $axi_cpu_interconnect

  # Create instance: axi_hdmi_clkgen, and set properties
  set axi_hdmi_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_hdmi_clkgen ]

  # Create instance: axi_hdmi_core, and set properties
  set axi_hdmi_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_hdmi_tx:1.0 axi_hdmi_core ]

  # Create instance: axi_hdmi_dma, and set properties
  set axi_hdmi_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_hdmi_dma ]
  set_property -dict [ list CONFIG.c_include_s2mm {0} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_use_mm2s_fsync {1}  ] $axi_hdmi_dma

  # Create instance: axi_hdmi_interconnect, and set properties
  set axi_hdmi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_hdmi_interconnect ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_hdmi_interconnect

  # Create instance: axi_i2s_adi_0, and set properties
  set axi_i2s_adi_0 [ create_bd_cell -type ip -vlnv analog.com:user:axi_i2s_adi:1.0 axi_i2s_adi_0 ]
  set_property -dict [ list CONFIG.C_DMA_TYPE {1}  ] $axi_i2s_adi_0

  # Create instance: axi_iic_main, and set properties
  set axi_iic_main [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_main ]
  set_property -dict [ list CONFIG.IIC_BOARD_INTERFACE {iic_main} CONFIG.USE_BOARD_FLOW {true}  ] $axi_iic_main

  # Create instance: axi_spdif_tx_core, and set properties
  set axi_spdif_tx_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_spdif_tx:1.0 axi_spdif_tx_core ]
  set_property -dict [ list CONFIG.C_DMA_TYPE {1} CONFIG.C_S_AXI_ADDR_WIDTH {16}  ] $axi_spdif_tx_core

  # Create instance: sys_audio_clkgen, and set properties
  set sys_audio_clkgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 sys_audio_clkgen ]
  set_property -dict [ list CONFIG.CLKOUT1_JITTER {754.054} CONFIG.CLKOUT1_PHASE_ERROR {802.625} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} CONFIG.CLKOUT2_JITTER {754.054} CONFIG.CLKOUT2_PHASE_ERROR {802.625} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {12.288} CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT3_JITTER {754.054} CONFIG.CLKOUT3_PHASE_ERROR {802.625} CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {12.288} CONFIG.CLKOUT3_USED {true} CONFIG.NUM_OUT_CLKS {3} CONFIG.PRIM_IN_FREQ {200.000} CONFIG.RESET_TYPE {ACTIVE_LOW} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {true}  ] $sys_audio_clkgen

  # Create instance: sys_concat_intc, and set properties
  set sys_concat_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 sys_concat_intc ]
  set_property -dict [ list CONFIG.NUM_PORTS {16}  ] $sys_concat_intc

  # Create instance: sys_ps7, and set properties
  set sys_ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 sys_ps7 ]
  set_property -dict [ list CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_RST1_PORT {0} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.0} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200.0} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_EMIO_GPIO_IO {8} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} CONFIG.PCW_IMPORT_BOARD_PRESET {ZC702} \
CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} CONFIG.PCW_UART0_BAUD_RATE {9600} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} CONFIG.PCW_USE_DMA0 {1} \
CONFIG.PCW_USE_DMA1 {1} CONFIG.PCW_USE_DMA2 {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $sys_ps7

  # Create instance: sys_rstgen, and set properties
  set sys_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rstgen ]
  set_property -dict [ list CONFIG.C_EXT_RST_WIDTH {1}  ] $sys_rstgen

  # Create interface connections
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M05_AXI [get_bd_intf_pins axi_cpu_interconnect/M05_AXI] [get_bd_intf_pins axi_i2s_adi_0/S_AXI]
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
  connect_bd_intf_net -intf_net axi_spdif_dma_ack_tx [get_bd_intf_pins axi_spdif_tx_core/DMA_ACK] [get_bd_intf_pins sys_ps7/DMA0_ACK]
  connect_bd_intf_net -intf_net axi_spdif_dma_req_tx [get_bd_intf_pins axi_spdif_tx_core/DMA_REQ] [get_bd_intf_pins sys_ps7/DMA0_REQ]
  connect_bd_intf_net -intf_net sys_ps7_DMA1_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_ACK_TX] [get_bd_intf_pins sys_ps7/DMA1_ACK]
  connect_bd_intf_net -intf_net sys_ps7_DMA2_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_ACK_RX] [get_bd_intf_pins sys_ps7/DMA2_ACK]
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
  connect_bd_net -net ps_intr_0_1 [get_bd_ports ps_intr_0] [get_bd_pins sys_concat_intc/In0]
  connect_bd_net -net ps_intr_10_1 [get_bd_ports ps_intr_10] [get_bd_pins sys_concat_intc/In10]
  connect_bd_net -net ps_intr_11_1 [get_bd_ports ps_intr_11] [get_bd_pins sys_concat_intc/In11]
  connect_bd_net -net ps_intr_12_1 [get_bd_ports ps_intr_12] [get_bd_pins sys_concat_intc/In12]
  connect_bd_net -net ps_intr_13_1 [get_bd_ports ps_intr_13] [get_bd_pins sys_concat_intc/In13]
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
  connect_bd_net -net sys_100m_clk [get_bd_pins axi_cpu_interconnect/ACLK] [get_bd_pins axi_cpu_interconnect/M00_ACLK] [get_bd_pins axi_cpu_interconnect/M01_ACLK] [get_bd_pins axi_cpu_interconnect/M02_ACLK] [get_bd_pins axi_cpu_interconnect/M03_ACLK] [get_bd_pins axi_cpu_interconnect/M04_ACLK] [get_bd_pins axi_cpu_interconnect/M05_ACLK] [get_bd_pins axi_cpu_interconnect/S00_ACLK] [get_bd_pins axi_hdmi_clkgen/drp_clk] [get_bd_pins axi_hdmi_clkgen/s_axi_aclk] [get_bd_pins axi_hdmi_core/m_axis_mm2s_clk] [get_bd_pins axi_hdmi_core/s_axi_aclk] [get_bd_pins axi_hdmi_dma/m_axi_mm2s_aclk] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_aclk] [get_bd_pins axi_hdmi_dma/s_axi_lite_aclk] [get_bd_pins axi_hdmi_interconnect/ACLK] [get_bd_pins axi_hdmi_interconnect/M00_ACLK] [get_bd_pins axi_hdmi_interconnect/S00_ACLK] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_ACLK] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_ACLK] [get_bd_pins axi_i2s_adi_0/S_AXI_ACLK] [get_bd_pins axi_iic_main/s_axi_aclk] [get_bd_pins axi_spdif_tx_core/DMA_REQ_ACLK] [get_bd_pins axi_spdif_tx_core/S_AXI_ACLK] [get_bd_pins sys_ps7/DMA0_ACLK] [get_bd_pins sys_ps7/DMA1_ACLK] [get_bd_pins sys_ps7/DMA2_ACLK] [get_bd_pins sys_ps7/FCLK_CLK0] [get_bd_pins sys_ps7/M_AXI_GP0_ACLK] [get_bd_pins sys_ps7/S_AXI_HP0_ACLK] [get_bd_pins sys_rstgen/slowest_sync_clk]
  connect_bd_net -net sys_100m_resetn [get_bd_pins axi_cpu_interconnect/ARESETN] [get_bd_pins axi_cpu_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_interconnect/M02_ARESETN] [get_bd_pins axi_cpu_interconnect/M03_ARESETN] [get_bd_pins axi_cpu_interconnect/M04_ARESETN] [get_bd_pins axi_cpu_interconnect/M05_ARESETN] [get_bd_pins axi_cpu_interconnect/S00_ARESETN] [get_bd_pins axi_hdmi_clkgen/s_axi_aresetn] [get_bd_pins axi_hdmi_core/s_axi_aresetn] [get_bd_pins axi_hdmi_dma/axi_resetn] [get_bd_pins axi_hdmi_interconnect/ARESETN] [get_bd_pins axi_hdmi_interconnect/M00_ARESETN] [get_bd_pins axi_hdmi_interconnect/S00_ARESETN] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_RSTN] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_RSTN] [get_bd_pins axi_i2s_adi_0/S_AXI_ARESETN] [get_bd_pins axi_iic_main/s_axi_aresetn] [get_bd_pins axi_spdif_tx_core/DMA_REQ_RSTN] [get_bd_pins axi_spdif_tx_core/S_AXI_ARESETN] [get_bd_pins sys_audio_clkgen/resetn] [get_bd_pins sys_rstgen/peripheral_aresetn]
  connect_bd_net -net sys_200m_clk [get_bd_pins axi_hdmi_clkgen/clk] [get_bd_pins sys_audio_clkgen/clk_in1] [get_bd_pins sys_ps7/FCLK_CLK1]
  connect_bd_net -net sys_200m_resetn [get_bd_pins sys_rstgen/interconnect_aresetn]
  connect_bd_net -net sys_audio_clkgen_clk [get_bd_pins axi_spdif_tx_core/spdif_data_clk] [get_bd_pins sys_audio_clkgen/clk_out1]
  connect_bd_net -net sys_audio_clkgen_clk_out2 [get_bd_pins axi_i2s_adi_0/DATA_CLK_I] [get_bd_pins sys_audio_clkgen/clk_out2]
  connect_bd_net -net sys_audio_clkgen_clk_out3 [get_bd_ports clkout12288] [get_bd_pins sys_audio_clkgen/clk_out3]
  connect_bd_net -net sys_aux_reset [get_bd_pins sys_ps7/FCLK_RESET0_N] [get_bd_pins sys_rstgen/ext_reset_in]
  connect_bd_net -net sys_concat_intc_dout [get_bd_pins sys_concat_intc/dout] [get_bd_pins sys_ps7/IRQ_F2P]
  connect_bd_net -net sys_ps7_GPIO_O [get_bd_ports GPIO_O] [get_bd_pins sys_ps7/GPIO_O]
  connect_bd_net -net sys_ps7_GPIO_T [get_bd_ports GPIO_T] [get_bd_pins sys_ps7/GPIO_T]
  connect_bd_net -net sys_ps7_I2C1_SCL_O [get_bd_ports I2C1_SCL_O] [get_bd_pins sys_ps7/I2C1_SCL_O]
  connect_bd_net -net sys_ps7_I2C1_SCL_T [get_bd_ports I2C1_SCL_T] [get_bd_pins sys_ps7/I2C1_SCL_T]
  connect_bd_net -net sys_ps7_I2C1_SDA_O [get_bd_ports I2C1_SDA_O] [get_bd_pins sys_ps7/I2C1_SDA_O]
  connect_bd_net -net sys_ps7_I2C1_SDA_T [get_bd_ports I2C1_SDA_T] [get_bd_pins sys_ps7/I2C1_SDA_T]
  connect_bd_net -net sys_ps7_SDIO1_CLK [get_bd_ports SDIO1_CLK] [get_bd_pins sys_ps7/SDIO1_CLK]
  connect_bd_net -net sys_ps7_SDIO1_CMD_O [get_bd_ports SDIO1_CMD_O] [get_bd_pins sys_ps7/SDIO1_CMD_O]
  connect_bd_net -net sys_ps7_SDIO1_CMD_T [get_bd_ports SDIO1_CMD_T] [get_bd_pins sys_ps7/SDIO1_CMD_T]
  connect_bd_net -net sys_ps7_SDIO1_DATA_O [get_bd_ports SDIO1_DATA_O] [get_bd_pins sys_ps7/SDIO1_DATA_O]
  connect_bd_net -net sys_ps7_SDIO1_DATA_T [get_bd_ports SDIO1_DATA_T] [get_bd_pins sys_ps7/SDIO1_DATA_T]
  connect_bd_net -net sys_ps7_UART0_TX [get_bd_ports UART0_TX] [get_bd_pins sys_ps7/UART0_TX]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_hdmi_dma/Data_MM2S] [get_bd_addr_segs sys_ps7/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_sys_ps7_hp0_ddr_lowocm
  create_bd_addr_seg -range 0x10000 -offset 0x77600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_i2s_adi_0/S_AXI/reg0] SEG_axi_i2s_adi_0_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x79000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_clkgen/s_axi/axi_lite] SEG_data_hdmi_clkgen
  create_bd_addr_seg -range 0x10000 -offset 0x70E00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_core/s_axi/axi_lite] SEG_data_hdmi_core
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_dma/S_AXI_LITE/Reg] SEG_data_hdmi_dma
  create_bd_addr_seg -range 0x10000 -offset 0x41600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_iic_main/S_AXI/Reg] SEG_data_iic_main
  create_bd_addr_seg -range 0x10000 -offset 0x75C00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_spdif_tx_core/S_AXI/reg0] SEG_data_spdif_core
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

