Function Get-GraphManagedDevices {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "ManagedDevices/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "ManagedDevices" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
