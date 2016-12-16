Function Get-Graphdevices {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/devices?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}

Function Get-GraphdirectoryRoles {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/directoryRoles?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}

Function Get-GraphdirectoryRoleTemplates {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/directoryRoleTemplates?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}

Function Get-GraphsubscribedSkus {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/subscribedSkus?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}
