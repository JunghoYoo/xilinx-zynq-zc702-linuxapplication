vlib work
vlib msim

vlib msim/axi_lite_ipif_v3_0_3
vlib msim/lib_cdc_v1_0_2
vlib msim/lib_pkg_v1_0_2
vlib msim/fifo_generator_v13_0_1
vlib msim/lib_fifo_v1_0_4
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_master_burst_v2_0_7
vlib msim/axi_tft_v2_1_11
vlib msim/xil_defaultlib

vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap lib_fifo_v1_0_4 msim/lib_fifo_v1_0_4
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_master_burst_v2_0_7 msim/axi_master_burst_v2_0_7
vmap axi_tft_v2_1_11 msim/axi_tft_v2_1_11
vmap xil_defaultlib msim/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_3 -64 -93 \
"../../../ip/axi_tft_0/axi_lite_ipif_v3_0_3/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ip/axi_tft_0/axi_lite_ipif_v3_0_3/hdl/src/vhdl/pselect_f.vhd" \
"../../../ip/axi_tft_0/axi_lite_ipif_v3_0_3/hdl/src/vhdl/address_decoder.vhd" \
"../../../ip/axi_tft_0/axi_lite_ipif_v3_0_3/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ip/axi_tft_0/axi_lite_ipif_v3_0_3/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ip/axi_tft_0/lib_cdc_v1_0_2/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../ip/axi_tft_0/lib_pkg_v1_0_2/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work fifo_generator_v13_0_1 -64 -93 \
"../../../ip/axi_tft_0/fifo_generator_v13_0_1/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ip/axi_tft_0/fifo_generator_v13_0_1/hdl/fifo_generator_v13_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_4 -64 -93 \
"../../../ip/axi_tft_0/lib_fifo_v1_0_4/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../ip/axi_tft_0/lib_fifo_v1_0_4/hdl/src/vhdl/sync_fifo_fg.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../ip/axi_tft_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ip/axi_tft_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ip/axi_tft_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ip/axi_tft_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_master_burst_v2_0_7 -64 -93 \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_wr_demux.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_strb_gen.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_rdmux.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_fifo.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_wr_status_cntl.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_wrdata_cntl.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_stbs_set.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_skid_buf.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_skid2mm_buf.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_rd_status_cntl.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_rddata_cntl.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_pcc.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_first_stb_offset.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_addr_cntl.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_wr_llink.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_reset.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_rd_wr_cntlr.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_rd_llink.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst_cmd_status.vhd" \
"../../../ip/axi_tft_0/axi_master_burst_v2_0_7/hdl/src/vhdl/axi_master_burst.vhd" \

vlog -work axi_tft_v2_1_11 -64 -incr \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_iic_init.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_v_sync.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_tft_interface.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_slave_register.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_line_buffer.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_h_sync.v" \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/verilog/axi_tft_v2_1_tft_controller.v" \

vcom -work axi_tft_v2_1_11 -64 -93 \
"../../../ip/axi_tft_0/axi_tft_v2_1_11/hdl/src/vhdl/axi_tft.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../ip/axi_tft_0/sim/axi_tft_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

