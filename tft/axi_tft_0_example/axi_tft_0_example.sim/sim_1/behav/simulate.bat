@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim axi_tft_0_top_tb_behav -key {Behavioral:sim_1:Functional:axi_tft_0_top_tb} -tclbatch axi_tft_0_top_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
