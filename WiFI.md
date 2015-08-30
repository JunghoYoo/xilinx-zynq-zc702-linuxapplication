# Introduction #

WiFI thru SDIO

Use iwconfig to set wireless LAN on the linux

# Details #

WiFI : Silex SX-SDCAN (Qualcomm Atheros AR6233)

iwconfig : version 29
(http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html)

Connection : J64 on ZC702 (MMC0)

Device Driver : ath6kl\_sdio

Linux Kernel Configuration:

> Networking support/Wireless/cfg80211(builtin)

> Networking support/Wireless/cfg80211 wireless extensions compatibility(builtin)

> Networking support/Wireless/Generic IEEE 802.11 Networking Stack(builtin)

> Device Drivers/Network device support/Wireless LAN/Atheros Wireless  Cards/Atheros mobile chipsets support(builtin)

> Device Drivers/Network device support/Wireless LAN/Atheros Wireless Cards/Atheros ath6kl SDIO support(module)

Compile linux kernel & wireless tool.

Power-on & boot linux

Insert Silex SDIO WiFI on J64

Load device driver module by insmod ath6kl\_sdio.ko

Connect AP by iwconfig wlan0 essid 'apname'

Set IP Address by ifconfig wlan0 192.168.0.10

# Caution #
Only SDIO thru MIO is used to connect Silex SX-SDCAN WiFI.

Because clock speed of SDIO thru EMIO is limited.

(Refer to http://forums.xilinx.com/t5/Embedded-Processor-System-Design/Zynq-SDIO-via-EMIO/td-p/327479)

Also, Silex SX-SDCAN is not working when SDHCI High-speed is disabled.

(My experiment shows that device driver is not working)

# Reference #
http://www.silexamerica.com/products/connectivity-solutions/embedded-wireless/radio-modules/sx-sdcan/

http://www.wiki.xilinx.com/Zynq+SDIO+WiFi

http://forums.xilinx.com/t5/Embedded-Processor-System-Design/Zynq-SDIO-via-EMIO/td-p/327479

http://www.xilinx.com/support/answers/47874.html

https://wireless.wiki.kernel.org/en/users/Documentation/iw
