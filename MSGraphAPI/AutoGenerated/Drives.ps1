Function Get-GraphDrives {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'v1.0'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "Drives/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "Drives" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
