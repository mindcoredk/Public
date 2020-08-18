#=============================================================================================================================
#
# Script Name:     Check_Windows_Activation.ps1
# Description:     Detect Windows activated
# Notes:           
#                  
#
#=============================================================================================================================

Try
{
    $LicenseState = Get-CimInstance -ClassName SoftwareLicensingProduct | where {$_.PartialProductKey -and $_.name -like "Windows*"}

    if ($LicenseState.LicenseStatus -ne 1 -or $LicenseState.LicenseStatus -ne 5)
    {
        #Exit 1 for machine not licensed correctly
        Write-Host "Match"
        exit 1
    }
    else 
    {
        #Exit 0 for machine licensed.
        Write-Host "No_Match"            
        exit 0
    }

}

catch
{
    $errMsg = $_.Exception.Message
    return $errMsg
    exit 1
}