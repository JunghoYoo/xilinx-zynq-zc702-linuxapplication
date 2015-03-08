# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create axi_ad6676
adi_ip_files axi_ad6676 [list \
  "$ad_hdl_dir/library/common/ad_rst.v" \
  "$ad_hdl_dir/library/common/ad_pnmon.v" \
  "$ad_hdl_dir/library/common/up_axi.v" \
  "$ad_hdl_dir/library/common/up_xfer_cntrl.v" \
  "$ad_hdl_dir/library/common/up_xfer_status.v" \
  "$ad_hdl_dir/library/common/up_clock_mon.v" \
  "$ad_hdl_dir/library/common/up_drp_cntrl.v" \
  "$ad_hdl_dir/library/common/up_delay_cntrl.v" \
  "$ad_hdl_dir/library/common/up_adc_common.v" \
  "$ad_hdl_dir/library/common/up_adc_channel.v" \
  "axi_ad6676_pnmon.v" \
  "axi_ad6676_channel.v" \
  "axi_ad6676_if.v" \
  "axi_ad6676.v" \
  "axi_ad6676_constr.xdc" ]

adi_ip_properties axi_ad6676
adi_ip_constraints axi_ad6676 [list \
  "axi_ad6676_constr.xdc" ]

ipx::save_core [ipx::current_core]

