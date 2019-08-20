function Get-UnifiLoggedInUser {
    $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/self"

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}