$packageName = "veracrypt"
$fileType = "msi"
$args = "/qn"

# Get the GUID for VeraCrypt from the registry so it can be uninstalled
$uninstallGUID = Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | Where DisplayName -Like "VeraCrypt*" | Select-Object -ExpandProperty PSChildName

$args = $uninstallGUID + " " + $args

Uninstall-ChocolateyPackage $packageName $fileType $args $setupMsiPath