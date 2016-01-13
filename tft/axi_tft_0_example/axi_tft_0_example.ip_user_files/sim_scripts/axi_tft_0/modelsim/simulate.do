onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L unisims_ver -L unimacro_ver -L secureip -L axi_lite_ipif_v3_0_3 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_0_1 -L lib_fifo_v1_0_4 -L lib_srl_fifo_v1_0_2 -L axi_master_burst_v2_0_7 -L axi_tft_v2_1_11 -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.axi_tft_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_tft_0.udo}

run -all

quit -force
