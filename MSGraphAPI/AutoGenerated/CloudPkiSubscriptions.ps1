Function Get-GraphCloudPkiSubscriptions {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "CloudPkiSubscriptions/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "CloudPkiSubscriptions" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
