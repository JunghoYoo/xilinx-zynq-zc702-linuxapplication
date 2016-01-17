To compile linux kernel for ADS7846, select linux device driver as follow.

device drivers>SPI>Debug support
device drivers>Input devices>Touch screens>ADS7846
device drivers>SPI>Cadence SPI controller (default :ZC702_defconfig)

ADS7846 : TI ADS7846 datasheet

touch_example : baremetal Touch controller & sensor test program

To test in linux,

dmesg | grep spi : check linux device driver loading successfully.

cat /proc/bus/input/devices : check mouse number 0 or not.

cat /proc/interrupts : check ADS7846 interrupt 

hexdump /dev/input/mouse0 : after touching display, some hex number will display on console


