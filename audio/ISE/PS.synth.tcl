proc pnsynth {} {
  cd D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS
  if { [ catch { xload xmp PS.xmp } result ] } {
    exit 10
  }
  if { [catch {run netlist} result] } {
    return -1
  }
  return $result
}
if { [catch {pnsynth} result] } {
  exit -1
}
exit $result
