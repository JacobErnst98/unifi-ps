function Get-UnifiLoggedInUser {
    return (Invoke-UnifiAPIRequest -Resource ("api/self") -Method Get)
}