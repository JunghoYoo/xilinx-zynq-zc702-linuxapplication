@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 702cef960e9a4516ae7d95e96ed36e9c -m64 --debug all --relax --mt 2 -L xil_defaultlib -L axi_lite_ipif_v3_0_3 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_0_1 -L lib_fifo_v1_0_4 -L lib_srl_fifo_v1_0_2 -L axi_master_burst_v2_0_7 -L axi_tft_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip --snapshot axi_tft_0_top_tb_behav xil_defaultlib.axi_tft_0_top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
