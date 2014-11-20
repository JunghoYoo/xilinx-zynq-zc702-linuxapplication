cd D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS/
if { [ catch { xload xmp PS.xmp } result ] } {
  exit 10
}
xset hdl verilog
run stubgen
exit 0
