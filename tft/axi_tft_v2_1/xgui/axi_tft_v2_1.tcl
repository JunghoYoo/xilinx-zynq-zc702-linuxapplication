set c_family [string tolower [get_project_property ARCHITECTURE]]
#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
        variable c_family
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set tabgroup0 [ipgui::add_group $ipview -parent $Page0 -name {TFT Parameters} -layout vertical]
	set C_TFT_INTERFACE [ipgui::add_param $ipview -parent $tabgroup0 -name C_TFT_INTERFACE]
	set C_EN_I2C_INTF [ipgui::add_param $ipview -parent $tabgroup0 -name C_EN_I2C_INTF -widget checkBox]
	set C_I2C_SLAVE_ADDR [ipgui::add_param $ipview -parent $tabgroup0 -name C_I2C_SLAVE_ADDR]
	set C_DEFAULT_TFT_BASE_ADDR [ipgui::add_param $ipview -parent $tabgroup0 -name C_DEFAULT_TFT_BASE_ADDR]
	set tabgroup1 [ipgui::add_group $ipview -parent $Page0 -name {AXI Master Parameters} -layout vertical]
	set C_M_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $tabgroup1 -name C_M_AXI_ADDR_WIDTH]
	set C_M_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup1 -name C_M_AXI_DATA_WIDTH -widget radioGroup]
	set C_MAX_BURST_LEN [ipgui::add_param $ipview -parent $tabgroup1 -name C_MAX_BURST_LEN ]

    set_property tooltip "TFT interface to be used, supported interfaces are VGA and DVI" [ipgui::get_paramspec -name C_TFT_INTERFACE -of $ipview]
    set_property tooltip "Disable I2C interface" [ipgui::get_paramspec -name C_EN_I2C_INTF -of $ipview]
    set_property tooltip "I2C slave Address of the Chrontel Chip, Enter 7 bit address in hexadecimal format" [ipgui::get_paramspec -name C_I2C_SLAVE_ADDR -of $ipview]
    set_property tooltip "Default value of the address register, Enter 32 bit address in hexadecimal format" [ipgui::get_paramspec -name C_DEFAULT_TFT_BASE_ADDR -of $ipview]
    set_property tooltip "AXI Master Interface Address Width" [ipgui::get_paramspec -name C_M_AXI_ADDR_WIDTH -of $ipview]
    set_property tooltip "AXI Master Interface Data Width" [ipgui::get_paramspec -name C_M_AXI_DATA_WIDTH -of $ipview]
    set_property tooltip "Maximum Burst Length needed on the AXI Master Interface" [ipgui::get_paramspec -name C_MAX_BURST_LEN -of $ipview]
}


proc updateModel_C_FAMILY {ipview} {
variable c_family
set_property modelparam_value $c_family [ipgui::get_modelparamspec -name C_FAMILY -of $ipview]
return true
}

proc C_TFT_INTERFACE_updated {ipview} {
	# Procedure called when C_TFT_INTERFACE is updated
    set tft_interface [get_param_value C_TFT_INTERFACE]
    if { $tft_interface } {
    	set_property enabled true [ipgui::get_paramspec C_EN_I2C_INTF -of $ipview]
    } else {
        set_property value 0 [ipgui::get_paramspec C_EN_I2C_INTF -of $ipview]
    	set_property enabled false [ipgui::get_paramspec C_EN_I2C_INTF -of $ipview]
    }

	return true
}

proc validate_C_TFT_INTERFACE {ipview} {
	# Procedure called to validate C_TFT_INTERFACE
	return true
}

proc C_EN_I2C_INTF_updated {ipview} {
	# Procedure called when C_EN_I2C_INTF is updated
    set en_i2c [get_param_value C_EN_I2C_INTF]
    if { $en_i2c } {
    	set_property enabled true [ipgui::get_paramspec C_I2C_SLAVE_ADDR -of $ipview]
    } else {
        set_property value 0x76 [ipgui::get_paramspec C_I2C_SLAVE_ADDR -of $ipview]
    	set_property enabled false [ipgui::get_paramspec C_I2C_SLAVE_ADDR -of $ipview]
    }

	return true
}

proc validate_C_EN_I2C_INTF {ipview} {
	# Procedure called to validate C_EN_I2C_INTF
	return true
}

proc C_I2C_SLAVE_ADDR_updated {ipview} {
	# Procedure called when C_I2C_SLAVE_ADDR is updated
	return true
}

proc validate_C_I2C_SLAVE_ADDR {ipview} {
	# Procedure called to validate C_I2C_SLAVE_ADDR
    set i2c_addr [get_param_value C_I2C_SLAVE_ADDR]
	## Check if I2C slave address is less than 0xFF
	if {$i2c_addr > 0x7F} {
		set_property errmsg "I2C Slave Address must be less than or equal to 0x7F" [ipgui::get_paramspec C_I2C_SLAVE_ADDR -of $ipview ]
		return false
	} else {
	    return true
	}
}

proc C_DEFAULT_TFT_BASE_ADDR_updated {ipview} {
	# Procedure called when C_DEFAULT_TFT_BASE_ADDR is updated
	return true
}

proc validate_C_DEFAULT_TFT_BASE_ADDR {ipview} {
	# Procedure called to validate C_DEFAULT_TFT_BASE_ADDR
    set default_addr [get_param_value C_DEFAULT_TFT_BASE_ADDR]
	## Check if default TFT BASE Address is less than 0xFFFFFFFF
    set addr_wid [get_param_value C_M_AXI_ADDR_WIDTH]
    set max_addr [expr {2**$addr_wid - 1} ]   
    set max_def_a [format %4.4X $max_addr]
    set max_def "0x$max_def_a"

	if {$default_addr > $max_def} {
		set_property errmsg "Default TFT BASE Address must be less than or equal to $max_def" [ipgui::get_paramspec C_DEFAULT_TFT_BASE_ADDR -of $ipview ]
		return false
	} else {
		return true
	}
}

proc C_M_AXI_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_M_AXI_DATA_WIDTH is updated
	return true
}

proc C_M_AXI_ADDR_WIDTH_updated {ipview} {
   set addr_wid [get_param_value C_M_AXI_ADDR_WIDTH]
    ##puts "ADDRWID $addr_wid\n"
    set def_addr [expr {2**$addr_wid - 2**28} ]   
    set def_a [format %4.4X $def_addr]
    if {$addr_wid == 33} {
    set def "0x00000000$def_a"

    } elseif {$addr_wid < 37 && $addr_wid > 32 } {
    set def "0x0000000$def_a"

    } elseif {$addr_wid < 41 && $addr_wid > 36 } {
    set def "0x000000$def_a"

    } elseif {$addr_wid < 45 && $addr_wid > 40} {
    set def "0x00000$def_a"

    } elseif {$addr_wid < 49 && $addr_wid > 44} {
    set def "0x0000$def_a"

    } elseif {$addr_wid < 53 && $addr_wid > 48} {
    set def "0x000$def_a"

    } elseif {$addr_wid < 57 && $addr_wid > 52} {
    set def "0x00$def_a"

    } elseif {$addr_wid < 61 && $addr_wid > 56} {
    set def "0x0$def_a"

    } else {
    set def "0x$def_a"

    }
   ## puts "DEFF $def"
    set_property value $def [ipgui::get_paramspec C_DEFAULT_TFT_BASE_ADDR -of $ipview]
    
    return true
}

proc validate_C_M_AXI_DATA_WIDTH {ipview} {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc C_M_AXI_ADDR_WIDTH_updated {ipview} {

    return true
}

proc validate_C_M_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}


proc C_MAX_BURST_LEN_updated {ipview} {
	# Procedure called when C_MAX_BURST_LEN is updated
	return true
}

proc validate_C_MAX_BURST_LEN {ipview} {
	# Procedure called to validate C_MAX_BURST_LEN
	return true
}


proc updateModel_C_TFT_INTERFACE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_TFT_INTERFACE -of $ipview ]] [ipgui::get_modelparamspec C_TFT_INTERFACE -of $ipview ]

	return true
}

proc updateModel_C_EN_I2C_INTF {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_EN_I2C_INTF -of $ipview ]] [ipgui::get_modelparamspec C_EN_I2C_INTF -of $ipview ]

	return true
}

proc updateModel_C_I2C_SLAVE_ADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_I2C_SLAVE_ADDR -of $ipview ]] [ipgui::get_modelparamspec C_I2C_SLAVE_ADDR -of $ipview ]

	return true
}

proc updateModel_C_DEFAULT_TFT_BASE_ADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_DEFAULT_TFT_BASE_ADDR -of $ipview ]] [ipgui::get_modelparamspec C_DEFAULT_TFT_BASE_ADDR -of $ipview ]

	return true
}

proc updateModel_C_M_AXI_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_M_AXI_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_M_AXI_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_M_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_M_AXI_ADDR_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_M_AXI_ADDR_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_S_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

    if { [get_property value [ipgui::get_paramspec C_M_AXI_ADDR_WIDTH -of $ipview ]] > 32 } {
	set_property modelparam_value 4 [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]

    } else {
	set_property modelparam_value 3 [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]
   }

	return true
}


proc updateModel_C_MAX_BURST_LEN {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MAX_BURST_LEN -of $ipview ]] [ipgui::get_modelparamspec C_MAX_BURST_LEN -of $ipview ]

	return true
}

