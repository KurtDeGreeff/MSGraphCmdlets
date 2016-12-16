Function Get-Graphdevice {

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



Function Get-GraphdirectoryRole {

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



Function Get-GraphdirectoryRoleTemplate {

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



Function Get-Graphgroup {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/groups?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}



Function Get-GraphsubscribedSku {

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



Function Get-Graphuser {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/users?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}



Function Get-Graphcontact {

    try {
        Test-GraphAuthenticationToken
        $uri = "https://graph.windows.net/$($Global:GraphTenant)/contacts?api-version=1.6"
        (Invoke-RestMethod -Method Get -Uri $uri -Headers $Global:GraphAPIAuthenticationHeader).value
    }
    catch {
        Write-Error -Message $_.Exception.Message
    }
$json = @"
System.Xml.XmlElement
"@ | ConvertTo-Json


}



