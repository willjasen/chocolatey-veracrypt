$packageName = "veracrypt"
$fileType = "msi"
$args = "\qn"

$uninstallGUID = Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | Where DisplayName -Like "VeraCrypt*" | Select-Object -ExpandProperty PSChildName

$args = $uninstallGUID + $args

Uninstall-ChocolateyPackage $packageName $fileType $args $setupMsiPath