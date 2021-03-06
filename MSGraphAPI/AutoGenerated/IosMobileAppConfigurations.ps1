Function Get-GraphIosMobileAppConfigurations {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "IosMobileAppConfigurations/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "IosMobileAppConfigurations" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
