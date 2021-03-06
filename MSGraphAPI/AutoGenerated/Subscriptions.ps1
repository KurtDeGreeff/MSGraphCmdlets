Function Get-GraphSubscriptions {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'v1.0'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "Subscriptions/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "Subscriptions" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
