![Zynq ZC702 Ubuntu](/images/ZC702Ubuntu.jpg)

# xilinx-zynq-zc702-linuxapplication

##Overview
Linux application and Device driver porting on Xilinx Zynq ZC702 board.
This project implements peripherals on Xilinx Zynq ZC702 board in order to study linux devicedriver as well as circuit and PCB design.
Target peripherals are LCD, HDMI, Touchcontroller, WIFI, GPS, GPIO, and Audio Codec.
To test peripherals, circuit, baremetal source code, compiled kernel, first bootloader(boot.bin) and other linux command are uploaded on this repository.

##Software
The linux kernel is 3.18.0-g3590cfe-dirty 
(https://github.com/analogdevicesinc/linux) 

The filesystem is PetaLinux v2013.10(Yocto 1.4) BSP and xilinx device driver
(https://github.com/Xilinx/linux-xlnx) 

The tool chain is Code Sourcery CodeBench Lite 2011.09-50.
(http://www.wiki.xilinx.com/Install+Xilinx+Tools) 

HDMI IP is not Xylon's(commercial license) but Analog devices'(https://github.com/analogdevicesinc/fpgahdl_xilinx)

TFT Controller is not AXI4S to Video Out IP, but AXI TFT Controller IP.

##Hardware
Base : Xilinx Zynq ZC702 + XM105 FMC Debug board

LCD :  Mitsubishi AA050MA01 (5-inch 800x480 TFT with touch pressure sensors)

Touch Controller : Texas Instruments ADS7846

HDMI : Analog devices ADV7511 (on ZC702)

WIFI : Qualcomm Atheros AR6233 (on Silex SX-SDCAN-2830)

GPS : Ublox MAX-6

Audio Codec : Analog devices ADAU1761
