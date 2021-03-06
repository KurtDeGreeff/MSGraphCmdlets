Function Get-GraphTermsAndConditions {
    Param(
        [string]$Filter,
        [string]$Id,
        [string]$version = 'beta'
    )

    try {
        if(-not [string]::IsNullOrEmpty($Id)) {
            $Id = $Id.Replace('@','%40')
            Invoke-GraphMethod -query "TermsAndConditions/$($Id)" -filter $Filter -version $version
        }
        else {
            Invoke-GraphMethod -query "TermsAndConditions" -filter $Filter -version $version
        }
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
}
