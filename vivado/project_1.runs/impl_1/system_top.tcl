proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {2147483647}  -id {IP_Flow 19-1687}  -new_severity {INFO} 

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part xilinx.com:zc702:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.cache/wt [current_project]
  set_property parent.project_path D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.xpr [current_project]
  set_property ip_repo_paths {
  d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.cache/ip
  d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/library
  D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/tft/axi_tft_v2_1
} [current_project]
  set_property ip_output_repo d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.cache/ip [current_project]
  add_files -quiet D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.runs/synth_1/system_top.dcp
  read_xdc -ref system_sys_ps7_0 -cells inst d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_ps7_0/system_sys_ps7_0.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_ps7_0/system_sys_ps7_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_iic_main_0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc]
  read_xdc -prop_thru_buffers -ref system_sys_rstgen_0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc]
  read_xdc -ref system_sys_rstgen_0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc]
  read_xdc -ref system_axi_hdmi_core_0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_core_0/axi_hdmi_tx_constr.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_core_0/axi_hdmi_tx_constr.xdc]
  read_xdc -ref system_axi_hdmi_dma_0 -cells U0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0.xdc]
  read_xdc -prop_thru_buffers -ref system_sys_audio_clkgen_0 -cells inst d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_board.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_board.xdc]
  read_xdc -ref system_sys_audio_clkgen_0 -cells inst d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.xdc]
  read_xdc -ref system_axi_spdif_tx_core_0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_spdif_tx_core_0/axi_spdif_tx_constr.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_spdif_tx_core_0/axi_spdif_tx_constr.xdc]
  read_xdc -ref system_axi_tft_0_2 -cells U0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_tft_0_2/system_axi_tft_0_2.xdc
  set_property processing_order EARLY [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_tft_0_2/system_axi_tft_0_2.xdc]
  read_xdc D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/constrs_1/zc702_system_constr.xdc
  read_xdc D:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/constrs_1/system_top.xdc
  read_xdc -ref system_axi_hdmi_dma_0 -cells U0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_clocks.xdc
  set_property processing_order LATE [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_clocks.xdc]
  read_xdc -ref system_axi_tft_0_2 -cells U0 d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_tft_0_2/system_axi_tft_0_2_clocks.xdc
  set_property processing_order LATE [get_files d:/Developers_KIT/Zynq702/xilinx-zynq-zc702-linuxapplication/vivado/project_1.srcs/sources_1/bd/system/ip/system_axi_tft_0_2/system_axi_tft_0_2_clocks.xdc]
  link_design -top system_top -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force system_top_opt.dcp
  report_drc -file system_top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file system_top.hwdef}
  place_design 
  write_checkpoint -force system_top_placed.dcp
  report_io -file system_top_io_placed.rpt
  report_utilization -file system_top_utilization_placed.rpt -pb system_top_utilization_placed.pb
  report_control_sets -verbose -file system_top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_top_routed.dcp
  report_drc -file system_top_drc_routed.rpt -pb system_top_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file system_top_timing_summary_routed.rpt -rpx system_top_timing_summary_routed.rpx
  report_power -file system_top_power_routed.rpt -pb system_top_power_summary_routed.pb
  report_route_status -file system_top_route_status.rpt -pb system_top_route_status.pb
  report_clock_utilization -file system_top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force system_top.mmi }
  write_bitstream -force system_top.bit 
  catch { write_sysdef -hwdef system_top.hwdef -bitfile system_top.bit -meminfo system_top.mmi -file system_top.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

