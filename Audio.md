# Introduction #

Audio Codec with AXI I2S and I2C

Use ALSA library & tool to test on the linux

# Details #

Audio Codec : Analog Device ADAU1761

Connection : AXI-I2S, I2C, CLK by J16 in XM105 Card thru FMC1 with ZC702

PIN : I2C1 (EMIO B17, B16), I2S(A17, A16, D21, E21), CLK\_12.288MHz(C22)

Device Tree : I2C1, I2S, CLK\_12.288MHz

Device Driver : I2S, ADAU1761, ALSA


Compile devicetree and update boot.bin with new fpga.bit & boot linux.

Install ALSA library & tool
(refer to alsa folder)

Compile Linux Kernel with sound related option
(refer to document/linux kernel config.txt)

Plug-in PMOD Audio module into J16
(refer to document/schematic.jpg)

Power-on & boot linux
(refer to bootimage folder)

Set ALSA control with 'alsactl restore 0 -f /etc/asound.state'
(refer to alsa folder)

Copy sample wav file into file system

Play sample wav with 'aplay sample.wav'

Record & play simultaneously with 'arecord -f cd | aplay'