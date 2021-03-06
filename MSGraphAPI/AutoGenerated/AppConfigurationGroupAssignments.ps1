Function Get-GraphAppConfigurationGroupAssignments {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "AppConfigurationGroupAssignments/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "AppConfigurationGroupAssignments" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
