proc pngeninsttemplate {} {
  cd D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS
  if { [ catch { xload xmp PS.xmp } result ] } {
    exit 10
  }
  if { [catch {run mhs2hdl} result] } {
    return -1
  }
  return 0
}
if { [catch {pngeninsttemplate} result] } {
  exit -1
}
exit $result
