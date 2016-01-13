
proc init { cellPath otherInfo } {
   set cell_handle [get_bd_cells $cellPath]
   #mark some parameters as propagate only
set paramList ""  
 #C_M_AXI_DATA_WIDTH"
bd::mark_propagate_only $cell_handle $paramList
}



proc post_config_ip {cellpath otherInfo } {
    set cell_handle [get_bd_cells $cellpath]
    set maxi_intf_handle [get_bd_intf_pins $cellpath/m_axi_mm]

    set m_axi_data_width [get_property CONFIG.C_M_AXI_DATA_WIDTH $cell_handle]
    set_property CONFIG.DATA_WIDTH $m_axi_data_width $maxi_intf_handle

    set max_burst_len [get_property CONFIG.C_MAX_BURST_LEN $cell_handle]
    set_property CONFIG.MAX_BURST_LENGTH $max_burst_len $maxi_intf_handle
}
