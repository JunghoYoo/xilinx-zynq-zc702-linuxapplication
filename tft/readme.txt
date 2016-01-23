VGA Timming 
 - Resolution : 800x480
 - Color : 24 bit RGB
 - Pixel Clock : 29.760 MHz for 60Hz refresh
 - Modified parameter at Table 3-1 'pg095-axi-tft.pdf' Xilinx AXI-TFT v2.0 Product guide

Symbol	|        Parameter	|    Vertical Sync [Lines]   |     Horizontal Sync [Clocks]
------------------------------------------------------------------------------------------------------------
TPULSE	|    Sync pulse time 	|	500	         |                     992
TDisp	|    Display time 	|	480 	         |                     800
TPW	|    Pulse width time 	|	10 	         |                     72
TBP	|    Back porch time 	|	  7 	         |                     96
TFP	|    Front porch time 	|	  3 	         |                     24


mitsubishi_AA050MA01 : TFT 800x480 datasheet

TFTLCDTest.v : TFT LCD Test Verilog HDL code
                                it runs without axi_tft_v2_1 core nor PS7 core

axi_tft_v2_1 : modified AXI TFT IP from v2.0
                           it applies 800x480 VGA with 24 bit RGB

axi_tft_0_example : Vivado Simulation of AXI TFT IP

xtft_hw :   modified BSP libsrc for AXI TFT IP v2.1, other BSP files are same with v2.0

xtft_example : baremetal TFT test program

test_framebuffer : linux application to test framebuffer 

xilinxfb.c : modified linux device driver at drivers/video/fbdev/xilinxfb.c

echo 1 > /sys/class/graphics/fb0/blank : turn off tft 

echo 0 > /sys/class/graphics/fb0/blank : turn on tft

linuxbooting.jpg : initial tft lcd screen capture after linux booting 