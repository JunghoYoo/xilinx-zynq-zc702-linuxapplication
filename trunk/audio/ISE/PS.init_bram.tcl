cd D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS
if { [ catch { xload xmp PS.xmp } result ] } {
  exit 10
}

if { [catch {run init_bram} result] } {
  exit -1
}

exit 0
