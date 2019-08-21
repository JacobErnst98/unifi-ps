function Get-UnifiAdminUsers {
    $Response = 

    return (Invoke-UnifiAPIRequest -Resource ("api/stat/admin") -Method Get)
}