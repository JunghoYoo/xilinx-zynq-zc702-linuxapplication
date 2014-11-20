proc exportToSDK {} {
  cd D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS
  if { [ catch { xload xmp PS.xmp } result ] } {
    exit 10
  }
  if { [run exporttosdk] != 0 } {
    return -1
  }
  return 0
}

if { [catch {exportToSDK} result] } {
  exit -1
}

set sExportDir [ xget sdk_export_dir ]
set sExportDir [ file join "D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PS" "$sExportDir" "hw" ] 
if { [ file exists D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/edkBmmFile_bd.bmm ] } {
   puts "Copying placed bmm file D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/edkBmmFile_bd.bmm to $sExportDir" 
   file copy -force "D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/edkBmmFile_bd.bmm" $sExportDir
}
if { [ file exists D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PL_PS_TOP.bit ] } {
   puts "Copying bit file D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PL_PS_TOP.bit to $sExportDir" 
   file copy -force "D:/Developers_KIT/Zynq702/PMOD_AUDIO_PSIIC_ISE/PL_PS_TOP.bit" $sExportDir
}
exit $result
