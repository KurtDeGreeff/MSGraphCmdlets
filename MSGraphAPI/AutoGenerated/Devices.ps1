Function Get-GraphDevices {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'v1.0'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "Devices/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "Devices" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
