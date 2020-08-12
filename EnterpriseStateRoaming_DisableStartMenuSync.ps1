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

Add-Registry -RegistryPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync" -name "DisableStartLayoutSettingSync" -Value "0"
Add-Registry -RegistryPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync" -name "DisableStartLayoutSettingSyncUserOverride" -Value "1"