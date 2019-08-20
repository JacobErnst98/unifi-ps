function Get-UnifiAdminUsers {
    $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/stat/admin"

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}