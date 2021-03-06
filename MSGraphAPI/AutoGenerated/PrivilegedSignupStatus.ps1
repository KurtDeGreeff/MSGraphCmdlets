Function Get-GraphPrivilegedSignupStatus {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "PrivilegedSignupStatus/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "PrivilegedSignupStatus" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
