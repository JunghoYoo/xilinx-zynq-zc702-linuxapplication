vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_cdc_v1_0_2
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_iic_v2_0_10
vlib msim/proc_sys_reset_v5_0_8
vlib msim/fifo_generator_v13_0_1
vlib msim/lib_fifo_v1_0_4
vlib msim/blk_mem_gen_v8_3_1
vlib msim/lib_bmg_v1_0_3
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_9
vlib msim/axi_vdma_v6_2_6
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/axi_master_burst_v2_0_7
vlib msim/axi_tft_v2_1_11
vlib msim/axi_protocol_converter_v2_1_7

vmap xil_defaultlib msim/xil_defaultlib
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_iic_v2_0_10 msim/axi_iic_v2_0_10
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap lib_fifo_v1_0_4 msim/lib_fifo_v1_0_4
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap lib_bmg_v1_0_3 msim/lib_bmg_v1_0_3
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_9 msim/axi_datamover_v5_1_9
vmap axi_vdma_v6_2_6 msim/axi_vdma_v6_2_6
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap axi_master_burst_v2_0_7 msim/axi_master_burst_v2_0_7
vmap axi_tft_v2_1_11 msim/axi_tft_v2_1_11
vmap axi_protocol_converter_v2_1_7 msim/axi_protocol_converter_v2_1_7

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"../../../bd/system/ip/system_sys_ps7_0/sim/system_sys_ps7_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work interrupt_control_v3_1_3 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_iic_v2_0_10 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/soft_reset.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/srl_fifo.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/shift8.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_pkg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/debounce.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/reg_interface.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_control.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/filter.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/dynamic_master.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_ipif_ssp1.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_iic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_iic_main_0/sim/system_axi_iic_main_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.v" \
"../../../bd/system/ip/system_sys_concat_intc_0/sim/system_sys_concat_intc_0.v" \

vcom -work proc_sys_reset_v5_0_8 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_sys_rstgen_0/sim/system_sys_rstgen_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_rst.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_drp_cntrl.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_mmcm_drp.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_axi.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_clkgen.v" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_clkgen_v1_0/axi_clkgen.v" \
"../../../bd/system/ip/system_axi_hdmi_clkgen_0/sim/system_axi_hdmi_clkgen_0.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_csc_1_mul.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_csc_1_add.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_csc_1.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_mem.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_csc_RGB2CrYCb.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/ad_ss_444to422.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_xfer_cntrl.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_xfer_status.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_clock_mon.v" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/up_hdmi_tx.v" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx_vdma.v" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx_core.v" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx.v" \
"../../../bd/system/ip/system_axi_hdmi_core_0/sim/system_axi_hdmi_core_0.v" \

vcom -work fifo_generator_v13_0_1 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_4 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_fifo_v1_0/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_fifo_v1_0/hdl/src/vhdl/sync_fifo_fg.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work lib_bmg_v1_0_3 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_bmg_v1_0/hdl/src/vhdl/blk_mem_gen_wrapper.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_datamover_v5_1_9 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_reset.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_afifo_autord.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_sfifo_autord.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_fifo.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_cmd_status.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_scc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_strb_gen2.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_pcc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_addr_cntl.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rdmux.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rddata_cntl.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_status_cntl.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_demux.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wrdata_cntl.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_status_cntl.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid2mm_buf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid_buf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_sf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_sf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set_nodre.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ibttcc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_indet_btt.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux2_1_x_n.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux4_1_x_n.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux8_1_x_n.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_dre.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_dre.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ms_strb_set.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mssai_skid_buf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_slice.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_scatter.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_realign.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_basic_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_omit_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_full_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_basic_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_omit_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_full_wrap.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover.vhd" \

vlog -work axi_vdma_v6_2_6 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_axis2vector.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_vector2axis.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axisc_register_slice.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axis_register_slice.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_upsizer.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_downsizer.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axis_dwidth_converter.v" \

vcom -work axi_vdma_v6_2_6 -64 -93 \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_pkg.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cdc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vid_cdc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_cdc.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reset.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_rst_module.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_lite_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_register.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_regdirect.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_mux.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_module.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_intrpt.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sof_gen.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_skid_buf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo_autord.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_builtin.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_autord.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_linebuf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_linebuf.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_blkmem.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_fsync_gen.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister_64.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sgregister.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux_64.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module_64.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mux.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_greycoder.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sm.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cmdsts_if.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sts_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr_64.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_axis_dwidth_converter.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_axis_dwidth_converter.vhd" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_hdmi_dma_0/sim/system_axi_hdmi_dma_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_clk_wiz.v" \
"../../../bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/dma_fifo.vhd" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/axi_ctrlif.vhd" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/axi_streaming_dma_tx_fifo.vhd" \
"../../../../project_1.srcs/analogdevicelibrary/hdl/hdl-hdl_2014_r2/hdl-hdl_2014_r2/library/common/pl330_dma_fifo.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/tx_package.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/tx_encoder.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/axi_spdif_tx.vhd" \
"../../../bd/system/ip/system_axi_spdif_tx_core_0/sim/system_axi_spdif_tx_core_0.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_rx.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_tx.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_clkgen.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/fifo_synchronizer.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/common/axi_streaming_dma_rx_fifo.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_controller.vhd" \
"../../../../project_1.srcs/sources_1/ipshared/analog.com/axi_i2s_adi_v1_0/axi_i2s_adi.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_0_0/sim/system_axi_i2s_adi_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.v" \
"../../../bd/system/ip/system_vcc_0/sim/system_vcc_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_data_fifo_v2_1_6 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work axi_master_burst_v2_0_7 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_demux.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_strb_gen.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rdmux.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_fifo.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_status_cntl.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wrdata_cntl.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_stbs_set.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_skid_buf.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_skid2mm_buf.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_status_cntl.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rddata_cntl.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_pcc.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_first_stb_offset.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_addr_cntl.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_wr_llink.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_reset.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_wr_cntlr.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_rd_llink.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst_cmd_status.vhd" \
"../../../bd/system/ipshared/xilinx.com/axi_master_burst_v2_0/hdl/src/vhdl/axi_master_burst.vhd" \

vlog -work axi_tft_v2_1_11 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_iic_init.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_v_sync.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_tft_interface.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_slave_register.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_line_buffer.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_h_sync.v" \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/verilog/axi_tft_v2_1_tft_controller.v" \

vcom -work axi_tft_v2_1_11 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/axi_tft_v2_1/hdl/src/vhdl/axi_tft.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_tft_0_2/sim/system_axi_tft_0_2.vhd" \

vlog -work axi_protocol_converter_v2_1_7 -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../../../Hdmi_adi/project_1.ip_user_files/ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/hdl/system.v" \

vlog -work xil_defaultlib "glbl.v"
