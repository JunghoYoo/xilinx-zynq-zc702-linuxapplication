# constraints
set_property CFGBVS VCCO [current_design] 
set_property CONFIG_VOLTAGE 2.5 [current_design] 

# hdmi
set_property  -dict {PACKAGE_PIN  L16   IOSTANDARD LVCMOS25} [get_ports hdmi_out_clk]
set_property  -dict {PACKAGE_PIN  H15   IOSTANDARD LVCMOS25} [get_ports hdmi_vsync]
set_property  -dict {PACKAGE_PIN  R18   IOSTANDARD LVCMOS25} [get_ports hdmi_hsync]
set_property  -dict {PACKAGE_PIN  T18   IOSTANDARD LVCMOS25} [get_ports hdmi_data_e]
set_property  -dict {PACKAGE_PIN  AB21  IOSTANDARD LVCMOS25} [get_ports hdmi_data[0]]
set_property  -dict {PACKAGE_PIN  AA21  IOSTANDARD LVCMOS25} [get_ports hdmi_data[1]]
set_property  -dict {PACKAGE_PIN  AB22  IOSTANDARD LVCMOS25} [get_ports hdmi_data[2]]
set_property  -dict {PACKAGE_PIN  AA22  IOSTANDARD LVCMOS25} [get_ports hdmi_data[3]]
set_property  -dict {PACKAGE_PIN  V19   IOSTANDARD LVCMOS25} [get_ports hdmi_data[4]]
set_property  -dict {PACKAGE_PIN  V18   IOSTANDARD LVCMOS25} [get_ports hdmi_data[5]]
set_property  -dict {PACKAGE_PIN  V20   IOSTANDARD LVCMOS25} [get_ports hdmi_data[6]]
set_property  -dict {PACKAGE_PIN  U20   IOSTANDARD LVCMOS25} [get_ports hdmi_data[7]]
set_property  -dict {PACKAGE_PIN  W21   IOSTANDARD LVCMOS25} [get_ports hdmi_data[8]]
set_property  -dict {PACKAGE_PIN  W20   IOSTANDARD LVCMOS25} [get_ports hdmi_data[9]]
set_property  -dict {PACKAGE_PIN  W18   IOSTANDARD LVCMOS25} [get_ports hdmi_data[10]]
set_property  -dict {PACKAGE_PIN  T19   IOSTANDARD LVCMOS25} [get_ports hdmi_data[11]]
set_property  -dict {PACKAGE_PIN  U19   IOSTANDARD LVCMOS25} [get_ports hdmi_data[12]]
set_property  -dict {PACKAGE_PIN  R19   IOSTANDARD LVCMOS25} [get_ports hdmi_data[13]]
set_property  -dict {PACKAGE_PIN  T17   IOSTANDARD LVCMOS25} [get_ports hdmi_data[14]]
set_property  -dict {PACKAGE_PIN  T16   IOSTANDARD LVCMOS25} [get_ports hdmi_data[15]]

# spdif
set_property  -dict {PACKAGE_PIN  R15   IOSTANDARD LVCMOS25} [get_ports spdif]

# axi-iic
set_property  -dict {PACKAGE_PIN  W11   IOSTANDARD LVCMOS25 PULLTYPE PULLUP} [get_ports iic0_scl]
set_property  -dict {PACKAGE_PIN  W8    IOSTANDARD LVCMOS25 PULLTYPE PULLUP} [get_ports iic0_sda]

# Swotch
#set_property  -dict {PACKAGE_PIN  G19   IOSTANDARD LVCMOS25} [get_ports gpio_io[0]]   ; ## GPIO_SW_N
set_property  -dict {PACKAGE_PIN  F19   IOSTANDARD LVCMOS25} [get_ports gpio_io[1]]   ; ## GPIO_SW_S
set_property  -dict {PACKAGE_PIN  W6    IOSTANDARD LVCMOS25} [get_ports gpio_io[2]]   ; ## GPIO_DIP_SW0
set_property  -dict {PACKAGE_PIN  W7    IOSTANDARD LVCMOS25} [get_ports gpio_io[3]]   ; ## GPIO_DIP_SW1

# LED
set_property  -dict {PACKAGE_PIN  E15   IOSTANDARD LVCMOS25} [get_ports gpio_io[4]]   ; ## PMOD1_0_LS
set_property  -dict {PACKAGE_PIN  D15   IOSTANDARD LVCMOS25} [get_ports gpio_io[5]]   ; ## PMOD1_1_LS
set_property  -dict {PACKAGE_PIN  W17   IOSTANDARD LVCMOS25} [get_ports gpio_io[6]]  ; ## PMOD1_2_LS
set_property  -dict {PACKAGE_PIN  W5    IOSTANDARD LVCMOS25} [get_ports gpio_io[7]]  ; ## PMOD1_3_LS

# UART
set_property  -dict {PACKAGE_PIN  W10   IOSTANDARD LVCMOS25} [get_ports UART0_RX]   ; ## GPS MAX-6Q
set_property  -dict {PACKAGE_PIN  V7    IOSTANDARD LVCMOS25} [get_ports UART0_TX]   ; ## GPS MAX-6Q

# ADAU1761 I2S
set_property  -dict {PACKAGE_PIN  A16   IOSTANDARD LVCMOS25} [get_ports BCLK_O]   ; ## FMC1_LPC_LA31_P - XM105_J16_10
set_property  -dict {PACKAGE_PIN  A17   IOSTANDARD LVCMOS25} [get_ports LRCLK_O]   ; ## FMC1_LPC_LA31_N - XM105_J16_12
set_property  -dict {PACKAGE_PIN  E21   IOSTANDARD LVCMOS25} [get_ports SDATA_I]   ; ## FMC1_LPC_LA30_P - XM105_J16_6
set_property  -dict {PACKAGE_PIN  D21   IOSTANDARD LVCMOS25} [get_ports SDATA_O]   ; ## FMC1_LPC_LA30_N - XM105_J16_8

# ADAU1761 12.288Mhz MCLKs
set_property  -dict {PACKAGE_PIN  C22   IOSTANDARD LVCMOS25} [get_ports clkout12288]   ; ## FMC1_LPC_LA28_N - XM105_J16_7

# ps-iic 
set_property  -dict {PACKAGE_PIN  B17   IOSTANDARD LVCMOS25} [get_ports iic1_scl]    ; ## FMC1_LPC_LA29_N - XM105_J16_9
set_property  -dict {PACKAGE_PIN  B16    IOSTANDARD LVCMOS25} [get_ports iic1_sda]   ; ## FMC1_LPC_LA29_P - XM105_J16_7

# SDIO 
set_property  -dict {PACKAGE_PIN  G20   IOSTANDARD LVCMOS25} [get_ports sdio1_data_io[2]]   ; ## FMC1_LPC_LA20_P - XM105_J20_1
set_property  -dict {PACKAGE_PIN  A21   IOSTANDARD LVCMOS25} [get_ports sdio1_data_io[3]]   ; ## FMC1_LPC_LA24_P - XM105_J20_2
set_property  -dict {PACKAGE_PIN  G21   IOSTANDARD LVCMOS25} [get_ports sdio1_cmd_io]   ; ## FMC1_LPC_LA20_N - XM105_J20_3
set_property  -dict {PACKAGE_PIN  A22   IOSTANDARD LVCMOS25} [get_ports sdio1_clk]   ; ## FMC1_LPC_LA24_N - XM105_J20_4
set_property  -dict {PACKAGE_PIN  F21   IOSTANDARD LVCMOS25} [get_ports sdio1_data_io[1]]   ; ## FMC1_LPC_LA21_P - XM105_J20_5
set_property  -dict {PACKAGE_PIN  C15   IOSTANDARD LVCMOS25} [get_ports sdio1_data_io[0]]   ; ## FMC1_LPC_LA25_P - XM105_J20_6
set_property  -dict {PACKAGE_PIN  F22   IOSTANDARD LVCMOS25} [get_ports sdio1_wp]   ; ## FMC1_LPC_LA21_N - XM105_J20_7
set_property  -dict {PACKAGE_PIN  B15   IOSTANDARD LVCMOS25} [get_ports sdio1_cdn]   ; ## FMC1_LPC_LA25_N - XM105_J20_8

#ADS7846 SPI
set_property  -dict {PACKAGE_PIN  D20    IOSTANDARD LVCMOS25} [get_ports gpio_io[0]]   ; ## FMC1_LPC_LA18_CC_P - XM105_J1_34 
set_property  -dict {PACKAGE_PIN  J22    IOSTANDARD LVCMOS25} [get_ports spi_io1_io]   ; ## FMC1_LPC_LA08_N - XM105_J1_35 ads7846->zc702
set_property  -dict {PACKAGE_PIN  C20    IOSTANDARD LVCMOS25} [get_ports CONV]   ; ## FMC1_LPC_LA18_CC_N - XM105_J1_36 CONV
set_property  -dict {PACKAGE_PIN  M15    IOSTANDARD LVCMOS25} [get_ports spi_io0_io]   ; ## FMC1_LPC_LA09_P - XM105_J1_37 zc702->ads7846
set_property  -dict {PACKAGE_PIN  E20    IOSTANDARD LVCMOS25} [get_ports spi_sck_io]   ; ## FMC1_LPC_LA19_N - XM105_J1_40 
set_property  -dict {PACKAGE_PIN  E19    IOSTANDARD LVCMOS25} [get_ports spi_ss_o]   ; ## FMC1_LPC_LA19_P - XM105_J1_38 ads7846 csn

# not used
set_property  -dict {PACKAGE_PIN  M16    IOSTANDARD LVCMOS25} [get_ports spi_ss_t]   ; ## FMC1_LPC_LA09_N - XM105_J1_39 # not used, but keep as external pin to normal operation
set_property  -dict {PACKAGE_PIN  K19    IOSTANDARD LVCMOS25} [get_ports spi_ss1_o]   ; ## FMC1_LPC_LA00_CC_P - XM105_J1_1 # not used, but keep as external pin to normal operation
set_property  -dict {PACKAGE_PIN  L17    IOSTANDARD LVCMOS25} [get_ports spi_ss2_o]   ; ## FMC1_LPC_LA10_P - XM105_J1_2 #  not used, but keep as external pin to normal operation

#TFT LCD
set_property  -dict {PACKAGE_PIN  K20    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[0]]   ; ## FMC1_LPC_LA00_CC_N - XM105_J1_3
set_property  -dict {PACKAGE_PIN  J16    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[1]]   ; ## FMC1_LPC_LA14_P - XM105_J1_18
set_property  -dict {PACKAGE_PIN  N19    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[2]]   ; ## FMC1_LPC_LA01_CC_P - XM105_J1_5
set_property  -dict {PACKAGE_PIN  M22    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[3]]   ; ## FMC1_LPC_LA04_N - XM105_J1_19
set_property  -dict {PACKAGE_PIN  R20    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[4]]   ; ## FMC1_LPC_LA11_P - XM105_J1_6
set_property  -dict {PACKAGE_PIN  J17    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[5]]   ; ## FMC1_LPC_LA14_N - XM105_J1_20
set_property  -dict {PACKAGE_PIN  N20    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[6]]   ; ## FMC1_LPC_LA01_CC_N - XM105_J1_7
set_property  -dict {PACKAGE_PIN  N17    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_red[7]]   ; ## FMC1_LPC_LA05_P - XM105_J1_21

set_property  -dict {PACKAGE_PIN  P20    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[0]]   ; ## FMC1_LPC_LA15_P - XM105_J1_22
set_property  -dict {PACKAGE_PIN  R21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[1]]   ; ## FMC1_LPC_LA11_N - XM105_J1_8
set_property  -dict {PACKAGE_PIN  N18    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[2]]   ; ## FMC1_LPC_LA05_N - XM105_J1_23
set_property  -dict {PACKAGE_PIN  L21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[3]]   ; ## FMC1_LPC_LA02_P - XM105_J1_9
set_property  -dict {PACKAGE_PIN  P21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[4]]   ; ## FMC1_LPC_LA15_N - XM105_J1_24
set_property  -dict {PACKAGE_PIN  N22    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[5]]   ; ## FMC1_LPC_LA12_P - XM105_J1_10
set_property  -dict {PACKAGE_PIN  J18    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[6]]   ; ## FMC1_LPC_LA06_P - XM105_J1_25
set_property  -dict {PACKAGE_PIN  P22    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_green[7]]   ; ## FMC1_LPC_LA12_N - XM105_J1_12

set_property  -dict {PACKAGE_PIN  P16    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[0]]   ; ## FMC1_LPC_LA13_P - XM105_J1_14
set_property  -dict {PACKAGE_PIN  N15    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[1]]   ; ## FMC1_LPC_LA16_P - XM105_J1_26
set_property  -dict {PACKAGE_PIN  M21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[2]]   ; ## FMC1_LPC_LA04_P - XM105_J1_17
set_property  -dict {PACKAGE_PIN  P15    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[3]]   ; ## FMC1_LPC_LA16_N - XM105_J1_28
set_property  -dict {PACKAGE_PIN  R16    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[4]]   ; ## FMC1_LPC_LA13_N - XM105_J1_16
set_property  -dict {PACKAGE_PIN  J15    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[5]]   ; ## FMC1_LPC_LA07_P - XM105_J1_29
set_property  -dict {PACKAGE_PIN  K18    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[6]]   ; ## FMC1_LPC_LA06_N - XM105_J1_27
set_property  -dict {PACKAGE_PIN  K15    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_blue[7]]   ; ## FMC1_LPC_LA07_N - XM105_J1_31

set_property  -dict {PACKAGE_PIN  L22    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_clk]       ; ## FMC1_LPC_LA02_N - XM105_J1_11
set_property  -dict {PACKAGE_PIN  J21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_de]        ; ## FMC1_LPC_LA08_P - XM105_J1_33
set_property  -dict {PACKAGE_PIN  J20    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_hsync]     ; ## FMC1_LPC_LA03_P - XM105_J1_13
set_property  -dict {PACKAGE_PIN  K21    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_vsync]     ; ## FMC1_LPC_LA03_N - XM105_J1_15
set_property  -dict {PACKAGE_PIN  B19    IOSTANDARD LVCMOS25} [get_ports VGA_INTF_dps]       ; ## FMC1_LPC_LA17_CC_P - XM105_J1_30

