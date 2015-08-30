# Introduction #

Second UART with GPS module linux application

# Details #

GPS module : Ublox MAX-6Q

Connection : UART by connector name J62 on ZC702

PIN : UART TX, UART RX, EXTINT(GPIO EMIO 54), TIMEPULSE(GPIO EMIO 55)

UART : 9600 bps, ttyPS1 (ps7\_uart\_0 on devicetree)



Compile devicetree and update boot.bin with new fpga.bit & boot linux.

Plug-in GPS module into J62

Power-on & boot linux

Type 'cat /proc/tty/driver/xuartps' to verify uart instance

Excute ./uartgps

Watch NMEA message