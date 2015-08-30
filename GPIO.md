# Introduction #

GPIO output and input linux application


# Details #

gpio\_out : Blink DS23 LED

gpio\_in  : Trigger Push button SW14

GPIO device driver uses sysfs.

gpio\_out uses usleep() to wait for 1 sec.

gpio\_in uses interruptible\_sleep\_on() and wake\_up\_interruptible() to wait for GPIO IRQ.

# Execution #

Compile linux kernel from Petalinux 2014.1 release with updated driver gpio-zynq.c(devicedriver folder) & boot linux.

excute ./gpio\_in or ./gpio\_out.

watch LED DS23 or push SW14.