function Add-Registry {

Param ([string]$RegistryPath,[string]$name,[String]$Value)

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null}

Write-Output "Registry added $($registrypath)\$($name)"
}

Add-Registry -RegistryPath "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\TeachingCallouts" -name "AutocreateTeachingCallout_MoreLocations" -Value "2"
Add-Registry -RegistryPath "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\TeachingCallouts" -name "SLRToggleReplaceTeachingCalloutID" -Value "2"
Add-Registry -RegistryPath "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\TeachingCallouts" -name "UseTighterSpacingTeachingCallout" -Value "2"
Add-Registry -RegistryPath "HKCU:\SOFTWARE\Microsoft\Office\16.0\Common\General" -name "ShownFileFmtPrompt" -Value "1"