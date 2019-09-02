function Get-UnifiAdminUsers {
    return (Invoke-UnifiAPIRequest -Resource ("api/stat/admin") -Method Get)
}