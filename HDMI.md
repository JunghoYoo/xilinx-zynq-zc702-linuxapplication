# Introduction #

HDMI console

Use ADV7511 as HDMI transmitter.

Porting AXI VDMA, AXI HDMI by analog device ip


Also, xilinx base trd has hdmi output. but this trd requires ip license.

# Details #

Before test on linux, hdmi test on bare metal system is possible.

linux kernel from analog devices has all required device driver for hdmi.

Prepare Custom Boot logo :

prepare zynq\_logo.png

pngtopnm zynq\_logo.png | pnmtoplainpnm > zynq\_logo.ppm

pnmquant -fs 223 zynq\_logo.ppm > zynq\_logo\_256.ppm

pnmnoraw zynq\_logo\_256.ppm> logo\_linux\_custom\_clut224.ppm

cp -a logo\_linux\_custom\_clut224.ppm ./drivers/video/logo/

Edit drivers/video/logo/Kconfig as

> config LOGO\_LINUX\_CUSTOM\_CLUT224
> > bool "Custom Linux logo"
> > default y

Edit drivers/video/logo/Kconfig as


> obj-$(CONFIG\_LOGO\_LINUX\_CUSTOM\_CLUT224) += logo\_linux\_custom\_clut224.o

Edit drivers/video/logo.c as

  1. fdef CONFIG\_LOGO\_LINUX\_CUSTOM\_CLUT224
> > /**Custom Linux logo**/
> > logo = &logo\_linux\_custom\_clut224;
  1. ndif

Linux Kernel Configuration:


> Device drivers -> graphics -> bootup logo
> Device drivers -> Common clock framework -> axi clkgen driver
> Device drivers -> Graphics support -> DRM Support for Analog FPGA platforms
> Device drivers -> Graphics support -> Bootup logo -> Custom Linux logo

Device tree :

adv7511 via i2c, axivdma, hdmi\_clock, axi\_hdmi, axi\_spdif\_tx, adv7511\_hdmi\_snd

Enable Console in /etc/inittab:

  1. 2345:respawn:/sbin/getty -L 115200 tty1 vt100

Connect monitor thru HDMI on P1

Power-on & boot linux

HDMI will display Zynq Logo & prompt

To enable the hdmi to sleep

> echo 1 > /sys/class/graphics/fb0/blank

To disable the hdmi to sleep

> echo 0 > /sys/class/graphics/fb0/blank

To read the hdmi timeout to sleep

> cat /sys/module/kernel/parameters/consoleblank

To write the hdmi timeout to sleep

> echo 100 > /sys/module/kernel/parameters/consoleblank


# Reference #
http://wiki.analog.com/resources/tools-software/linux-drivers/platforms/zynq
http://wiki.analog.com/resources/fpga/xilinx/kc705/adv7511
http://www.wiki.xilinx.com/Zynq+Base+TRD+2013.3
http://wiki.analog.com/resources/tools-software/linux-drivers/drm/hdl-axi-hdmi
https://fpgacpu.wordpress.com/2013/05/24/yet-another-guide-to-running-linaro-ubuntu-desktop-on-xilinx-zynq-on-the-zedboard/
http://linux.about.com/od/commands/l/blcmdl5_inittab.htm
http://208.74.204.60/t5/New-Users-Forum/HDMI-for-ZYNQ/td-p/555367