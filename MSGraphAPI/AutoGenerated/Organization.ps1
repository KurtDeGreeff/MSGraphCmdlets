Function Get-GraphOrganization {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'v1.0'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "Organization/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "Organization" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
